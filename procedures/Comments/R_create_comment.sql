CREATE OR REPLACE PROCEDURE create_comment(_blog_id INTEGER, _user_id INTEGER, _comment TEXT)
    LANGUAGE plpgsql
AS
$$
BEGIN
    INSERT INTO public.comments (user_id, blog_id, comment) VALUES (_user_id, _blog_id, _comment);
END;
$$
