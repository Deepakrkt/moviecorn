<?php 

session_start();

if (isset($_SESSION['name']) || isset($_SESSION['user_name'])) {

 ?>
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
            <a href="home.php" style="text-decoration:none; color:#fff; background-color:#eb4174; border-radius:35px; padding:8px;" >Home</a>
            <a href="movies.php" onclick="list()" style="text-decoration:none; color:#fff; background-color:#eb4174; border-radius:35px; padding:8px;">playlist</a>
            <a href="logout.php" style="text-decoration:none; color:#fff; background-color:#eb4174; border-radius:35px; padding:8px;">Logout</a>
</div>
        <div class="search-container">
        <div class='search-element'>
        
        <input type = text placeholder="Search Movie title" class= "form-control" onkeyup="findMovies()" id="movie-search-box">
       
    </div></div></div>
    

<div class="wrapper">
    <div class="card-group">
  <div class="card" id="result-grid">
  <script src="script.js"></script>
    <img src="shape.jfif" class="card-img-top" alt="error">
    <div class="card-body">
      <h3 class="card-title"><b>Uncharted</b></h3>
      <p class="card-text">Street-smart Nathan Drake is recruited by seasoned treasure hunter Victor "Sully" Sullivan to recover a fortune amassed by Ferdinand Magellan, and lost 500 years ago by the House of Moncada.</p>
      <p class="card-text"><b>Year:</b><span>2017</span> <b>Rating:</b><span>PG-13</span> <b>Released:</b><span>05 May 2017</span></p>
      <p class="card-text"><b>Genre:</b>Action,Adventure,Comedy</p>
      <p class="card-text"><b>Writer:</b>Rafe Judkins,Art Marcum</p>
      <p class="card-text"><b>Actors:</b>Tom Holland,Mark Wahlberg.Antonio Banderas</p>
      <p class="card-text"><b>Language</b>English</p>
    </div>
    </div>
</div>
</div>
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
</body>
</html>
<?php 
}else{
     header("Location: index.php");
     exit();
}
 ?>