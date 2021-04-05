
<?php
/**
 * @var \Pimcore\Templating\PhpEngine $this
 * @var \Pimcore\Templating\PhpEngine $view
 * @var \Pimcore\Templating\GlobalVariables $app
 */

$this->extend('layout.html.php');

?>
<head><meta name="viewport" content="width=device-width, initial-scale=1"><style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #383434 ;
  box-shadow: 5px 10px 8px #888888;
  
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #471f16;
}


</style></head>
<h1><?= $this->input("headline") ?></h1>
<?= $this->wysiwyg("specialContent"); ?>
<body>
 

<div class="product-info">
    
    <div id="product">
        
       <div class="section">


<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>

<ul><li><a href=" http://project.local/Home">Home</a></li>

</ul>

</div>
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

</div>
</div>
</nav>
     
    
</div>
</body>
