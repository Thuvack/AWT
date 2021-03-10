
-- This script aggregates word count across selected wikis

USE awt;

SELECT
    sum(wiki.word_count)
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
;


