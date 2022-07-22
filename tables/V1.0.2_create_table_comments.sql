CREATE TABLE IF NOT EXISTS public.comments
(
    comment_id SERIAL PRIMARY KEY,
    user_id    INTEGER references public.users (user_id),
    blog_id    INTEGER references public.blogs (blog_id),
    comment    VARCHAR(1000) NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    updated_at TIMESTAMP DEFAULT now()
);