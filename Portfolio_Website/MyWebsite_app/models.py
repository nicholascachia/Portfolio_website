from django.db import models
from django.contrib.auth.models import User
from ckeditor.fields import RichTextField
# Create your models here.


class Galleries(models.Model):
    title = models.CharField(max_length=50)
    description = RichTextField(blank=True, null=True)
    # description = models.TextField()
    image = models.ImageField(upload_to='gallery_images/', null=True, blank=True)
    link = models.URLField(max_length=200, blank=True, null=True)
    technologies = models.CharField(max_length=200)

    def __str__(self):
        return self.title

class Category(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class Tag(models.Model):
    name = models.CharField(max_length=50, unique=True)

    def __str__(self):
        return self.name 

class BlogPost(models.Model):
    title = models.CharField(max_length=255)
    content = RichTextField(blank=True, null=True)
    # content = models.TextField()
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    image = models.ImageField(upload_to='blog_images/', null=True, blank=True)
    category = models.CharField(max_length=100)
    # category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='blogpost')
    tags = models.ManyToManyField(Tag, related_name="blog_posts", blank=True)

    def __str__(self):
        return self.title
    

class Contact(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=254)
    subject = models.CharField(max_length=150, blank=True)
    message = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.name} ({self.email})"
    

