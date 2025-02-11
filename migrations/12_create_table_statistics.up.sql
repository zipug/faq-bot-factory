CREATE TABLE IF NOT EXISTS statistics
(
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  bot_id BIGINT NOT NULL,
  telegram_id BIGINT NOT NULL,
  question TEXT DEFAULT NULL,
  article_id BIGINT NOT NULL,
  article_name TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT statistics_pkey PRIMARY KEY (id),
  CONSTRAINT statistics_articles_id_fkey FOREIGN KEY (article_id)
    REFERENCES articles (id) ON DELETE CASCADE
);
