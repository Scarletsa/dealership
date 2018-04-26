<?php
  session_start();
  include 'start_template.html';
  include 'customer_nav.php';
?>
<div class="box">
<div id="verticalSpace">
<form action='login_process.php' method='POST' enctype='multipart/form-data'>
  <div class="header">
      <h3>Log In</h3>
  </div>
  <div class="sep"></div>
  <div class="inputs">
  <input type = "text" name = "empID" placeholder="Username" autofocus/>
  <input type = "password" name = "password"  placeholder="Password"/>
  <br />
  <input type="submit" value="Log In">
  </div>
</form>
</div>
</div>
<?php
  if (isset($_SESSION['loginError'])) {
    echo '<p>' . $_SESSION['loginError'] . '</p>';
  }
  include 'end_template.html';
?>
