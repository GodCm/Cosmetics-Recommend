import hashlib
import sqlite3

from django.http import JsonResponse, HttpResponseRedirect
from django.shortcuts import render, redirect
from django.urls import reverse
from app.models import UserModel


# 首页 用户信息加载返回
def index(request):
   return render(request,"index.html")


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
                'url': "login"
            })
        else:
            user.username = username
            user.password = make_pwd(password)
            user.email = email
            user.icon = icon
            request.session["user_id"] = user.id
            user.save()
        return HttpResponseRedirect("/")


def load_user(request):
    data = {
        "is_login": False
    }
    userid = request.session.get("user_id")
    users = UserModel.objects.filter(pk=userid)
    if users.exists():
        user = users.first()
        data["username"] = user.username
        data["icon"] = '/static/uploadfiles/' + user.icon.url
        print(data["icon"])
        data['is_login'] = True
    return JsonResponse(data)


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

    return HttpResponseRedirect("/")


# 注销
def loginout(request):
    request.session.flush()
    return HttpResponseRedirect("/")


# 修改个人信息
def change_info(request):
    data = {
        "Title": "修改个人信息"
    }
    userid = request.session.get('user_id')
    data['user_id'] = userid
    if request.method == 'GET':
        if userid:
            user = UserModel.objects.get(pk=userid)
            data['username'] = user.username
            data['email'] = user.email
            if user.icon:
                data['icon'] = '/static/uploadfiles/' + user.icon

            return JsonResponse({"status": "200", "msg": "请去修改页面"})
        else:
            return redirect(reverse('app:login'))
    elif request.method == 'POST':
        user = UserModel.objects.get(pk=userid)
        user.username = request.POST.get('username')
        user.email = request.POST.get('email')
        usericon = request.FILES.get('icon')
        if usericon:
            user.icon = usericon
        user.save()
        return redirect(reverse('app:index'))


# 商品展示页
def goods_index(request):
    data = {
        'title': '全部商品'
    }
    userid = request.session.get('user_id')
    users = UserModel.objects.filter(pk=userid)
    if users.exists():
        user = users.first()
        data["username"] = user.username
        data["icon"] = '/static/uploadfiles/' + user.icon
        data['is_login'] = True
        return render(request, 'goods/goods1_index.html', context=data)
    else:
        return redirect(reverse('app:login'))


def goods(request):
    return JsonResponse(data={"stutus": 200, "data": "你好吗?"})
