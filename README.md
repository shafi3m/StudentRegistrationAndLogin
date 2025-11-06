
# Student Registration and Login System (JSP + Servlet + JDBC + MySQL)

This is a simple Java Web Application that demonstrates **Student Registration**, **Login Authentication**, **Session Handling**, and **Logout** using:

- JSP (View Layer)
- Servlets (Controller Layer)
- JDBC (Database Connectivity)
- MySQL Database
- Tomcat Server

This project is beginner-friendly and helps in understanding Java Web Application workflow.

## Features

| Feature | Description |
|--------|-------------|
| Student Registration | Stores new student data into database |
| Login Authentication | Validates email & password |
| Session Management | Maintains user login session |
| Logout | Destroys session and returns to login page |
| JDBC + PreparedStatements | Secure database operations |

## Project Setup Instructions

### 1. Create Database in MySQL
```sql
CREATE DATABASE studentdb;

USE studentdb;

CREATE TABLE users(
   id INT AUTO_INCREMENT PRIMARY KEY,
   name VARCHAR(50),
   email VARCHAR(50),
   password VARCHAR(50),
   city VARCHAR(50)
);
```

### 2. Create Dynamic Web Project (Eclipse)
1. Open **Eclipse**
2. Go to **File → New → Dynamic Web Project**
3. Project Name: `StudentRegistrationAndLogin`
4. Select **Apache Tomcat** as Target Runtime
5. Click **Finish**

### 3. Add MySQL Connector JAR
Download from repository:
https://github.com/shafi3m/StudentRegistrationAndLogin/blob/main/mysql-connector-j-8.1.0.jar

**Add to Build Path**
Right Click Project → Build Path → Configure Build Path → Add External JARs

**Copy JAR to Deployment Folder**
Place jar inside:
```
WebContent / WEB-INF / lib /
```

### 4. Update Database Credentials in Servlets
```java
Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/studentdb","root","YOUR_PASSWORD"
);
```

### 5. Run on Tomcat Server
Right Click Project → Run As → Run on Server

## Application URLs

| Page | URL |
|------|-----|
| Registration Page | `http://localhost:8080/StudentRegistrationAndLogin/register.jsp` |
| Login Page | `http://localhost:8080/StudentRegistrationAndLogin/login.jsp` |
| Profile (After Login) | `profile.jsp` |

## Project Structure
```
src/
 └─ com.yourpackage.servlets
     ├─ RegisterServlet.java
     ├─ LoginServlet.java
     └─ LogoutServlet.java

webapp/
 ├─ register.jsp
 ├─ login.jsp
 ├─ profile.jsp
 ├─ style.css
 └─ WEB-INF/
     └─ lib/
         └─ mysql-connector-j-8.1.0.jar   (JDBC Driver)

```

## Technologies Used

| Technology | Version |
|-----------|---------|
| Java | 8+ |
| JSP / Servlet | Jakarta EE/Javax |
| MySQL | 5.7 / 8 |
| JDBC Driver | mysql-connector-j-8.1.0.jar |
| Server | Apache Tomcat 8 / 9 / 10 |

##

**👨‍💻Shafi**

LinkedIn: https://www.linkedin.com/in/shafi3m/  


