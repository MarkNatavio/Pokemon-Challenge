Select A.Type as Type,
	   (A.Total+B.Total) as Total
FROM (Select Distinct(Type_1) as Type,
		   SUM(Total) as Total
	 FROM Challenge.pokemon_data_science
	 GROUP BY Type_1
	 ORDER BY Total DESC) as A
Inner Join
(Select Distinct(Type_2) as Type,
	    SUM(Total) as Total
	FROM Challenge.pokemon_data_science
	GROUP BY Type_2
	ORDER BY Total DESC) as B
ON A.Type = B.Type
GROUP BY Type
ORDER BY Total DESC


