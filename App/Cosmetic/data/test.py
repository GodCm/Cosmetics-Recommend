import sqlite3
import pandas as pd
# 连接数据库测试
def goods_select():
    conn = sqlite3.connect('../kouhong.sqlite')
    # cursor = conn.cursor()
    # sql = 'select * from Goods'
    # cursor.execute(sql)
    # print(cursor.fetchall())
    result = pd.read_sql('select * from Goods',conn)
    content = result[result['goods_name'].str.contains('纪梵希')][:3].values
    print((list(content)))
goods_select()
