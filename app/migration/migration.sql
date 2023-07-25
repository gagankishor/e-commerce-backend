-- CREATE TABLE sites START
CREATE TABLE `enod_sites` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `name` VARCHAR(191) NOT NULL, 
    `short_name` VARCHAR(191) NOT NULL, 
    -- `tagline` VARCHAR(191) NULL DEFAULT NULL, 
    -- `logo` LONGBLOB NULL DEFAULT NULL, 
    -- `favicon` LONGBLOB NULL DEFAULT NULL, 
    -- `email` VARCHAR(191) NULL DEFAULT NULL, 
    -- `phone` VARCHAR(20) NULL DEFAULT NULL, 
    -- `google_map` TEXT NULL DEFAULT NULL , 
    -- `address` TEXT NULL DEFAULT NULL , 
    -- `social_links` JSON NULL DEFAULT NULL , 
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`)
);
CREATE TABLE `enod_hsn_codes` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `code` VARCHAR(191) NOT NULL, 
    `gst_rate` VARCHAR(191) NOT NULL, 
    -- `tagline` VARCHAR(191) NULL DEFAULT NULL, 
    -- `logo` LONGBLOB NULL DEFAULT NULL, 
    -- `favicon` LONGBLOB NULL DEFAULT NULL, 
    -- `email` VARCHAR(191) NULL DEFAULT NULL, 
    -- `phone` VARCHAR(20) NULL DEFAULT NULL, 
    -- `google_map` TEXT NULL DEFAULT NULL , 
    -- `address` TEXT NULL DEFAULT NULL , 
    -- `social_links` JSON NULL DEFAULT NULL , 
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`)
);

INSERT INTO `enod_sites` (
    `id`, 
    `domain`, 
    `title`, 
    `tagline`, 
    `logo`, 
    `favicon`, 
    `email`, 
    `phone`, 
    `google_map`, 
    `address`, 
    `social_links`, 
    `deleted_at`, 
    `created_at`, 
    `updated_at`
) VALUES (
    NULL, 
    'localhost', 
    'Xpert Coders', 
    'Web Development Tutorils', 
    '', 
    '', 
    'info@rudrakshatech.com', 
    '+91 96361 50842', 
    NULL, 
    NULL, 
    NULL, 
    NULL, 
    current_timestamp(), 
    current_timestamp()
);
-- CREATE TABLE sites END
CREATE TABLE `enod_uoms` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `name` VARCHAR(191) NOT NULL, 
    `short_name` VARCHAR(191) NOT NULL, 
    -- `tagline` VARCHAR(191) NULL DEFAULT NULL, 
    -- `logo` LONGBLOB NULL DEFAULT NULL, 
    -- `favicon` LONGBLOB NULL DEFAULT NULL, 
    -- `email` VARCHAR(191) NULL DEFAULT NULL, 
    -- `phone` VARCHAR(20) NULL DEFAULT NULL, 
    -- `google_map` TEXT NULL DEFAULT NULL , 
    -- `address` TEXT NULL DEFAULT NULL , 
    -- `social_links` JSON NULL DEFAULT NULL , 
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`)
);
CREATE TABLE `enod_brands` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `name` VARCHAR(191) NOT NULL, 
    `short_name` VARCHAR(191) NOT NULL, 
    -- `tagline` VARCHAR(191) NULL DEFAULT NULL, 
    -- `logo` LONGBLOB NULL DEFAULT NULL, 
    -- `favicon` LONGBLOB NULL DEFAULT NULL, 
    -- `email` VARCHAR(191) NULL DEFAULT NULL, 
    -- `phone` VARCHAR(20) NULL DEFAULT NULL, 
    -- `google_map` TEXT NULL DEFAULT NULL , 
    -- `address` TEXT NULL DEFAULT NULL , 
    -- `social_links` JSON NULL DEFAULT NULL , 
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`)
);

-- CREATE TABLE countries START
CREATE TABLE `enod_countries` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `name` VARCHAR(191) NOT NULL UNIQUE, 
    `short_name` VARCHAR(5) NULL DEFAULT NULL,
    `code` TINYINT(5) NULL DEFAULT NULL,
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`)
);
-- CREATE TABLE countries END

-- CREATE TABLE categories START
DROP TABLE IF EXISTS `enod_categories`;
CREATE TABLE `enod_categories` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `name` VARCHAR(191) NOT NULL,
    `slug` VARCHAR(191) NOT NULL,
    `short_name` VARCHAR(5) NULL DEFAULT NULL,
    `parent_category_id` BIGINT UNSIGNED NULL DEFAULT NULL,
    `site_id` BIGINT UNSIGNED NULL DEFAULT NULL,
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`),
    FOREIGN KEY (`parent_category_id`) REFERENCES `enod_categories`(`id`) ON DELETE SET NULL,
    FOREIGN KEY (`site_id`) REFERENCES `enod_sites`(`id`) ON DELETE CASCADE,
    UNIQUE `unique_name`(`name`, `parent_category_id`, `site_id`),
    UNIQUE `unique_slug`(`slug`, `parent_category_id`, `site_id`),
);
-- CREATE TABLE categories END

CREATE TABLE `enod_product_images` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `product_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`image` LONGBLOB NULL DEFAULT NULL, 
	`image_smd` LONGBLOB NULL DEFAULT NULL,
    `image_thumb` LONGBLOB NULL DEFAULT NULL,
    
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`),
	FOREIGN KEY (`product_id`) REFERENCES `enod_products`(`id`) ON DELETE CASCADE


);
CREATE TABLE `enod_users` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
	`name` VARCHAR(191) NOT NULL, 
    `mobile` INT NULL DEFAULT NULL, 
    `password` VARCHAR(191) NOT NULL, 
    `otp` INT NULL DEFAULT NULL, 
    `email` VARCHAR(191) NOT NULL, 
	`profile_pic` LONGBLOB NULL DEFAULT NULL, 
    `gstin` INT NULL DEFAULT NULL, 
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`)
	


);

CREATE TABLE `enod_product_attributes` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `product_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`name` VARCHAR(191) NOT NULL, 
    `value` INT NULL DEFAULT NULL, 
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`),
	FOREIGN KEY (`product_id`) REFERENCES `enod_products`(`id`) ON DELETE CASCADE


);
CREATE TABLE `enod_users_addresses` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `user_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`line1` VARCHAR(191) NOT NULL, 
    `line2` VARCHAR(191) NOT NULL, 
    `landmark` VARCHAR(191) NOT NULL, 
    `city` VARCHAR(191) NOT NULL,
    `state` VARCHAR(191) NOT NULL, 
    `pincode` INT NULL DEFAULT NULL, 
    `type` VARCHAR(191) NOT NULL,
	`time_from` VARCHAR(191) NOT NULL,
    `time_to` VARCHAR(191) NOT NULL,
    `is_defrent` VARCHAR(191) NOT NULL,
    `is_sift` VARCHAR(191) NOT NULL,
    
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`),
	FOREIGN KEY (`user_id`) REFERENCES `enod_users`(`id`) ON DELETE CASCADE
	


);
CREATE TABLE `enod_orders` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `inovice_prifix` VARCHAR(191) NOT NULL, 
    `inovice_no` INT NULL DEFAULT NULL, 
	`session` INT NULL DEFAULT NULL, 
    `amount` INT NULL DEFAULT NULL, 
	`user_id` BIGINT UNSIGNED NULL DEFAULT NULL,
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`),
	FOREIGN KEY (`user_id`) REFERENCES `enod_users`(`id`) ON DELETE SET NULL




);
CREATE TABLE `enod_orders_products` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `order_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`variant_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`rate` INT NULL DEFAULT NULL, 
	`qnt` INT NULL DEFAULT NULL, 
	`gst_rate` INT NULL DEFAULT NULL, 

    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`),
	FOREIGN KEY (`order_id`) REFERENCES `enod_orders`(`id`) ON DELETE CASCADE,
	FOREIGN KEY (`variant_id`) REFERENCES `enod_product_variants`(`id`) ON DELETE CASCADE
);
CREATE TABLE `enod_wishlists` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `user_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`product_id` BIGINT UNSIGNED NULL DEFAULT NULL,
    
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`),
	FOREIGN KEY (`user_id`) REFERENCES `enod_users`(`id`) ON DELETE CASCADE,
	FOREIGN KEY (`product_id`) REFERENCES `enod_products`(`id`) ON DELETE CASCADE



);

CREATE TABLE `enod_product_variants` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `uoms_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`product_id` BIGINT UNSIGNED NULL DEFAULT NULL,
    `mrp` INT NULL DEFAULT NULL, 
	`discount` INT NULL DEFAULT NULL, 
    `trade_price` INT NULL DEFAULT NULL, 
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`),
	FOREIGN KEY (`uom_id`) REFERENCES `enod_uoms`(`id`) ON DELETE CASCADE,
	FOREIGN KEY (`product_id`) REFERENCES `enod_products`(`id`) ON DELETE CASCADE
);

CREATE TABLE `enod_carts` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `user_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`variant_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`qnt` INT NULL DEFAULT NULL, 

    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`),
	FOREIGN KEY (`user_id`) REFERENCES `enod_users`(`id`) ON DELETE CASCADE,
	FOREIGN KEY (`variant_id`) REFERENCES `enod_product_variants`(`id`) ON DELETE CASCADE
);

CREATE TABLE `enod_products` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
    `name` VARCHAR(191) NOT NULL, 
    `short_name` VARCHAR(191) NOT NULL, 
    `mrp` INT NULL DEFAULT NULL, 
	`discount` INT NULL DEFAULT NULL, 
	`category_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`sub_category_id` BIGINT UNSIGNED NULL DEFAULT NULL,
    `sub_category_id1` BIGINT UNSIGNED NULL DEFAULT NULL,
    `uoms_id` BIGINT UNSIGNED NULL DEFAULT NULL,
    `brand_id` BIGINT UNSIGNED NULL DEFAULT NULL,
    `hsn_id` BIGINT UNSIGNED NULL DEFAULT NULL,
	`image` LONGBLOB NULL DEFAULT NULL, 
	`description` VARCHAR(191) NOT NULL, 
    `summary` VARCHAR(191) NOT NULL,  
    `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    PRIMARY KEY (`id`),
	FOREIGN KEY (`category_id`) REFERENCES `enod_categories`(`id`) ON DELETE SET NULL,
	FOREIGN KEY (`sub_category_id`) REFERENCES `enod_categories`(`id`) ON DELETE SET NULL,
	FOREIGN KEY (`sub_category_id1`) REFERENCES `enod_categories`(`id`) ON DELETE SET NULL,
	FOREIGN KEY (`uoms_id`) REFERENCES `enod_uoms`(`id`) ON DELETE SET NULL,
	FOREIGN KEY (`brand_id`) REFERENCES `enod_brands`(`id`) ON DELETE SET NULL,
	FOREIGN KEY (`hsn_id`) REFERENCES `enod_hsn_codes`(`id`) ON DELETE SET NULL




);
CREATE TABLE `ecommerce`.`enod_country` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
  `name` VARCHAR(191) NOT NULL, 
    `short_name` VARCHAR(191) NOT NULL, 
  `code` VARCHAR(45) NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
  PRIMARY KEY (`id`));

  CREATE TABLE `ecommerce`.`enod_state` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT , 
  `name` VARCHAR(191) NOT NULL, 
    `short_name` VARCHAR(191) NOT NULL, 
  `code` VARCHAR(45) NULL,
    `country_id` BIGINT UNSIGNED NULL DEFAULT NULL,
  `deleted_at` TIMESTAMP NULL DEFAULT NULL , 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
    `updated_at` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
  PRIMARY KEY (`id`)
	FOREIGN KEY (`country_id`) REFERENCES `enod_country`(`id`) ON DELETE CASCADE,
  
  );