import React from "react";
// import { useEffect, useState } from "react";
// import Login from "./Login";

import { Route, Routes } from "react-router-dom";
import HomePage from "./HomePage";
import NavBar from "./NavBar";
import DisplayArtists from "./DisplayArtists";
import DisplayAlbums from "./DisplayAlbums";
import DisplayMembers from "./DisplayMembers";
import DisplaySongs from "./DisplaySongs";

function App() {
  // const [user, setUser] = useState([]);

  // useEffect(() => {
  //   // auto-login
  //   fetch("/me").then((r) => {
  //     if (r.ok) {
  //       r.json().then((user) => {console.log(user);
  //         setUser(user)});
  //     }
  //   });
  // }, []); 

  // if (!user) return <Login onLogin={setUser} />;

  return (
    <div>
      <NavBar />
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/artists" element={<DisplayArtists />} />
        <Route path="/members" element={<DisplayMembers />} />
        <Route path="/albums" element={<DisplayAlbums />} />
        <Route path="/songs" element={<DisplaySongs />} />
      </Routes>
    </div>
  );
}

export default App;
