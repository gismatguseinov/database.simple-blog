CREATE OR REPLACE PROCEDURE update_user(_user_id INTEGER, _username VARCHAR, _email VARCHAR, _password VARCHAR)
    LANGUAGE plpgsql
AS
$$
BEGIN
    UPDATE public.users
    SET username=_username,
        email=_email,
        password=_password,
        updated_at=now()
    WHERE user_id = _user_id;
END;
$$
