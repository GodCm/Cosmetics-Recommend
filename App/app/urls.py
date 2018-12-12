from django.conf.urls import url
from app import views

urlpatterns = [
    url(r'^index/', views.index),
    url(r'^register/', views.register),
    url(r'^login/', views.login),
    url(r'^loginout/', views.loginout),
    url(r'^change_info/', views.change_info),
    url(r'^show_all_goods/', views.show_all_goods),
    url(r'^classify_masks/',views.classify_masks),
    url(r'^classify_lipsticks/',views.classify_lipsticks),
    url(r'^classify_perfume/',views.classify_perfume),
    url(r'^classify_bbcream/',views.classify_bbcream),


]
