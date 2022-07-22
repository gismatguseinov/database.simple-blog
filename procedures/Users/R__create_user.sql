CREATE OR REPLACE PROCEDURE create_user(
_result out int,_username VARCHAR, _email VARCHAR, _password VARCHAR)
    LANGUAGE plpgsql
AS
$$
BEGIN
    insert into public.users (username, email, password)
    values (_username, _email, _password)
    returning user_id into _result;
END;
$$
