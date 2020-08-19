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
if(isset($_GET['id'])) {
  $fileterd_id = mysqli_real_escape_string($conn, $_GET['id']);
  $sql = "SELECT * FROM topic WHERE id = {$fileterd_id}";
  $query = mysqli_query($conn, $sql);
  $row = mysqli_fetch_array($query);
  $article['title'] = htmlspecialchars($row['title']);
  $article['description'] = htmlspecialchars($row['description']);
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
  <form method="post" action="update_process.php">
    <input type="hidden" name="id" value="<?=$_GET['id']?>">
    <p><input type="text" name="title" placeholder="title" value=<?=$article['title']?>></p>
    <p><textarea name="description" placeholder="description"><?=$article['description']?></textarea></p>
    <p><input type="submit"></p>
  </form>
</body>
</html>