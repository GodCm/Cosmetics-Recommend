from django.conf.urls import url
from app import views

urlpatterns = [
    url(r'^index/', views.index,name="index"),
    url(r'^register/',views.register,name="register"),
    url(r'^login/',views.login,name="login"),
    url(r'^loginout/',views.loginout,name="loginout"),
    url(r'^user_info/',views.user_info,name="user_info"),
    url(r'^goods_index/',views.goods_index,name="goods_index"),
]
