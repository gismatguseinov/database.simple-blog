CREATE OR REPLACE FUNCTION get_blog(_blog_id INTEGER)
    RETURNS TABLE
            (
                blog_id      INTEGER,
                username     VARCHAR,
                title        VARCHAR,
                description  TEXT,
                is_visible   BOOLEAN,
                reading_time INTEGER,
                created_at   TIMESTAMP WITHOUT TIME ZONE
            )
    LANGUAGE plpgsql
AS
$$
BEGIN
    RETURN QUERY SELECT blog.blog_id,
                        u.username,
                        blog.title,
                        blog.description,
                        blog.is_visible,
                        blog.reading_time,
                        blog.created_at
                 FROM public.blogs as blog
                          LEFT JOIN users u on blog.user_id = u.user_id
                 WHERE blog.blog_id = _blog_id;
END
$$