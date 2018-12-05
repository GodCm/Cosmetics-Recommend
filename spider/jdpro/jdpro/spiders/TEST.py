# fp = open("每天定时更新.爬虫数据txt", "r", encoding="utf8")
# lt = fp.readlines()
#
# lt1 = []
# lt2 = []
# lt3 = []
#
# for i in lt:
#     if "张" in i:
#         lt1.append(i)
#     elif "李" in i:
#         lt2.append(i)
#     elif "欧阳" in i:
#         lt3.append(i)
#     dic = {"张": len(lt1), "李": len(lt2), "欧阳": len(lt3)}
# for key, value in dic.items():
#     print("{}姓出现的次数{}".format(key, value))
#
# from collections import Counter
#
# fp = open('每天定时更新.爬虫数据txt', 'r')
# double_name = ['欧阳', '宇文', '皇甫', '上官']
# xing = []
# while True:
#     content = fp.readline()
#     if len(content) == 0:
#         break
#     else:
#         name = content[0:2]
#         if name in double_name:
#             xing.append(name)
#         else:
#             name = content[:1]
#             xing.append(name)
#
# print(Counter(xing))

"""

冒泡排序（Bubble Sort）也是一种简单直观的排序算法。它重复地走访过要排序的数列，一次比较两个元素，如果他们的顺序错误就把他们交换过来。走访数列的工作是重复地进行直到没有再需要交换，也就是说该数列已经排序完成。

"""

# 冒泡排序算法
def bubble_sort(lst):
    # 外层循环控制比较多少轮
    for i in range(1, len(lst)):
        # 内层循环控制元素的比较
        for j in range(0, len(lst) - i):
            if lst[j] > lst[j + 1]:
                lst[j], lst[j + 1] = lst[j + 1], lst[j]
    return lst


print(bubble_sort([5, 3, 7, 2, 6, 1]))

"""
工作原理：首先在未排序序列中找到最小（大）元素，存放到排序序列的起始位置，然后，再从剩余的未排序的元素中继续寻找最小（大）元素，然后放到已排序的末尾。直到所有元素均排序完毕
"""


# 选择排序算法
def sel_sort(lst):
    for i in range(len(lst) - 1):
        # 记录最小数的索引
        min_index = i
        for j in range(i + 1,len(lst)):
            if lst[j] < lst[min_index]:
                min_index = j
        # i不是最小数时将i和最小数交换位置
        if i != min_index:
            lst[i],lst[min_index] = lst[min_index],lst[i]
    return lst

print(sel_sort([5, 3, 7, 2, 6, 1]))


"""
快速排序采用分治法，基本思想是选取数组中一个数为基准数，一次排序过程中，将比基准数小的都放在它左边，比基准数大的不动。然后经过一次排序，左边部分都比基准数小，右边都比基准数大，然后对左右两边分别进行同样的排序（递归）。最后只直到剩下一个数字。 
"""
# 快速排序算法
def qsort(lst):
    less = []
    more = []
    if not lst:
        return []
    else:
        picot = lst[0]
        for x in lst[1:]:
            if x < picot:
                less.append(x)
            else:
                more.append(x)
        return qsort(less) + [picot] + qsort(more)

print(qsort([5, 39, 10, 45,  60]))
