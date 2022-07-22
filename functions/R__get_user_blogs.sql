CREATE OR REPLACE FUNCTION get_user_blogs(_user_id INTEGER)

    RETURNS TABLE
            (
                blog_id      INTEGER,
                title        VARCHAR,
                description  TEXT,
                is_visible   BOOLEAN,
                reading_time INTEGER,
                created_at   TIMESTAMP without time zone,
                updated_at   TIMESTAMP without time zone
            )
    LANGUAGE plpgsql
as
$$
BEGIN
    RETURN QUERY SELECT b.blog_id,
                        b.title,
                        b.description,
                        b.is_visible,
                        b.reading_time,
                        b.created_at,
                        b.updated_at
                 FROM public.blogs AS b
                 WHERE b.user_id = _user_id;
END
$$;


