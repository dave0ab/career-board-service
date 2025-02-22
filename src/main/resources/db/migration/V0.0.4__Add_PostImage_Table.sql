CREATE TABLE post_image (
    image_id SERIAL PRIMARY KEY,              -- Auto-incrementing unique ID for each image
    post_id UUID NOT NULL,                     -- UUID referencing user_post table
    image_name VARCHAR(500) NOT NULL,          -- Name of the image file
    CONSTRAINT fk_post
        FOREIGN KEY (post_id) 
        REFERENCES user_post(post_id)
        ON DELETE CASCADE
);
