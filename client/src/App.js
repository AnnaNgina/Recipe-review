
import './App.css';
import React from 'react';
import Footer from './components/Footer';
import Nav from './components/Nav';
import Slider from './components/Slider';
import { useState } from 'react';
import LoginForm from './components/LoginForm';

function App() {
  const adminUser = {
    email: "annastaciangina@gmail.com",
    password: "admin123"
  }
  const [user, setUser] = useState({name:"", email:""});
  const [error, setError] = useState("");
  const Login = details => {
    console.log(details);
    if (details.email == adminUser.email && details.password == adminUser.password) {
      console.log("Logged in");
      setUser({
        name: details.name,
        email: details.email,
      });
    } else {
      console.log("Invalid logins!");
      alert("Invalid logins!");
    }
  }
  const Logout = () => {
    console.log("Logout");
    setUser({ name:"", email:""});
  }

  return (
    <div className="App">
      {(user.email !="") ? (
        <div className="welcome">
          <h2>Welcome to RS <span>{user.name}</span></h2>
          </div>
           ): (
            <LoginForm Login={Login} error={error} href="/home"/>
      )}
      <Nav/>
      <Slider/>
      <Footer/>
    </div>
  );
}

export default App;
