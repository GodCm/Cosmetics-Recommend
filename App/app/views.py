import hashlib
import sqlite3

from django.http import JsonResponse, HttpResponseRedirect
from django.shortcuts import render, redirect
from django.urls import reverse
from app.models import UserModel, Mask, Lipstick, Perfume, BBCream


# 首页 用户信息加载返回
def index(request):
    data = {
        "is_login": False
    }
    userid = request.session.get("user_id")
    users = UserModel.objects.filter(pk=userid)
    if users.exists():
        user = users.first()
        data["username"] = user.username
        # data["icon"] = '/static/uploadfiles/' + user.icon.url
        # print(data["icon"])
        data['is_login'] = True
    return JsonResponse(data)


# 密码加密
def make_pwd(password):
    pwd = str(password)
    password = hashlib.md5(pwd.encode("utf8")).hexdigest()
    return password


# 注册
def register(request):
    # if request.method == "GET":
    #     return JsonResponse({"status": "200", "msg": "请先去注册用户"})
    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        email = request.POST.get("email")
        icon = request.FILES.get("icon")
        if icon == None:
            icon = "icons/default.jpg"
        # 判断用户是否存在
        user = UserModel()
        users = UserModel.objects.filter(username=username)
        if users.exists():
            return render(request, "notice.html", context={
                'code': -1,
                'msg': "用户名已存在",
                'wait': 2,
                'url': "/"
            })
        else:
            user.username = username
            user.password = make_pwd(password)
            user.email = email
            user.icon = icon
            request.session["user_id"] = user.id
            user.save()
        return HttpResponseRedirect("/")


# 登录
def login(request):
    # if request.method == "GET":
    #     return JsonResponse({"status":"200","msg":"请去登录界面"})
    data = {
        "is_login": False
    }
    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        users = UserModel.objects.filter(username=username)

        if users.exists():
            user = users.first()

            if user.password == make_pwd(password):
                request.session['user_id'] = user.id
                data["username"] = username
                data["is_login"] = True
            else:
                return render(request, "notice.html", context={
                    'code': -1,
                    'msg': "登录信息错误",
                    'wait': 2,
                    'url': "/"
                })
        else:
            return render(request, "notice.html", context={
                'code': -1,
                'msg': "登录信息错误",
                'wait': 2,
                'url': "/"
            })

    return HttpResponseRedirect("/")


# 注销
def loginout(request):
    request.session.flush()
    return HttpResponseRedirect("/")


# 修改个人信息
def change_info(request):
    data = {
        "is_login": False
    }
    if request.method == 'POST':

        userid = request.session.get("user_id")
        users = UserModel.objects.filter(pk=userid)

        if users.exists():
            user = users.first()
            oldpassword = request.POST.get("oldpassword")
            password_new = request.POST.get("newpassword")
            email = request.POST.get("email")
            icon = request.FILES.get("icon")

            if user.password == make_pwd(oldpassword):
                user.password = make_pwd(password_new)
                user.email = email
                user.icon = icon
                user.save()

                data["username"] = user.username
                data["status"] = "200"
                data["msg"] = "账户信息修改成功"
                data["is_login"] = True
                # return JsonResponse(data)
                return HttpResponseRedirect("/")
            else:
                return render(request, "notice.html", context={
                    'code': -1,
                    'msg': "旧密码输入有误,请重新输入",
                    'wait': 2,
                    'url': "/"
                })
    #
        else:
            return render(request, "notice.html", context={
                'code': -1,
                'msg': "在登录状态下才能修改个人信息",
                'wait': 2,
                'url': "/"
            })
    return HttpResponseRedirect("/")


# 展示所有商品
def show_all_goods(request):
    userid = request.session.get('user_id')
    users = UserModel.objects.filter(pk=userid)
    if users.exists():
        masks = Mask.objects.filter(id__lt=33)
        data = {
            "masks": list(masks.values())
        }

        return JsonResponse(data)
    else:
        return JsonResponse(data={"status": "200", "msg": "在登录状态才能浏览商品"})

# 分类展示面膜
def classify_masks(request):
    goods_name = request.GET.get("goodsname")
    name_object = Mask.objects.filter(goods_name__contains=goods_name)
    # mask_all = name_object.mask_set.all()
    data = {
        "masks": list(name_object.values())
    }
    return JsonResponse(data)

# 分类展示口红
def classify_lipsticks(request):
    goods_name = request.GET.get("goodsname")
    name_object = Lipstick.objects.filter(goods_name__contains=goods_name)
    data = {
        "lipsticks": list(name_object.values())
    }
    return JsonResponse(data)


# 展示香水
def classify_perfume(request):
    perfume = Perfume.objects.all()
    data = {
        "perfume":list(perfume.values())
    }
    return JsonResponse(data)


def classify_bbcream(request):
    bbcream = BBCream.objects.all()
    data = {
        "bbcream": list(bbcream.values())
    }
    return JsonResponse(data)