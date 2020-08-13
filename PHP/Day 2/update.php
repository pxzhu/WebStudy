<?php
require_once('./lib/print.php'); 
require_once('./view/top.php');
?>
  <a href="create.php">create</a>
  <?php if(isset($_GET['id'])) { ?>
    <a href="update.php?id=<?=$_GET['id']?>">update</a>
  <?php } ?>
  <h2>
    <?php print_title(); ?>
  </h2>
  <?php print_description(); ?>
  <form method="post" action="update_process.php">
    <input type="hidden" name="old_title" value="<?=print_title()?>">
    <input type="hidden" name="old_description" value="<?=print_description()?>">
    <p>
      <input type="text" name="title" placeholder="Title" value="<?=print_title()?>">
    </p>
    <p>
      <textarea name="description" placeholder="Description"><?=print_description()?></textarea>
    </p>
    <p>
      <input type="submit">
    </p>
  </form>
<?php require_once('./view/bottom.php'); ?>