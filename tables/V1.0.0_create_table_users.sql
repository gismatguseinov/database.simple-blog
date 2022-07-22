CREATE TABLE IF NOT EXISTS public.users
(
    user_id    serial PRIMARY KEY,
    username   VARCHAR(255)        NOT NULL,
    email      VARCHAR(255) UNIQUE NOT NULL,
    password   VARCHAR(50)         NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    updated_at TIMESTAMP DEFAULT now()
);

CREATE UNIQUE INDEX idx_users_username_password ON users (username, email)

