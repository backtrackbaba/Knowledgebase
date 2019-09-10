# Django Knowledgebase

## Installation
---
`pip install django`

## Commands
---

`django-admin startproject <project-name>` - Create a Django project

`python manage.py runserver` - Run the Django dev server

`python manage.py makemigrations` - Create Migration Scripts

`python manage.py migrate` - Migrate Database


## File Structure
---
<pre>
    project-name/                  <-- higher level folder
    |-- project-name/             <-- django project folder
    |    |-- project-name/
    |    |    |-- __init__.py
    |    |    |-- settings.py
    |    |    |-- urls.py
    |    |    |-- wsgi.py
    |    +-- manage.py
</pre>

Five main files of the base project are as follows:

manage.py - Used to run management commands related to the project [migrations, run server, etc]

init.py - Empty file to indicate Python that this is a package

settings.py - Whole projects configuration file

urls.py - Maps all the requests to the routes/paths

wsgi.py - Used for deployment


A Django project can have multiple apps for different functionalities in it.

In this file tree, we have created an app called **sampleapp**

<pre>

    project-name/
    |-- project-name/
    |    |-- sampleapp/                <-- our new django app!
    |    |    |-- migrations/
    |    |    |    +-- __init__.py
    |    |    |-- __init__.py
    |    |    |-- admin.py
    |    |    |-- apps.py
    |    |    |-- models.py
    |    |    |-- tests.py
    |    |    +-- views.py
    |    |-- project-name/
    |    |    |-- __init__.py
    |    |    |-- settings.py
    |    |    |-- urls.py
    |    |    |-- wsgi.py
    |    +-- manage.py

</pre>



## Creating Databse in PostgreSQL
---
<pre>

createdb -U {{username}} -h localhost --owner={{username}}--lc-ctype='en_US.UTF-8' --lc-collate='en_US.UTF-8' --encoding='UTF8' -e {{db name}};
</pre>


## Copying Database in PostgreSQL
---

<pre>
CREATE DATABASE {{new_db}} WITH TEMPLATE {{original_db}} OWNER {{username}};
</pre>

## Dropping Database in PostgreSQL
---

<pre>
dropdb -U {{username}} -h localhost {{db_name}};
</pre>

## Adding Table in PostgreSQL
---

<pre>
ALTER TABLE table_name
ADD COLUMN new_column_name data_type;
</pre>


## Copy Data from one column to another
---
<pre>
UPDATE {{table_name}} 
SET {{column1}} = {{column2}}
</pre>


## Dropping Table in PostgreSQL
---

<pre>
DROP TABLE {{table_name}};
</pre>

## Dropping Column in PostgreSQL
---

<pre>
ALTER TABLE {{table_name}} 
DROP COLUMN {{column_name}};
</pre>

## Import CSV File Into PosgreSQL Table
---

Example
<pre>

CREATE TABLE persons
(
  id serial NOT NULL,
  first_name character varying(50),
  last_name character varying(50),
  dob date,
  email character varying(255),
  CONSTRAINT persons_pkey PRIMARY KEY (id)
)
</pre>

## Change DB to Postgres
---
In your projects setting.py, change the following
<pre>
. . .

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}

. . .
</pre>

to 
<pre>
. . .

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': '{{db name}}',
        'USER': '{{username}}',
        'PASSWORD': '{{password}}',
        'HOST': 'localhost',
        'PORT': '', # Leave it empty to use default - 5432
    }
}

. . .
</pre>

After changing the backend,

`python manage.py makemigrations` - Create the migration scripts

`python manage.py migrate` - Run the migration scripts




## Creating Python Virtual Environment
---

`python3 -m venv /path/for/virtual/environment`


