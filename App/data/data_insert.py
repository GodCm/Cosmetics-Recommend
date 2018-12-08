import sqlite3

conn = sqlite3.connect("mask.db")
conn1 = sqlite3.connect("Goods.db")

c = conn.cursor()
c1 = conn1.cursor()

cursor = c.execute("select distinct * from Goods")

infos = cursor.fetchall()

for i in infos:
    goods_name = i[1]
    goods_price = i[2]
    goods_img = i[3]
    sales = i[4]
    shops = i[5]
    print(goods_name,goods_price,goods_img,sales,shops)
    try:
        sql = "insert into mask(goods_name, goods_price, goods_img, sales, shops) values ('{}','{}','{}','{}','{}')".format(
        goods_name, goods_price, goods_img, sales, shops)
        c1.execute(sql)
        conn1.commit()
    except Exception as e:
        print(e)

print("数据插入完成")
