<!DOCTYPE html>
<html>
<head>
  <title>Registration, Hiragana Tutor</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="header">
  	<h2>Register</h2>
  </div>
	
  <form method="post" action="register.php">
  	<?php include('../web-service/errors.php'); ?>
  	<div class="input-group">
  	  <label>username</label>
  	  <input type="text" name="username" onclick="this.value=''" value="<?php echo $username; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Password</label>
  	  <input type="password" name="password_1" onclick="this.value=''" >
  	</div>
  	<div class="input-group">
  	  <label>Confirm password</label>
  	  <input type="password" name="password_2" onclick="this.value=''" >
  	</div>
  	<div class="input-group">
  	  <button type="submit" class="btn" name="reg_user">Register</button>
  	</div>
  	<p>
  		Already a member? <a href="login.php">Sign in</a>
  	</p>
  </form>
</body>
</html>
<?php include('../web-service/server.php') ?>