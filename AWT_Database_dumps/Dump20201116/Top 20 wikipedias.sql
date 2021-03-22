-- Find top 20 wikipedias in the continent
USE awt;
SELECT 
	wiki.wiki_name,
    wiki.page_count,
    wiki.word_count,
	wiki.active_editors
FROM
	awt.wikis as wiki
JOIN awt.languages_wikis as langwiki
ON wiki.wiki_name = langwiki.wiki_name
WHERE
	langwiki.wiki_type = 'wikipedia' AND
    wiki.updated_at = '2020-11-15'
ORDER BY
	wiki.page_count DESC
LIMIT 20;
