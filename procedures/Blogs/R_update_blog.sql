CREATE OR REPLACE PROCEDURE update_blog(
    _user_id INTEGER,
    _title VARCHAR,
    _description TEXT,
    _is_visible BOOLEAN,
    _blog_id INTEGER
)
    LANGUAGE plpgsql
AS
$$
declare
    reading_time_blog int;
BEGIN
    reading_time_blog = CEIL(length(_description) / 250);
    UPDATE public.blogs
    SET user_id=_user_id,
        title=_title,
        description=_description,
        is_visible=_is_visible,
        reading_time=reading_time_blog,
        updated_at=now()
    WHERE user_id = _user_id
      AND blog_id = _blog_id
    returning user_id,title,description,reading_time;
END;
$$
