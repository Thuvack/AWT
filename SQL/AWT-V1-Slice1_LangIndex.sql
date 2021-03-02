-- Find top 10 wikipedias in the continent based on language index

USE awt;
SELECT 
	wiki.wiki_name,
	wiki.page_count*Page_Count_Factor + wiki.word_count*Word_Count_Factor + wiki.active_editors*Active_Editors_Factor AS LangIndex
FROM
	awt.wikis as wiki
JOIN
	awt.languages_wikis as langwiki
ON
	wiki.wiki_name = langwiki.wiki_name
WHERE
	langwiki.wiki_type = 'wikipedia' AND  --This must be according to User selection??
	wiki.updated_at = '2020-11-15'        --This must be the last date in the records table.
ORDER BY
	wiki.page_count DESC
LIMIT 10;

-- How does MySQL handle array of imputs in a WHERE statement?