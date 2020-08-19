<?php
$conn = mysqli_connect("localhost", "root", "rootdb", "opentutorials");
$sql = "
INSER INTO 
topic(
  title,
  description,
  created
  )
VALUES(
  'MySQL',
  'MySQL is ...',
  NOW()
)
";
$query = mysqli_query($conn, $sql);
if($query === false) {
  echo mysqli_error($conn);
}
?>