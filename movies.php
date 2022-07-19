<!DOCTYPE html>
<html>
<head>
    <title>HOME</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>
    <link rel="stylesheet" href="index.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    
    
</head>
<body>
<div class='nav'>
<div class="li">
<div class='name'><i class="fa fa-book"></i>FasalMovie</div>      
</div>
</div>

    <div class="wrapper">
    <div class="card-group">
  <div class="card" id="result-grid">
  <?php
  $con = mysqli_connect("localhost","root","","db");
  if($con){
    $sql="select * from movie;";
    $result = mysqli_query($con, $sql);
    // $row = mysqli_fetch_assoc($result);
    // echo "<h1>".$row['Plot']."</h1>";
        while($row = mysqli_fetch_assoc($result)){
          ?>
        <div class="search-items-thumbnail">
        <img src="<?php echo $row['poster'];?>">
    </div>
    <div class="search-items-info">

        <h3><?php echo $row['title'];?></h3>
        <p class="card-text"><?php echo $row['plot'];?></p>
      <p class="card-text"><b>Year:</b><span><?php echo $row['years'];?></span></p>
      <p class="card-text"><b>Genre:</b><?php echo $row['genre'];?></p>
      <p class="card-text"><b>Writer:</b><?php echo $row['writer'];?></p>
      <p class="card-text"><b>Actors:</b><?php echo $row['actors'];?></p>
      <p class="card-text"><b>Language</b><?php echo $row['languages'];?></p>
        
        
    </div>
    <?php
        }
    
  }
  ?>
    
    </div>
</div>
</div>
</body>
</html>