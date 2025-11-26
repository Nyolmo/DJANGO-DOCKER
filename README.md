# Django Docker Project

A Django project with PostgreSQL running inside Docker containers. This project demonstrates a clean setup for Django development using Docker, handling migrations, and connecting to a PostgreSQL database. It also includes a simple `Actor` model to illustrate working with Django ORM.

## Table of Contents
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Learning Outcomes](#learning-outcomes)
- [Environment Variables](#environment-variables)
- [License](#license)

## Features
- Django 5.2 project configured to run in Docker.
- PostgreSQL database running in a separate container.
- Automated migrations using an entrypoint script.
- Example `Actor` model with fields: `name`, `nationality`, `created_at`, and `released`.
- Modern development workflow with Docker Compose.


## Prerequisites
- Docker
- Docker Compose
- Git

## Setup

1. Clone the repository:
   ```bash
   git clone <your-repo-url>
   cd <your-repo-folder>
2.Create a .env file from the example:
  cp .env.example .env and Fill in your environment variables as needed.
3.Build and start the containers:
  docker compose up --build
4.Apply django migrations
  docker compose exec django_app python django_docker/manage.py migrate
5.Acces Django shell(optional)
  docker compose exec django_app python django_docker/manage.py shell
6. Open your app in the browser at: http://localhost:8000
7. Use Django ORM to interact wit the DB
    from core.models import Actor
    Actor.objects.create(name="Rodney Nyolmo", nationality="Kenyan")
8.Run additional management inside the container:
    docker compose exec django_app python django_docker/manage.py <command>


##PROJECT STRUCTURE
DJANGO-DOCKER/
├── .env
├── .gitignore
├── docker-compose.yml
├── Dockerfile
└── src/
    ├── django_docker/
    │   ├── core/                  # Your Django app (models, views, etc.)
    │   │   └── models.py
    │   ├── django_docker/         # Django project folder (settings.py, etc.)
    │   │   ├── __init__.py
    │   │   ├── settings.py
    │   │   ├── urls.py
    │   │   └── wsgi.py
    │   ├── db.sqlite3             # Optional local SQLite (can ignore)
    │   ├── entrypoint.sh          # Script to run migrations + server
    │   └── manage.py
    ├── venv/                      # Python virtual environment
    └── requirements.txt           # Python dependencies


## Learning Outcomes

By completing this project, you will have gained hands-on experience with:  

- **Containerized Development**: Running Django with PostgreSQL fully inside Docker containers using Docker Compose.  
- **Database Integration**: Setting up PostgreSQL, configuring connections, and performing migrations.  
- **Django Fundamentals**: Writing models, creating and applying migrations, and managing your app inside a container.  
- **Secrets Management**: Keeping sensitive information safe with `.env` files.  
- **Container Workflows**: Running Django management commands and starting the development server inside a containerized environment.  

This project is a practical example of **real-world, containerized Django development**—great for portfolios or learning professional workflows.

---

## Environment Variables

All sensitive data is stored in a `.env` file. **Do not commit your `.env` file** to GitHub.  

Example `.env` file:

```dotenv
POSTGRES_USER=youruser
POSTGRES_PASSWORD=yourpassword
POSTGRES_DB=yourdb
POSTGRES_HOST=db
POSTGRES_PORT=5432


License

This project is open source
 
  
  


<img width="1280" height="976" alt="docker-compose yml - DJANGO-DOCKER - Visual Studio Code 26_11_2025 10_19_14" src="https://github.com/user-attachments/assets/9abc8a58-3acc-4491-9d6f-fa31e177af1c" />

  
