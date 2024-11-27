from django.contrib import admin
from .models import Galleries, Tag, BlogPost, Contact
# Register your models here.


admin.site.register(Galleries)
admin.site.register(Tag)
admin.site.register(BlogPost)
admin.site.register(Contact)

