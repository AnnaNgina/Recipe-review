import { useState } from "react";
import { useHistory } from "react-router";


function NewRecipe({ setRecipe, recipe}) {
  
  const [name, setName] = useState("")
  const [description, setDescription] = useState("")
  const [image_url, setUrl] = useState("")
  const [errors, setErrors] = useState("");
  
  function addForm(newRecipe) {
    setRecipe([...recipe, newRecipe])
  }
 
  

   function handleSubmit(event) {
    event.preventDefault();
    let myRecipe={
      name:name,
      description:description,
      image_url:image_url,
      
    }

    fetch("/recipes", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(myRecipe)
      })
      .then((response) => {
        if (response.ok) {
          response.json().then((data) => addForm(data));
        } else {
          response.json().then((errorData) => setErrors(errorData.errors));
        }
      });
    setName("")
    setUrl("")
    setDescription("")
   
  }
  
  return (
    <div >
    <h2 >Add New recipe</h2>
    <form>

  <div class="form-group">
    <label for="exampleFormControlInput1">recipe Name</label>
    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="" onChange={(e) => setName(e.target.value)} value={name}/>
  </div>

  <div class="form-group">
    <label for="exampleFormControlInput1">Image_url</label>
    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="" onChange={(e) => setUrl(e.target.value)} value={image_url} />
  </div>

  <div class="form-group">
    <label for="exampleFormControlTextarea1">Description</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" onChange={(e) => setDescription(e.target.value)} value={description}></textarea>
  </div>
  {errors.length > 0 && (
          <ul style={{ color: "red" }}>
            {errors.map((error) => (
              <li key={error}>{error}</li>
            ))}
          </ul>
        )}
        <br></br>
        <br></br>
  <button type="button" class="btn btn-success" onClick={handleSubmit}>create</button>
</form>
    </div>
  )
}




export default NewRecipe;
