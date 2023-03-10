DELIMITER  $$

CREATE PROCEDURE CALCULA_EDAD(AGNO_NACIMIENTO INT)

    BEGIN

        DECLARE AGNO_ACTUAL INT DEFAULT 2021;

        DECLARE EDAD INT;

        SET EDAD = AGNO_ACTUAL-AGNO_NACIMIENTO;


        SELECT EDAD;

    END;$$

DELIMITER ;

/* ; SE LLAMA DELIMITADOR */

CALL CALCULA_EDAD(2000);

DROP PROCEDURE CALCULA_EDAD;



DELIMITER $$

    CREATE TRIGGER REVISA_PRECIO_BU BEFORE UPDATE ON PRODUCTOS FOR EACH ROW 

        BEGIN

            IF(NEW.PRECIO < 0) THEN

                SET NEW.PRECIO = 0;

            ELSEIF(NEW.PRECIO > 1000) THEN

                SET NEW.PRECIO = 1000;

            END IF;

        END;$$

DELIMITER ;

UPDATE PRODUCTOS SET PRECIO=1500 WHERE CÓDIGOARTÍCULO="AR01";
UPDATE PRODUCTOS SET PRECIO=-300 WHERE CÓDIGOARTÍCULO="AR01";


DELIMITER $$

    CREATE TRIGGER REVISA_PRECIO_BU BEFORE UPDATE ON PRODUCTOS FOR EACH ROW 

        BEGIN

            IF(NEW.PRECIO < 0) THEN

                SET NEW.PRECIO = OLD.PRECIO;

            ELSEIF(NEW.PRECIO > 1000) THEN

                SET NEW.PRECIO = OLD.PRECIO;

            END IF;

        END;$$

DELIMITER ;