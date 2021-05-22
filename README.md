[This is my Website](https://shabnamlouie.netlify.app/)

[This is my GitHub repo](https://github.com/shabnamlouie/Addressbook)

# Question 5:
## Develop a statement of purpose and scope for your application:
# 📓:

I am building an Address Book terminal app with Ruby in the command-line program to let the user put in the names and information of all of their contacts.
Then, the user will add in the ability to go through and search these contacts.

So to start, I create classes for each different parts of the address book project.
Such as: include the address book itself, contacts, and their information.

I wrote pseudocode with logical thinking to go to which classes of these different parts of the program.
- Contact file:
I add a file to my address book folder with the name of the contact.RB and start with the user contact class, which will keep my contacts. 
The contact is going to include the idea of one of my friends in the address book.

My contact file includes a first name, middle name, and last name, so I create attribute writers. Then I wrote methods and variables to read first_name, middle_name, last_name.
For testing, I create a new contact, as my name first_name is Shabnam, and add my last name is Louie. 
I wanted to show my full name together, so I made another method called full_name and refer to first_name, middle_name, last_name.
User type first name, and if does not have middle name it can go to next question and ask the last name.
Make string method of full name, then use a case statement to see what the format is. By default, return first and last name and did not include middle name.

- Phone_number file:
I create my phone number class into phone_number.RB file.
Make attribute accessor for the kind of numbers such as home or work or mobile.
Make string method for kind and number
And add phone numbers to my contacts in the contact file. My contact is attribute reader for phone numbers.
And initialize my contact and set the phone number in the empty array
Create a method to add contacts to my contact list with two arguments kind and number.
Make a new phone number instance with the kind and number argument.
Create method print phone numbers by using each method through the loop.
Make access to my phone number file by using require keyword and give a path to the contact file.

- Address file:
Create address.RB file to the address book folder
Create address class which is similar to phone number class by writing attribute accessor and adding the first line, second line, city, state, and postal code

I am writing short and long method format by default. 
And create a string to hold our address, add kind of address
Require the address class to contact the list file.
Add attribute reader for addresses too.
Set the addresses like a phone number into the empty array.
Write a method to address by adding an attribute of address which contains: Kind of address: (home, work, etc.), address line 1, address line 2, city, state, postal code.
Initialize the new instance of address class same as the phone number.
Then set all of the attributes to the argument of this method.

Make definition of print addresses same as phone number as a string by using the short version.
We are adding addresses by referencing instancing variables which we have attribute readers for.

- Address book file:

Create an address book.RB and initialize address book class and put our contact in an empty array called instance variable, so we do not need to use @sign for each time to refer to the contact.
We have an attribute reader for contact, so I create a method to print the contact list by writing first name and last name format.
After I make address book class set up now add contacts to it. Then to address book to require contact.
Write a method called find by name what pass in a name. If the name matches the argument to this method will return that contact.
I make an empty array by search result, which will be the contact in contact list.
Then search the name which sends in the method loop.
If the user search the part of a name or capitalize the name still, it can get the correct result. By making search query in lower case then looking to different contact will also match against lower case version of first or last name by writing include word.
For example, if user search for a letter which is common in some contacts, then shows those contacts has that word.
After implement contact by name working so implement by phone number working too by create empty result array.For searching by phone number, better replace any dashes with string. (“-”, “”). for example, if the user search 11111 is going to string like “11111”

Create another method called print result, which will takes a label for search and an array of results.This is gonna duplicate the codes, so to fix it by calling individual method.

Create ability to find some body by their address and similar pattern as find somebody by searching phone number and name.
Then I create a method to find by an address.
So we have a pattern of an empty result array and then manipulating search they send in, then looping to the contacts and pending to the array, unless is the contact is in included in that array.
Making a loop through contact and address by writing definition of find by address and making lower version of query in an empty array and create our search variable.
Use string method before using include method to see if one string is included in another, so by using long-form of address to see if the search include in there or not but need to loop to each address for each contact to see if the query is contain there.

- Input and output:
After setup our classes work of input and out put by using the ruby class from the standard library to save things between sections.

Making more command-line application by making a menu that allowing user to select something and work in the command line rather than from inside of ruby file.
To create a method call run which will display menu on a loop, and that loop go through a display menu and call each of these method depending on what the user enters. 

Add option to our loop in contact list menu in address book file. (for example p: print address book)
We add the ability to add contact here so then add a menu for contact then easy to search contact by typing the name.
Initialize a new contact and prompt the user to inter their information about their contact.
Writing a loop to add a menu to our address book file.
Making a response case method to help user if is prefer to phone number if is a refer to address book and if-else there is break to bring user back to loop by message: Any other key to go back.

Add another ability to search, so add that as prompt in the menu option in case statement by typing letter s as search.

Add last option to save out address book to a file, for this reason, we write two methods open and save.
Before exit another method call save method to save our contact list even though we have not written yet, and then once we initialize that write-in address book, another method called open method so that anything that we have saved will be loaded in to our contact.
Using a class from ruby standard library called Yaml so then we can save all of the ruby object in to the text base format and then we can write back text down to a file.
Yaml is just a class interface to another class which is where the method that we using come from, so we gonna be using load file and two yaml methods, and then for writing our files, I used IO and file class by open method.

- Then required yaml as part of standard library on top of the address book file.
Once user write information as the app asked for, it going to save in a file called contacts.yml
Then write another open method if the file exists, we assume contacts in there so we can replace the contacts array with the content of YAMLthe  file by calling load file on the same class.

- Adding symbol of Address Book to my app by searching this website. https://fsymbols.com/generators/smallcaps/

- I add an emoji of note book by searching in https://apps.timwhitlock.info/emoji/tables/unicode website.

- Add colorize gem file to makes my menu colorfull by searching in ruby gem website. "https://rubygems.org"

- Target audience:
My target audience are users who access to my codes, such as my teachers and my classmates.


# Question 6: 
## Develop a list of features that will be included in the application:


First of all we need to ask what we need from an address book?
Secondly, an address book need to have ability of adding a contact, printing address book list and finally, searching. According to these abilities my app has these features.

Search: when user press s word, search term word appear which, allows user to search a number or a letter of a name that already save in the app and can show what was saved according to what user searched.
For example:
Search term: 5
Name search results (5)
Phone search results (5)
Address search results (5)
In this example number 5 was saved according to previous search.

Add:
For adding when user press a word, add contact word appear which allows user to type first name, middle name, last name. Then for continuing the menu by pressing a adding phone number and adding address. So all of these information will saved then when user can search later then all will be show.
For example:
Address Book
a: Add Contact
p: Print Address Book
s: Search
e: Exit
Enter your choice: a
First name:
Middle name: 
Last name: 
Add phone number or address? 
p: Add phone number
a: Add address

Print: For print after user type p word app prints contact list that user search these information before and contain find by address and find by phone number.
For example:
  - !ruby/object:PhoneNumber
    kind: a
    number: a
  addresses:
  - !ruby/object:Address
    kind: a
    street_1: a
    street_2: a
    city: a
    state: a
    postal_code: a
  first_name: a
  middle_name: a
  last_name: a


As you know, control structures play an important role in programming because all the control that must be done on inputs and outputs is done in these structures. For this app I use loops and conditional control structures such as:
If, Else, Case
Repeat loops such as: Break



# Question 7:
## Develop an outline of the user interaction and experience for the application:

Develop an outline of the user interaction and experience for the application.
The user will find out how to interact with my app by searching for a word or letter or number or address.
Then app shows the menu of words according to user needs and if user type incorrect information app gonna go back and ask same questions until user press right key and answer correct question, and if the user wanna exit can press e key that makes user out of loop.

# Question 8:
This flow chart describes development of my terminal application.


# Question 9:


Address book Trello-app

Terlo program is one of the application that I use to manage my daily tasks. Also I make different order and categories, which have really completely solved the problems during my project and the past.

For example, in the past, in order to categorize tasks and follow the order between them, I had to prepare several papers so that we could write the tasks several times in order and put them together several times to reach the final result! But fortunately, with Terlo, I do not have such issues, and I can very easily and simply categorize your daily tasks and do them in order, and no disorder will affect me as much as in the past.

