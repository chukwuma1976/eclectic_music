import React from "react";
import { useEffect, useState } from "react";
import Login from "./Login";
import HomePage from "./HomePage";


function App() {
  const [user, setUser] = useState(null);

  // useEffect(() => {
  //   // auto-login
  //   fetch("/me").then((r) => {
  //     if (r.ok) {
  //       r.json().then((user) => setUser(user));
  //     }
  //   });
  // }, []);

  useEffect(() => {
    fetch("/artists")
    .then(res => res.json())
    .then(data => {console.log(data)})
  }, []);
  useEffect(() => {
    fetch("/albums")
    .then(res => res.json())
    .then(data => {console.log(data)})
  }, []);  useEffect(() => {
    fetch("/songs")
    .then(res => res.json())
    .then(data => {console.log(data)})
  }, []);  useEffect(() => {
    fetch("/members")
    .then(res => res.json())
    .then(data => {console.log(data)})
  }, []);

  // if (!user) return <Login onLogin={setUser} />;

  return (
    <div>
        {/* <HomePage user={user} /> */}
        <HomePage />
    </div>
  );
}

export default App;
