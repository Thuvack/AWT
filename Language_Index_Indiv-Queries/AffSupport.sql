USE awt;
SELECT
affiliates.wiki_name,

(
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- Calculate Language support by Affiliates as follows:
-- # of affiliates supporting a language/Language with most affiliates supporting it
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
(COUNT(affiliates.language_code)/
		( SELECT COUNT(affiliates.language_code) as AffCount
                  FROM awt.regional_affiliates as affiliates
                  GROUP BY
					affiliates.language_code
                  ORDER BY
                        AffCount DESC LIMIT 1)
)

) as LangIndex
FROM regional_affiliates as affiliates
WHERE
SUBSTRING_INDEX(affiliates.wiki_name, '-', -1)="Wikipedia"
GROUP BY
    affiliates.language_code,
    affiliates.wiki_name
ORDER BY
LangIndex DESC
;