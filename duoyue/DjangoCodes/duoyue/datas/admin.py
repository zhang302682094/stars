from django.contrib import admin
from .models import *

# Register your models here.
# 把Question和Choice表注册到后台
admin.site.register(School)
admin.site.register(Activity)
