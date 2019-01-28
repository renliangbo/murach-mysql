SHOW VARIABLES LIKE 'storage_engine';

SELECT table_name, engine
FROM information_schema.tables
WHERE table_schema = 'ap';