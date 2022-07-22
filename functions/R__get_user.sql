CREATE OR REPLACE FUNCTION get_user(_user_id int)

    RETURNS TABLE
            (
                user_id    int,
                username   VARCHAR,
                email      VARCHAR,
                password   VARCHAR,
                created_at TIMESTAMP WITHOUT TIME ZONE,
                updated_at TIMESTAMP WITHOUT TIME ZONE
            )
    LANGUAGE plpgsql
as
$$
BEGIN
    RETURN QUERY SELECT *
                 FROM public.users
                 WHERE users.user_id = _user_id;
END;
$$


