-- Find top 10 wikipedias in the continent

USE awt;
SELECT 
	wiki.wiki_name,
	wiki.page_count,
	wiki.word_count,
	wiki.active_editors
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
