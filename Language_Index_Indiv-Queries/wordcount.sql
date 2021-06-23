-- Find top 10 wikipedias in the continent based on language index

USE awt;
SELECT
wiki.wiki_name,
(
(
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate word count ratio (Language word count/Highest word count in table) * Word count Factor
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

(wiki.word_count/
                ( SELECT
		       wiki.word_count
		  FROM wikis as wiki
                  WHERE
		      SUBSTRING_INDEX(wiki.wiki_name, '-', -1)="Wikipedia"
                  AND
	              wiki.updated_at =
                          ( SELECT
                              wiki.updated_at
                            FROM
                              wikis as wiki
                            ORDER BY
                              wiki.updated_at DESC LIMIT 1)
		ORDER BY
		wiki.word_count DESC LIMIT 1))*
   (( SELECT
	    langind.Word_Count_Factor
      FROM  language_index_factors as langind
      ORDER BY
	    langind.Word_Count_Factor DESC LIMIT 1)))
) as LangIndex
FROM wikis as wiki
JOIN
	awt.languages_wikis as langwiki ON wiki.wiki_name = langwiki.wiki_name
WHERE
SUBSTRING_INDEX(wiki.wiki_name, '-', -1)="Wikipedia"
AND
wiki.updated_at =
          ( SELECT
                  wiki.updated_at
            FROM
                  wikis as wiki
            ORDER BY
                  wiki.updated_at DESC LIMIT 1
            )
GROUP BY
    wiki.wiki_name,
    wiki.word_count
ORDER BY
LangIndex DESC
;
