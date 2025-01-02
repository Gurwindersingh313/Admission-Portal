Admission Portal
The Admission Portal is a web application designed to manage student admissions efficiently. It offers a user-friendly interface for students to register and a powerful admin panel for administrators to manage student data. The system is built using Java, HTML5, CSS, JDBC, and JSP to create a seamless experience for both students and administrators.

Technologies Used:
1.Java: The core programming language used for the backend logic and business processing.
2.HTML5: For building the structure and layout of the web pages.
3.CSS: To style the website and make it visually appealing and responsive.
4.JDBC (Java Database Connectivity): For connecting and interacting with the database.
5.JSP (JavaServer Pages): To create dynamic web pages by embedding Java code in HTML.


Features
1. Student Registration Form:
    -Students can register themselves by filling out a simple and intuitive registration form.
    -Fields include essential information such as name, email, phone number, etc.
    -The form validates the data both on the client-side (HTML5 validation) and server-side (Java backend).
2. Admin Panel:
    -The Admin Panel is a secured section of the portal where administrators can log in and perform various student management tasks.
    -Login: Only authenticated administrators can access the panel using login credentials.
    -Add Student: Admins can manually add new students to the portal.
    -Search Student: Admins can search for students by attributes like name, student ID, etc.
    -Delete Student: Admins have the ability to remove student records when necessary.
    -Display Records: Admins can view the list of all students with their details in an organized format.
    -Print Records: Admins can print the displayed student records for documentation or reporting purposes.
3. Database Integration:
    -The system uses JDBC to interact with a relational database.
    -It supports CRUD operations (Create, Read, Update, Delete) to handle student records in the database.
    -The database stores student information securely and allows for easy retrieval and modification of data.

How It Works:
Student Registration:
    -Students access the portal and fill out the registration form.
    -Upon submission, the form data is validated and stored in the database.
Admin Management:
    -The administrator logs into the Admin Panel with the provided credentials.
    -The admin can perform various actions such as adding new students, searching for existing records, deleting records, and displaying student data.
Database Handling:
    -JDBC is used to handle database queries. The system allows admins to perform operations like adding, updating, deleting, and viewing student records.
