CREATE OR REPLACE FUNCTION Swap(a integer ,b integer) RETURNS table (AA INT ,BB INT) AS $$
begin
	a = b + a;
	b = a - b;
	a = a - b;
	Create table see(
		AA INT,
		BB INT
	);
	INSERT into see(AA ,BB) values (a , b);
    return QUERY select * from see;
end
$$ LANGUAGE plpgsql;

select * From Swap(4 ,6);
