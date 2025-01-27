CREATE TABLE IF NOT EXISTS bots 
(
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50) NOT NULL,
  description TEXT DEFAULT NULL,
  icon VARCHAR(50) DEFAULT NULL,
  state TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  deleted_at TIMESTAMP DEFAULT NULL,
  CONSTRAINT bots_pkey PRIMARY KEY (id),
  CONSTRAINT bots_state_check CHECK (state IN ('created', 'running', 'stoped', 'deleted')),
  CONSTRAINT bots_name_unique UNIQUE (name)
);

CREATE OR REPLACE RULE delete_bots_rule AS
    ON DELETE TO bots 
    DO INSTEAD (
        UPDATE bots 
        SET deleted_at = now()
        WHERE id = OLD.id
    );
