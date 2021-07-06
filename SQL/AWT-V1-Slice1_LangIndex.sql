USE awt;
SELECT
PC.wiki_name,
PC.PCIndex+WC.WCIndex+LP.LPIndex+LR.LRIndex+LL.LLIndex+LSA.LSAIndex AS LangIndex
FROM 
	(SELECT
    wiki.wiki_name,
(
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate Content page count ratio (Language page count/Highest page count in table) * Language Factor
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

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
	      langind.Page_Count_Factor DESC LIMIT 1)))

) as PCIndex
FROM wikis as wiki
JOIN
	awt.languages_wikis as langwiki ON wiki.wiki_name = langwiki.wiki_name
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
    wiki.page_count
ORDER BY
	PCIndex DESC
) AS PC
JOIN
(
SELECT
	wiki.wiki_name,
(
(
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate word count ratio (Language word count/Highest word count in table) * Word count Factor
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

(wiki.word_count/
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
	    langind.Word_Count_Factor DESC LIMIT 1)))
) as WCIndex
FROM wikis as wiki
JOIN
	awt.languages_wikis as langwiki ON wiki.wiki_name = langwiki.wiki_name
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
    wiki.word_count
ORDER BY
WCIndex DESC) AS WC ON WC.wiki_name = PC.wiki_name

JOIN
(
SELECT
wiki.wiki_name,
(
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
	      langind.Lang_Speakers_Factor DESC LIMIT 1)))
) as LPIndex
FROM wikis as wiki
JOIN
	awt.languages_wikis as langwiki ON wiki.wiki_name = langwiki.wiki_name
JOIN
	awt.countries_languages as country ON langwiki.language_code = country.language_code
JOIN
	awt.languages as lang on country.language_code = lang.language_code
LEFT JOIN
	awt.regional_affiliates as affiliate ON lang.language_code = affiliate.language_code
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
    lang.first_language_speakers
ORDER BY
LPIndex DESC
) AS LP ON LP.wiki_name = WC.wiki_name

JOIN

(
SELECT
countries.language_code,
wiki.wiki_name,

(
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate Language reach by number of countries and as follows:
-- # of countries a language is spoken in/language with most countries
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(COUNT(countries.language_code)/
		( SELECT COUNT(country.language_code) as LangCount
                  FROM awt.countries_languages as country
                  GROUP BY
					country.language_code
                  ORDER BY
                        LangCount DESC LIMIT 1)
)
) as LRIndex
FROM countries_languages as countries
JOIN
	languages_wikis as wiki ON countries.language_code = wiki.language_code
WHERE
SUBSTRING_INDEX(wiki.wiki_name, '-', -1)="Wikipedia"
GROUP BY
    countries.language_code,
    wiki.wiki_name
ORDER BY
LRIndex DESC
) AS LR ON LR.wiki_name = LP.wiki_name

JOIN

(
SELECT
wiki.wiki_name,
(
(
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate language localization factors taken as is since it's already a percentage
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

wiki.localization_level*
   (( SELECT
	    langind.Lang_local_Factor
      FROM  language_index_factors as langind
      ORDER BY
	    langind.Lang_local_Factor DESC LIMIT 1)))
) as LLIndex
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
                  wiki.updated_at DESC LIMIT 1
            )
GROUP BY
    wiki.wiki_name,
    wiki.localization_level
ORDER BY
LLIndex DESC
) AS LL ON LL.wiki_name = LR.wiki_name

JOIN

(
SELECT
affiliates.wiki_name,

(
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate Language support by Affiliates as follows:
-- # of affiliates supporting a language/Language with most affiliates supporting it
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(COUNT(affiliates.language_code)/
		( SELECT COUNT(affiliates.language_code) as AffCount
                  FROM awt.regional_affiliates as affiliates
                  GROUP BY
					affiliates.language_code
                  ORDER BY
                        AffCount DESC LIMIT 1)
)

) as LSAIndex
FROM regional_affiliates as affiliates
WHERE
SUBSTRING_INDEX(affiliates.wiki_name, '-', -1)="Wikipedia"
GROUP BY
    affiliates.language_code,
    affiliates.wiki_name
ORDER BY
LSAIndex DESC
) AS LSA ON LSA.wiki_name = LL.wiki_name

ORDER BY LangIndex DESC;