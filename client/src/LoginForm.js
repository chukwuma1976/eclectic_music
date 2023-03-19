import React, { useState } from "react";

function LoginForm({onLogin}) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [errors, setErrors] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
    
  function handleSubmit(e) {
    e.preventDefault();
    setIsLoading(true);
    fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ username, password }),
    }).then((r) => {
      setIsLoading(false);
      if (r.ok) {
        r.json().then((user) => onLogin(user));
      } else {
        r.json().then((err) => setErrors(err.errors));
      }
    });
    }
        
  return (
    <div>
        <form onSubmit={handleSubmit}>
          <label>username</label>
          <input 
            type="text" 
            placeholder="enter username" 
            autoComplete="off"
            value={username}
            onchange={(e)=>setUsername(e.target.value)} 
          />
          <br/>
          <label>password</label>
            <input 
            type="text" 
            placeholder="enter password" 
            autoComplete="current-password"
            value={password}
            onchange={(e)=>setPassword(e.target.value)} 
            />
          <br/>
          <button type="submit">
            {isLoading ? "Loading..." : "Login"}
          </button>
        </form>
        <ul>
          {errors.map((err) => (
            <li key={err}>{err}</li>
          ))}          
        </ul>
      </div>
  )
}

export default LoginForm