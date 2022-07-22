CREATE OR REPLACE PROCEDURE delete_blog(_blog_id INTEGER)
    LANGUAGE plpgsql
AS
$$
BEGIN
    CALL delete_blog_comments(_blog_id);

    DELETE
    FROM public.blogs
    WHERE blog_id = _blog_id;

END;

$$
