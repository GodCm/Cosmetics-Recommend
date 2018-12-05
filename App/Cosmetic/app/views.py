import hashlib
import sqlite3

from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.urls import reverse
from app.models import UserModel


# 首页
def index(request):
    data = {}
    userid = request.session.get("user_id")
    users = UserModel.objects.filter(pk=userid)
    if users.exists():
        user = users.first()
        data["username"] = user.username
        data["icon"] = '/static/uploadfiles/' + user.icon.url
        data['is_login'] = True

    return render(request, "index.html", context=data)


# 密码加密
def make_pwd(password):
    pwd = str(password)
    password = hashlib.md5(pwd.encode("utf8")).hexdigest()
    return password


# 注册
def register(request):
    if request.method == "GET":
        return render(request, "user/register.html")
    elif request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        email = request.POST.get("email")
        icons = request.FILES.get("icons")
        if icons == None:
            icons = "icons/default.jpg"
        # 创建用户对象
        user = UserModel()
        users = UserModel.objects.filter(username=username)
        if users.exists():
            return HttpResponse("该用户名已被注册!!!")
        else:
            user.username = username
            user.password = make_pwd(password)
            user.email = email
            user.icon = icons
            request.session["user_id"] = user.id
            user.save()
    return redirect(reverse("app:index"))


# 登录
def login(request):
    if request.method == "GET":
        return render(request, "user/login.html")
    elif request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")

        users = UserModel.objects.filter(username=username)

        if users.exists():
            user = users.first()

            if user.password == make_pwd(password):
                request.session['user_id'] = user.id
                return redirect(reverse('app:index'))
            return HttpResponse("密码输入有误")

        return HttpResponse("该用户不存在")

    return HttpResponse("无效请求")


# 注销
def loginout(request):
    request.session.flush()
    return redirect(reverse('app:index'))


# 修改个人信息
def user_info(request):
    data = {
        'title': '信息修改',
    }
    userid = request.session.get('user_id')
    data['user_id'] = userid
    if request.method == 'GET':
        if userid:
            user = UserModel.objects.get(pk=userid)
            data['username'] = user.username
            data['email'] = user.email
            if user.icon:
                data['icon'] = '/static/uploadfiles/' + user.icon.url
            else:
                data['icon'] = None
            return render(request, 'user/userinfo_mod.html', context=data)
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
        data["icon"] = '/static/uploadfiles/' + user.icon.url
        data['is_login'] = True
        return render(request, 'goods/goods1_index.html', context=data)
    else:
        return redirect(reverse('app:login'))
