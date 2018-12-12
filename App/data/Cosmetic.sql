/*
 Navicat Premium Data Transfer

 Source Server         : cos
 Source Server Type    : SQLite
 Source Server Version : 3017000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3017000
 File Encoding         : 65001

 Date: 04/12/2018 21:21:45
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS "comment";
CREATE TABLE "comment" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "username" TEXT,
  "commit" TEXT,
  "com_time" TEXT,
  "type" TEXT
);

-- ----------------------------
-- Table structure for lipstick
-- ----------------------------
DROP TABLE IF EXISTS "lipstick";
CREATE TABLE "lipstick" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "goods_name" TEXT,
  "goods_price" TEXT,
  "goods_img" TEXT,
  "sales" TEXT,
  "shops" TEXT
);

-- ----------------------------
-- Table structure for mask
-- ----------------------------
DROP TABLE IF EXISTS "mask";
CREATE TABLE "mask" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "goods_name" TEXT,
  "goods_price" TEXT,
  "goods_img" TEXT,
  "sales" TEXT,
  "shops" TEXT
);

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS "sqlite_sequence";
CREATE TABLE "sqlite_sequence" (
  "name",
  "seq"
);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "users";
CREATE TABLE "users" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "username" TEXT,
  "password" TEXT,
  "email" TEXT,
  "icon" TEXT,
  "reserver" TEXT
);

PRAGMA foreign_keys = true;

