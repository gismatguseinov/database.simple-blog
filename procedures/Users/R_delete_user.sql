CREATE OR REPLACE PROCEDURE delete_user(_user_id INTEGER)
    LANGUAGE plpgsql
AS
$$
BEGIN

    CALL delete_user_blogs(_user_id);
    DELETE FROM public.users WHERE user_id = _user_id;
END;
$$
