-- Find top 10 wikipedias in the continent based on language index

USE awt;
SELECT
wiki.wiki_name,
(
(
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate language localization factors taken as is since it's already a percentage
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

wiki.localization_level*
   (( SELECT
	    langind.Lang_local_Factor
      FROM  language_index_factors as langind
      ORDER BY
	    langind.Lang_local_Factor DESC LIMIT 1)))
) as LangIndex
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
                  wiki.updated_at DESC LIMIT 1
            )
GROUP BY
    wiki.wiki_name,
    wiki.localization_level
ORDER BY
LangIndex DESC
;
