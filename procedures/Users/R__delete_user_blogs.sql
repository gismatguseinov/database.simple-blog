CREATE OR REPLACE PROCEDURE delete_user_blogs(_user_id INTEGER)
    LANGUAGE plpgsql
AS
$$
BEGIN
    CALL delete_user_comments(_user_id);
    
    DELETE FROM public.blogs WHERE blogs.user_id = _user_id;
END;
$$
