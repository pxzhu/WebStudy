<?php
$conn = mysqli_connect('localhost', 'root', 'rootdb', 'opentutorials');
$sql = "SELECT id, title, description
    FROM topic";
$query = mysqli_query($conn, $sql);
$list = '';
while($row = mysqli_fetch_array($query)) {
  $escaped_title = htmlspecialchars($row['title']);
  $list = $list."<li><a href=\"index.php?id={$row['id']}\">{$escaped_title}</a></li>";
}

$article = array(
  'title'=>'Welcome',
  'description'=>'Hello, PHP'
);
$update_link = '';
if(isset($_GET['id'])) {
  $fileterd_id = mysqli_real_escape_string($conn, $_GET['id']);
  $sql = "SELECT * FROM topic WHERE id = {$fileterd_id}";
  $query = mysqli_query($conn, $sql);
  $row = mysqli_fetch_array($query);
  $article['title'] = htmlspecialchars($row['title']);
  $article['description'] = htmlspecialchars($row['description']);
  $update_link = '<a href="update.php?id='.$_GET['id'].'">update</a>';
}
?>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <title>WEB</title>
</head>
<body>
  <h1><a href="index.php">WEB</a></h1>
  <ol>
    <?=$list?>
  </ol>
  <a href="create.php">create</a>
  <?=$update_link?>
  <h2><?=$article['title']?></h2>
  <?=$article['description']?>
</body>
</html>