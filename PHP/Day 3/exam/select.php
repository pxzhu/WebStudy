<?php
$conn = mysqli_connect('localhost', 'root', 'rootdb', 'opentutorials');
$sql = "SELECT *
        FROM topic
";
$query = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($query);
echo '<h2>'.$row['title'].'</h2>';
echo $row['description'];
?>
