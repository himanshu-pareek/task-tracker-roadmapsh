CREATE TABLE post_category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    content TEXT,
    category_id INTEGER,
    tags TEXT ARRAY,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),

    CONSTRAINT fk_post_category_id
        FOREIGN KEY (category_id)
        REFERENCES post_category(id)
);