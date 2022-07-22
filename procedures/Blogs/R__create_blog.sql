CREATE OR REPLACE PROCEDURE create_blog(
    _user_id INTEGER,
    _title VARCHAR,
    _description TEXT
)
    LANGUAGE plpgsql
AS
$$
declare
    reading_time_blog int;
BEGIN
    reading_time_blog = CEIL(length(_description) / 250);

    INSERT INTO public.blogs (user_id, title, description, reading_time)
    VALUES (_user_id, _title, _description, reading_time_blog);
END;
$$
