import React from "react";
import { useContext } from "react";
import Login from "./Login";

import { Route, Routes } from "react-router-dom";
import HomePage from "./HomePage";
import NavBar from "./NavBar";
import DisplayArtists from "./DisplayArtists";
import DisplayAlbums from "./DisplayAlbums";
import DisplayMembers from "./DisplayMembers";
import DisplaySongs from "./DisplaySongs";
import SignOut from "./SignOut";
import {UserContext} from "./User";

function EclecticMusic() {
  const {user, setUser} = useContext(UserContext);

  if (!user) return <Login onLogin={setUser} />;
  return (
    <div>
      <NavBar />
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/artists" element={<DisplayArtists />} />
        <Route path="/members" element={<DisplayMembers />} />
        <Route path="/albums" element={<DisplayAlbums />} />
        <Route path="/songs" element={<DisplaySongs />} />
        <Route path="/signout" element={<SignOut />} />
      </Routes>
    </div>
  );
}

export default EclecticMusic;
