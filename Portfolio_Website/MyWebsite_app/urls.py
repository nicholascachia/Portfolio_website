from django.urls import path, include
from django.conf.urls.static import static
from django.conf import settings
from . import views


urlpatterns = [
    path('home/', views.home_page, name='home_page'),
    path('contact/', views.contact_page, name='contact_page'),
    # path('create_gallery/', views.post_gallery, name='post_gallery'),
    # path('create_blog/', views.post_blog, name='post_blog'),
    # path('gallery/delete/<int:pk>/', views.gallery_delete, name='gallery_delete' ),
    # path('gallery/edit/<int:pk>/', views.gallery_update, name='gallery_update' ),
    # path('create_tag/', views.create_tag, name='create_tag'),
    path('blog/', views.blog_list, name='blog_list'),
    # path('blog/delete/<int:pk>/', views.blog_delete, name='blog_delete' ),
    # path('blog/edit/<int:pk>/', views.blog_update, name='blog_update' ),
    path('register/', views.register, name='register'),
    path('login/', views.user_login, name='login'),
    path('logout/', views.user_logout, name='logout'),
    path('captcha/', include('captcha.urls')),
    path('download-cv/', views.download_cv, name='download_cv'),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)