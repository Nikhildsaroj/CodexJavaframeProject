# Codex Web Learning Platform

## Overview

The **Codex Web Learning Platform** is an immersive learning environment designed to enhance the educational experience by combining hands-on projects, educational content, and AI-powered tools. This advanced version builds upon previous iterations, integrating modern Java frameworks and AI features.

## Objective

The platform aims to provide a comprehensive learning experience that includes:
- Dynamic course offerings
- Personalized recommendations
- Community interaction

## Features

1. **User Registration & Authentication**
   - Sign-Up with Email Confirmation
   - Login System
   - VIP Membership with premium content access

2. **Paid Course System**
   - Course Enrollment with Email Confirmation
   - Access to Premium Content for paid users and VIP members

3. **AI Model Integration**
   - Anime Recommender: Personalized anime recommendations
   - Movie Recommender: Movie suggestions based on user preferences
   - Image Classification: Users can upload images to test classification accuracy

4. **Admin Panel**
   - Content Management: Add, edit, or delete courses
   - User Management: View user data and monitor registrations
   - VIP Membership Management: Manage VIP memberships and payments
   - Review Management: Oversee user feedback and interactions

## Technologies Used

- **Eclipse IDE**: Integrated Development Environment for Java development
- **Hibernate**: ORM tool for database management
- **MySQL**: Database for storing user data, courses, payments, and recommendations
- **HTML5, CSS3, JavaScript**: Front-end technologies for a responsive user interface
- **AJAX**: For asynchronous communication between client and server
- **FastAPI**: For deploying and hosting AI models
- **VS Code**: Development environment for deploying AI models
- **Maven**: Dependency management and build automation tool

## Implementation Details

### Backend (Hibernate)

The backend is built using Hibernate, replacing raw JDBC for more efficient data handling, better scalability, and reduced complexity. It interacts with a MySQL database to manage user data, course enrollments, and AI recommendations.

### Frontend (HTML5, CSS3, JavaScript)

The front-end is designed for a dynamic and responsive user interface, utilizing AJAX for asynchronous updates, improving user experience during actions like course registration and AI model testing.

### AI Model Deployment (FastAPI and VS Code)

AI models (Anime Recommender, Movie Recommender, and Image Classifier) are deployed using FastAPI. They are hosted and deployed with VS Code, providing real-time recommendations via API endpoints accessed asynchronously using AJAX.

### VIP Membership & Email Confirmation

VIP memberships include automatic email confirmation using the JavaMail API. Upon VIP sign-up, users receive a confirmation email with an attached PDF receipt generated with the iText library.

## Database Schema (MySQL)

- **Users Table**: Stores user details such as username, email, password (hashed), membership type, and registration date.
- **Courses Table**: Contains information about available courses.
- **Enrollments Table**: Stores course enrollments.
- **VIP Membership Table**: Manages VIP user details and membership status.
- **Reviews Table**: Stores reviews and feedback from users.
- **UserCourseEnrollments Table**: Logs user sign-ups and course enrollments.

## Getting Started

To get started with the **Codex Web Learning Platform**, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/CodexWebLearningPlatform.git

   
 
 
output:
   <img width="452" alt="image" src="https://github.com/user-attachments/assets/559762ec-6875-45b6-b01f-aa9d804a2f57">
   <img width="452" alt="image" src="https://github.com/user-attachments/assets/833c3305-8436-4b4f-8874-5f0d07be3ff9">
   <img width="452" alt="image" src="https://github.com/user-attachments/assets/ba755eba-1ea1-4da0-99b6-1c89977a539d">
   <img width="452" alt="image" src="https://github.com/user-attachments/assets/4907b463-1441-4217-9c3e-c49d2506998c">
   <img width="452" alt="image" src="https://github.com/user-attachments/assets/535b778b-8fb8-4b18-986b-25765f406557">
   <img width="452" alt="image" src="https://github.com/user-attachments/assets/5b616bc1-2f4b-42af-81f1-dc23e2e27e5e">
   <img width="452" alt="image" src="https://github.com/user-attachments/assets/53640413-5968-4d91-a2cc-1ce4999bb179">
   <img width="452" alt="image" src="https://github.com/user-attachments/assets/36a6fa36-3c66-45f6-9814-5f47d91eadaa">
   <img width="438" alt="image" src="https://github.com/user-attachments/assets/4c261cb1-cb28-497e-8300-0ee61a168e6e">
   Miniproject.html:
freetutorial.jsp:
 
Paidcourse.jsp:
 
 
 
 
enrollment.jsp:
    













Aihome.html
    
Vipform.html
      
Viplogin.html

Aivippage.html    

Animerecommedation(localhost:8002)



 








recommedation(localhost:8001)

ddddddd










Imageclassfication(localhost:8000)

















Reviewform.jsp

  








Adminlogin.jsp

Adminpanel.jsp:



Userdata.jsp, FetchUserDataServlet




Coursedata.jsp, FetchCourseDataServlet

Editcoursesevlet

deletecourseServlet:



courseform.jsp


Enrollmentdata.jsp , FetchEnrollmentDataServlet




enrolledusers.jsp , EnrolledUserServlet


 
FetchViptable.java 







FetchReviewDataSevlet.java










