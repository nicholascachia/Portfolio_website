from django import forms
from .models import Galleries, Tag, BlogPost, Contact
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError
from captcha.fields import CaptchaField


class GalleryPostForm(forms.ModelForm):
    class Meta:
        model = Galleries
        fields = ['title', 'description', 'image', 'link', 'technologies']

        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control'}),
            'description': forms.Textarea(attrs={'class': 'form-control'}),
            'image': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'link': forms.URLInput(attrs={'class': 'form-control'}),
            'technologies': forms.TextInput(attrs={'class': 'form-control'}),
        }

class BlogPostForm(forms.ModelForm):
    class Meta:
        model = BlogPost
        fields = ['title', 'content', 'image', 'category', 'tags']

        widgets = {
            'title': forms.TextInput(attrs={'class': 'form-control'}),
            'content': forms.Textarea(attrs={'class': 'form-control'}),
            'image': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'category': forms.TextInput(attrs={'class': 'form-control'}),
            'tags': forms.SelectMultiple(attrs={'class': 'form-control'}),
        }

class TagForm(forms.ModelForm):
    class Meta:
        model = Tag
        fields = ['name']
        

class ContactForm(forms.ModelForm):
    captcha = CaptchaField()
    
    class Meta:
        model = Contact
        fields = ['name', 'email', 'subject', 'message']
        

        widgets = {
            'name': forms.TextInput(attrs={'class': 'form-control'}),
            'email': forms.EmailInput(attrs={'class': 'form-control'}),
            'subject': forms.TextInput(attrs={'class': 'form-control'}),
            'message': forms.Textarea(attrs={'class': 'form-control'}),
            
        }


class RegisterForm(UserCreationForm):
    email = forms.EmailField(required=True)

    # Custom password validation
    def clean_password1(self):
        password = self.cleaned_data.get('password1')
        # Minimum password length check
        if len(password) < 8:
            raise ValidationError("Password must be at least 8 characters long.")
        return password

    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']



