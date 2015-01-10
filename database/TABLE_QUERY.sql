SELECT 
		a.article_ID, 
		a.article_title,
        d.director_firstname,
        g.genre_name,
        a.article_runtime,
        p.publisher_name,
        ag.agelimit_name,
        a.article_releasedate,
        a.article_publishingdate,
        a.article_amount,
        a.article_rentprice,
        a.article_purchaseprice
FROM
		articles a, directors d, publishers p, genres g, agelimits ag
WHERE
		a.article_director = d.directors_ID AND
		a.article_genre = g.genre_ID AND
		a.article_publisher = p.publisher_ID AND
		a.article_agelimit = ag.agelimit_ID