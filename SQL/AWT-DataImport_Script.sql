-- This script is to insert data to different tables in the database
-- Insert new data into Wikis Table
-- This is the srcipt that must be used for quarterly updates to Wikis

INSERT INTO `awt`.`wikis`
(`wiki_name`,
`word_count`,
`page_count`,
`active_editors`,
`localization_level`,
`updated_at`)
VALUES

("aa-Wikipedia","0","22","1","0","2020-11-15"),
()


-- Insert new data into Language Index table

INSERT INTO `awt`.`language_index_factors`
(`Page_Count_Factor`,
`Word_Count_Factor`,
`Lang_Speakers_Factor`,
`Lang_Reach_Factor`,
`Lang_Local_Factor`,
`Aff_Support_Factor`)
VALUES

("0.3","0.2","0.2","0.1","0.1","0.1"),
()


-- Insert new Wiki into languages_wikis table

INSERT INTO `awt`.`languages_wikis`
(`language_code`,
`wiki_name`,
`wiki_type`,
`wiki_status`,
`created_at`,
`localised_name`,
`wiki_url`)
VALUES

("aa","aa-Wikipedia","Wikipedia","Incubator","2003-11-11","Wikipédial","https://incubator.wikimedia.org/wiki/Wp/aa/Main_Page"),
()

-- Insert into regional affiliates table

INSERT INTO `awt`.`regional_affiliates`
(`affiliate_name`,
`country_code`,
`language_code`,
`wiki_name`)
VALUES

("Wikimédiens du Bénin User Group","BJ","fon","fon-Wikipedia"),

