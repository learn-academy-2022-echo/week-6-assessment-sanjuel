# ASSESSMENT 6: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. As a developer, I am creating a Rails application with a model called Cohort that has_many students, but OOPS! I forgot to add the foreign key. How can I fix this mistake? What is the name of the foreign key? Would the foreign key be on the Cohort model or the Student model?

Your answer: You can fix this by migration. The name of the foreign key would be student_id, and it would be on the student model. This is because the cohort model already has an id that the many students would have to match up with.

Researched answer: Migration can fix this issue. You will need to change the student model to include the foreign key, which in this case would be student_id. The cohort model already has a built in id that once you add the student id, because you already have it set to the cohort has_many students, it will automatically associate those things when you add the student id. Once you add that, you can migrate it and it will save the student model with the new student_id tag.

2. Which RESTful routes must always be passed params? Why?

Your answer: Create, Update, Show, and Destroy. This is because for create you need to have the params for what you are creating, aka a title or a date, and for update you need to see those same params to change them. For show you need an ID number so that you can find that one instance, and for Destroy you also need an ID number so you know which instance to delete.

Researched answer: The restful routes that must always be passed a param is Create, Update, Show, Destroy, and Edit. These all need params so that, in the case of Edit and Show, we know which instance to either show on our page or display so we can edit it. In the case of destroy, we need the ID of that instance to know which one to delete. And in the case of Create and Update, we need to know what to replace the already written model in our database with. 

3. Name three rails generator commands. What is created by each?

Your answer: One rails generator command is generate controller. This will create our application controller file that we can put our methods for our applications in. We can also generate resource, this will create all of our routes, our controller, and our views. We can also generate a model, which will take in params and allow us to create many instances of that model.

Researched answer: One rails generator command is generate controller. This will create our application controller file that we can put our methods for our applications in. We can also generate resource, this will create all of our routes, our controller, and our views. We can also generate a model, which will take in params and allow us to create many instances of that model. Another thing we can create using our rails generator commands is something called a scaffold. This creates a model, a migration for that model, a controller, as well as a way to test all of those things. 

4. Consider the Rails routes below. What is the name of the controller method that would be called by each route? What action would each of the controller methods perform?

action: "GET" location: /students

This would be index, as you're using GET and the location is students. This would show you a list of all students.

action: "POST" location: /students

This is Create. This will create a new instance of something in our database. 

action: "GET" location: /students/new

This would be New, and it will display html on a webpage.

action: "GET" location: /students/2

This would be show, as you are finding one instance of a student. It will give you a single instance of student based on the ID you give it.

action: "GET" location: /students/2/edit

This would be Edit. It will display html on a webpage of the students name.

action: "PATCH" location: /students/2

This would be Update. It will allow us to change the data of our database using the params we gave our model. 

action: "DELETE" location: /students/2

This would be Destroy. It will allow us, using an ID, to delete the instance of the student in our database. 

5. As a developer, you are making an application to manage your to do list. Create 10 user stories that will help you get your application started. Read more about [user stories](https://www.atlassian.com/agile/project-management/user-stories).

1. As a developer, I can create a full stack rails application.
2. As a developer, my to do list has a title and content.
3. As a user, I can see a list of all my items on my to do list
4. As a user, I can see one instance of an item on my to do list.
5. As a developer, I can add an instance of an item directly to my database.
6. As a user, I can add an item to my to do list.
7. As a user, I can edit my to do list
8. As a developer, I can update one instance in my database.
9. As a user, I can delete one instance of an item from my to do list.
10. As a user, when I delete, update, or make a new post I will be redirected to my homepage. 