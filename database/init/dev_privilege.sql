-- ============================================
-- Dev account privilege setup (MariaDB)
-- ============================================

CREATE USER IF NOT EXISTS 'dev'@'%' IDENTIFIED BY 'devpass';

-- ======================
-- Global privileges
-- ======================
GRANT
  CREATE,
  ALTER,
  DROP,
  INDEX,
  REFERENCES,
  TRIGGER,
  EVENT,
  CREATE VIEW,
  SHOW VIEW,
  CREATE ROUTINE,
  ALTER ROUTINE,
  EXECUTE,
  LOCK TABLES,
  SHOW DATABASES
ON *.*
TO 'dev'@'%';

-- ======================
-- Data privileges
-- ======================
GRANT
  SELECT,
  INSERT,
  UPDATE,
  DELETE
ON *.*
TO 'dev'@'%';

FLUSH PRIVILEGES;
