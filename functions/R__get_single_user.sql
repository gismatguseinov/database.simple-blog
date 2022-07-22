CREATE OR REPLACE FUNCTION get_user(_user_id INTEGER)

    RETURNS TABLE
            (
                user_id    INTEGER,
                username   VARCHAR,
                email      VARCHAR,
                password   VARCHAR,
                created_at TIMESTAMP WITHOUT TIME ZONE
            )
    LANGUAGE plpgsql
as
$$
BEGIN
    RETURN QUERY SELECT u.user_id,
                        u.username,
                        u.email,
                        u.password,
                        u.created_at
                 FROM public.users as u
                 WHERE user_id = _user_id;
END
$$;


