CREATE TABLE PRUEBA(
    ID INT(20)UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    DNI INT(10)UNSIGNED NOT NULL,
    NOMBRE VARCHAR(10)NOT NULL,
    NOMBRE2 VARCHAR(10)NOT NULL,
    APELLIDO VARCHAR(10)NOT NULL,
    APELLIDO2 VARCHAR(10)NOT NULL,
    EDAD INT(4)UNSIGNED NOT NULL,
    FECHA_NACIMIENTO DATE NOT NULL
);

DROP TABLE PRUEBA;
