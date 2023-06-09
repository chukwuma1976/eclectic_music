Welcome to Eclectic Music

This application focuses on allowing the user to express their musical tastes by adding different artists, albums, and songs to their personal database.

There are several parts to this application.

1. Login Page
    
Sign up section: every new user will have to create a new account with a username and password.

Login Section: every user will login with a username and password.  They have the option of staying logged in or logging out.

2. Home Page

This is a page welcoming the user to the Eclectic Music application.  The user can redirect to other pages on the application.

3. Artists

This consists of a collection of artists with an expandible display.  Here the user can sort the artists by name and/or genre.  An artist can be added, updated, or removed.  One can add albums and members (especially for artist groups) to any artist that belongs to the user.  In order to update or remove an artist there is a link to navigate the user to the Albums section.  To update or remove a member there is a link to navigate to the user to the Members section.  To update a song name or remove a song there is a link to redirect the user to the Songs section.  

4. Albums

This consists of a collection of albums with an expandible display.  Here the user can sort the albums by name, artists, and genre.  An album can be updated, or removed here.  Songs can be added to the album here.  To update a song name or remove a song there is a link to redirect the user to the Songs section.

5. Members

This consists of a collection of members from different artists with an expandible display.  Here the user can sort the members by name, artists, and genre.  A member can be updated, or removed here.  Furthermore, any member in a group can become a solo artist by simply clicking a go solo button

6. Songs

This consists of a collection of songs from different albums by different artists.  A song can be updated, or removed here.

7. Logout

This section signs out the user

To launch this application:

    git clone git@github.com:chukwuma1976/eclectic_music.git
    cd into appropriate folder (eclectic_music)

    Run on local server via the following commands
        bundle install
        rails s

    One can also access the application on Render through this link: https://eclectic-music-database.onrender.com/

    make sure PostgreSQL is installed and started
        sudo apt update
        sudo apt install postgresql postgresql-contrib libpq-dev
        psql --version //confirm installation
        sudo service postgresql start //starts the postgresql server
        whoami //checks user
        sudo -u postgres -i
        createuser -sr <username>

Link to the demo for this application: https://youtu.be/b0sZSVU_Dlo

Images were obtained from the internet via google.com.