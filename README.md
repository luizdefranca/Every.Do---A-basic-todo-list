# Every.Do---A-basic-todo-list
 Every.Do - A basic todo list (P*) Assignment
 Status
Incomplete
 Duration
180m to 315m
Learning Outcomes
can use a UITableView to display content in a scrolling list
can add gestures to a UITableView
can implement a detail view controller pattern
can update information displayed in a UITableView
Goal
We've decided that all of the current todo list apps in the app store are just no good. So today, we will be building our own todo list app called Every.Do.

Requirements
User Stories
User should be able to view a list of all their todos 
As an 'Every.Do' user 
I want to be able to browse through all my todos 
Because I want to quickly be able to see the status of all my todos 

User should be able to view details about a specific todo 
As an 'Every.Do' user 
I want to be able to view more details about a single todo 
Because I want to know more information about what I will need to do to complete that todo 

User should be able to add a new todo 
As an 'Every.Do' user 
I want to be able to add a new todo 
Because I want to have all my tasks that I need to accomplish on my todo list 

User should be able to complete a todo 
As an 'Every.Do' user 
I want to be able to mark a todo as complete 
Because I want to be able to identify todos that I still have to do 

Problem
We will be building the app in the order of the user stories, so we'll start by viewing existing todos and then be able to new todos later on.

Setup
Create a new iOS project, using the Single View template.

Remember to commit your changes to git incrementally and push your local commits to GitHub as often as possible.

User should be able to view a list of all their todos
Create a Todo object which has the following properties: - title - todo description (note: a property cannot be named description, as that's already in use) - priority number - is completed indicator

For now, we will just hard code some todos.

Instantiate several Todo objects, and fill out their values with some tasks of your choice.
Put them all into an array.
Now let's display those todos in a table view.

Create a new UITableView
Create a custom UITableViewCell subclass that displays the title, a one-line preview of the task description, the priority level.
When the view loads, display all of the todos.
This will require you to implement the delegate and data source methods to display a cell for each todo item.

User should be able to view details about a specific todo
Create a new view controller to display the details about a todo.
Add labels in the detail view controller for the todo contents.
When a todo item is tapped in the table view, open the detail view controller, and display the details about the todo.
User should be able to add a new todo
Create a new todo view controller that contains text fields for the user to set todo item properties. The user will use this to create a new todo.
Add a button to the main view controller to add a new todo. When the button is tapped, navigate to the new todo view controller.
Add a done button to the new todo view controller that dismisses the view controller and adds that todo item to the table view.
User should be able to complete a todo
Add a swipe gesture recognizer to your table view to detect a swipe from right to left.
When the gesture fires, mark a todo as complete. Update your data model objects and rearrange your list.
Conclusion
You now have a fully functional todo list app. In the next assignment, we will add some 'nice to have features'.
