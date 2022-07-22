CREATE OR REPLACE FUNCTION get_user_comments(_user_id INTEGER)

    RETURNS TABLE
            (
                comment_id INTEGER,
                username   VARCHAR,
                blog_id    INTEGER,
                comment    VARCHAR
            )
    LANGUAGE plpgsql
as
$$
BEGIN
    RETURN QUERY SELECT c.comment_id,
                        u.username,
                        c.blog_id,
                        c.comment
                 FROM public.comments as c
                          LEFT JOIN users u on c.user_id = u.user_id
                 WHERE c.user_id = _user_id;
END
$$;


