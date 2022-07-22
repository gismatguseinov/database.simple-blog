CREATE OR REPLACE FUNCTION get_comments(_blog_id INTEGER)

    RETURNS TABLE
            (
                comment_id INTEGER,
                username   VARCHAR,
                comment    VARCHAR
            )
    LANGUAGE plpgsql
as
$$
BEGIN
    RETURN QUERY SELECT c.comment_id,
                        u.username,
                        c.comment
                 FROM public.comments as c
                          LEFT JOIN users u on u.user_id = c.user_id

                 WHERE c.blog_id = _blog_id;
END
$$;


