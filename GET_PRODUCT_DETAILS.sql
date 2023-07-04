CREATE PROCEDURE GET_PRODUCT_DETAILS 
    ( 
        IN id INT, 
        OUT prdName varchar(50),
        OUT rate double,
        OUT qnty int
	)
    
BEGIN
    SELECT productNaame, price, quantity
    into prdName, rate, qnty
    from products where  id = id;
 
END
