# Control Lamp

A simple web application to control lamps using Django and PostgreSQL.

## Features

- Manage lamp states (on/off)
- User authentication
- RESTful API

## Requirements

- Python 3.12+
- Django 5.x
- PostgreSQL

## Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/yourusername/control-lamp.git
    cd control-lamp
    ```

2. **Create and activate a virtual environment:**
    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows: venv\Scripts\activate
    ```

3. **Install dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

4. **Configure PostgreSQL:**
    - Create a database and user in PostgreSQL.
    - Update `settings.py` with your database credentials:
      ```python
      DATABASES = {
            'default': {
                 'ENGINE': 'django.db.backends.postgresql',
                 'NAME': 'your_db_name',
                 'USER': 'your_db_user',
                 'PASSWORD': 'your_db_password',
                 'HOST': 'localhost',
                 'PORT': '5432',
            }
      }
      ```

5. **Run migrations:**
    ```bash
    python manage.py migrate
    ```

6. **Create a superuser:**
    ```bash
    python manage.py createsuperuser
    ```

7. **Start the development server:**
    ```bash
    python manage.py runserver
    ```

## Usage

- Access the app at `http://127.0.0.1:8000/`
- Use the admin panel at `http://127.0.0.1:8000/admin/` to manage lamps and users.

## License

MIT License     