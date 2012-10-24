Howto Collaborate in Realtime using screen 
==========================================
Working concurrently with another developer on Linux server.

1. Permissions when Creating a Screen Session
---------------------------------------------

    Note the directory that screen session starts in, by default when you login you are probably in a home folder.

Idea: Make a folder for a given work session

    Make a new folder with permissions only for user1 and user2 (this can be a temporary workspace for that session)

    make a new folder

$ mkdir ~/foldername

    make a new group

$ groupadd groupname

    add user1

$ sudo usermod -G groupname -a user1 

    add user2

$ sudo usermod -G groupname -a user2

    change the permissions on the folder

$ sudo chown user1:groupname ~/foldername

2. Creating a shared screen session
-----------------------------------

scenario: user1 wants user2 to join a shared screen session.

    So user1 creates the screen session

$ ssh user1@server (e.g. the London Hackspace Server, Babbage)

    create a shared screen session with the name foobar

$ screen -S foobar

    Enable multiuser mode

$ ctrl + a then type :multiuser on

    Add connecting user to the Access Control List

$ ctrl + a then type :acladd user2 (the user that wants to connect)

  Then user2 connects to user1's screen:

$ ssh user2@server (e.g. the London Hackspace Server, Babbage)

$ screen -x user1/foobar (the user that user2 is trying to connect to)

3. Splitting a screen session (in terminal, into windows)
---------------------------------------

$ ctrl + a |     split screen vertially

$ ctrl + a S    split screen horizontally

$ ctrl + a Q    close split screens

$ ctrl + a tab  cycle between split screens

$ ctrl + a c to create a new screen session to fill that window (if blank)

  alternatively

$ ctrl + a # to connect to an existing screen (where # is a number)

4. Exiting / Disconnecting
--------------------------

  To exit (permanently):

$ exit

  To disconnect (you can reconnect by using screen -r)

$ ctrl + a d  

  Common errors:

    Sometimes it may say "screen already attached" in which case:

$ screen -ls

31134.pts-10.servername    (08/10/12 14:55:48)    (Attached)

    then get the screen number

$ screen -d 31134

    then reconnect as normal

  Any after the session, you can view all the commands that were typed by looking at the .screenlog

