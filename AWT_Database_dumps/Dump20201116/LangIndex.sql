SELECT 
wiki.wiki_name,
(SUM((SELECT 
		wiki.page_count *                         		-- Need to calculate wiki page count to wiki with the highest page count ratio
        (SELECT 										
			langind.Page_Count_Factor 					-- Select the latest page count factor
		 FROM language_index_factors as langind
		 ORDER BY
			langind.Page_Count_Factor DESC 
            LIMIT 1
		)
	FROM awt.wikis as wiki
	ORDER BY
		wiki.page_count DESC 							-- Choose the last record for each 
	LIMIT 1
	))+
  SUM((SELECT 
		wiki.page_count *
        (SELECT 
			langind.Page_Count_Factor 
		 FROM language_index_factors as langind
		 ORDER BY
			langind.Page_Count_Factor DESC 
            LIMIT 1
		)
	FROM awt.wikis as wiki
	ORDER BY
		wiki.page_count DESC 
	LIMIT 1
	))) AS LangIndex
FROM awt.wikis as wiki
WHERE
SUBSTRING_INDEX(wiki.wiki_name, '-', -1)="Wikipedia"  -- View only a specific type of Wiki Project
AND
wiki.updated_at = ( SELECT                            -- Filter by last date of update in table
                       wiki.updated_at
                    FROM 
                        wikis as wiki
                    ORDER BY
                        wiki.updated_at DESC LIMIT 1
                    )
GROUP BY
	wiki.wiki_name
ORDER BY
LangIndex DESC LIMIT 10;