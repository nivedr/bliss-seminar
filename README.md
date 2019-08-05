# BLISS website and seminar

Contains current BLISS website hosted on bliss.eecs.berkeley.edu

The old website has a redirect to these pages.

Once committed, these files need to be synced with the web.

# Sync instructions

The website is hosted on Jiantao's domain. From the terminal, run the command

> rsync -av location-on-local-machine/bliss-website-and-seminar/ -e ssh your-name@login.eecs.berkeley.edu:/home/eecs/jiantao/public_html/bliss

This will update both the website and seminar. You may see errors because the git-related files will not add seamlessly, but in general, the command should work without issues.

# Jemdoc compilation instructions

Jemdoc is python compilable, and all the necessary files are in the folder. Run the command

> python jemdoc.py file-name.jemdoc

This will generate file-name.html in that folder.

# Website update instructions

> Banghua please fill

# Seminar instructions

Broad coverage of the various things-to-do below. Please add to this if there are missing pieces.

## Room booking

- At the start of the semester, book a room on your calendar for M/W/F afternoon through the semester. Do this early, and try not to clash with other parallel events 
(e.g., Simons lectures, DREAM seminars, Neyman seminars, EECS colloquium). The seminar is usually conducted in 400 Cory or 540 Cory; for the latter, you may need special
permission from the department after you've put in the request (should not be an issue unless DOP center has events at the same time).

- You may have speakers at non-standard times. These rooms will need to be booked on a case-by-case basis.

## Inviting speakers

- The general rule-of-thumb is that we would like people from outside Berkeley to speak as far as possible. Seniority-wise, we'd like postdocs at least, although
dissertation talks of BLISS members are also announced as non-standard BLISS seminars. Berkeley postdocs are a good resource for late in the semester.

- Email template can be found in 


## Website

- index.jemdoc needs to be edited to add the name of the speaker and title of the talk.

- Create the file speaker-name.jemdoc and add it to the appropriate semester directory. Add the link semester/speaker-name.html to index.jemdoc.

- At the end of the semester, move the list from before into past.jemdoc


## Calendar

- Add the seminar to the BLISS-seminar-official calendar. Make sure to specify time/venue/abstract.

## Email announcement

- Send the email out to bliss-seminar@lists and eecs-announce@lists

- Email template is in the file email-temp.txt; make sure to have the calendar link and subscription link at the bottom.

- Once you send the email, you will have to approve it for the bliss-seminar list. Make sure to do that; otherwise the email will not get sent out.