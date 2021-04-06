<html>
<head>
<title> Bakery </title>
    <link rel="stylesheet" type="text/css" href="/static/css/global.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/style.css" />
    
<style>

.container {
  border-radius: 5px;
  padding: 20px;
}
</style>
</head>
<nav class="navbar navbar-expand-lg py-3 navbar-dark bg-dark shadow-sm">
  <div class="container">
    <a href="#" class="navbar-brand">
      <!-- Logo Image -->
      <img src="https://res.cloudinary.com/mhmd/image/upload/v1557368579/logo_iqjuay.png" width="45" alt="" class="d-inline-block align-middle mr-2">
      <!-- Logo Text -->
      <span class="text-uppercase font-weight-bold">The Bakery Shop</span>&nbsp;
      <!-- <input type="text" id="myInput" onkeyup="mysearch()" placeholder="Search Here"> -->
    </a>

    <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>

    <div id="navbarSupportedContent" class="collapse navbar-collapse">
      <ul class="navbar-nav ml-auto">
        <!-- <li class="nav-item active"><a href="http://groupOne.local/homePage" class="nav-link">Home <span class="sr-only">(current)</span></a></li> -->
        <li class="nav-item"><a href="http://groupOne.local/home" class="nav-link">Home</a></li>
        <li class="nav-item">
          <a href="http://groupOne.local/productPage" class="nav-link">Clothes</a>
          
        </li>
        
        <li class="nav-item"><a href="http://groupOne.local/feedbackForm" class="nav-link">Feedback</a></li>
        
        
      </ul>
    </div>
  </div>
</nav>
<div class="container"><br>
		<h1 class="text-success text-center"> FeedBack Form</h1><br>
		<div class="col-lg-8 m-auto d-block">
			<form action="#" onsubmit="return validation()" method = "post">

				<div class="form-group">
					<label> Firstname: </label>
					<input type="text" name="firstname" class="form-control" id="user" autocomplete="off">
					<span id="username" class="text-danger font-weight-bold"></span>
				</div>

        <div class="form-group">
					<label> Lastname: </label>
					<input type="text" name="lastname" class="form-control" id="user" autocomplete="off">
					<span id="username" class="text-danger font-weight-bold"></span>
				</div>

				<div class="form-group">
					<label> Email: </label>
					<input type="text" name="email" class="form-control" id="emails" autocomplete="off">
					<span id="emailids" class="text-danger font-weight-bold"></span>
				</div>

        <div class="form-group">
					<label> Review: </label>
					<input type="text" name="comment" class="form-control" id="user" autocomplete="off">
					<span id="username" class="text-danger font-weight-bold"></span>
				</div>
				<input type="submit" name="submit" value="submit" class="btn btn-success">
				
			</form>
		</div>
		
	</div>

    
        <?php
            $firstname = $_POST['firstname'];
            $lastname = $_POST['lastname'];
            $email = $_POST['email'];
            $comment = $_POST['comment'];

            // if(isset($firstname)) {
            //   $feedback = new \Pimcore\Model\DataObject\Feedback();
      
            //   $feedback->setKey($firstname); 
            //   $feedback->setPublished(true); 
            //   $feedback->setParentId(36); 
            //   $feedback->setFirstname($_POST['firstname']); 
              
            //   $feedback->save();

            if(isset($firstname) && isset($lastname) 
            && isset($email) && isset($comment)) {
                $feedback = new \Pimcore\Model\DataObject\Feedback();
        
                $feedback->setKey($firstname); 
                $feedback->setPublished(true); 
                $feedback->setParentId(25); 
                $feedback->setFirstname($_POST['firstname']); 
                $feedback->setLastname($_POST['lastname']); 
                $feedback->setEmail($_POST['email']); 
                $feedback->setComment($_POST['comment']); 
                $feedback->save();



                $mail = new \Pimcore\Mail();
                $mail->addTo('kajalkhanna803@gmail.com');
                $mail->setSubject('Products Feedback');
                $mail->setDocument('/feedbackEmail');
                // $mail->setParams($params);
                $mail->send();

               
            }
            
            // dump ($firstname);
            // dump ($lastname);
            // dump ($email);
            // dump ($comment);
            // die();  
        ?>  

    <h1><?= $this->input("headline", ["width" => 540]); ?></h1>

    <?php while ($this->block("contentblock")->loop()) { ?>
        <h2><?= $this->input("subline"); ?></h2>
        <?= $this->wysiwyg("content"); ?>
    <?php } ?>

</html>