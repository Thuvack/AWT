-- Select recent 6 months records for a wiki project
USE awt;

SELECT
	wiki.wiki_name,
	wiki.page_count,
	wiki.word_count,
	wiki.active_editors,
    wiki.updated_at
FROM
	awt.wikis as wiki
JOIN
	awt.languages_wikis as langwiki
ON
	wiki.wiki_name = langwiki.wiki_name
WHERE
	langwiki.wiki_type = 'wikipedia' AND  -- This should be controlled by user selection in the dashboard
    langwiki.language_code = 'ZU'         -- This should be controlled by user selection in the dashboard
ORDER BY
	wiki.updated_at DESC
LIMIT 6;
