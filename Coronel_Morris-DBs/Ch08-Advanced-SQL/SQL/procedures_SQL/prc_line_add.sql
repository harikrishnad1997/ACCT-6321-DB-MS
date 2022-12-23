IF EXISTS (SELECT name FROM sysobjects 
   WHERE name = 'PRC_LINE_ADD' AND type = 'P')
   DROP PROCEDURE PRC_LINE_ADD
GO

CREATE PROCEDURE PRC_LINE_ADD
@W_IN NUMERIC (4),
@W_LN NUMERIC(5),
@W_P_CODE VARCHAR(10),
@W_LU NUMERIC(5)
AS
BEGIN
DECLARE @W_LP NUMERIC(5)
   -- GET THE PRODUCT PRICE
	SET @W_LP = (SELECT P_PRICE FROM PRODUCT
	            WHERE P_CODE = @W_P_CODE)

   -- ADDS THE NEW LINE ROW   
	INSERT INTO LINE (INV_NUMBER, LINE_NUMBER, P_CODE, LINE_UNITS, LINE_PRICE)
          VALUES(@W_IN, @W_LN, @W_P_CODE, @W_LU, @W_LP);

	PRINT('Invoice line ' + @W_LN + ' added');
END;
