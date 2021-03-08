-- Find top 10 wikipedias in the continent based on Active Editors

USE awt;
SELECT 
	wiki.wiki_name,
	wiki.active_editors
FROM
    awt.wikis as wiki
JOIN
	awt.languages_wikis as langwiki
ON
	wiki.wiki_name = langwiki.wiki_name
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

-- How does MySQL handle array of imputs in a WHERE statement?
