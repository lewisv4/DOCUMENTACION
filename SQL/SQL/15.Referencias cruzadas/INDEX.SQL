TRANSFORM SUM(PRECIO) AS TOTAL 
SELECT NOMBREARTÍCULO
FROM PRODUCTOS
GROUP BY NOMBREARTÍCULO
PIVOT SECCIÓN;

TRANSFORM COUNT(CÓDIGOARTÍCULO) AS TOTAL 
SELECT NOMBREARTÍCULO
FROM PRODUCTOS
GROUP BY NOMBREARTÍCULO
PIVOT SECCIÓN;


/* CONSULTA NORMAL */
SELECT EMPRESA, POBLACIÓN, FORMADEPAGO
FROM CLIENTES INNER JOIN PEDIDOS ON CLIENTES.CÓDIGOCLIENTE=PEDIDOS.CÓDIGOCLIENTE;

/* CONSULTA REFERENCIAS CRUZADAS */

TRANSFORM COUNT(POBLACIÓN) AS TOTAL_FORMAPAGO
SELECT EMPRESA
FROM PREVIA
GROUP BY EMPRESA
PIVOT FORMADEPAGO;

/* ULTIMA REFERENCIA CRUZADAS */

TRANSFORM SUM(PRECIO) AS TOTAL
SELECT NOMBREARTÍCULO,PAÍSDEORIGEN
FROM PRODUCTOS
GROUP BY NOMBREARTÍCULO,PAÍSDEORIGEN
PIVOT SECCIÓN;