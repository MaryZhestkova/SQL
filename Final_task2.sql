/* 2.Cоздайте процедуру, которая выведет только числа, делящиеся на 15 или 33 в промежутке от 1 до 1000.
Пример: 15,30,33,45... */

DELIMITER //

CREATE PROCEDURE numbers_divisible_by_15_or_33()
BEGIN
    DECLARE i INT;
    SET i = 1;
    
    WHILE i <= 1000 DO
        IF i % 15 = 0 OR i % 33 = 0 THEN
            SELECT i;
        END IF;     
        SET i = i + 1;
    END WHILE;
END//

DELIMITER ;

CALL numbers_divisible_by_15_or_33();
