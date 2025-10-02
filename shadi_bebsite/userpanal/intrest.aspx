<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intrest.aspx.cs" Inherits="shadi_bebsite.intrest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form action="intrest.aspx" method="post">
        <div>

            <header>
                <h1>Send Interest</h1>
              </header>

              <section class="interest-form">
                <form action="intrest.aspx" method="post">

                  <label>Your Name:
                    <input type="text" name="yourName" required />
                  </label>

                  <label>Your Email:
                    <input type="email" name="yourEmail" required />
                  </label>

                    

                  <label>Phone Number:
                    <input type="tel" name="yourPhone" required />
                  </label>

                  

                  <label>Preferred Meeting Date:
                    <input type="date" name="meetingDate" required />
                  </label>

                  <label>Preferred Time:
                    <input type="time" name="meetingTime" required />
                  </label>

                  <label>Meeting Mode:
                    <select name="meetingMode" required>
                      <option value="">-- Select --</option>
                      <option value="Online">Online</option>
                      <option value="In-Person">In-Person</option>
                    </select>
                  </label>

                  <label>Meeting Location (if in-person):
                    <input type="text" name="meetingLocation" placeholder="e.g. Café Coffee Day, Pune" />
                  </label>

                  <button type="submit">Send Interest & Request Meeting</button>
              </form>
         </section>
    </body>
</html>

<style>
    body {
  margin: 0;
  font-family: 'Segoe UI', sans-serif;
  background-color: #f9f9f9;
}

header {
  background-color: #0077cc;
  color: white;
  padding: 20px;
  text-align: center;
}

.interest-form {
  max-width: 500px;
  margin: 40px auto;
  background: white;
  padding: 30px;
  border-radius: 10px;
  box-shadow: 0 0 15px rgba(0,0,0,0.1);
}

.interest-form label {
  display: block;
  margin-bottom: 15px;
  color: #333;
}

.interest-form input,
.interest-form textarea {
  width: 100%;
  padding: 10px;
  margin-top: 5px;
  border-radius: 5px;
  border: 1px solid #ccc;
}

.interest-form button {
  width: 100%;
  padding: 12px;
  background-color: #0077cc;
  color: white;
  border: none;
  border-radius: 5px;
  font-size: 16px;
  cursor: pointer;
}

.interest-form button:hover {
  background-color: #005fa3;
}

</style>