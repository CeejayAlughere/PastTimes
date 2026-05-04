Module: WEDE6021
Part 1 – Section 1
Student Name: Bongani Shikwambana (ST104440511)
Student Name: Ceejay Alughere (ST10451570)

Overview
PastTimes is a web-based second-hand clothing store developed using PHP and MySQL. Our platform allows users to browse a curated collection of pre-owned fashion items, add them to a cart, and place orders. It also includes an admin panel for managing products, users, and orders.
Our system focuses on sustainability by promoting the reuse of clothing while also demonstrating practical full-stack web development using XAMPP.
Key Features

Our system focuses on sustainability by promoting the reuse of clothing while also demonstrating practical full-stack web development using XAMPP.

User Side
Users can register and log into their accounts securely. Once logged in, they can browse available products, view detailed descriptions, select sizes, and add items to their cart. The cart system allows users to manage quantities and review their selections before placing an order. Users can also view their order history and track order status.

Admin Side
The admin panel allows full control over the store. Admins can add new products, update existing ones, or remove items from the store. Orders can be viewed and updated, including changing their status. The admin can also manage users and monitor activity within the system.

Product Management
Each product includes a name, description, price, size, category, condition, and image. This ensures that users get complete information before making a purchase.

Session Handling
User sessions are used to manage login states and personalize the experience, such as displaying the correct user data and maintaining cart contents.

Project Structure
/PastTimes
│── /components
│   ├── connect.php        # Database connection
│   ├── header.php         # Navigation/header
│   ├── footer.php         # Footer
│
│── /admin                 # Admin dashboard & other management files
│── /css                   # Stylesheets
│── /js                    # JavaScript files
│── /images                # Product images
│
│── home.php               # Main landing page
│── shop.php               # Product listing
│── cart.php               # Shopping cart
│── orders.php             # Orders page
│── login.php              # Login page
│── register.php           # Registration page
│── README.md              # Documentation

Installation and Setup
First, install XAMPP and ensure Apache and MySQL are working correctly.
Next, place our PastTimes project folder inside the htdocs directory in your XAMPP installation.
Open the XAMPP Control Panel and start both Apache and MySQL services.
Go to phpMyAdmin in your browser and create a new database named shop_db. Import the SQL file provided with the project to set up all required tables.
Locate the database connection file inside the components folder (connect.php) and update it with your database name, username, and password if necessary.
Once everything is configured, open your browser and navigate to localhost/PastTimes/home.php to run the application.

Purpose of our project
This project was created to demonstrate the development of a dynamic e-commerce website using PHP and MySQL. It also aims to promote sustainable fashion by encouraging the buying and selling of second-hand clothing.
It showcases key concepts such as database design, session management, CRUD operations, and user authentication.
