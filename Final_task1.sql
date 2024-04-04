/* Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. 
Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds'
*/

DELIMITER //

CREATE FUNCTION ConvertSecondsToDHMS(seconds BIGINT)
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE remaining_seconds INT;

    SET days = seconds DIV (60*60*24);
    SET remaining_seconds = seconds MOD (60*60*24);
    SET hours = remaining_seconds DIV (60*60);
    SET remaining_seconds = remaining_seconds MOD (60*60);
    SET minutes = remaining_seconds DIV 60;
    SET remaining_seconds = remaining_seconds MOD 60;

    RETURN CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', remaining_seconds, ' seconds');
END //

DELIMITER ;

SELECT ConvertSecondsToDHMS(123456);
