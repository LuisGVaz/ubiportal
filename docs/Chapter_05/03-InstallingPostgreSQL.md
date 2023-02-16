# Installing PostgeSQL #

By default, Backstage is initialized with an in-memory database, but that’s quite inconvenient even for local development because any work you do in the instance will be deleted every time you stop the server. Thus, let’s switch to PostgreSQL.

You’ll start by installing PostgreSQL and setting a password for the default postgres user. If you already have this setup, feel free to move on to the next lesson. 

If you’re using macOS, we recommend getting Postgress through their desktop app. Download and install the latest version, and you’ll get a convenient GUI to start/stop the database. By default, you’ll get a few users. 

If you’re using Linux, you can get PostgreSQL through apt-get:

```bash
sudo apt-get install postgresql
```

For this course, you’ll use the default postgres user. So let’s set a password for this user. If you’re using Postgres.app, double-click on the postgres user, and you’ll get a terminal prompt. If you’re using the CLI, you’ll get to the same prompt through: 

```bash
sudo -u postgres psql
```

Once there, you’ll see something like this:

psql (14.5)
Type "help" for help.

postgres=#

Now, set the user postgres password to whatever you want with this command (secret is a password example):

postgres=# ALTER USER postgres PASSWORD 'secret';