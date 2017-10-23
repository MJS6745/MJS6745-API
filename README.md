# Workout Tracker - API repo

This is the repo for the API I built for a Workout tracker that I developed for the WDI full stack application project. It was developed primarily using Ruby on Rails. Links are included below to the production front end, the front end repo, as well as the prod URL for the API.
- [Workout Tracker](https://mjs6745.github.io/MJS6745-fullstack-frontend/)
- [Front End Repo](https://github.com/MJS6745/MJS6745-fullstack-frontend)
- [Back End API Prod URL](https://cryptic-reef-91253.herokuapp.com/)

## Overview

This application allows for users to create a profile and track their workouts over time. The app allows users to capture data including the date, duration, intensity/difficulty, and additional descriptive information about each workout. In addition, users can edit and delete workouts that they have created for themselves.

In regards to the API, it is built to allow for the creation and management of both users and workouts. A single user can be linked to many workouts and any given workout belongs to a single user. A workout can be thought of as a single workout session in which the user logs information about their workout including the date, duration, difficulty, time of day, type of workout, and a description of the workout.

The user resource has the following possible actions:
- Create a new user with a password
- Sign in as a user
- Sign out as a user
- Change the users password once signed in

The workout resource has the following possible actions. Note again that a workout belongs to a user. So, on the front end, the user is required to sign in before they can take any of the following actions.
- Create a new workout
- Get a list of their workouts (a user is only presented with a list of the workouts for which they were the creator)
- Edit a workout
- Delete a workout

For information regarding the setup of the front end of the application, please visit the front end repo (link in previous section).

## Technologies Used

The API made use of the following technologies:
- Ruby
- Rails

## Unsolved Problems

While there aren't any major problems present in the API that require attention I see opportunity for expanding the resources used by the application.

Presently there is one resource (workout) linked to a user. Each workout is essentially a description of a workout on a given date. I see an opportunity to break apart the workout resource a little further so that the description of each workout can be used as a template for future workouts.

So, for example, let's say that a user has 3 workouts over the course of a month in which that user ran 3 miles. Presently, the application stores those 3 workouts as 3 indepdent instances. I see an opportunity to break out the workouts as templates from which a user could select what wourkout they completed. This is essentially the V2 version of my application (see link to ERD in next section).

Breaking these workout "templates" into their own separate resource would also allow for the inclusion of functionality such as a workout generator. This could present the user with a random workout idea from the list of templates if they were having a hard time deciding how they wanted to workout.

## Planning and Development Process

This section will focus on the planning process used specifically for the API. For information on the planning process for the front end of the application, please visit that repo (link in first section above).

The planning for the API started with a general brainstorming session of what I wanted the application to accomplish. I wanted to be sure I understood the desired end result of the MVP version of the application before I started on anything. This vision for the functionality was critical as it drove my design process for the resources I needed to build out. I also spent time during this part of the process thoroughly defining what types of data I wanted the workout resource to include.

Once I had decided on the MVP application design, I proceeded to build out my Entity Relationship Diagram (aka ERD, link included below). This helped me to design the relationship between users and their workouts. The MVP version of the application was to be built with users and a single resource in mind, workouts. This relationship allowed for users to have multiple workouts and track them over time.

After the design was completed, I scaffolded my workout resource and tested the various actions for the resource via curl scripts. At this point, the resource did not have a relationship to a user but it still allowed me to make sure that the necessary actions/routes functioned as expected. As issues arose I worked to troubleshoot and address them (more details on problem solving strategy in next section).

Once the workout resource was working correctly, I linked the resource to a user. This created the relationship where a user could have many workouts and a workout belonged to a single user. The various actions for both the workout resource and the users were tested thoroughly via curl scripts and the front end to ensure they behaved as expected.

This process ultimately gave me the structure around which I was able to build the remainder of my front end functionality.

- [MVP ERD](https://git.generalassemb.ly/MJS6745/full-stack-project-practice/blob/response/attachments/ERD%20MVP.png)
- [V2 ERD](https://git.generalassemb.ly/MJS6745/full-stack-project-practice/blob/response/attachments/ERD%20V2.png)

## Problem-Solving Strategy

My approach for development of the API was to keep each piece of work as small as possible in order to limit scope and stay methodical. I would tend to focus on one resource and one action at a time. For example, I would focus on the sign up (create) functionality for the users, test/commit those changes, and then move onto the next piece.

This approach allowed my problem solving to stay limited in scope as well. Ultimately this led to troubleshooting being relatively less stressful and difficult than it would have been had I waited to test everything at the end or built in code in much larger pieces.

I also worked closely with the front end of the application to understand the root cause of any issue that came up. I wanted to make sure I understood if the problem was coming from the front end code or if it truly was an issue with the API. For example, when an issue arose that did not allow me to create a new workout, I first checked the front end functionality to ensure that everything from that side was being passed as expected. Then, I was able to dig into what might be causing the issue in the API.

Overall, this methodical approach to development and testing allowed me to confidently build, test, and troubleshoot seamlessly thoughout the construction of my application.
