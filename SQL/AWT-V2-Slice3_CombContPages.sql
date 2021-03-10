
-- This script aggregates content pages across selected wikis

USE awt;

SELECT
    sum(wiki.page_count)
FROM
    awt.wikis as wiki
JOIN
    awt.languages_wikis as langwiki
ON
    wiki.wiki_name = langwiki.wiki_name
WHERE
 langwiki.language_code IN ('zu', 'ar')               -- Where languages are user selection
 AND
wiki.updated_at DESC                         -- Filter by last 6 date records of update in the wiki table
LIMIT 6
;

