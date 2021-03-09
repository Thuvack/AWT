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
langwiki.language_code IN ('zu', 'ar')       -- Where languages are user selection
ORDER BY
	wiki.updated_at DESC                 -- Fetch last 6 records in the date table
LIMIT 6;

