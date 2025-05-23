# JustInTime — FloatFry Manufacturing Web System

## Overview
**JustInTime** is a second-year group software engineering project developed to assist employees of the FloatFry company in managing manufacturing tasks more efficiently. This web-based solution supports operations such as timetable scheduling, material tracking, machine monitoring, and product lifecycle management through a unified platform.

The application was built using **PHP, HTML, and CSS**, with a MySQL database, to simulate a real-world Manufacturing Resource Planning (MRP) system.

## Technologies Used
- **Frontend:** HTML, CSS
- **Backend:** PHP
- **Database:** MySQL (via phpMyAdmin)
- **Design & Planning Tools:** Figma, Excel, XAMPP

## Key Features

### 🔐 User Authentication
- Role-based login system for various staff types (e.g., Stamper, Floor Manager, PO, Production Manager).
- Username and password verification with job-based homepage redirection.

### 🛠️ Operational Pages
- **Timetable Management:** Assign and track shift schedules.
- **Machine Monitoring:** Check availability and details for machine types.
- **Material Management:** Search, update, and place orders for materials.
- **Product Line Control:** Add, edit, and view production line specs.
- **Weekly Order Management:** Enter and manage demand forecasts and shipping schedules.

### 🗃️ Database Features
- Normalized relational schema including tables for staff, products, machines, materials, certifications, shifts, and timetables.
- Full database structure implemented and integrated using phpMyAdmin.

## Setup Instructions

### Requirements
- Local server environment (XAMPP or similar)
- PHP and MySQL support

### Installation
1. Clone or copy project files into `htdocs` directory.
2. Import the provided SQL file (`floatfry.sql`) into phpMyAdmin.
3. Update database credentials in `db_conn.php` and `db_conn1.php`.
4. Start Apache and MySQL via XAMPP.
5. Access the website at `http://localhost/index.php`.

## Team Members
- Ei Ngon Phoo (Database Engineer / Full Stack Developer)
- Joelle Ibrahim (System Architect / Full Stack Developer)
- Karina Kaur Panesar (Product Owner / Web Developer)
- Sevval Isikirik (Scrum Master / Web Developer)
- Yoon Myat Wai Phyo (System Architect / Web Developer)

## Project Methodology
- Followed Agile with two 4-week sprints
- Weekly standups, sprint planning, retrospectives
- Collaborative use of Figma, Discord, and in-person meetings

## Future Work
- Add machine timetable functionality
- Improve error handling and UI responsiveness
- Expand automation for supply ordering
- Enhance testing and validation across user roles

## License
© 2023 Team JustInTime. All rights reserved.
