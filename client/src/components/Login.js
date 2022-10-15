import React, { useState } from 'react'
 function LoginForm({ Login, error }) {
    const [details, setDetails ] = useState({name:"", email:"", password:""});
    const submitHandler = e => {
        e.preventDefault();
        e.target.reset();
        Login(details);
    }
  return (
   <form onSubmit={submitHandler}>
    <div clasName="form-inner">
        <div><h2>LOGIN </h2></div>
      {(error !=="") ? ( <div className="error">{error}</div> ) :""}
      <div className="form-inner">
        <label htmlfor="name">Full Name:</label>
        <input type="text" name="name" id="name" onChange={e => setDetails({...details, name: e.target.value})} value={details.name} required/>
      </div>
      <br/><br/>
      <div className="form-inner">
        <label htmlfor="email">Email:</label>
        <input type="email" name="email" id="email" onChange={e => setDetails({...details, email: e.target.value})} value={details.email}/>
      </div>
      <br/><br/><br/><br/>
      <div className="form-inner">
        <label htmlfor="password">Password:</label>
        <input type="password" name="password" id="password" onChange={e => setDetails({...details, password: e.target.value})} value={details.password}/>
      </div>
      <br/><br/><br/>
      <input type="submit" value="Login" />
      <button>Create account</button>
    </div>
   </form>

  )
}
export default LoginForm