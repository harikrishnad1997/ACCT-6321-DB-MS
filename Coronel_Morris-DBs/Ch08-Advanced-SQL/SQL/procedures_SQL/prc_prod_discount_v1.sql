IF EXISTS (SELECT name FROM sysobjects 
   WHERE name = 'PRC_PROD_DISCOUNT' AND type = 'P')
   DROP PROCEDURE PRC_PROD_DISCOUNT
GO
CREATE PROCEDURE PRC_PROD_DISCOUNT 
AS
BEGIN
   UPDATE PRODUCT
     SET P_DISCOUNT = P_DISCOUNT + .05
       WHERE P_QOH >= P_MIN*2;
   PRINT('* * Update finished * *')
END