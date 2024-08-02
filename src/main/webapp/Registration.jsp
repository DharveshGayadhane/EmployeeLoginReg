<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Registration</title>
</head>
<body style="font-family: Arial, sans-serif; margin: 20px; padding: 0; background-color: #f4f4f4; text-align: center;">

    <div style="max-width: 600px; margin: auto; background: white; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1);">
        <h2>Employee Registration</h2>
        <form action="register" method="post" style="display: inline-block; text-align: left; width: 100%;">

            <div style="margin-bottom: 15px;">
                <label for="name" style="display: block; margin-bottom: 5px;">Name:</label>
                <input type="text" id="name" name="name" required style="width: 100%; padding: 8px; box-sizing: border-box;" />
            </div>

            <div style="margin-bottom: 15px;">
                <label for="dob" style="display: block; margin-bottom: 5px;">Date of Birth:</label>
                <input type="date" id="dob" name="dob" required style="width: 100%; padding: 8px; box-sizing: border-box;" />
            </div>

            <div style="margin-bottom: 15px;">
                <label for="gender" style="display: block; margin-bottom: 5px;">Gender:</label>
                <select id="gender" name="gender" required style="width: 100%; padding: 8px; box-sizing: border-box;">
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>

            <div style="margin-bottom: 15px;">
                <label for="address" style="display: block; margin-bottom: 5px;">Address:</label>
                <input type="text" id="address" name="address" required style="width: 100%; padding: 8px; box-sizing: border-box;" />
            </div>

            <div style="margin-bottom: 15px;">
                <label for="city" style="display: block; margin-bottom: 5px;">City:</label>
                <input type="text" id="city" name="city" required style="width: 100%; padding: 8px; box-sizing: border-box;" />
            </div>

            <div style="margin-bottom: 15px;">
                <label for="state" style="display: block; margin-bottom: 5px;">State:</label>
                <input type="text" id="state" name="state" required style="width: 100%; padding: 8px; box-sizing: border-box;" />
            </div>

            <div style="margin-bottom: 15px;">
                <label for="loginId" style="display: block; margin-bottom: 5px;">Login ID:</label>
                <input type="text" id="loginId" name="loginId" required style="width: 100%; padding: 8px; box-sizing: border-box;" />
            </div>

            <div style="margin-bottom: 15px;">
                <label for="password" style="display: block; margin-bottom: 5px;">Password:</label>
                <input type="password" id="password" name="password" required style="width: 100%; padding: 8px; box-sizing: border-box;" />
            </div>

            <div style="text-align: center;">
                <input type="submit" value="Register" style="background-color: #4CAF50; color: white; border: none; padding: 10px 20px; cursor: pointer; border-radius: 5px;" />
            </div>
        </form>
    </div>

</body>
</html>
