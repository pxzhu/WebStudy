<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <title>Array</title>
</head>
<body>
  <h1>Array</h1>
  <?php
  $learn = array('pxzhu', 'phs',' Matt', 'anon');
  echo $learn[1].'<br>';
  echo $learn[3].'<br>';
  var_dump(count($learn));
  array_push($learn, 'graphittie');
  var_dump($learn);
  ?>
  
</body>
</html>