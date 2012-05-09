# Collage
## A web application and api for creating collages from user uploaded photos
#### Developed by: The PHP Group for The Ohio State University's Honors & Scholars House

### Getting Setup

Before you can properly run the application you will need to do a few things:

    1.  Set up a Virtual Host pointed to `web/` or change Apache's
        `DocumentRoot`.
    2.  Create a database and user and set up `app/config/parameters.ini`.
    3.  Set the proper permissions on `app/cache` and `app/logs`.
    4.  Install vendor plugins.
    5.  Pull in git submodules (specifically the OSUBundle).

#### Steps 1 and 2

Figure out step 1 on your own. It is not specific to this project at all.
Creating the database and user should also be something to figure out on your
own. This project is only tested with PostgreSQL but since we use Doctrine as an
intermediate you should be able to use other RDBMS's.

To set up the `parameters.ini` file you should start by copying the sample:

    cd app/config
    cp parameters.ini.sample parameters.ini

Then open up `parameters.ini` and edit it to fit the connection information for
your database.

#### Step 3

The http server needs to be able to write to `app/cache` and `app/logs`.  To
allow this you need to have the proper permissions set up.

You can do this in many ways. If the server runs as your user then it should
work out of the box.  Typically what happens for me is I add myself to the group
that apache is running in and then execute something like this:

    cd app
    sudo chown -R $USER:http cache/ logs/
    sudo chmod -R g+w cache/ logs/

#### Step 4

Install the vendor plugins:

    php bin/vendors install

#### Step 5

Lastly, we have to pull in the git submodules (specifically the OSU bundle).

    git submodule update --init

---

### Deployment

To deploy you must use *capifony*.

    gem install capifony

Once it is installed you can deploy using the command:

    cap deploy
