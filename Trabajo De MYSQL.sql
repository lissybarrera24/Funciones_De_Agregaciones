-- 1. Contar productos en la tabla
SELECT COUNT(*) AS total_productos
FROM products;

-- 2. Calcular valor total de los productos
SELECT SUM(value) AS valor_total;
FROM products;

-- 3. Obtener el valor promedio de los productos
SELECT AVG(value) valor_total;
FROM products;

-- 4. Encontrar el producto con el valor mas alto
SELECT *
FROM products;
ORDER BY value DESC 
LIMIT 1;

-- 5. Encontrar el producto con el precio mas bajo
SELECT *
FROM products;
ORDER BY value ASC 
LIMIT 1;

-- 6. Contar el numero de productos de cada tipo de moneda (valueCurrency)
SELECT valueCurrency, COUNT(*) AS cantidad
FROM products 
GROUP BY valueCurrency;

-- 7. Calcular el promedio de los productos por cada tipo de moneda (valueCurrency)
SELECT valueCurrency AVG(value) AS promedio
FROM products 
GROUP BY valueCurrency;

-- 8. Obtener el valor total de los productos por productType
SELECT productType, SUM (value) AS total
FROM products
GROUP BY productType;

-- 9. Encontrar el valor maximo y minimo por productType
SELECT productType
      MAX(value) AS valor_maximo;
      MIN(value) AS valor_minimo;
FROM products 
GROUP BY productType;

-- 10. Calcular el valor promedio de productos por cada CategoryCode
SELECT CategoryCode, AVG(value) AS promedio
FROM products 
GROUP BY CategoryCode;

-- 11. Contar productos disponibles en cada status
SELECT status, COUNT(*) AS cantidad 
FROM products 
GROUP BY status;

-- 12. Calcular el valor total de productos en cada brandCode:
SELECT brandCode, SUM(value) AS total
FROM products
GROUP BY brandCode;

-- 13. Obtener el numero total de codigos de productos unicos (partNumber)
SELECT COUNT(DISTINCT partNumber) AS codigos_unicos
FROM products;

-- 14. Calcular el valor promedio y la cantidad de productos por cada lineCode
SELECT lineCode
       AVG(value) AS promedio,
       COUNT(*) AS cantidad 
       FROM products 
       GROUP BY lineCode;
       
-- 15. Encontrar el producto con el valor mas alto por cada plannerCode
SELECT plannerCode 
       MAX(value) AS valo_maximo
       FROM products 
       GROUP BY plannerCode;


