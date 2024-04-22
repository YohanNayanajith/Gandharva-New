<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Astrologer Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        body {
            background-image: url('images/background.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 20px 0;
        }

        .form-box {
            background-color: rgba(255, 255, 255, 0.5);
            padding: 40px;
            border: 1px solid #000;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            max-width: 80%;
            font-size: 16px;
        }

        .heading {
            text-align: center;
            margin-bottom: 20px;
        }

        .input-field {
            border: 1px solid #000;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 15px;
            width: calc(100% - 22px);
        }

        .select-field {
            width: 100%; /* Set width for select field */
        }

        .input-label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .proceed {
            background-color: #000000;
            color: white;
            border: 2px solid #000000;
            border-radius: 25px;
            padding: 10px 30px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
            width: 100%;
            margin-top: 20px;
        }

        .proceed:hover {
            background-color: #ffffff;
            color: #000000;
            transform: translateY(-3px);
        }

        .terms {
            text-align: center;
            margin-top: 20px;
        }

        .terms a {
            color: black;
            text-decoration: none;
        }

        .terms a:hover {
            text-decoration: underline;
        }

        .login-link {
            text-align: center;
            margin-top: 20px;
        }

        .login-link a {
            color: black;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: -10px;
            margin-bottom: 10px;
        }

        .required {
            color: red;
            margin-left: 3px; /* Adjust as needed */
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-box">
        <h1 class="heading">Astrologer Registration</h1>
        <form enctype="multipart/form-data" id="registration-form">
            <label for="first_name" class="input-label">First Name<span class="required">*</span></label><br>
            <input type="text" id="first_name" name="first_name" class="input-field" required><br>

            <label for="last_name" class="input-label">Last Name<span class="required">*</span></label><br>
            <input type="text" id="last_name" name="last_name" class="input-field" required><br>

            <label for="experience" class="input-label">Years of Experience<span class="required">*</span></label><br>
            <input type="text" id="experience" name="year_of_experience" class="input-field" required><br>

            <label for="district" class="input-label">Select your District<span class="required">*</span></label><br>
            <select id="district" name="district" class="input-field select-field" required>
                <option value="" disabled selected>Select your District</option>
                <option value="Ampara">Ampara</option>
                <option value="Anuradhapura">Anuradhapura</option>
                <option value="Badulla">Badulla</option>
                <option value="Batticaloa">Batticaloa</option>
                <option value="Colombo">Colombo</option>
                <option value="Galle">Galle</option>
                <option value="Gampaha">Gampaha</option>
                <option value="Hambantota">Hambantota</option>
                <option value="Jaffna">Jaffna</option>
                <option value="Kalutara">Kalutara</option>
                <option value="Kandy">Kandy</option>
                <option value="Killinochchi">Killinochchi</option>
                <option value="Kurunegala">Kurunegala</option>
                <option value="Mannar">Mannar</option>
                <option value="Matale">Matale</option>
                <option value="Matara">Matara</option>
                <option value="Monaragala">Monaragala</option>
                <option value="Mulativu">Mulativu</option>
                <option value="Nuwara Eliya">Nuwara Eliya</option>
                <option value="Pollonnaruwa">Pollonnaruwa</option>
                <option value="Puttalam">Puttalam</option>
                <option value="Ratnapura">Ratnapura</option>
                <option value="Trincomalee">Trincomalee</option>
                <option value="Vavuniya">Vavuniya</option>
            </select><br>

            <label for="email" class="input-label">E-mail<span class="required">*</span></label><br>
            <input type="email" id="email" name="email" class="input-field" required><br>

            <label for="astrologerPayment" class="input-label">Set Your Base Price<span class="required">*</span></label><br>
            <input type="number" id="astrologerPayment" name="email" class="input-field" required><br>

            <label for="password" class="input-label">Password<span class="required">*</span></label><br>
            <input type="password" id="password" name="password" class="input-field" required><br>

            <label for="confirmPassword" class="input-label">Confirm Password<span class="required">*</span></label><br>
            <input type="password" id="confirmPassword" name="confirm_password" class="input-field" required><br>

            <label for="certificates" class="input-label">Upload Certificates<span class="required">*</span></label><br>
            <input type="file" id="certificates" name="certificate" class="input-field" accept=".pdf, .jpg, .png" multiple><br>

            <input type="submit" class="proceed" id="proceedBtn" name="proceed" value="Proceed">

            <div class="terms">
                <a href="#">Terms and Conditions</a>
            </div>
            <div class="login-link">
                <span>Already have an account? </span><a href="Astrologer_Login.jsp">Sign In</a>
            </div>
        </form>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" defer></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11" defer></script>
<script src="js/astrologerRegistration.js" defer></script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        var password = document.getElementById("password");
        var confirmPassword = document.getElementById("confirmPassword");
        var submitBtn = document.getElementById("proceedBtn");

        confirmPassword.addEventListener("keyup", function() {
            var errorMessage = document.querySelector(".error-message");
            if (password.value !== confirmPassword.value) {
                confirmPassword.setCustomValidity("Passwords do not match");
                if (!errorMessage) {
                    confirmPassword.insertAdjacentHTML('afterend', '<div class="error-message">Passwords do not match</div>');
                }
            } else {
                confirmPassword.setCustomValidity("");
                if (errorMessage) {
                    errorMessage.remove();
                }
            }
        });

        submitBtn.addEventListener("click", function(event) {
            if (password.value !== confirmPassword.value) {
                event.preventDefault(); // Prevent form submission if passwords don't match
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: "Passwords do not match!",
                });
            }
        });
    });
</script>

</body>
</html>
