<?php
function print_title() {
  if(isset($_GET['id'])) {
    echo $_GET['id'];
  } else {
    echo "Welcome";
  }
}
function print_list() {
  $file = scandir('./data');
  $filecount = count($file);
  $i = 0;
  while($i < $filecount) {
    if($file[$i] != '.') {
      if($file[$i] != '..') {
        echo "<li><a href=\"index.php?id=$file[$i]\">$file[$i]</a></li>\n";
      }
    }
    $i = $i + 1;
  }
}
function print_description() {
  if(isset($_GET['id'])) {
    echo file_get_contents('./data/'.$_GET['id']);
  } else {
    echo "Hello, PHP";
  }
}
?>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <title><?php print_title(); ?></title>
</head>
<body>
  <h1><a href="index.php">WEB</h1>
  <ol>
    <?php print_list(); ?>
  </ol>
  <a href="create.php">create</a>
  <?php if(isset($_GET['id'])) { ?>
    <a href="update.php?id=<?=$_GET['id']?>">update</a>
  <?php } ?>
  <h2>
    <?php print_title(); ?>
  </h2>
  <?php print_description(); ?>
</body>
</html>