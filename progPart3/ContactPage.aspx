<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TechCorp - Your Tech Solution</title>
  <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        .container {
            max-width: 800px;
            margin:   
 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);   

        }
        nav {
    display: flex;
    justify-content: center;
    background-color: #0056b3;
    padding: 10px 0;
}

nav a {
    color: white;
    text-decoration: none;
    margin: 0 15px;
    font-size: 1.1rem;
    font-weight: bold;
}

nav a:hover {
    text-decoration: underline;
}

        h2 {
            text-align: center;
            color: #333;
        }

        .info-section {
            margin-bottom: 20px;
        }

        .info-section h3 {
            color: #007bff;
        }

        .map-container {
            width: 100%;
            height: 400px;
            border-radius: 10px;
            overflow: hidden;
        }
         footer {
     text-align: center;
     background-color: #007bff;
     color: white;
     padding: 15px 0;
     margin-top: 20px;
 }

 @media (max-width: 768px) {
     nav {
         flex-direction: column;
     }

     .dashboard {
         flex-direction: column;
     }
     .contact-details {
    border: 1px solid #ccc;
    padding: 10px;
    border-radius: 5px;
    background-color: #f0f0f0;
}
    </style>
</head>
<body>
    <div class="container">
        <h2>TechCorp</h2>
            <!-- Navigation Bar -->
         <nav>
    <a href="Home.aspx">Home</a>
    <a href="ClaimForm.aspx">Claim Form</a>
   <a href="LectureProfile.aspx">Lecture Profile</a> <!--  Link to Lecture Profile -->
    <a href="Logout.aspx">Logout</a>
</nav>
        <h1>Your Premier Technology Partner</h1>

        <div class="container">
    <h2>TechCorp</h2>
    <p>Your Premier Technology Partner</p>

    <div class="info-section">
        <h3>Contact Information</h3>
        <div class="contact-details">
            <p><strong>Address:</strong> 123 Tech Avenue, Silicon Valley, CA 12345</p>
            <p><strong>Phone:</strong> (123) 456-7890</p>
            <p><strong>Email:</strong> info@techcorp.com</p>
            <p><strong>Website:</strong> https://www.techcorp.com</p>
        </div>
    </div>

    </div>

        <div class="info-section">
            <h3>Business Hours</h3>
            <p><strong>Monday - Friday:</strong> 9:00 AM - 5:00 PM</p>
            <p><strong>Saturday:</strong> 10:00 AM - 2:00 PM</p>
            <p><strong>Sunday:</strong> Closed</p>
        </div>

        <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.768111518246!2d-122.0840953680969!3d37.42199987937234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80859a6d00690021%3A0x479d87938479a447!2s123%20Tech%20Avenue%2C%20Silicon%20Valley%2C%20CA%2012345!5e0!3m2!1sen!2sus!4v1694366435119!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </div>
</body>
</html>