/*
 Navicat Premium Data Transfer

 Source Server         : cos
 Source Server Type    : SQLite
 Source Server Version : 3017000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3017000
 File Encoding         : 65001

 Date: 09/12/2018 16:47:48
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for BBCream
-- ----------------------------
DROP TABLE IF EXISTS "BBCream";
CREATE TABLE "BBCream" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "goods_img" TEXT,
  "goods_price" text,
  "goods_name" TEXT,
  "sales" TEXT,
  "shops" TEXT
);

-- ----------------------------
-- Records of "BBCream"
-- ----------------------------
INSERT INTO "BBCream" VALUES (301, 'https://img12.360buyimg.com/n7/jfs/t26194/357/2288301569/245246/224d1e02/5c05f03fN772697fe.jpg', 53.00, '谜尚（Missha）谜尚大红', 30, 'Vancy海外专营店');
INSERT INTO "BBCream" VALUES (302, 'https://img12.360buyimg.com/n7/jfs/t1/22094/22/414/102398/5c09cb13E9d8aa67c/469ec34c78512b2a.jpg', 99.50, '谜尚（MISSHA）魅力润颜修容霜SPF42/PA+++[21号]50ml（气垫', 320000.0, '谜尚京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (303, 'https://img14.360buyimg.com/n7/jfs/t1/2602/8/10697/54836/5bcee674E2e97d019/f59fe20af4150209.jpg', 117.00, '美宝莲 (MAYBELLINE) 巨遮瑕新颜霜 30ML 象牙色  按压喷头', 250000.0, '美宝莲京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (304, 'https://img11.360buyimg.com/n7/jfs/t15940/183/2586728125/26105/c076cbc0/5ab1b2cfN3459f820.jpg', 209.00, '韩国 蒂佳婷（Dr.Jart+）新版三代银色银管遮瑕', 9500, '未知');
INSERT INTO "BBCream" VALUES (305, 'https://img10.360buyimg.com/n7/jfs/t1/3740/10/11268/53773/5bcee5a3E32c46416/b6a70c5e30cd9522.jpg', 119.00, '美宝莲 ( MAYBELLINE )巨遮瑕新颜霜 30ML 自然色  按压喷头', 250000.0, '美宝莲京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (306, 'https://img13.360buyimg.com/n7/jfs/t1/14833/15/427/102414/5c09cdc4Ec71fde47/56538741a28c5dfc.jpg', 99.50, '谜尚（MISSHA）魅力润颜修容霜SPF42/PA+++[23号]50ml（气垫', 320000.0, '谜尚京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (307, 'https://img14.360buyimg.com/n7/jfs/t18652/25/800875080/36471/f7ad158a/5aa8dfc9Nd0cb1df6.jpg', 119.00, '欧莱雅（LOREAL）奇焕光彩粉嫩透亮修颜霜 30ml（欧莱雅彩妆', 98000.0, '欧莱雅京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (308, 'https://img10.360buyimg.com/n7/jfs/t20218/289/680005086/115533/c9f0e4a7/5b1539afN86be4d95.jpg', 177.00, '美宝莲（MAYBELLINE）超然无瑕轻垫霜02自然色 14g（', 130000.0, '美宝莲京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (309, 'https://img10.360buyimg.com/n7/jfs/t1/15251/37/412/88011/5c09ccb9E766dfd7f/07159aa6b3e900fb.jpg', 139.00, '谜尚（MISSHA）魅力幻金凝彩至真修容霜SPF25/PA++[21号 亮肤色]45g（', 320000.0, '谜尚京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (310, 'https://img12.360buyimg.com/n7/jfs/t25666/327/2007868947/238314/9c65c26a/5bc0478bNe28bbff4.jpg', 102.00, '珀莱雅靓白肌密超名模', 12000.0, '珀莱雅京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (311, 'https://img13.360buyimg.com/n7/jfs/t1/1615/29/14238/95026/5bdac658Ed85635bf/1b2b75d39261b342.jpg', 69.00, 'ZEESEA 滋色滚轮气垫', 28000.0, 'ZEESEA旗舰店');
INSERT INTO "BBCream" VALUES (312, 'https://img14.360buyimg.com/n7/jfs/t29980/236/139458105/114579/9b3177ad/5be94126N52fe0c4d.jpg', 79.00, '卡姿兰（Carslan）丝滑无瑕', 75000.0, '卡姿兰京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (313, 'https://img12.360buyimg.com/n7/jfs/t7903/75/3541171897/288883/d4c9cde3/59f05d37N218fc8d6.jpg', 233.00, '兰芝(LANEIGE) 聚光小白光气垫', 78000.0, '海囤全球个护美妆海外自营专区');
INSERT INTO "BBCream" VALUES (314, 'https://img13.360buyimg.com/n7/jfs/t17446/352/1415143705/203490/68cdb4ee/5ac74800N0824a445.jpg', 49.90, 'KOOGIS 【买1送1】', 55000.0, 'KOOGIS官方旗舰店');
INSERT INTO "BBCream" VALUES (315, 'https://img13.360buyimg.com/n7/jfs/t16702/285/1698279197/123596/cde2bbfe/5ad467cdN45ddefa0.jpg', 117.00, '美宝莲( MAYBELLINE )巨遮瑕光感新颜霜 30ML 自然色（按压喷头', 250000.0, '美宝莲京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (316, 'https://img13.360buyimg.com/n7/jfs/t28351/161/159666126/440708/170e1875/5be9a85cN237e18a2.jpg', 289.00, '韩束护肤品化妆品套装巨补水保湿氨基酸提亮肤色 墨菊补水润养礼盒八件套(洗面奶爽肤水乳液精华霜', 190000.0, 'KANS韩束京东自营旗舰店');
INSERT INTO "BBCream" VALUES (317, 'https://img10.360buyimg.com/n7/jfs/t24676/20/2154160867/227391/c0431cf9/5bc585e8N9ce5e136.jpg', 128.00, '珀莱雅靓白芯肌晶采', 12000.0, '珀莱雅京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (318, 'https://img13.360buyimg.com/n7/jfs/t17974/196/1758646543/123596/cde2bbfe/5ad467b3Nd2145e27.jpg', 117.00, '美宝莲( MAYBELLINE )巨遮瑕光感新颜霜 30ML 亮肤色（按压喷头', 250000.0, '美宝莲京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (319, 'https://img11.360buyimg.com/n7/jfs/t23413/232/2042666969/151249/ff1ca60b/5b7240caNd4d1b9a9.jpg', 233.00, '兰芝(LANEIGE)  聚光小白光气垫', 78000.0, '海囤全球个护美妆海外自营专区');
INSERT INTO "BBCream" VALUES (320, 'https://img13.360buyimg.com/n7/jfs/t19366/188/1674866099/183858/5dc7cac5/5ad550c8Nbc315929.png', 59.00, '珀莱雅（PROYA） CC霜粉底液', 14000.0, '珀莱雅官方旗舰店');
INSERT INTO "BBCream" VALUES (321, 'https://img12.360buyimg.com/n7/jfs/t1/1948/9/2748/93129/5b975504E3ccecb22/0ea1c09469a641be.jpg', 89.00, '高姿COGI多效修容霜SPF30　PA++45g', 14000.0, 'COGI高姿京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (322, 'https://img12.360buyimg.com/n7/jfs/t21340/284/2058341699/126002/bef9c9c7/5b447e30N4e692564.jpg', 79.90, '透蜜气垫', 63000.0, '透蜜旗舰店');
INSERT INTO "BBCream" VALUES (323, 'https://img12.360buyimg.com/n7/jfs/t29152/178/149842129/114579/9b3177ad/5be940fcN729d0ebb.jpg', 79.00, '卡姿兰（Carslan）丝滑无瑕', 75000.0, '卡姿兰京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (324, 'https://img12.360buyimg.com/n7/jfs/t25627/228/2549582322/188507/125329f6/5be94c95N12c0484d.jpg', 99.00, '高姿COGI星颜匀净气垫CC霜15g+15g替换装 气垫', 71000.0, 'COGI高姿京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (325, 'https://img10.360buyimg.com/n7/jfs/t3094/192/4113674638/108748/387915fa/5801af6eN8f65e601.jpg', 61.00, '水密码水漾优白', 66000.0, '水密码京东自营旗舰店');
INSERT INTO "BBCream" VALUES (326, 'https://img11.360buyimg.com/n7/jfs/t17983/359/1714353583/102249/996fa49a/5ad46835N31c3fd1b.jpg', 117.00, '美宝莲 (MAYBELLINE )巨遮瑕柔雾新颜霜 30ML 自然色（按压喷头', 250000.0, '美宝莲京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (327, 'https://img13.360buyimg.com/n7/jfs/t8527/233/482340617/227650/b05f7a3e/59a8de85N97a6486a.jpg', 490.00, '迪奥（Dior）克丽丝汀凝脂恒久气垫粉底 010 SPF 40 PA+++（象牙白 气垫', 10000.0, '迪奥（Dior）美妆京东自营专区');
INSERT INTO "BBCream" VALUES (328, 'https://img10.360buyimg.com/n7/jfs/t25795/106/168749463/208224/b65dd284/5b68058dN8b776c0d.jpg', 102.00, '珀莱雅靓白肌密超名模', 12000.0, '珀莱雅京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (329, 'https://img10.360buyimg.com/n7/jfs/t1/11691/1/239/92703/5be2b3caE155a7ddf/1c70b838d3f6063f.jpg', 79.00, '【第二只1元】光感遮瑕cc棒遮瑕粉底液保湿遮瑕液遮瑕膏遮盖痘印', 12000.0, '拾回美妆专营店');
INSERT INTO "BBCream" VALUES (330, 'https://img10.360buyimg.com/n7/jfs/t1/9140/5/4620/81875/5bdbcc14Ec2af4f51/49ceb82b17317b6a.jpg', 89.00, '谜尚魅力润颜修容霜SPF42/PA+++遮瑕保湿裸妆', 7700, '谜尚Missha旗舰店');
INSERT INTO "BBCream" VALUES (331, 'https://img10.360buyimg.com/n7/jfs/t6064/224/8795424212/213836/5b7aacd7/598c2b8fNe5467be8.jpg', 149.00, '韩国进口 爱敬(AGE) 气垫', 130000.0, '海囤全球韩国爱敬生活馆');
INSERT INTO "BBCream" VALUES (332, 'https://img10.360buyimg.com/n7/jfs/t1/8725/3/8218/232461/5c0a564dEb91a1e52/837bfc2889bd5ca1.jpg', 219.00, '一叶子化妆品套装 保湿补水 淡化干纹 鲜补水保湿焕颜护肤礼盒8件套（洗面奶+水+乳液+面霜+眼霜+', 180000.0, '一叶子京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (333, 'https://img13.360buyimg.com/n7/jfs/t19522/317/2588864726/164271/5f598e64/5b07b36dNaf6d6227.jpg', 199.00, '美宝莲（MAYBELLINE）巨遮瑕底妆组合（巨遮瑕', 250000.0, '美宝莲京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (334, 'https://img11.360buyimg.com/n7/jfs/t29197/285/292754266/374154/7035ff20/5bee5c27Ne3565cf9.jpg', 102.00, '珀莱雅（PROYA）', 13000.0, '珀莱雅官方旗舰店');
INSERT INTO "BBCream" VALUES (335, 'https://img14.360buyimg.com/n7/jfs/t1/23746/20/457/88011/5c09eb08Ee25fca92/a7b53eed66429991.jpg', 139.00, '谜尚（MISSHA）魅力幻金凝彩至真修容霜SPF30/PA++[13号 嫩肤色]45g（', 320000.0, '谜尚京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (336, 'https://img10.360buyimg.com/n7/jfs/t7018/253/2467956435/235696/b458af46/598c2fa7N75ce5c93.jpg', 149.00, '韩国进口 爱敬(AGE) 气垫', 130000.0, '海囤全球韩国爱敬生活馆');
INSERT INTO "BBCream" VALUES (337, 'https://img12.360buyimg.com/n7/jfs/t22474/261/1897429766/136292/c52d96ee/5b6d4174Nf3538bc5.jpg', 135.00, '伊思（It’s skin）晶钻蜗牛', 17000.0, '海囤全球个护美妆海外自营专区');
INSERT INTO "BBCream" VALUES (338, 'https://img11.360buyimg.com/n7/jfs/t27865/234/269100545/380566/8e396ce2/5b8cc528Nb6520d4f.jpg', 249.00, '韩束护肤品化妆品套装补水保湿改善暗沉遮瑕 红石榴鲜活悦享礼盒六件套（洗面奶爽肤水乳液眼霜面霜', 300000.0, 'KANS韩束京东自营旗舰店');
INSERT INTO "BBCream" VALUES (339, 'https://img14.360buyimg.com/n7/jfs/t1/1615/29/14238/95026/5bdac658Ed85635bf/1b2b75d39261b342.jpg', 69.00, 'ZEESEA 滋色滚轮气垫', 28000.0, 'ZEESEA旗舰店');
INSERT INTO "BBCream" VALUES (340, 'https://img11.360buyimg.com/n7/jfs/t30100/328/218704920/88517/b34176de/5bebe247Nc1f916e6.jpg', 189.00, '美肤宝水感透白礼盒(洁面膏100ml+水120ml+乳80ml+', 40000.0, '美肤宝京东自营旗舰店');
INSERT INTO "BBCream" VALUES (341, 'https://img14.360buyimg.com/n7/jfs/t25231/329/2227532469/42723/455036f0/5bc6cfd1Nf7cc976d.jpg', 76.00, '自然堂（CHANDO）轻透无瑕修颜霜SPF35PA++润白亮采', 5200, '自然堂官方旗舰店');
INSERT INTO "BBCream" VALUES (342, 'https://img13.360buyimg.com/n7/jfs/t29410/121/856045932/337776/f242987b/5bffcff0Ndbd02881.jpg', 89.00, '【第二件1元】抖音同款光感cc棒遮瑕粉底液保湿滋润', 1900, '热火化妆品专营店');
INSERT INTO "BBCream" VALUES (343, 'https://img14.360buyimg.com/n7/jfs/t1/4405/20/5720/101476/5ba052f8E9e85bdc9/562b7f2538ff2d17.jpg', 339.00, '温碧泉璀璨美白补水护肤化妆品套装礼盒女 补水保湿 提亮肤色（洁面乳+精华水+精华乳液+精华面霜+', 660000.0, '温碧泉京东自营旗舰店');
INSERT INTO "BBCream" VALUES (344, 'https://img10.360buyimg.com/n7/jfs/t1/9782/18/7647/121438/5c065053Ef54ac6a6/c6d828a624eb5870.jpg', 89.90, '透蜜粉底液轻薄持久保湿遮瑕隔离控油裸妆妆前乳不易脱妆粉底膏独角兽', 14000.0, '透蜜旗舰店');
INSERT INTO "BBCream" VALUES (345, 'https://img11.360buyimg.com/n7/jfs/t1/6084/37/8307/164078/5c09ef85Eabbb5870/6cf6a163fe623a54.jpg', 179.00, '玛丽黛佳（MARIEDALGAR） 无感大师水域亮肤气垫霜(1+1)(木兰迟)20g*2（滋润 遮瑕提亮肤色', 58000.0, '玛丽黛佳京东自营旗舰店');
INSERT INTO "BBCream" VALUES (346, 'https://img14.360buyimg.com/n7/jfs/t28954/37/1062661603/439014/305b061c/5c05f312N3684db5a.jpg', 89.00, '【89元两支】健美创研 抖音同款 光感遮瑕cc棒彩妆 修容笔高光cc霜网红推荐 粉底液保湿滋润', 3300, '虾米个护专营店');
INSERT INTO "BBCream" VALUES (347, 'https://img12.360buyimg.com/n7/jfs/t27523/274/1022782671/174553/7f6fafde/5bbfffe0N8af7bef8.jpg', 139.00, '谜尚（MISSHA）魅力莹润无瑕气垫粉凝霜超值套装SPF44/PA+++ [21号] 15g*3（', 98000.0, '谜尚京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (348, 'https://img10.360buyimg.com/n7/jfs/t27907/346/444460621/298736/a375029/5bf3cc24Nd4ff6e34.jpg', 429.90, '欧诗漫（OSM）珍珠白化妆品套装 补水美白淡斑保湿护肤品套装女 面部去黄美肤透白礼盒 精萃焕白礼盒（洁面+水+乳+原液）+', 55000.0, '欧诗漫官方旗舰店');
INSERT INTO "BBCream" VALUES (349, 'https://img10.360buyimg.com/n7/jfs/t29491/218/303372115/374154/7035ff20/5bee5c10N6e46c7f5.jpg', 102.00, '珀莱雅（PROYA）', 13000.0, '珀莱雅官方旗舰店');
INSERT INTO "BBCream" VALUES (350, 'https://img13.360buyimg.com/n7/jfs/t18643/258/2006984857/221108/f6ea8e19/5ae2f8e4N311f7772.jpg', 199.00, '韩国进口 爱敬(AGE) 气垫', 130000.0, '海囤全球韩国爱敬生活馆');
INSERT INTO "BBCream" VALUES (351, 'https://img10.360buyimg.com/n7/jfs/t26095/125/739492898/45723/16165af9/5b7a15f7N69dc7c7b.jpg', 69.00, '韩束（KanS） 红', 11000.0, '韩束(KanS)旗舰店');
INSERT INTO "BBCream" VALUES (352, 'https://img14.360buyimg.com/n7/jfs/t1/6855/21/6331/401897/5bdfaeffE4cba2f32/f80d342639859a1e.png', 89.00, '卡姿兰（Carslan）柔雾持久粉底液遮瑕控油保湿不脱妆定妆粉底 液遮瑕膏', 5400, '香草物语化妆品');
INSERT INTO "BBCream" VALUES (353, 'https://img11.360buyimg.com/n7/jfs/t9694/218/1957718910/54256/916a0dc6/59e97456N4a118b1d.jpg', 218.00, '韩国蒂佳婷（Dr.Jart+）活颜美颜修护霜40ml SPF50+ / PA++（银管', 6300, '蒂佳婷Dr.Jart+京东自营旗舰店');
INSERT INTO "BBCream" VALUES (354, 'https://img14.360buyimg.com/n7/jfs/t1/9677/3/8115/95002/5c09cd37Eda33ad7a/bf880aa2b1920d50.jpg', 179.00, '谜尚（MISSHA）美思韩方滋养修容霜SPF50/PA++（21号）50ml（防晒 遮瑕 新老包装更换，随机发货）', 320000.0, '谜尚京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (355, 'https://img14.360buyimg.com/n7/jfs/t1/14556/25/414/87328/5c09ce6fE679c8b9f/cb1b931f3f78baf1.jpg', 139.00, '谜尚（MISSHA）魅力水感润采气垫粉凝霜超值套装SPF45/PA+++ [23号] 15g*3（气垫', 98000.0, '谜尚京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (356, 'https://img14.360buyimg.com/n7/jfs/t23608/316/2604199180/75346/f65d68e1/5b8747adN4bb9ccc0.jpg', 89.00, '美肤宝 精萃透白美肌霜 40ml（', 40000.0, '美肤宝京东自营旗舰店');
INSERT INTO "BBCream" VALUES (357, 'https://img12.360buyimg.com/n7/jfs/t21946/357/1409261148/205173/297d4650/5b28904dNad292e3c.jpg', 79.00, '欧诗漫OSM 珍珠晶彩焕颜修容霜', 13000.0, '欧诗漫京东自营官方旗舰店');
INSERT INTO "BBCream" VALUES (358, 'https://img13.360buyimg.com/n7/jfs/t8698/174/2454391776/90046/9c82d247/59cf17d0N3f523d28.jpg', 119.00, '自然堂（CHANDO）凝时肌活修纹精华霜（BB）35g', 16000.0, '自然堂京东自营旗舰店');

-- ----------------------------
-- Auto increment value for BBCream
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 358 WHERE name = 'BBCream';

PRAGMA foreign_keys = true;
