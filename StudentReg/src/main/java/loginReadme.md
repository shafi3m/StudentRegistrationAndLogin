
# LoginServlet.java - Line by Line Explanation

This servlet handles the **Login** functionality of the web application.

---

## Line-by-Line Explanation

### Import Statements
These import required classes for I/O, database connection, servlets, and session.

- `import java.io.*;` — Handles input/output operations.
- `import java.sql.*;` — Provides JDBC API for database operations.
- `import javax.servlet.*;` — Allows working with Servlet features.
- `import javax.servlet.annotation.WebServlet;` — Enables URL mapping without web.xml
- `import javax.servlet.http.*;` — Supports HTTP session, request, response.

---

### `@WebServlet("/login")`
Maps this servlet to URL `/login`.  
Whenever the user submits **login.jsp** form, this servlet runs.

---

### Class Declaration
```java
public class LoginServlet extends HttpServlet
```
Makes the class behave like a Servlet.

---

### `protected void doPost(...)`
Runs when **POST method** is used in form submission.

---

### Get Form Input
```java
String email = req.getParameter("email");
String pass = req.getParameter("pass");
```
Fetches data from form fields and stores in variables.

---

### Prepare Response
```java
resp.setContentType("text/html");
PrintWriter out = resp.getWriter();
```
Tells browser that response is HTML and creates a writer to print output.

---

### Load JDBC Driver
```java
Class.forName("com.mysql.cj.jdbc.Driver");
```
Loads MySQL JDBC driver.

---

### Create Database Connection
```java
Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/studentdb","root","admin");
```
Connects to **studentdb** using username `root` and password `admin`.

---

### Prepare SQL Query Securely
```java
PreparedStatement ps = con.prepareStatement(
"SELECT * FROM users WHERE email=? AND password=?");
ps.setString(1, email);
ps.setString(2, pass);
```
- Uses **PreparedStatement** to prevent SQL Injection.
- Replaces `?` with actual form inputs.

---

### Execute Query
```java
ResultSet rs = ps.executeQuery();
```
Runs query and checks if record exists.

---

### Authentication Check
```java
if(rs.next()){
```
If record found → login success.

---

### Create Session and Store Username
```java
HttpSession session = req.getSession();
session.setAttribute("username", rs.getString("name"));
```
Session remembers user across pages.

---

### Forward to Profile Page
```java
RequestDispatcher rd = req.getRequestDispatcher("/profile.jsp");
rd.forward(req, resp);
```

---

### Invalid Login Case
```java
out.println("<h3 style='color:red;'>Invalid Email or Password </h3>");
RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
rd.include(req, resp);
```

---

### Close Connection
```java
con.close();
```

---

### Exception Handling
```java
catch(Exception e){
    out.println(e);
}
```

---

## Summary Flow

| Step | Description |
|-----|-------------|
| User enters login details | From `login.jsp` |
| Servlet receives values | `doPost()` method |
| Database is queried | Using JDBC |
| If match found | Create session + open profile.jsp |
| If no match | Show error + reload login.jsp |

---
