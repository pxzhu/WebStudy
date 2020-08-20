<?php
$conn = mysqli_connect('localhost', 'root', 'rootdb', 'opentutorials');

$filtered = array(
  'name'=>mysqli_real_escape_string($conn, $_POST['name']),
  'profile'=>mysqli_real_escape_string($conn, $_POST['profile'])
);

$sql = "
  INSERT INTO author
    (name, profile)
  VALUES
    (
      '{$filtered['name']}',
      '{$filtered['profile']}'
    )
";

$query = mysqli_query($conn, $sql);
if($query === false) {
  echo '저장하는 과정에서 문제가 생겼습니다. 관리자에게 문의해주세요';
  error_log(mysqli_error($conn));
} else {
  header('Location: author.php');
}
?>