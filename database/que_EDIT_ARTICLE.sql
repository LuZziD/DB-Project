CASE
			WHEN 'vartitle' = ''
			THEN 'vartitle' SELECT article_title FROM articles
			WHEN 'vardirector' = ''
			THEN 'vardirector' SELECT article_director FROM articles
			WHEN 'vargenre' = ''
			THEN 'vargenre' SELECT article_genre FROM articles
			WHEN 'varruntime' = ''
			THEN 'varruntime' SELECT article_runtime FROM articles
			WHEN 'varpublisher' = ''
			THEN 'varpublisher' SELECT article_publisher FROM articles
			WHEN 'varagelimit' = ''
			THEN 'varagelimit' SELECT article_agelimit FROM articles
			WHEN 'varreleasedate' = ''
			THEN 'varreleasedate' SELECT article_releasedate FROM articles
			WHEN 'varpublishingdate' = ''
			THEN 'varpublishingdate' SELECT article_publishingdate FROM articles
			WHEN 'varamount' = ''
			THEN 'varamount' SELECT article_amount FROM articles
			WHEN 'varrentprice' = ''
			THEN 'varrentprice' SELECT article_rentprice FROM articles
			WHEN 'varpurchaseprice' = ''
			THEN 'varpurchaseprice' SELECT article_purchaseprice FROM articles
			)
		UPDATE SET articles 
			articles.article_title = 'vartitle',
			articles.article_director = 'vardirector', 
			articles.article_genre = 'vargenre',
			articles.article_runtime = 'varruntime',
			articles.article_publisher = 'varpublisher',
			articles.article_agelimit = 'varagelimit',
			articles.article_releasedate = 'varreleasedate',
			articles.article_publishingdate = 'varpublishingdate',
			articles.article_amount = 'varamount',
			articles.article_rentprice = 'varrentprice',
			articles.article_purchaseprice = 'varpurchaseprice
WHERE articles.article_ID = 'varID'