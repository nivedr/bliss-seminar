# BLISS website and seminar

Contains current BLISS website hosted on bliss.eecs.berkeley.edu

The old website has a redirect to these pages.

Once committed, these files need to be synced with the web.

# Sync instructions

The website is hosted on Jiantao's domain. From the terminal, run the command

> rsync -av location-on-local-machine/bliss-website-and-seminar/ -e ssh your-name@login.eecs.berkeley.edu:/home/eecs/jiantao/public_html/bliss

This will update both the website and seminar. You may see errors because the git-related files will not add seamlessly, but in general, the command should work without issues. The same command can be executed by running the websync.sh bash script from terminal.

# Jemdoc compilation instructions

Jemdoc is python compilable, and all the necessary files are in the folder. Run the command

> python jemdoc.py file-name.jemdoc

This will generate file-name.html in that folder. From within the Seminar/ folder, running the run.sh bash script compiles all the jemdoc files for the current semester and updates the Seminar page.

# Website update instructions

- For the main website: update the appropriate jemdoc files, and compile them using the above command individually to generate html pages. The website structure is largely based on the basic jemdoc template from the tutorial, which explains how to add more pages, how to add menu items, and formatting. Since jemdoc support has been deprecated, a different tutorial can be accessed here: https://szl2.github.io/jemdoc-new-design/www/menu.html.


# Seminar instructions

Broad coverage of the various things-to-do below. Please add to this if there are missing pieces.

## Room booking

- At the start of the semester, book a room on your calendar for M/W/F afternoon through the semester. Do this early, and try not to clash with other parallel events 
(e.g., Simons lectures, DREAM seminars, Neyman seminars, EECS colloquium). The seminar is usually conducted in 531 Cory, 400 Cory or 540 Cory; for the latter, you may need special
permission from the department after you've put in the request (should not be an issue unless DOP center has events at the same time).

- You may have speakers at non-standard times. These rooms will need to be booked on a case-by-case basis.

## Inviting speakers

- The general rule-of-thumb is that we would like people from outside Berkeley to speak as far as possible. Seniority-wise, we'd like postdocs at least, although
dissertation talks of BLISS members are also announced as non-standard BLISS seminars. Berkeley postdocs are a good resource for late in the semester.


## Website

- At the start of the semester, create a new folder with the format spYY for Spring 20YY or faYY for Fall 20YY, to host information about the talks for that semester. Copy over the jemdoc.css and MENU files from a previous year's folder. An example of the folder is provided at ./Seminar/spYY.

- For each talk, create a speaker-name.jemdoc file following the the template in ./Seminar/spYY/speaker.jemdoc.

- index.jemdoc needs to be edited to add the name of the speaker and title of the talk with the link to the talk accessible at spYY/speaker-name.html.

- At the end of the semester, move the list from before into ./Seminar/past.jemdoc


## Calendar and EECS events

- Add the seminar to the BLISS-seminar-official calendar. Make sure to specify time/venue/abstract.

- Visit http://events.berkeley.edu/index.php/submit.html and enter the seminar details. The sponsor is EECS, and typical cross-lists are with statistics, mathematics, IEOR, and Simons.

## Email announcement

- Send the email out to bliss-seminar@lists.eecs.berkeley.edu and eecs-announce@eecs.berkeley.edu and cc seminars@stat.berkeley.edu and bcc bairucb@lists.eecs.berkeley.edu.

- Email template is in Seminar/email-temp.txt; make sure to have the calendar link and subscription link at the bottom.

- Once you send the email, you will have to approve it for the bliss-seminar list. Make sure to do that; otherwise the email will not get sent out.
