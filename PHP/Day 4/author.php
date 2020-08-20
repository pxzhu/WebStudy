<?php
$conn = mysqli_connect('localhost', 'root', 'rootdb', 'opentutorials');
?>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <title>WEB</title>
</head>
<body>
  <h1><a href="index.php">WEB</a></h1>
  <p><a href="index.php">topic</a></p>
  <table border="1">
    <tr>
      <td>id</td>
      <td>name</td>
      <td>profile</td>
      <?php
      $sql = "SELECT * FROM author";
      $query = mysqli_query($conn, $sql);
      while($row = mysqli_fetch_array($query)) {
        $filtered = array(
          'id'=>htmlspecialchars($row['id']),
          'name'=>htmlspecialchars($row['name']),
          'profile'=>htmlspecialchars($row['profile'])
        )
        ?>
        <tr>
          <td><?=$filtered['id']?></td>
          <td><?=$filtered['name']?></td>
          <td><?=$filtered['profile']?></td>
          <td><a href="author.php?id=<?=$filtered['id']?>">update</a></td>
          <td>
            <form method="post" action="delete_author_process.php" onsubmit="if(!confirm('suer?')){return false;}">
              <input type="hidden" name="id" value="<?=$filtered['id']?>">
              <input type="submit" value="delete">
            </form>
          </td>
        </tr>
        <?php
      }
      ?>
    </tr>
  </table>
  <?php
  $escaped = array(
    'name'=>'',
    'profile'=>''
  );
  $lable_submit = 'Create author';
  $form_action = 'create_author_process.php';
  $form_id = '';
  if(isset($_GET['id'])) {
    $filtered_id = mysqli_real_escape_string($conn, $_GET['id']);
    settype($filtered_id, 'integer');
    $sql = "SELECT * FROM author WHERE id = {$filtered_id}";
    $query = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($query);
    $escaped['name'] = htmlspecialchars($row['name']);
    $escaped['profile'] = htmlspecialchars($row['profile']);
    $lable_submit = 'Update author';
    $form_action = 'update_author_process.php';
    $form_id = '<input type="hidden" name="id" value="'.$_GET['id'].'">';
  }
  ?>
  <form method="post" action="<?=$form_action?>">
    <?=$form_id?>
    <p><input type="text" name="name" placeholder="name" value="<?=$escaped['name']?>"></p>
    <p><textarea name="profile" placeholder="profile"><?=$escaped['profile']?></textarea></p>
    <p><input type="submit" value="<?=$lable_submit?>"></p>
  </form>
</body>
</html>