-- Find top 10 wikipedias in the continent based on language index

USE awt;
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
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate Language support by Affiliates as follows:
-- # of affiliates supporting a language/Language with most affiliates supporting it
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
) as LangIndex
FROM countries_languages as countries
JOIN
	languages_wikis as wiki ON countries.language_code = wiki.language_code
WHERE
SUBSTRING_INDEX(wiki.wiki_name, '-', -1)="Wikipedia"
GROUP BY
    countries.language_code,
    wiki.wiki_name
ORDER BY
LangIndex DESC
;
