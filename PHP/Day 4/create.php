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

$sql = "SELECT * FROM author";
$query = mysqli_query($conn, $sql);
$select_form = '<select name="author_id">';
while($row = mysqli_fetch_array($query)) {
  $select_form .= '<option value="'.$row['id'].'">'.$row['name'].'</option>';
}
$select_form .= '</select>';
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
  <form method="post" action="create_process.php">
    <p><input type="text" name="title" placeholder="title"></p>
    <p><textarea name="description" placeholder="description"></textarea></p>
    <?=$select_form?>
    <p><input type="submit"></p>
  </form>
</body>
</html>