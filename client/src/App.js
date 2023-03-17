import React from "react";
import { useEffect, useState } from "react";
// import Login from "./Login";
// import HomePage from "./HomePage";
import DisplayArtists from "./DisplayArtists";
import DisplayAlbums from "./DisplayAlbums";


function App() {
  const [user, setUser] = useState([]);

  // useEffect(() => {
  //   // auto-login
  //   fetch("/me").then((r) => {
  //     if (r.ok) {
  //       r.json().then((user) => {console.log(user);
  //         setUser(user)});
  //     }
  //   });
  // }, []);

  useEffect(() => {
    fetch("/songs")
    .then(res => res.json())
    .then(data => {console.log(data)})
  }, []);  
  useEffect(() => {
    fetch("/members")
    .then(res => res.json())
    .then(data => {console.log(data)})
  }, []);

  // if (!user) return <Login onLogin={setUser} />;

  return (
    <div>
        {/* <HomePage user={user} />
        <DisplayArtist user={user} /> */}
        <DisplayArtists />
        <DisplayAlbums />
    </div>
  );
}

export default App;
