<!DOCTYPE html>
<html>
<title>Login, Hiragana Tutor</title>
<body>
  <div class="header">
  	<h2>Login</h2>
  </div>
	 
  <form method="post" action="login.php">
  	<?php include('../web-service/errors.php'); ?>
  	<div class="input-group">
  		<label>username</label>
  		<input type="text" name="username" onclick="this.value=''" >
  	</div>
  	<div class="input-group">
  		<label>Password</label>
  		<input type="password" name="password" onclick="this.value=''" >
  	</div>
  	<div class="input-group">
  		<button type="submit" class="btn" name="login_user">Login</button>
  	</div>
  	<p>
  		Not yet a member? <a href="register.php">Sign up</a>
  	</p>
  </form>
</body>
</html>
<?php
  include("../web-service/server.php")
?>