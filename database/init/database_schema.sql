use hoanglinh_db;

CREATE SCHEMA IF NOT EXISTS cms;
CREATE SCHEMA IF NOT EXISTS auth;
CREATE SCHEMA IF NOT EXISTS news;
CREATE SCHEMA IF NOT EXISTS catalog;
CREATE SCHEMA IF NOT EXISTS contact;

CREATE TABLE IF NOT EXISTS `cms`.`navigation` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `label` VARCHAR(255) NOT NULL,
    `url` VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `cms`.`heading_content` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(255) NOT NULL,
    `description` TEXT DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `cms`.`button` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `button_name` VARCHAR(50) NOT NULL,
    `navigation_links` VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `news`.`news_category` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `category_name` VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `auth`.`accounts` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(16) NOT NULL UNIQUE,
    `password_hash` VARCHAR(255) NOT NULL,
    `full_name` VARCHAR(25) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS  `news`.`news` (
    `news_id` INT AUTO_INCREMENT PRIMARY KEY,
    `news_title` VARCHAR(255) NOT NULL,
    `publish_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `author_id` INT NOT NULL,
    `category_id` INT NOT NULL,
    `excerpt` VARCHAR(128) DEFAULT NULL,
    `content` TEXT NOT NULL,
    `thumbnail_url` VARCHAR(255),
    CONSTRAINT `fk_news_author` FOREIGN KEY (`author_id`) REFERENCES `auth`.`accounts`(`id`),
    CONSTRAINT `fk_news_category` FOREIGN KEY (`category_id`) REFERENCES `news`.`news_category`(`id`)
) ENGINE=InnoDB;

CREATE VIEW `news`.`news_overview` AS
SELECT 
  n.news_id,
  n.news_title,
  a.full_name AS author,
  n.thumbnail_url
FROM `news`.`news` n
JOIN `auth`.`accounts` a ON n.author_id = a.id;

CREATE INDEX idx_news_author ON `news`.`news`(author_id);

CREATE TABLE IF NOT EXISTS `cms`.`about_us_base` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(255) NOT NULL,
    `banner_image` VARCHAR(255) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `cms`.`about_us_sections` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `keyword` VARCHAR(255) NOT NULL,
    `content` TEXT NOT NULL,
    `section_type` VARCHAR(50) NOT NULL,
    `label` VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `cms`.`about_us_image` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `sections_id` INT NOT NULL,
    `img_url` VARCHAR(255) NOT NULL,
    `note` VARCHAR(255) DEFAULT NULL,
    CONSTRAINT `fk_about_sections` FOREIGN KEY (`sections_id`) REFERENCES `cms`.`about_us_sections`(`id`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `catalog`.`product` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `slug` VARCHAR(255) NOT NULL,
    `product_image_url` VARCHAR(255) NOT NULL,
    `summary` TEXT NOT NULL,
    `content` TEXT NOT NULL,
    `function` TEXT NOT NULL
) ENGINE=InnoDB;

CREATE OR REPLACE VIEW `catalog`.`product_overview` AS
SELECT id, name, slug, product_image_url 
FROM `catalog`.`product`;

CREATE TABLE IF NOT EXISTS `catalog`.`product_nutrients` (
    `product_id` INT NOT NULL,
    `keyword` VARCHAR(35) NOT NULL,
    `value` VARCHAR(35) NOT NULL,
    CONSTRAINT `fk_product_nutrients` FOREIGN KEY (`product_id`) REFERENCES `catalog`.`product`(`id`),
    UNIQUE KEY `unique_product_nutrient` (`product_id`, `keyword`)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `contact`.`contact_social` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `keyword` VARCHAR(50) NOT NULL UNIQUE,
    `content` VARCHAR(255) NOT NULL,
    `label` VARCHAR(50) NOT NULL,
    `group_name` VARCHAR(50) NOT NULL,
    `created_by` VARCHAR(50) DEFAULT NULL,
    `updated_by` VARCHAR(50) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `contact`.`contact_submissions` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `full_name` VARCHAR(50) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `phone_number` VARCHAR(20) NOT NULL,
    `message` TEXT NOT NULL,
    `status` TINYINT NOT NULL,
    `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE INDEX idx_about_us_image_sections_id
ON `cms`.`about_us_image`(sections_id);

CREATE INDEX idx_news_categories_id
ON `news`.`news`(category_id);