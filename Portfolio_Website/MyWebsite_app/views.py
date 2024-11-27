from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from .models import Galleries, Tag, BlogPost, Contact, Category
from .forms import RegisterForm, BlogPostForm, ContactForm, GalleryPostForm, TagForm
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import login, authenticate, logout
from django.contrib import messages
from django.core.mail import send_mail
from django.conf import settings
from django.db.models import Q
from django.http import FileResponse, HttpResponse
import os
# Create your views here.


def home_page(request):     #Read and dispaly Galleries
    posts = Galleries.objects.all()
    return render(request, 'portfolio/home_page.html', {'posts':posts})



def blog_list(request):   #Display all blogs or according to the search criteria
    search_term = request.GET.get('search')
    tag_filter = request.GET.get('tag')
    posts = BlogPost.objects.all()

    if tag_filter:
        posts = posts.filter(tags__name=tag_filter)

    tags = Tag.objects.all()

    if search_term:
        posts = posts.filter(
            Q(content__icontains=search_term)
        )

    return render(request, 'portfolio/Blog_page.html', {'posts':posts,'search_term': search_term, 'tags': tags, 'tag_filter': tag_filter})



#view for the contact page

def contact_page(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
            message_name = request.POST['name']
            message_email = request.POST['email']
            message = request.POST['message']
            enhanced_message = f"{message}\n\nSender's Email: {message_email}"
            send_mail(message_name, enhanced_message, message_email ,['nicholas.cachia@gmail.com'])
            messages.success(request, 'Message Sent')
            
            return render(request, 'portfolio/contact_page-Message_ok.html', {'message_name': message_name})
        else:
            messages.error(request, 'Error Message not sent')
    else:
        form = ContactForm()
    return render(request, 'portfolio/contact_page.html', {'form': form})


def download_cv(request):
    file_path = os.path.join(settings.MEDIA_ROOT, 'cv', 'cv.pdf')  # Adjust the path
    if os.path.exists(file_path):
        response = FileResponse(open(file_path, 'rb'), as_attachment=True, filename='Nicholas_Cachia_CV.pdf')
        return response
    else:
        return HttpResponse("File not found.", status=404)

# User Registration
def register(request):
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Account created successfully!')
            return redirect('login')
        else:
            messages.error(request, 'Error during registration. Please try again.')
    else:
        form = RegisterForm()
    return render(request, 'portfolio/register.html', {'form': form})


def user_login(request):
    if request.method == 'POST':
        form = AuthenticationForm(request, data=request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(request, username=username, password=password)
            if user is not None:
                login(request, user)
                return redirect('home_page')  # Redirect to post list page
            else:
                messages.error(request, 'Invalid username or password.')
        else:
            messages.error(request, 'Please correct the error below.')
    else:
        form = AuthenticationForm()
    return render(request, 'portfolio/login.html', {'form': form})

def user_logout(request):
    logout(request)
    return redirect('home_page')