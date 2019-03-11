-- Christopher Brunsdon
-- christopher@brunsdon.co.za
-- Fizzbuzz in mysql stored procedure

DELIMITER $$
DROP PROCEDURE IF EXISTS fizzbuzz$$

CREATE PROCEDURE fizzbuzz()
BEGIN
    DECLARE table_fizzbuzz, sql_stmt, result VARCHAR(255);
    DECLARE x INT;

    START TRANSACTION;

    SET table_fizzbuzz = CONCAT('table_fizzbuzz', '_', UNIX_TIMESTAMP());

    SET @sql_stmt = CONCAT('CREATE TEMPORARY TABLE ', table_fizzbuzz, '(i INT, fizzbuzz VARCHAR(100))');
    PREPARE stmt1 FROM @sql_stmt;
    EXECUTE stmt1; 
    DEALLOCATE PREPARE stmt1;

    SET x = 1;
    WHILE x <= 100 DO
        SET @sql_stmt = CONCAT(
            'INSERT INTO ',
            table_fizzbuzz,
            ' VALUES (',
            x,
            ', "',
            COALESCE(
                NULLIF(
                    CONCAT(
                        CASE WHEN x mod 3 THEN '' ELSE 'fizz' END,
                        CASE WHEN x mod 5 THEN '' ELSE 'buzz' END),
                    ''),
                x),
            '")');
        PREPARE stmt1 FROM @sql_stmt;
        EXECUTE stmt1; 
        DEALLOCATE PREPARE stmt1;
        SET  x = x + 1; 
    END WHILE;

    SET @sql_stmt = CONCAT('SELECT fizzbuzz FROM ', table_fizzbuzz, ' ORDER BY i');
    PREPARE stmt1 FROM @sql_stmt;
    EXECUTE stmt1; 
    DEALLOCATE PREPARE stmt1;

    COMMIT;
END$$
DELIMITER ;

CALL fizzbuzz();
