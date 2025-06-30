<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Code</title>
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Cairo', sans-serif;
            direction: ltr;
            text-align: left;
            background-color: #f9f9f9;
            padding: 20px;
        }
        .container {
            max-width: 500px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
            text-align: center;
        }
        p {
            font-size: 18px;
            color: #555;
        }
        .code {
            font-size: 22px;
            font-weight: bold;
            color: #d9534f;
            text-align: center;
            padding: 10px;
            border: 2px dashed #d9534f;
            display: block;
            width: fit-content;
            margin: 10px auto;
        }
        .footer {
            font-size: 14px;
            color: #888;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Profile Code</h1>
        <p>Hello, <strong>{{ $name }}</strong>,</p>
        <p>Your verification code to update your profile is:</p>
        <span class="code">{{ $code }}</span>
        <p>This code will expire in <strong>10 minutes</strong>.</p>
        <p class="footer">If you did not request this, please ignore this email.<br>Thank you!</p>
    </div>
</body>
</html>
