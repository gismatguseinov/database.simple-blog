CREATE OR REPLACE FUNCTION get_users()

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
                 ORDER BY created_at;
END
$$;
ALTER FUNCTION get_users() OWNER TO root;


