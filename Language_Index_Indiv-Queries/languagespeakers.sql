-- Find top 10 wikipedias in the continent based on language index

USE awt;
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
) as LangIndex
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
LangIndex DESC
;
