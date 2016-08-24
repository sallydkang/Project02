#PROJECT 02 CRUD APP
-----
Personal Journal :
-----
Routes:

- User controller (devise)
- Journal controller (post/edit/delete journals)
- Post controller (post/edit/delete posts in Journals)

Database/Models:

- User (has many Journals)
- Journals (belongs to Users)
- Posts (belongs to Journals)

Require:

- Log in page
- Sign up page
- Journal index page
- Journal posts

Webpage layout:

- Navbar for home, login in, register, journals
- Journals page 
- View Journal posts (show all posts that belong to Journal on one page)
- Forms for adding and updating posts/journals 

-----
Website populated:

This is the front page, navbar is not shown but you can search through all your journals. This is an example of one journal with a cover picture ---> 

![alt text](https://i.imgur.com/vUoKJai.jpg)

This is the journal page with pictures and journal information. The journal info boxes fit by column, making it look neat and easy to read. (if you hover over the info box the box color changes to a darker navy color so it's easier to read) --->

![alt text](https://i.imgur.com/G2yjzYG.jpg)

#User Stories 
-----
##As a User I want to :

- be able to see all my journals on one page
- be able to easily add new journals and posts
- be able to delete and edit my journals and posts
- be able to have my own private journal
- be able to search my journals and posts
- be able to upload pictures on to my journal
- be able to share the journal