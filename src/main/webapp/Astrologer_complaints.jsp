<%@ page import="org.gandharva.gandharva.model.AllUser" %>
<%@ page import="java.util.Base64" %><%--
  Created by IntelliJ IDEA.
  User: Binali Ukwatte
  Date: 31-01-2024
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
    <link rel="stylesheet" href="styles.css">
    <title>Complaints</title>

</head>
<body>
<div class="sidebar">
    <a href="HomePage.jsp">
        <div class="logo">
            <img src="images/logo.png" alt="Logo">
        </div>
    </a>
    <ul class="menu">
        <li class="active">
            <a href="astrologer">
                <i class="menu-icon fas fa-tachometer-alt"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <li>
            <a href="Astrologer_profile.jsp">
                <i class="menu-icon fas fa-user"></i>
                <span>Profile </span>
            </a>
        </li>
        <li>
            <a href="Astrologer_pending.jsp">
                <i class="menu-icon fas fa-hourglass-half"></i>
                <span>User Requests</span>
            </a>
        </li>

        <li>
            <a href="Astrologer_schedule.jsp">
                <i class="menu-icon fas fa-calendar"></i>
                <span>Schedule</span>
            </a>
        </li>
        <li>
            <a href="Astrologer_payment.jsp">
                <i class="menu-icon fas fa-credit-card"></i>
                <span>Payment</span>
            </a>
        </li>

        <li>
            <a href="Astrologer_settings.jsp">
                <i class="menu-icon fas fa-cog"></i>
                <span>Settings</span>
            </a>
        </li>
        <li>
            <a href="Astrologer_complaints.jsp">
                <i class="menu-icon fas fa-circle-question"></i></i>
                <span>Support</span>
            </a>
        </li>
        <li class="logout">
            <a href="Astrologer_logout.jsp">
                <i class="menu-icon fas fa-sign-out-alt"></i>
                <span>logout</span>
            </a>
        </li>


    </ul>

</div>

<div class="main--content">
    <%
        String base64Image = null;
        String firstName = "Not";
        String lastName = "Applicable";
        if (session.getAttribute("id") == null) {
            response.sendRedirect("login");
        } else {
            AllUser astrologer = (AllUser) session.getAttribute("astrologer");
            byte[] blobData = astrologer.getUserImage();

            base64Image = Base64.getEncoder().encodeToString(blobData);
            firstName = astrologer.getFirstName();
            lastName = astrologer.getLastName();
        }
    %>
    <div class="header--wrapper">
        <div class="header--title">
<%--            <span>Support</span>--%>
            <h2>Support</h2>

        </div>
        <div class="user--info">
            <%--            <div class="search--box">--%>
            <%--                <i class="menu-icon fas fa-search"></i>--%>

            <%--                <input type="text" placeholder="Search">--%>
            <%--            </div>--%>

            <a href="Astrologer_profile.jsp">
                <img src="data:image/png;base64, <%= base64Image != null ? base64Image : "" %>" alt="User Image">
            </a>
        </div>

    </div>

    <div class="card--container">

        <span class="current--date" id="currentDate"> </span>

        <!-- JavaScript to get and display the current date -->
        <script>
            // Get the current date
            var currentDate = new Date();

            // Format the date as desired (e.g., "January 31, 2024")
            var options = { year: 'numeric', month: 'long', day: 'numeric' };
            var formattedDate = currentDate.toLocaleDateString('en-US', options);

            // Display the current date in the HTML element with id="currentDate"
            document.getElementById("currentDate").innerHTML = formattedDate;
        </script>
        <br> <h3 class="main--title">How can we help you <%= firstName + " " + lastName %> ?
        </h3>
        <br>

<%--    <div class="tabular--wrapper">--%>
<%--        <h3 class="main--title"> Complaint </h3>--%>
        <label for="description">Title:</label>
        <h3 class="complaint--title"> <input type="text" class="complaint--input" placeholder="Place your text here"> </h3><br><br>
        <label for="description">Description:</label><br>
        <textarea id="description" name="description" rows="10" cols="150" style="vertical-align: top;" placeholder="Place your text here"></textarea>


        <div class="amend">
            <div class="update">
                <button onclick="">Send</button>
            </div>
</div>
</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" defer></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11" defer></script>


</html>
