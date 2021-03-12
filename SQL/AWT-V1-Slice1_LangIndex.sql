-- Find top 10 wikipedias in the continent based on language index

USE awt;
SELECT
wiki.wiki_name,
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate language Index for the project
-- Calculate Content page count ratio (Language page count/Highest page count in table) * Language Factor
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(
((wiki.page_count/
                ( SELECT
		    wiki.page_count
	          FROM
                    wikis as wiki
                  WHERE
		    SUBSTRING_INDEX(wiki.wiki_name, '-', -1)="Wikipedia"
                  AND
		    wiki.updated_at =
                          ( SELECT wiki.updated_at
                            FROM wikis as wiki
                            ORDER BY
                            wiki.updated_at DESC LIMIT 1 )
	          ORDER BY
	            wiki.page_count DESC LIMIT 1))*
     (( SELECT
	      langind.Page_Count_Factor
	FROM  language_index_factors as langind
	ORDER BY
	      langind.Page_Count_Factor DESC LIMIT 1)*10)) +
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate word count ratio (Language word count/Highest word count in table) * Word count Factor
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
((wiki.word_count/
                ( SELECT
		       wiki.word_count
		  FROM wikis as wiki
                  WHERE
		      SUBSTRING_INDEX(wiki.wiki_name, '-', -1)="Wikipedia"
                  AND
	              wiki.updated_at =
                          ( SELECT
                              wiki.updated_at
                            FROM
                              wikis as wiki
                            ORDER BY
                              wiki.updated_at DESC LIMIT 1)
		ORDER BY
		wiki.word_count DESC LIMIT 1))*
   (( SELECT
	    langind.Word_Count_Factor
      FROM  language_index_factors as langind
      ORDER BY
	    langind.Word_Count_Factor DESC LIMIT 1)*10))+ 
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate language localization factors
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(wiki.localization_level*
   (( SELECT
	    langind.Lang_local_Factor
      FROM  language_index_factors as langind
      ORDER BY
	    langind.Lang_local_Factor DESC LIMIT 1)*10))+
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate language speaker ratio as follows:
-- (Language speakers count/Highest language speakers count in table) * Language speakers Factor
-- There is currently no implementation of Second language speakers as we have no data there
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
((lang.first_language_speakers/
                ( SELECT
		        lang.first_language_speakers
	          FROM awt.languages as lang
		  JOIN
		      awt.languages_wikis as langwiki on lang.language_code = langwiki.language_code
		  JOIN
		      awt.wikis as wiki ON langwiki.wiki_name = wiki.wiki_name
                  WHERE
		      SUBSTRING_INDEX(wiki.wiki_name, '-', -1)="Wikipedia"
                    AND
		      wiki.updated_at =
                              ( SELECT
                                      wiki.updated_at
                                FROM wikis as wiki
                                ORDER BY
                                    wiki.updated_at DESC LIMIT 1 )
		  ORDER BY
		    lang.first_language_speakers DESC LIMIT 1))*
     (( SELECT
	      langind.Lang_Speakers_Factor
	FROM  language_index_factors as langind
	ORDER BY
	      langind.Lang_Speakers_Factor DESC LIMIT 1)*10))+
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate Language reach by number of countries and as follows:
-- # of countries a language is spoken in/language with most countries
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(COUNT(country.language_code)/
		( SELECT COUNT(country.language_code) as LangCount
                  FROM awt.countries_languages as country
                  GROUP BY
			wiki.wiki_name,
			country.language_code
                  ORDER BY
                        LangCount DESC LIMIT 1)*
     (( SELECT
	      langind.Lang_Reach_Factor
	FROM  language_index_factors as langind
	ORDER BY
	      langind.Lang_Reach_Factor DESC LIMIT 1)*10))
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate Language support by Affiliates as follows:
-- # of affiliates supporting a language/Language with most affiliates supporting it
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
) as LangIndex
FROM wikis as wiki
JOIN
	awt.languages_wikis as langwiki ON wiki.wiki_name = langwiki.wiki_name
JOIN
	awt.countries_languages as country ON langwiki.language_code = country.language_code
JOIN
	awt.languages as lang on country.language_code = lang.language_code
LEFT JOIN
	awt.region_affiliates as affiliate ON lang.language_code = affiliate.language_code
-- Filter select results by Wikiproject type and for the latest date of data
WHERE
SUBSTRING_INDEX(wiki.wiki_name, '-', -1)="Wikipedia"
AND
wiki.updated_at =
          ( SELECT
                  wiki.updated_at
            FROM
                  wikis as wiki
            ORDER BY
                  wiki.updated_at DESC LIMIT 1
            )
GROUP BY
    wiki.wiki_name,
    wiki.page_count,
    wiki.word_count,
    lang.first_language_speakers,
    wiki.localization_level,
    country.language_code
ORDER BY
LangIndex DESC
;
