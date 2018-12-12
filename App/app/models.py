
from django.db import models


class Comment(models.Model):
    id = models.IntegerField(primary_key=True)
    username = models.TextField(blank=True, null=True)
    commit = models.TextField(blank=True, null=True)
    com_time = models.TextField(blank=True, null=True)
    type = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'comment'


class Lipstick(models.Model):
    id = models.IntegerField(primary_key=True)
    goods_name = models.TextField(blank=True, null=True)
    goods_price = models.TextField(blank=True, null=True)
    goods_img = models.TextField(blank=True, null=True)
    sales = models.TextField(blank=True, null=True)
    shops = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'lipstick'


class Mask(models.Model):
    id = models.IntegerField(primary_key=True)
    goods_name = models.TextField(blank=True, null=True)
    goods_price = models.TextField(blank=True, null=True)
    goods_img = models.TextField(blank=True, null=True)
    sales = models.TextField(blank=True, null=True)
    shops = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'mask'


class UserModel(models.Model):
    id = models.IntegerField(primary_key=True)
    username = models.TextField(blank=True, null=True)
    password = models.TextField(blank=True, null=True)
    email = models.TextField(blank=True, null=True)
    icon = models.TextField(blank=True, null=True)
    reserver = models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'users'
