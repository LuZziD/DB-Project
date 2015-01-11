SELECT * FROM articles WHERE (article_ID) = 'varID'(
	
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
		INSERT INTO articles(
			article_title,
			article_director, 
			article_genre,
			article_runtime,
			article_publisher,
			article_agelimit,
			article_releasedate,
			article_publishingdate,
			article_amount,
			article_rentprice,
			article_purchaseprice
			)
		VALUES(
			'vartitle',
			'vardirector',
			'vargenre',
			'varruntime',
			'varpublisher',
			'varagelimit',
			'varreleasedate',
			'varpublishingdate',
			'varamount',
			'varrentprice',
			'varpurchaseprice'
			)