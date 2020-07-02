from django.contrib import admin
from django.urls import path, include, re_path
# 导入静态文件
from django.views.static import serve
# 导入配置文件里的文件上传配置
from django.conf import settings
from blog import views


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index),
    path('ueditor/', include('DjangoUeditor.urls')),
    re_path('^media/(?P<path>.*)$', serve, {'document_root': settings.MEDIA_ROOT}),
]
