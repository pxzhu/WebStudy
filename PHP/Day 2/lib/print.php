<?php
function print_title() {
  if(isset($_GET['id'])) {
    echo htmlspecialchars($_GET['id']);
  } else {
    echo "Welcome";
  }
}
function print_list() {
  $file = scandir('./data');
  $filecount = count($file);
  $i = 0;
  while($i < $filecount) {
    $title = htmlspecialchars($file[$i]);
    if($file[$i] != '.') {
      if($file[$i] != '..') {
        echo "<li><a href=\"index.php?id=$title\">$title</a></li>\n";
      }
    }
    $i = $i + 1;
  }
}
function print_description() {
  if(isset($_GET['id'])) {
    $basename = basename($_GET['id']);
    echo htmlspecialchars(file_get_contents('./data/'.$basename));
  } else {
    echo "Hello, PHP";
  }
}
?>