-- =============================
-- usersテーブル作成
-- =============================
CREATE TABLE IF NOT EXISTS users (
    id      BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(200) NOT NULL UNIQUE,
    message VARCHAR(200)
);

-- =============================
-- サンプルデータ投入
-- =============================
INSERT INTO users (name, email, message) VALUES
    ('山田 太郎',   'yamada@example.com',  'はじめまして！'),
    ('鈴木 花子',   'suzuki@example.com',  'よろしくお願いします'),
    ('田中 一郎',   'tanaka@example.com',  'Spring Boot 最高！'),
    ('佐藤 美咲',   'sato@example.com',    'MySQLも使いこなすぞ'),
    ('高橋 健太',   'takahashi@example.com', NULL);
