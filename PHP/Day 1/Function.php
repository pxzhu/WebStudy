<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <title>Function</title>
</head>
<body>
  <h1>Function</h1>
  <?php
  $str = 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur officiis repudiandae, voluptates consectetur nisi porro excepturi quos vero reprehenderit adipisci sapiente quis voluptatibus illum perspiciatis. 
  Culpa veritatis dignissimos sit repellat.';
  echo $str;
  ?>
  <h2>strlen()</h2>
  <?php
  echo strlen($str);
  ?>
  <h2>nl2br</h2>
  <?php
  echo nl2br($str);
  ?>
</body>
</html>