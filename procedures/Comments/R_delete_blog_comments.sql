CREATE OR REPLACE PROCEDURE delete_blog_comments(_blog_id INTEGER)
    LANGUAGE plpgsql
AS
$$
BEGIN
    DELETE
    FROM public.comments
    WHERE blog_id = _blog_id;
END;

$$
