<?php
$con = mysqli_connect("localhost","root","","db");
if($con){
$data = json_decode($_POST['data1']);
$genre = $data->Genre;
$title = $data->Title;
$plot = $data->Plot;
$writer = $data->Writer;
$language = $data->Language;
$year = $data->Year;
$poster = $data->Poster;
$actors = $data->Actors;
$sql = "INSERT INTO movie(title,years,plot,writer,genre,actors,languages,poster) values('$title','$year','$plot','$writer','$genre','$actors','$language','$poster');";
$result = mysqli_query($con,$sql);
}
else{
    echo "Connection failed!";
    die("failed");
}
?>