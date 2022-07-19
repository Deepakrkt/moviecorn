// title: https://www.omdbapi.com/?s=thor&page=1&apikey=c2505248
const moviesearch = document.getElementById('movie-search-box');
const searchList = document.getElementById('result-grid');
async function loadMovies(searchTerm){
    const url=`https://www.omdbapi.com/?s=${searchTerm}&page=1&apikey=c2505248`;
    const res = await fetch(`${url}`);
    const data = await res.json();
    
    // console.log(data);
    if(data.Response=="True") DisplayMovieList(data.Search);
    
}
// loadMovies('lord of the rings');
function findMovies(){
    let searchTerm = (moviesearch.value).trim();
    
    if(searchTerm.length>0){
        
        loadMovies(searchTerm);
    }
    
    // console.log(searchTerm);
}

async function DisplayMovieList(movies){
    searchList.innerHTML="";
    for(let idx=0;idx<movies.length;idx++){
        let moviesListItem = document.createElement('div');
        moviesListItem.dataset.id=movies[idx].imdbID;
        moviesListItem.classList.add('search-list-item');
        if(movies[idx].Poster!="N/A"){
            moviePoster = movies[idx].Poster;
        }
        
        const result = await fetch(`http://www.omdbapi.com/?i=${movies[idx].imdbID}&apikey=c2505248`);
        const data1  = await result.json(); 
        // console.log(data1.Title);
        moviesListItem.innerHTML = ` <div class="search-items-thumbnail">
        <img src="${moviePoster}">
    </div>
    <div class="search-items-info">

        <h3>${movies[idx].Title}</h3>
        <p class="card-text">${data1.Plot}</p>
      <p class="card-text"><b>Year:</b><span>${data1.Year}</span> <b>Rating:</b><span>${data1.Rated}</span> <b>Released:</b><span>${data1 .Released}</span></p>
      <p class="card-text"><b>Genre:</b>${data1.Genre}</p>
      <p class="card-text"><b>Writer:</b>${data1.Writer}</p>
      <p class="card-text"><b>Actors:</b>${data1.Actors}</p>
      <p class="card-text"><b>Language</b>${data1.Language}</p>
      <button class="card-text" onclick="add('${movies[idx].imdbID}')">Add</button>
        <p>${data1.Year}</p>
        
    </div>`;
    searchList.appendChild(moviesListItem);
    }
}

async function add(ids){
   let result = await fetch(`http://www.omdbapi.com/?i=${ids}&apikey=c2505248`);
   let data1 = await result.json();
   console.log(data1);
   $.ajax({
    url:"send.php",
    method:"post",
    data:{data1: JSON.stringify(data1)},
    success: function(res){
        console.log(res);
    }
   })
}
