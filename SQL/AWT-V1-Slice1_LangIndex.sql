-- Find top 10 wikipedias in the continent based on language index

USE awt;
SELECT
	wiki.wiki_name,
	(wiki.page_count*Page_Count_Factor) +
	(wiki.word_count*Word_Count_Factor) +
	((first_language_speakers+second_language_speakers)*Lang_Speakers_Factor)+
	(COUNT(country.language_code)*Lang_Reach_Factor)+    --Count number of times a language code appears in "countries_language" Table
	(COUNT(affiliate.language_code)*Aff_Support_Factor)+   --Count number of times a language code appears in "region_affiliates" Table
	(wiki.localization_level*Lang_Local_Factor) AS LangIndex
FROM
	awt.wikis as wiki
JOIN
	awt.languages_wikis as langwiki ON wiki.wiki_name = langwiki.wiki_name
JOIN
	awt.countries_languages as country ON langwiki.language_code = country.language_code
LEFT JOIN
	awt.region_affiliates as affiliate ON country.language_code = affiliate.language_code
WHERE
 langwiki.language_code IN ('zu', 'ar')               -- Where languages are user selection
 AND
wiki.updated_at = ( SELECT                            -- Filter by last date of update in table
                       wiki.updated_at
                    FROM
                        wikis
                    ORDER BY
                        wiki.updated_at DESC LIMIT 1
                    )
ORDER BY
	wiki.page_count DESC
LIMIT 10;

-- Some Items to follow-up on with Derick --
-- How does MySQL handle array of imputs in a WHERE statement?
-- Create "region_affiliates" table with affiliates name, country code and economic region
-- Review Count statements and check that they work as expected.
-- Review above Joins on 4 tables! to make sure code works.
