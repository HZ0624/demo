<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <head>
        <title>HTML PAGE </title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <style>
    table, th, td {
      border: 1px solid;
    }
    </style>
    <body class="homepage is-preload">
    <div id="page-wrapper">
    
        <!-- Header -->
        <section id="header" class="wrapper">
    
            <!-- Logo -->
            <div id="logo">
                <h1><a href="index.html">ABOUT HTML </a></h1>
                <p>A fully responsive site template designed by <a href="https://www.facebook.com/cheanhung.goo/">@HZ</a> and released<br />
                    for free under the <a href="https://html5up.net/license">Creative Commons</a> license.</p>
            </div>
    
            <!-- Nav -->
            <nav id="nav">
                <ul>
                    <li class="current"><a href="index.html">Home</a></li>
                    <li>
                        <a href="#">Course</a>
                        <ul>
                            <li><a href="HTML.html">HTML</a></li>
                            <li><a href="JavaScript.html">JavaScript</a></li>
                            <li><a href="CSS.html">CSS</a></li>
                            <li>
    
                                <ul>
                                    <li><a href="About us.html">About Us</a></li>
                                    <li><a href="Contact.html">Contact Us</a></li>
                                    <li><a href="Privacy Policy Page.html">Privacy Policy Page</a></li>
    
                                </ul>
                            </li>
    
                        </ul>
                    </li>
                    <li><a href="About us.html">About Us</a></li>
                    <li><a href="Contact.html">Contact Us</a></li>
                    <li><a href="SiteMap.html">Site MAp</a></li>
                    <li><a href="Privacy Policy Page.html">Private Policy Page</a></li>
                </ul>
            </nav>
    
        </section>
    
    
        <section id="intro" class="wrapper style1">
            <div class="title">The HTML</div>
            <div class="container">
                <p class="style1">So in case you were wondering what this is all about HTML</p>
                <img src ="images\HTML.jpg" style="width:1000px;height:500px;">
                <p style="font-size: 30px; "class="style2">
                    The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser.
                    <br>It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.
                    <br>Web browsers receive HTML documents from a web server or from local storage and render the documents into multimedia web pages.
                    <br>HTML describes the structure of a web page semantically and originally included cues for the appearance of the document.
                    <br>
                </p>
                <p >
                    <strong>Here are the Time Tabel to let your easy to arrange your time.</strong>
                </p>
                <br>
                <table border="5" cellspacing="0" align="center">
                    <!--<caption>Timetable</caption>-->
                    <tr>
                        <td align="center" height="50"
                            width="100"><br>
                            <b>Day/Period</b></br>
                        </td>
                        <td align="center" height="50"
                            width="100">
                            <b>I<br>9:30-10:20</b>
                        </td>
                        <td align="center" height="50"
                            width="100">
                            <b>II<br>10:20-11:10</b>
                        </td>
                        <td align="center" height="50"
                            width="100">
                            <b>III<br>11:10-12:00</b>
                        </td>
                        <td align="center" height="50"
                            width="100">
                            <b>12:00-12:40</b>
                        </td>
                        <td align="center" height="50"
                            width="100">
                            <b>IV<br>12:40-1:30</b>
                        </td>
                        <td align="center" height="50"
                            width="100">
                            <b>V<br>1:30-2:20</b>
                        </td>
                        <td align="center" height="50"
                            width="100">
                            <b>VI<br>2:20-3:10</b>
                        </td>
                        <td align="center" height="50"
                            width="100">
                            <b>VII<br>3:10-4:00</b>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" height="50">
                            <b>Monday</b></td>
                        <td align="center" height="50">Eng</td>
                        <td align="center" height="50">Mat</td>
                        <td align="center" height="50">Che</td>
                        <td rowspan="6" align="center" height="50">
                            <h2>L<br>U<br>N<br>C<br>H</h2>
                        </td>
                        <td colspan="3" align="center"
                            height="50">LAB</td>
                        <td align="center" height="50">Phy</td>
                    </tr>
                    <tr>
                        <td align="center" height="50">
                            <b>Tuesday</b>
                        </td>
                        <td colspan="3" align="center"
                            height="50">LAB
                        </td>
                        <td align="center" height="50">Eng</td>
                        <td align="center" height="50">Che</td>
                        <td align="center" height="50">Mat</td>
                        <td align="center" height="50">SPORTS</td>
                    </tr>
                    <tr>
                        <td align="center" height="50">
                            <b>Wednesday</b>
                        </td>
                        <td align="center" height="50">Mat</td>
                        <td align="center" height="50">phy</td>
                        <td align="center" height="50">Eng</td>
                        <td align="center" height="50">Che</td>
                        <td colspan="3" align="center"
                            height="50">LIBRARY
                        </td>
                    </tr>
                    <tr>
                        <td align="center" height="50">
                            <b>Thursday</b>
                        </td>
                        <td align="center" height="50">Phy</td>
                        <td align="center" height="50">Eng</td>
                        <td align="center" height="50">Che</td>
                        <td colspan="3" align="center"
                            height="50">LAB
                        </td>
                        <td align="center" height="50">Mat</td>
                    </tr>
                    <tr>
                        <td align="center" height="50">
                            <b>Friday</b>
                        </td>
                        <td colspan="3" align="center"
                            height="50">LAB
                        </td>
                        <td align="center" height="50">Mat</td>
                        <td align="center" height="50">Che</td>
                        <td align="center" height="50">Eng</td>
                        <td align="center" height="50">Phy</td>
                    </tr>
                    <tr>
                        <td align="center" height="50">
                            <b>Saturday</b>
                        </td>
                        <td align="center" height="50">Eng</td>
                        <td align="center" height="50">Che</td>
                        <td align="center" height="50">Mat</td>
                        <td colspan="3" align="center"
                            height="50">SEMINAR
                        </td>
                        <td align="center" height="50">SPORTS</td>
                    </tr>
                </table>
                <br>
                <br>
                <p class="m-0 text-white">&copy; <a href="#">Domain Name</a>. All Rights Reserved. Designed by <a href="https://www.facebook.com/cheanhung.goo/">@HZ </a>
            </div>
        </section>
    
    
    
    
    </div>
    <div class="col-6 col-12-medium">
    
    
    
    
        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.dropotron.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    
    </body>
</html>