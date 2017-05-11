<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Name</title>
    <script src="webjars/jquery/3.2.0/jquery.min.js"></script>
    <script src="name.js"></script>
    <script src="webjars/jquery/3.2.0/jquery.min.js"></script>
    <link href="name.css" rel="stylesheet"/>
</head>
<body>
<h1>${msg}</h1>
<input type="text" id="todoChore">
<button id ="submitChore" onclick=loadToDos() >I'm Mr submit click at me!</button>
<div id ="lanFormattedInstructions"></div>
<a href="..">Go back</a>
</body>
</html>
