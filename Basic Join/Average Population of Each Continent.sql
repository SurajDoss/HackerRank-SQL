SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION)) FROM CITY INNER JOIN COUNTRY WHERE CITY.COUNTRYCODE = COUNTRY.CODE GROUP BY COUNTRY.CONTINENT;