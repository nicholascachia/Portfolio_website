1. Portfolio Website
    This application for a portfolio website was built using Django with an MySQL database. 

2. Table of Contents
    Features
    Demo
    Installation
    Usage
    Folder Structure
    Contributing
    License
    Acknowledgements

3. Features
    Display projects in a form of a Gallery dynamically with images and descriptions.
    Area dedicated for a Blog where the user and filter projects by tags or categories.
    An interactive contact form is available where the user can send an email.
    The user can download the CV in PDF format for referance
    Responsive design for mobile and desktop.
    
    Easy-to-edit templates and configurations.
    Text editor is added for the blog and Galleries for special fonts and texts
4. Demo
🎥 Live Demo: https://nicholascachia.pythonanywhere.com/home/

        Note: in live demo above ONLY some issues related to the blog and gallery card are encounterd, still need to be fixed. 

5. Screenshots:
    Screen shoots are available in a separate folder

6. Installation
        Follow these steps to set up the project locally:
        - Install all the Python pakages reqired by 
             - pip install -r requirements.txt
        - Create a MySQL database
        -Modify the setting.py database section, according to your database settings. 
        Note enviroment variables are used for the password
            DATABASES = {
                'default': {
                    'ENGINE': 'django.db.backends.mysql',
                    'NAME':'myportfolio_db',
                    'USER': 'root',
                    'PASSWORD': db_password,
                    'HOST': 'localhost',
                    'PORT': '3306',
                }  
            }
        -Apply database structure by:
            py manage.py makemigrations
            py manage.py migrate
        -create Superuser for admin
            python manage.py createsuperuser
        - run server this should be available on local host
            python manage.py runserver



7. Prerequisites
    Python 3.12.7 installed.
    pip package manager installed.
    A virtual environment tool (venv, virtualenv) might be required.

8. Steps
    bash
    Copy code
    # Clone the repository
    git clone https://github.com/nicholascachia/Portfolio_website.git

    # Navigate to the project directory
    cd Porfoilo_Website

    # Install dependencies
    pip install -r requirements.txt

    # Apply database migrations
    python manage.py migrate

    # Start the development server
    python manage.py runserver
    Usage
    Navigate to http://127.0.0.1:8000 in your browser.

9. Access the admin panel at /admin to manage projects and content:
    #Access the forms to generate the Gallaries and Blogs

