CREATE OR REPLACE PROCEDURE delete_user_comments(_user_id INTEGER)
    LANGUAGE plpgsql
AS
$$
BEGIN

    DELETE
    FROM public.comments
    WHERE comments.blog_id IN
          (SELECT blogs.blog_id
           FROM public.blogs
           WHERE blogs.user_id = _user_id);

END;
$$
