CREATE TABLE IF NOT EXISTS attachments 
(
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50) NOT NULL,
  description TEXT DEFAULT NULL,
  attachment_url TEXT NOT NULL,
  mimetype TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT NULL,
  CONSTRAINT attachments_pkey PRIMARY KEY (id),
  CONSTRAINT attachments_name_unique UNIQUE (name)
);

CREATE OR REPLACE RULE delete_attachments_rule AS
    ON DELETE TO attachments 
    DO INSTEAD (
        UPDATE attachments 
        SET deleted_at = now()
        WHERE id = OLD.id
    );
