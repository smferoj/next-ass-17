/*
  Warnings:

  - You are about to drop the column `cus_details` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `delivery_status` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `payment_status` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `ship_details` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `tran_id` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `val_id` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `brand_id` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `discount` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `discount_price` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `image` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `prict` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `remark` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `short_des` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `star` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `stock` on the `products` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `products` table. All the data in the column will be lost.
  - You are about to drop the `brands` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `categoies` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `customer_profiles` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `policies` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `product_carts` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `product_details` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `product_reviews` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `product_sliders` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `product_wishes` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `profile` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `sslcommerz_accounts` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[user_id]` on the table `invoice_products` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[user_id]` on the table `invoices` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[user_id]` on the table `products` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `customer_id` to the `invoices` table without a default value. This is not possible if the table is not empty.
  - Added the required column `discount` to the `invoices` table without a default value. This is not possible if the table is not empty.
  - Added the required column `image_url` to the `products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price` to the `products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `unit` to the `products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `products` table without a default value. This is not possible if the table is not empty.
  - Added the required column `firstName` to the `users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `lastName` to the `users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `mobile` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `customer_profiles` DROP FOREIGN KEY `customer_profiles_user_id_fkey`;

-- DropForeignKey
ALTER TABLE `product_carts` DROP FOREIGN KEY `product_carts_product_id_fkey`;

-- DropForeignKey
ALTER TABLE `product_carts` DROP FOREIGN KEY `product_carts_user_id_fkey`;

-- DropForeignKey
ALTER TABLE `product_details` DROP FOREIGN KEY `product_details_product_id_fkey`;

-- DropForeignKey
ALTER TABLE `product_reviews` DROP FOREIGN KEY `product_reviews_customer_id_fkey`;

-- DropForeignKey
ALTER TABLE `product_reviews` DROP FOREIGN KEY `product_reviews_product_id_fkey`;

-- DropForeignKey
ALTER TABLE `product_sliders` DROP FOREIGN KEY `product_sliders_product_id_fkey`;

-- DropForeignKey
ALTER TABLE `product_wishes` DROP FOREIGN KEY `product_wishes_product_id_fkey`;

-- DropForeignKey
ALTER TABLE `product_wishes` DROP FOREIGN KEY `product_wishes_user_id_fkey`;

-- DropForeignKey
ALTER TABLE `products` DROP FOREIGN KEY `products_brand_id_fkey`;

-- DropForeignKey
ALTER TABLE `products` DROP FOREIGN KEY `products_category_id_fkey`;

-- AlterTable
ALTER TABLE `invoices` DROP COLUMN `cus_details`,
    DROP COLUMN `delivery_status`,
    DROP COLUMN `payment_status`,
    DROP COLUMN `ship_details`,
    DROP COLUMN `tran_id`,
    DROP COLUMN `val_id`,
    ADD COLUMN `customer_id` BIGINT UNSIGNED NOT NULL,
    ADD COLUMN `discount` VARCHAR(500) NOT NULL;

-- AlterTable
ALTER TABLE `products` DROP COLUMN `brand_id`,
    DROP COLUMN `discount`,
    DROP COLUMN `discount_price`,
    DROP COLUMN `image`,
    DROP COLUMN `prict`,
    DROP COLUMN `remark`,
    DROP COLUMN `short_des`,
    DROP COLUMN `star`,
    DROP COLUMN `stock`,
    DROP COLUMN `title`,
    ADD COLUMN `image_url` VARCHAR(300) NOT NULL,
    ADD COLUMN `name` VARCHAR(50) NOT NULL,
    ADD COLUMN `price` VARCHAR(300) NOT NULL,
    ADD COLUMN `unit` VARCHAR(300) NOT NULL,
    ADD COLUMN `user_id` BIGINT UNSIGNED NOT NULL;

-- AlterTable
ALTER TABLE `users` ADD COLUMN `firstName` VARCHAR(50) NOT NULL,
    ADD COLUMN `lastName` VARCHAR(50) NOT NULL,
    ADD COLUMN `mobile` VARCHAR(50) NOT NULL;

-- DropTable
DROP TABLE `brands`;

-- DropTable
DROP TABLE `categoies`;

-- DropTable
DROP TABLE `customer_profiles`;

-- DropTable
DROP TABLE `policies`;

-- DropTable
DROP TABLE `post`;

-- DropTable
DROP TABLE `product_carts`;

-- DropTable
DROP TABLE `product_details`;

-- DropTable
DROP TABLE `product_reviews`;

-- DropTable
DROP TABLE `product_sliders`;

-- DropTable
DROP TABLE `product_wishes`;

-- DropTable
DROP TABLE `profile`;

-- DropTable
DROP TABLE `sslcommerz_accounts`;

-- DropTable
DROP TABLE `user`;

-- CreateTable
CREATE TABLE `categories` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `user_id` BIGINT UNSIGNED NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `categories_user_id_key`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `customers` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `mobile` VARCHAR(50) NOT NULL,
    `user_id` BIGINT UNSIGNED NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `customers_email_key`(`email`),
    UNIQUE INDEX `customers_user_id_key`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE UNIQUE INDEX `invoice_products_user_id_key` ON `invoice_products`(`user_id`);

-- CreateIndex
CREATE UNIQUE INDEX `invoices_user_id_key` ON `invoices`(`user_id`);

-- CreateIndex
CREATE UNIQUE INDEX `products_user_id_key` ON `products`(`user_id`);

-- AddForeignKey
ALTER TABLE `categories` ADD CONSTRAINT `categories_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products` ADD CONSTRAINT `products_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products` ADD CONSTRAINT `products_category_id_fkey` FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `customers` ADD CONSTRAINT `customers_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `invoices` ADD CONSTRAINT `invoices_customer_id_fkey` FOREIGN KEY (`customer_id`) REFERENCES `customers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
