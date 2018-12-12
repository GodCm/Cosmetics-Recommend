/*
 Navicat Premium Data Transfer

 Source Server         : cos
 Source Server Type    : SQLite
 Source Server Version : 3017000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3017000
 File Encoding         : 65001

 Date: 09/12/2018 16:26:01
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for perfume
-- ----------------------------
DROP TABLE IF EXISTS "perfume";
CREATE TABLE "perfume" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "goods_img" TEXT,
  "goods_price" TEXT,
  "goods_name" TEXT,
  "sales" TEXT,
  "shops" TEXT
);

-- ----------------------------
-- Records of "perfume"
-- ----------------------------
INSERT INTO "perfume" VALUES (241, 'https://img14.360buyimg.com/n7/jfs/t20344/104/1065145974/248224/f0c55b5d/5b1f2928Nb92d08db.jpg', 89.00, '【品牌自营】精美礼盒亚菲儿女士', 80000.0, '亚菲儿官方旗舰店');
INSERT INTO "perfume" VALUES (242, 'https://img11.360buyimg.com/n7/jfs/t17710/115/829347867/211266/623e1384/5aab5ed4Nb72829cc.jpg', 349.00, '范思哲(VERSACE)晶钻女用', 140000.0, '范思哲(VERSACE)香氛京东自营专区');
INSERT INTO "perfume" VALUES (243, 'https://img11.360buyimg.com/n7/jfs/t29869/345/225145581/63810/7e509ae8/5beb8831N2e83562d.jpg', 139.00, '菲拉格慕（Ferragamo）蓝色经典男士淡', 200000.0, '菲拉格慕香氛京东自营旗舰店');
INSERT INTO "perfume" VALUES (244, 'https://img11.360buyimg.com/n7/jfs/t23341/251/2047778803/118472/5500cec4/5b72bafbN18a20e60.jpg', 489.00, '古驰（GUCCI）罪爱女用淡', 92000.0, '古驰香氛京东自营官方旗舰店');
INSERT INTO "perfume" VALUES (245, 'https://img11.360buyimg.com/n7/jfs/t21445/158/1465717937/148877/a7f0e91d/5b29aecbNce5e3621.jpg', 139.00, '菲拉格慕（Ferragamo）梦中情人淡', 210000.0, '菲拉格慕香氛京东自营旗舰店');
INSERT INTO "perfume" VALUES (246, 'https://img11.360buyimg.com/n7/jfs/t25063/168/743636901/125364/94a8babc/5b7b981dNd9f2beb5.jpg', 49.00, '【第二件1元】花之物语男士', 21000.0, '鹿尚美妆专营店');
INSERT INTO "perfume" VALUES (247, 'https://img10.360buyimg.com/n7/jfs/t22882/36/2088139825/124760/e29d98f9/5b72bbbcNca8bb357.jpg', 479.00, '古驰（GUCCI）绚丽栀子淡', 30000.0, '古驰香氛京东自营官方旗舰店');
INSERT INTO "perfume" VALUES (248, 'https://img13.360buyimg.com/n7/jfs/t5800/98/7939158583/74320/5540eadb/597565a4N405e0973.jpg', 799.00, 'Chanel香奈儿邂逅柔情淡', 66000.0, '香奈儿京东自营专区');
INSERT INTO "perfume" VALUES (249, 'https://img14.360buyimg.com/n7/jfs/t20983/44/2545932288/293266/15779a38/5b5abcfaNa49e012e.jpg', 69.90, '【品牌自营】买1送7许愿精灵精美礼盒女士', 3900, 'beauty药妆');
INSERT INTO "perfume" VALUES (250, 'https://img13.360buyimg.com/n7/jfs/t29083/269/275811469/519347/16bab9b0/5bee1a95N8a8ca222.jpg', 55.00, '图拉斯（TORRAS）汽车', 190000.0, '图拉斯汽车用品京东自营旗舰店');
INSERT INTO "perfume" VALUES (251, 'https://img11.360buyimg.com/n7/jfs/t23806/88/233366980/148877/8295937c/5b29b2baNd86ac383.jpg', 219.00, '菲拉格慕（Ferragamo）梦中情人淡', 210000.0, '菲拉格慕香氛京东自营旗舰店');
INSERT INTO "perfume" VALUES (252, 'https://img13.360buyimg.com/n7/jfs/t15637/288/1233302777/407296/f44f6772/5a4ed7c8Ncddecd34.jpg', 62.00, '香百年 汽车香膏 车载固体', 87000.0, '香百年旗舰店');
INSERT INTO "perfume" VALUES (253, 'https://img10.360buyimg.com/n7/jfs/t1/7295/20/2888/290112/5bd42f3aE16e6f922/1aac1663ddb7c842.jpg', 29.90, '【两瓶45元 买二送二】男士', 9000, '慕语化妆品专营店');
INSERT INTO "perfume" VALUES (254, 'https://img10.360buyimg.com/n7/jfs/t17524/49/1067545775/63810/7e509ae8/5ab852deN19eaad4c.jpg', 99.00, '菲拉格慕（Ferragamo）蓝色经典男士淡', 200000.0, '菲拉格慕香氛京东自营旗舰店');
INSERT INTO "perfume" VALUES (255, 'https://img12.360buyimg.com/n7/jfs/t15370/11/1794783717/240753/437e5273/5a586e1eNf4aaa3ab.jpg', 689.00, '古驰（GUCCI）罪爱女用淡', 92000.0, '古驰香氛京东自营官方旗舰店');
INSERT INTO "perfume" VALUES (256, 'https://img12.360buyimg.com/n7/jfs/t16396/168/2305920444/249832/93229e0a/5aab5efdNdfa110cb.jpg', 515.00, '范思哲(VERSACE)晶钻女用', 140000.0, '范思哲(VERSACE)香氛京东自营专区');
INSERT INTO "perfume" VALUES (257, 'https://img10.360buyimg.com/n7/jfs/t6694/321/1677005275/168960/881e8543/59560ef5N39735e0e.jpg', 69.00, '花之物语 栀子花茉莉玫瑰苍兰女士', 2200, '爱普仕个护专营店');
INSERT INTO "perfume" VALUES (258, 'https://img11.360buyimg.com/n7/jfs/t27148/291/464057544/42807/198a7a1a/5baf251bN233ec05c.jpg', 289.00, '卡尔文克雷恩（Calvin Klein）卡莱优淡', 90000.0, '卡尔文克雷恩香氛京东自营官方旗舰店');
INSERT INTO "perfume" VALUES (259, 'https://img14.360buyimg.com/n7/jfs/t1/9863/27/7690/181793/5c087bc8E5e7ec8f1/10e503256ec4ec2f.jpg', 138.00, '【法国品牌自营】娜赛儿（LA STAR）莫奈花园', 3100, '娜赛儿化妆品旗舰店');
INSERT INTO "perfume" VALUES (260, 'https://img12.360buyimg.com/n7/jfs/t24070/323/888885603/118190/8c56a694/5b485df4Nd74452a2.jpg', 399.00, '安娜苏（Anna sui）筑梦天马淡', 4000, '安娜苏（AnnaSui)美妆京东自营专区');
INSERT INTO "perfume" VALUES (261, 'https://img11.360buyimg.com/n7/jfs/t19537/76/1542807912/98390/5462b95d/5ad01cf0N4ff1fe74.jpg', 108.00, '【品牌自营】亚菲儿非凡男士', 51000.0, '亚菲儿官方旗舰店');
INSERT INTO "perfume" VALUES (262, 'https://img14.360buyimg.com/n7/jfs/t20917/52/1454115267/148877/8d1ccd25/5b29b0a7N8500a26b.jpg', 189.00, '菲拉格慕（Ferragamo）梦中情人淡', 210000.0, '菲拉格慕香氛京东自营旗舰店');
INSERT INTO "perfume" VALUES (263, 'https://img13.360buyimg.com/n7/jfs/t27898/100/1695453261/229583/b4d0e7c3/5bea9dc4N512ef02f.jpg', 159.00, '伊丽莎白雅顿第五大道喷式淡', 84000.0, '伊丽莎白雅顿京东自营官方旗舰店');
INSERT INTO "perfume" VALUES (264, 'https://img10.360buyimg.com/n7/jfs/t5920/117/6148316657/111637/2e617057/597041acN3d527f03.jpg', 600.00, '祖玛珑 （jomalone ）蓝风铃', 46000.0, '祖·玛珑Jo Malone京东自营专区');
INSERT INTO "perfume" VALUES (265, 'https://img14.360buyimg.com/n7/jfs/t18238/223/2319749102/449392/bb52f32c/5af2b6a1N6f871d9c.jpg', 98.00, '未见 女士', 600, '一千零一次香遇官方旗舰店');
INSERT INTO "perfume" VALUES (266, 'https://img14.360buyimg.com/n7/jfs/t1/326/38/9692/83273/5bac7ee5E1c06231d/76bd415104f8f5de.jpg', 388.00, '莫杰（MARC JACOBS）雏菊女士', 26000.0, '莫杰香氛京东自营官方旗舰店');
INSERT INTO "perfume" VALUES (267, 'https://img12.360buyimg.com/n7/jfs/t26767/84/884660401/373853/ff35eaed/5bbc74a2Na93b3dfd.jpg', 59.00, '气味图书馆（SCENT LIBRARY）经典', 58000.0, '气味图书馆京东自营旗舰店');
INSERT INTO "perfume" VALUES (268, 'https://img14.360buyimg.com/n7/jfs/t19156/339/1584391887/208902/a6840941/5ad03ca2Neea7805a.jpg', 375.00, '香奈儿（Chanel） 女士', 10000.0, '优品美妆专营店');
INSERT INTO "perfume" VALUES (269, 'https://img13.360buyimg.com/n7/jfs/t27469/152/1755228154/150399/6f99e1a/5becda85Nf2a99142.jpg', 109.00, '【品牌自营】法颂男士', 9500, '法颂旗舰店');
INSERT INTO "perfume" VALUES (270, 'https://img11.360buyimg.com/n7/jfs/t16033/143/2724184375/63810/7e509ae8/5ab852baN88353c7a.jpg', 239.00, '菲拉格慕（Ferragamo）蓝色经典男士淡', 200000.0, '菲拉格慕香氛京东自营旗舰店');
INSERT INTO "perfume" VALUES (271, 'https://img13.360buyimg.com/n7/jfs/t1/9533/23/4292/212851/5bda673bE98bbdeea/33566d46c94910dd.jpg', 59.00, '【限今日 买一送一】男士', 9200, '南方南化妆品专营店');
INSERT INTO "perfume" VALUES (272, 'https://img10.360buyimg.com/n7/jfs/t25960/357/2662839604/58574/5c5406e2/5bebdbe0Nf2b62e7a.jpg', 689.00, '古驰 GUCCI  绚丽栀子香型女性淡', 30000.0, '古驰香氛京东自营官方旗舰店');
INSERT INTO "perfume" VALUES (273, 'https://img12.360buyimg.com/n7/jfs/t21184/329/1540568758/222070/576a1c45/5b2cb952Nc43599d4.jpg', 78.00, '冰希黎（Boitown）【品牌自营】清泉男士', 8400, '冰希黎旗舰店');
INSERT INTO "perfume" VALUES (274, 'https://img14.360buyimg.com/n7/jfs/t1/2213/15/9393/73190/5bac8a18E1fe45c6e/ba94d0c5fbe29f40.jpg', 289.00, '莫杰（ MARC JACOBS ）雏菊梦境女士淡', 14000.0, '莫杰香氛京东自营官方旗舰店');
INSERT INTO "perfume" VALUES (275, 'https://img10.360buyimg.com/n7/jfs/t1/2582/24/9468/316821/5bacacb7Ed3014404/aef3e19fa060289c.jpg', 86.90, '【品牌自营】法颂浪漫精美女士', 51000.0, '法颂旗舰店');
INSERT INTO "perfume" VALUES (276, 'https://img10.360buyimg.com/n7/jfs/t29581/334/771269033/399715/e15a7cda/5bfe63ebN6b0bbda6.jpg', 59.00, '拽猫 汽车', 100, '拽猫车品官方旗舰店');
INSERT INTO "perfume" VALUES (277, 'https://img13.360buyimg.com/n7/jfs/t5659/295/502584228/416899/115b29fa/591fd047N503b425e.jpg', 99.00, '奕度风尚系列1°费洛蒙男士', 130000.0, '奕度香氛京东自营旗舰店');
INSERT INTO "perfume" VALUES (278, 'https://img10.360buyimg.com/n7/jfs/t28963/61/807154610/65406/756d9aa3/5bfe60b8N1a3c8284.jpg', 68.00, '女士喷雾', 2300, '美聚化妆品专营店');
INSERT INTO "perfume" VALUES (279, 'https://img13.360buyimg.com/n7/jfs/t25465/54/1899448185/330053/322cd2a6/5bbec004N742ee563.jpg', 20.00, '【两瓶29元，限今天，可货到付款】 抖音同款风尚系列', 5400, '小城伊香旗舰店');
INSERT INTO "perfume" VALUES (280, 'https://img11.360buyimg.com/n7/jfs/t27670/17/516917307/44438/f8955fc8/5baf261aNc8d5fa46.jpg', 259.00, '卡尔文克雷恩（Calvin Klein）因为你男用淡', 63000.0, '卡尔文克雷恩香氛京东自营官方旗舰店');
INSERT INTO "perfume" VALUES (281, 'https://img12.360buyimg.com/n7/jfs/t1/17534/2/95/315023/5c0727e8Ed0a66ecc/b00179e081a5e1e8.jpg', 199.00, '浪漫香榭丽 奢华女士金色', 600, '浪漫香榭丽化妆品旗舰店');
INSERT INTO "perfume" VALUES (282, 'https://img14.360buyimg.com/n7/jfs/t18505/262/855698588/316640/1a1dc5c7/5aabdc90N80b57bde.jpg', 368.00, '香奈儿（Chanel） Chanel香奈儿', 10000.0, '万尔化妆品专营店');
INSERT INTO "perfume" VALUES (283, 'https://img10.360buyimg.com/n7/jfs/t15166/309/1761705543/155825/639d268a/5a55e4aeN7b7c3e3b.jpg', 489.00, '古驰（GUCCI）竹韵女士淡', 11000.0, '古驰香氛京东自营官方旗舰店');
INSERT INTO "perfume" VALUES (284, 'https://img13.360buyimg.com/n7/jfs/t17350/141/2412970529/73632/ef83a9e6/5af3e236Nda77575e.jpg', 299.00, '安娜苏（Anna sui）许愿精灵', 38000.0, '安娜苏（AnnaSui)美妆京东自营专区');
INSERT INTO "perfume" VALUES (285, 'https://img14.360buyimg.com/n7/jfs/t20269/274/124848590/152199/429d24d8/5afd26cbN9f396add.jpg', 199.00, '菲拉格慕（Ferragamo）菲拉格慕女士', 210000.0, '菲拉格慕香氛京东自营旗舰店');
INSERT INTO "perfume" VALUES (286, 'https://img12.360buyimg.com/n7/jfs/t29971/276/805960497/458025/86faeec5/5bfe0b1bN956261be.jpg', 83.00, '图拉斯（TORRAS）汽车', 190000.0, '图拉斯汽车用品京东自营旗舰店');
INSERT INTO "perfume" VALUES (287, 'https://img13.360buyimg.com/n7/jfs/t1/8472/16/3407/97556/5bd6b833E35c9f289/59807ca627c64ff8.jpg', 839.00, '古驰（GUCCI）罪爱女性淡', 92000.0, '古驰香氛京东自营官方旗舰店');
INSERT INTO "perfume" VALUES (288, 'https://img13.360buyimg.com/n7/jfs/t19456/243/928215857/251338/557aaad/5ab47290N10e77a18.jpg', 540.00, '迪奥（Dior）迪奥小姐花漾淡香氛（EDT）30ml（迪奥小姐花漾淡', 37000.0, '迪奥（Dior）美妆京东自营专区');
INSERT INTO "perfume" VALUES (289, 'https://img11.360buyimg.com/n7/jfs/t1/8392/29/6907/209278/5be288feE65fda97d/d0b6862e7cd5aa2d.jpg', 299.00, '菲水 灵芝助眠', 1400, '菲水旗舰店');
INSERT INTO "perfume" VALUES (290, 'https://img13.360buyimg.com/n7/jfs/t1/10739/6/3825/401852/5c07aa6bE01ef876b/6a67e881814ac0b0.jpg', 98.00, '图拉斯 汽车', 10000.0, '派图雅汽车用品专营店');
INSERT INTO "perfume" VALUES (291, 'https://img12.360buyimg.com/n7/jfs/t5641/240/2200342571/206323/d24c796/592e40a4N88606d99.jpg', 29.80, '香百年 汽车', 96000.0, '香百年旗舰店');
INSERT INTO "perfume" VALUES (292, 'https://img11.360buyimg.com/n7/jfs/t1/186/25/9175/382189/5bab2ac5E6df17768/25705a93f94e3859.jpg', 639.00, '【礼盒包装】香奈儿（Chanel）', 33000.0, '美伊美');
INSERT INTO "perfume" VALUES (293, 'https://img14.360buyimg.com/n7/jfs/t5998/90/6016711594/96856/963bf417/597052d3N0a76b87c.jpg', 600.00, '祖玛珑（jomalone）英国梨与小苍兰30ml （女士', 46000.0, '祖·玛珑Jo Malone京东自营专区');
INSERT INTO "perfume" VALUES (294, 'https://img13.360buyimg.com/n7/jfs/t23446/358/2563449956/47938/dc1c2ab8/5baf2c67N5c2c57d5.jpg', 289.00, '卡文克莱（Calvin Klein）因为你女用淡', 63000.0, '卡尔文克雷恩香氛京东自营官方旗舰店');
INSERT INTO "perfume" VALUES (295, 'https://img13.360buyimg.com/n7/jfs/t1/6153/34/8289/174159/5c088fd5Ea007c0bd/59d97932b021c084.jpg', 20.00, '【两瓶29元】男士', 2800, '鹿尚彩妆专营店');
INSERT INTO "perfume" VALUES (296, 'https://img13.360buyimg.com/n7/jfs/t20122/275/552300358/75041/3cc02ebc/5afd3707N4052d80c.jpg', 359.00, '范思哲(VERSACE)星夜水晶女士', 6300, '范思哲(VERSACE)香氛京东自营专区');
INSERT INTO "perfume" VALUES (297, 'https://img14.360buyimg.com/n7/jfs/t1/16269/32/302/221179/5c08b92fE89efcf32/c1e94febed7d7cfa.jpg', 690.00, 'MIU MIU 缪缪 滢蓝女士香氛 30ml', 100, '丝芙兰官方旗舰店');
INSERT INTO "perfume" VALUES (298, 'https://img10.360buyimg.com/n7/jfs/t26473/64/1574865655/88337/c3bddefc/5be6f9e9Nda08b5e5.jpg', 198.00, '冰希黎【品牌自营】流沙金女士', 1900, '冰希黎旗舰店');
INSERT INTO "perfume" VALUES (299, 'https://img14.360buyimg.com/n7/jfs/t19144/55/833449289/143990/39e2fdd8/5aab6078N579e3826.jpg', 435.00, '范思哲(VERSACE)男士', 37000.0, '范思哲(VERSACE)香氛京东自营专区');
INSERT INTO "perfume" VALUES (300, 'https://img12.360buyimg.com/n7/jfs/t29350/365/528428938/214395/f7e0999a/5bf64988N641bab12.jpg', 68.00, '康车宝 汽车', 71000.0, '康车宝汽车用品京东自营旗舰店');

-- ----------------------------
-- Auto increment value for perfume
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 300 WHERE name = 'perfume';

PRAGMA foreign_keys = true;
