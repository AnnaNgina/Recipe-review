import React from 'react';
function Nav() {
    return (
        <nav id="nav-list">
             <div className="logo">
                <h1>Recipe System</h1>
            </div>
            
            <div className="nav-bar">
            <li><a href="/">Home</a></li> 
            <li><a href ="/">Login</a></li>
            </div>
        </nav>
    );
}
export default Nav;