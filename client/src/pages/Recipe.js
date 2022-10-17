import React,{useEffect, useState} from 'react'


function Recipe({setRecipe, recipe}) {
  
  
  function handleDelete(id) {
    fetch(`/recipes/${id}`, {
      method: "DELETE",
    })
      .then((r) => r.json())
      .then(() => {
        const deleteRecipe = recipe.filter((recipe) => recipe.id !== id);
        setRecipe(deleteRecipe);
      });
  }

  

  useEffect(() => {
    // auto-login
    fetch("/recipes").then((r) => {
      if (r.ok) {
        r.json().then(setRecipe);
      }
    });
  }, []);

  return (
    <div> <div className="row">
    <div className="col m-2">
      {recipe.map((recipes)=>(
      <div key= {recipes.id} className='card' style={{width : 100% + 'rem'}} >
       <h2>Recipe Name: &nbsp;{recipes.name}</h2>
          <br></br>
          <br></br>
      <br></br>
             &nbsp;<br></br>
          <img 
              src= {recipes.image_url}
            alt="recipe"
      />
          
          <br></br>
        <br></br>
         <p>Description: &nbsp;{recipes.description}</p> <br></br>
         <>
         Reviews:
          {recipes.reviews.map((review)=>(
          <div key={review.id}>{review.description}</div>
          ))}

  
          </>

          <button type="button" class="btn btn-success" onClick={(e) => handleDelete(recipes.id)} >Delete</button>
      </div>))}
     
      <br></br>
      <br></br>
      <br></br>
      <br></br>
      
      </div>
      <br></br>
      <br></br>
      <br></br>
      <br></br>
      </div>
      <br></br>
      <br></br>
      <br></br>
      <br></br>
    
      </div>
      
  ) 
}

export default Recipe