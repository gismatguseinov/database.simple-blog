CREATE TABLE IF NOT EXISTS public.blogs
(
    blog_id      SERIAL PRIMARY KEY,
    user_id      INTEGER references public.users (user_id),
    title        VARCHAR(255) NOT NULL,
    description  TEXT         NOT NULL,
    is_visible   BOOLEAN   DEFAULT TRUE,
    reading_time INTEGER,
    created_at   TIMESTAMP DEFAULT now(),
    updated_at   TIMESTAMP DEFAULT now()
);