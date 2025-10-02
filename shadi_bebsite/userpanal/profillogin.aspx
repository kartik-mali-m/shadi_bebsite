<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profillogin.aspx.cs" Inherits="shadi_bebsite.profillogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form action="profilesql_con.aspx" method="post">
        <div>
            <div class="form-wrapper">
              <h2>User Profile Login</h2>
                
                  <label>Full Name:
                    <input type="text" name="fullName" required />
                  </label>

                  <label>Email:
                    <input type="email" name="email" required />
                  </label>

                  <label>Password:
                    <input type="password" name="password" required />
                  </label>
                  <label>date of birth:
                    <input type="date" name="Dob" required />
                  </label>


                  <label>Upload Profile Image:
                    <input type="file" name="profileImage" accept="image" />
                  </label>

                  <label>Age:
                    <input type="number" name="age" min="18" max="99" required />
                  </label>

                  <label>Height (in cm):
                    <input type="number" name="height" min="100" max="250" required />
                  </label>

                  <label>Weight (in kg):
                    <input type="number" name="weight" min="30" max="200" required />
                  </label>

                  <label>Religion:
                    <select name="religion" name="religin" required>
                      <option value="">-- Select --</option>
                      <option value="Hindu">Hindu</option>
                      <option value="Muslim">Muslim</option>
                      <option value="Sikh">Sikh</option>
                      <option value="Christian">Christian</option>
                    </select>
                  </label>

                  <label>Location:
                    <input type="text" name="location" placeholder="City, State" required />
                  </label>

                  <label>Interests:
                    <textarea name="interests" rows="3" placeholder="e.g. Reading, Music, Cooking, Travel"></textarea>
                  </label>
                <br />
                  <button type="submit">Create Profile</button>
              </div>
          </div>
              
          </form>
</body>
</html>


<style>
    /* Reset and base styles */
body {
  margin: 0;
  padding: 0;
  font-family: 'Segoe UI', sans-serif;
  background-color: #f4f4f4;
}

/* Wrapper for the form */
.form-wrapper {
  max-width: 500px;
  margin: 60px auto;
  background: white;
  padding: 30px;
  border-radius: 10px;
  box-shadow: 0 0 15px rgba(0,0,0,0.1);
}

/* Heading */
h2 {
  text-align: center;
  margin-bottom: 25px;
  color: #0077cc;
}

/* Form layout */
form {
  display: flex;
  flex-direction: column;
  gap: 15px;
}

/* Labels and inputs */
label {
  font-weight: 500;
  color: #333;
  display: flex;
  flex-direction: column;
}

input,
select,
textarea {
  padding: 10px;
  border-radius: 5px;
  border: 1px solid #ccc;
  font-size: 15px;
  width: 100%;
  box-sizing: border-box;
}

/* Button styling */
button {
  padding: 12px;
  background-color: #0077cc;
  color: white;
  border: none;
  border-radius: 6px;
  font-size: 16px;
  cursor: pointer;
  transition: background-color 0.3s ease;
  
}

button:hover {
  background-color: #005fa3;
}

/* Responsive tweaks */
@media (max-width: 600px) {
  .form-wrapper {
    margin: 30px 15px;
    padding: 20px;
  }

  h2 {
    font-size: 20px;
  }

  button {
    font-size: 15px;
  }
}

</style>