# Ruby Hash Templates

# artist = {
#     name: "",
#     genre: "",
#     date_established: 0,
#     interesting_fact: "",
#     artist_image_url: "",
#     user_id: User.find_by(username: "CASmooth").id
# }

# album = {
#     name: "",
#     year_released: 0,
#     album_cover_url: ""
# }

# song = {
#     name: "",
#     artist_id: nil,
#     album_id: nil
# }

# member = {
#     name: "",
#     image_url: ""
# }

# artist_member = {
#     artist_id: nil,
#     member_id: nil
# }
User.create(username: "CASmooth", password: "EyeOfAHero", password_confirmation: "EyeOfAHero")

blackpink = {
    name: "Blackpink",
    genre: "K-pop",
    date_established: 2016,
    interesting_fact: "Referred to as the biggest girl group in the world.  They are the most successful Korean girl group internationally",
    artist_image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/20190106_%28NEWSEN%29_%EB%B8%94%EB%9E%99%ED%95%91%ED%81%AC_%28BLACKPINK%29%2C_%EC%88%98%EC%A4%8D%EC%9D%80_%EB%A7%8E%EC%9D%80_%EC%86%8C%EB%85%80%EC%A7%80%EB%A7%8C_%EB%8F%8B%EB%B3%B4%EC%9D%B4%EB%8A%94_%EC%95%84%EB%A6%84%EB%8B%A4%EC%9A%B4_%EB%AF%B8%EB%AA%A8_%28Golden_Disc_Awards_2019%29_%282%29.jpg/800px-20190106_%28NEWSEN%29_%EB%B8%94%EB%9E%99%ED%95%91%ED%81%AC_%28BLACKPINK%29%2C_%EC%88%98%EC%A4%8D%EC%9D%80_%EB%A7%8E%EC%9D%80_%EC%86%8C%EB%85%80%EC%A7%80%EB%A7%8C_%EB%8F%8B%EB%B3%B4%EC%9D%B4%EB%8A%94_%EC%95%84%EB%A6%84%EB%8B%A4%EC%9A%B4_%EB%AF%B8%EB%AA%A8_%28Golden_Disc_Awards_2019%29_%282%29.jpg",
    user_id: User.find_by(username: "CASmooth").id
}
Artist.create(blackpink)

blackpink_albums = [
    {
        name: "Blackpink in Your Area",
        year_released: 2018,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/commons/3/33/Black_Pink_Black_In_Your_Area_Digital_Cover.jpg"
    },
    {
        name: "The Album",
        year_released: 2020,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/f/f2/BLACKPINK-_The_Album.png"
    }, 
    {
        name: "Born Pink",
        year_released: 2022,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/e/e7/Born_Pink_Digital.jpeg"
    }, 
]
blackpink_albums.map {|album| Album.create(album)}

blackpink_songs = [
    {
        name: "Boombayah",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "Blackpink in Your Area").id
    },
    {
        name: "Ddu-Du Ddu-Du",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "Blackpink in Your Area").id
    },
    {
        name: "Whistle",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "Blackpink in Your Area").id
    },
    {
        name: "Playing with Fire",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "Blackpink in Your Area").id
    },
    {
        name: "Stay",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "Blackpink in Your Area").id
    },
    {
        name: "As If It's Your Last",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "Blackpink in Your Area").id
    },
    {
        name: "Forever Young",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "Blackpink in Your Area").id
    },
    {
        name: "How You Like That",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "The Album").id
    },    
    {
        name: "Ice Cream",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "The Album").id
    },   
    {
        name: "Pretty Savage",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "The Album").id
    },
    {
        name: "Love Sick Girls",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "The Album").id
    },   
    {
        name: "Pink Venom",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "Born Pink").id
    },   
    {
        name: "Shut Down",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "Born Pink").id
    },   
    {
        name: "Typa Girl",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "Born Pink").id
    },   
    {
        name: "Ready for Love",
        artist_id: Artist.find_by(name: "Blackpink").id,
        album_id: Album.find_by(name: "Born Pink").id
    }
]
blackpink_songs.map {|song| Song.create(song)}

blackpink_members = [
    {
        name: "Jisoo",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/210928_Jisoo.jpg/170px-210928_Jisoo.jpg"
    },
    {
        name: "Jennie",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Jennie_Kim_Marie_Claire_Korea_2020.png/220px-Jennie_Kim_Marie_Claire_Korea_2020.png"
    },
    {
        name: "Rose",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Ros%C3%A9_BLACKPINK_PUBG_Mobile_Sept_2020_ad.png/170px-Ros%C3%A9_BLACKPINK_PUBG_Mobile_Sept_2020_ad.png"
    },
    {
        name: "Lisa",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Blackpink_Lisa_at_Bvulgari_Avrora_Awards_2022.png/330px-Blackpink_Lisa_at_Bvulgari_Avrora_Awards_2022.png"
    }
]
blackpink_members.map {|member| Member.create(member)}

blackpink_artist_member = [
    {
        artist_id: Artist.find_by(name: "Blackpink").id,
        member_id: Member.find_by(name: "Jennie").id
    },
    {
        artist_id: Artist.find_by(name: "Blackpink").id,
        member_id: Member.find_by(name: "Lisa").id
    },
    {
        artist_id: Artist.find_by(name: "Blackpink").id,
        member_id: Member.find_by(name: "Rose").id
    },
    {
        artist_id: Artist.find_by(name: "Blackpink").id,
        member_id: Member.find_by(name: "Jisoo").id
    }
]
blackpink_artist_member.map {|artist_member| ArtistMember.create(artist_member)}

twice = {
    name: "Twice",
    genre: "K-pop",
    date_established: 2015,
    interesting_fact: "Twice is the first female Korean act to simultaneously top both Billboard's World Albums and World Digital Song Sales charts with the release of their first studio album Twicetagram and its lead single 'Likey' in 2017. ",
    artist_image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Twice_210615.png/220px-Twice_210615.png",
    user_id: User.find_by(username: "CASmooth").id
}
Artist.create(twice)

twice_albums = [
    {
        name: "Twicetagram",
        year_released: 2017,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/e/eb/Twicetagram_album_cover.png"
    },
    {
        name: "What is Love",
        year_released: 2018,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/1/16/Twice_%E2%80%93_What_Is_Love%3F_cover.jpg"
    },
    {
        name: "Eyes Wide Open",
        year_released: 2020,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/thumb/9/90/Twice_-_Eyes_Wide_Open.png/220px-Twice_-_Eyes_Wide_Open.png"
    },
    {
        name: "More & More",
        year_released: 2020,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/c/c6/More_%26_More_Twice_Digital_Cover_-_TikTok_Version.jpeg"
    },
    {
        name: "Formula of Love: O+T=<3",
        year_released: 2021,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/thumb/8/8e/Twice_-_Formula_of_Love.png/220px-Twice_-_Formula_of_Love.png"
    }
]
twice_albums.map {|twice_album| Album.create(twice_album)}

twice_songs = [
    {
        name: "Likey",
        artist_id: Artist.find_by(name: "Twice").id,
        album_id: Album.find_by(name: "Twicetagram").id
    },
    {
        name: "What is Love",
        artist_id: Artist.find_by(name: "Twice").id,
        album_id: Album.find_by(name: "What is Love").id
    },
    {
        name: "I Can't Stop Me",
        artist_id: Artist.find_by(name: "Twice").id,
        album_id: Album.find_by(name: "Eyes Wide Open").id
    },
    {
        name: "More & More",
        artist_id: Artist.find_by(name: "Twice").id,
        album_id: Album.find_by(name: "More & More").id
    },
    {
        name: "Scientist",
        artist_id: Artist.find_by(name: "Twice").id,
        album_id: Album.find_by(name: "Formula of Love: O+T=<3").id
    },
    {
        name: "The Feels",
        artist_id: Artist.find_by(name: "Twice").id,
        album_id: Album.find_by(name: "Formula of Love: O+T=<3").id
    }
]
twice_songs.map {|twice_song| Song.create(twice_song)}

twice_members = [
    {
        name: "Nayeon",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/220701_Nayeon%28%EB%82%98%EC%97%B0%29_of_Twice_MusicBank_Fancam.jpg/220px-220701_Nayeon%28%EB%82%98%EC%97%B0%29_of_Twice_MusicBank_Fancam.jpg"
    },
    {
        name: "Jeongyeon",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/220328_Yoo_Jeong-yeon_TWICE_digital_film.jpg/220px-220328_Yoo_Jeong-yeon_TWICE_digital_film.jpg"
    },
    {
        name: "Momo",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/20220122%E2%80%94Momo_%EB%AA%A8%EB%AA%A8_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg/250px-20220122%E2%80%94Momo_%EB%AA%A8%EB%AA%A8_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg"
    },
    {
        name: "Sana",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/20220121%E2%80%94Sana_%EC%82%AC%EB%82%98_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg/250px-20220121%E2%80%94Sana_%EC%82%AC%EB%82%98_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg"
    },
    {
        name: "Jihyo",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/20220121%E2%80%94Jihyo_%EC%A7%80%ED%9A%A8_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg/250px-20220121%E2%80%94Jihyo_%EC%A7%80%ED%9A%A8_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg"
    },
    {
        name: "Mina",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/20220121%E2%80%94Mina_%EB%AF%B8%EB%82%98_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg/375px-20220121%E2%80%94Mina_%EB%AF%B8%EB%82%98_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg"
    },
    {
        name: "Dahyun",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/20220121%E2%80%94Dahyun_%EB%8B%A4%ED%98%84_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg/250px-20220121%E2%80%94Dahyun_%EB%8B%A4%ED%98%84_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg"
    },
    {
        name: "Chaeyoung",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/20220121%E2%80%94Chaeyoung_%EC%B1%84%EC%98%81_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg/250px-20220121%E2%80%94Chaeyoung_%EC%B1%84%EC%98%81_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg"
    },
    {
        name: "Tzuyu",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg/250px-20220121%E2%80%94Tzuyu_Campaign_Film%2C_Pearlygates_x_Twice_2022.jpg"
    }
]
twice_members.map {|twice_member| Member.create(twice_member) }

twice_artist_members = [
    {
        artist_id: Artist.find_by(name: "Twice").id,
        member_id: Member.find_by(name: "Tzuyu").id
    },
    {
        artist_id: Artist.find_by(name: "Twice").id,
        member_id: Member.find_by(name: "Chaeyoung").id
    },
    {
        artist_id: Artist.find_by(name: "Twice").id,
        member_id: Member.find_by(name: "Mina").id
    },
    {
        artist_id: Artist.find_by(name: "Twice").id,
        member_id: Member.find_by(name: "Jihyo").id
    },
    {
        artist_id: Artist.find_by(name: "Twice").id,
        member_id: Member.find_by(name: "Nayeon").id
    },
    {
        artist_id: Artist.find_by(name: "Twice").id,
        member_id: Member.find_by_name("Jeongyeon").id
    },
    {
        artist_id: Artist.find_by(name: "Twice").id,
        member_id: Member.find_by(name: "Dahyun").id
    },
    {
        artist_id: Artist.find_by(name: "Twice").id,
        member_id: Member.find_by(name: "Sana").id
    },
    {
        artist_id: Artist.find_by(name: "Twice").id,
        member_id: Member.find_by(name: "Momo").id
    }
]
twice_artist_members.map {|twice_artist_member| ArtistMember.create(twice_artist_member) }

red_velvet = {
    name: "Red Velvet",
    genre: "K-pop",
    date_established: 2014,
    interesting_fact: "Musically, the work of Red Velvet reflects their own group name: their predominantly-pop 'red' side experiments occasionally with electronic and funk, and while their 'velvet' side focuses on '90s-influenced R&B with elements of ballad and hip hop.",
    artist_image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Red_Velvet_at_The_Shilla_Duty_Free_Beauty%26You%E2%80%99s_first_anniversary_on_July_30%2C_2019.png/800px-Red_Velvet_at_The_Shilla_Duty_Free_Beauty%26You%E2%80%99s_first_anniversary_on_July_30%2C_2019.png",
    user_id: User.find_by(username: "CASmooth").id
}
Artist.create(red_velvet)

red_velvet_albums = [
    {
        name: "The Red",
        year_released: 2015,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/thumb/0/00/The_Red_album_by_Red_Velvet.jpg/220px-The_Red_album_by_Red_Velvet.jpg"
    },
    {
        name: "Perfect Velvet",
        year_released: 2017,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/d/dd/Perfect_Velvet-cover.jpg"
    },
    {
        name: "Russian Roulette",
        year_released: 2016,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/d/df/Russian_Roulette%2C_Red_Velvet_album.png"
    },
    {
        name: "Queendom",
        year_released: 2021,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/6/63/Red_Velvet_%E2%80%93_Queendom.jpeg"
    },
    {
        name: "The ReVe Festival 2022 Birthday",
        year_released: 2022,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/6/60/Red_Velvet_-_The_ReVe_Festival_2022_-_Birthday.png"
    },
]
red_velvet_albums.map {|red_velvet_album| Album.create(red_velvet_album)}

red_velvet_songs = [
    {
        name: "Dumb Dumb",
        artist_id: Artist.find_by(name: "Red Velvet").id,
        album_id: Album.find_by(name: "The Red").id
    },
    {
        name: "Bad Boy",
        artist_id: Artist.find_by(name: "Red Velvet").id,
        album_id: Album.find_by(name: "Perfect Velvet").id
    },
    {
        name: "Peek-a-Boo",
        artist_id: Artist.find_by(name: "Red Velvet").id,
        album_id: Album.find_by(name: "Perfect Velvet").id
    },
    {
        name: "Russian Roulette",
        artist_id: Artist.find_by(name: "Red Velvet").id,
        album_id: Album.find_by(name: "Russian Roulette").id
    },
    {
        name: "Queendom",
        artist_id: Artist.find_by(name: "Red Velvet").id,
        album_id: Album.find_by(name: "Queendom").id
    },
    {
        name: "Pose",
        artist_id: Artist.find_by(name: "Red Velvet").id,
        album_id: Album.find_by(name: "Queendom").id
    },
    {
        name: "Birthday",
        artist_id: Artist.find_by(name: "Red Velvet").id,
        album_id: Album.find_by(name: "The ReVe Festival 2022 Birthday").id
    },
]
red_velvet_songs.map {|red_velvet_song| Song.create(red_velvet_song)}

red_velvet_members = [
    {
        name: "Irene",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Irene_Bae_at_fansigning_event_on_August_18%2C_2015_02.png/170px-Irene_Bae_at_fansigning_event_on_August_18%2C_2015_02.png"
    },
    {
        name: "Seulgi",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Kang_Seul-gi_at_Asia_Artist_Awards_on_November_26%2C_2019.jpg/170px-Kang_Seul-gi_at_Asia_Artist_Awards_on_November_26%2C_2019.jpg"
    },
    {
        name: "Wendy",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Wendy_at_Incheon_Airport_on_September_9%2C_2019.jpg/220px-Wendy_at_Incheon_Airport_on_September_9%2C_2019.jpg"
    },
    {
        name: "Joy",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Joy_for_Marie_Claire_Korea_on_October_25th_2022.jpg/220px-Joy_for_Marie_Claire_Korea_on_October_25th_2022.jpg"
    },
    {
        name: "Yeri",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Yeri_modeling_for_Marie_Claire_Korea_on_March_22%2C_2022_08_%28cropped%29.jpg/220px-Yeri_modeling_for_Marie_Claire_Korea_on_March_22%2C_2022_08_%28cropped%29.jpg"
    }
]
red_velvet_members.map {|red_velvet_member| Member.create(red_velvet_member)}

red_velvet_artist_members = [
    {
        artist_id: Artist.find_by(name: "Red Velvet").id,
        member_id: Member.find_by(name: "Seulgi").id
    },
    {
        artist_id: Artist.find_by(name: "Red Velvet").id,
        member_id: Member.find_by(name: "Wendy").id
    },
    {
        artist_id: Artist.find_by(name: "Red Velvet").id,
        member_id: Member.find_by(name: "Joy").id
    },
    {
        artist_id: Artist.find_by(name: "Red Velvet").id,
        member_id: Member.find_by(name: "Yeri").id
    },
    {
        artist_id: Artist.find_by(name: "Red Velvet").id,
        member_id: Member.find_by(name: "Irene").id
    }
]
red_velvet_artist_members.map {|red_velvet_artist_member| ArtistMember.create(red_velvet_artist_member)}

xg = {
    name: "XG",
    genre: "J-pop",
    date_established: 2022,
    interesting_fact: "XG is an acronym for Xtraordinary Girls.  The term is used as an aspirational name the group strives to empower young people all over the world with their fresh, inventive music and performance.",
    artist_image_url: "https://media1.giphy.com/media/nRSvklP9dS93yklj2P/giphy.gif",
    user_id: User.find_by(username: "CASmooth").id
}
Artist.create(xg)

xg_albums = [
    {
        name: "Tippy Toes",
        year_released: 2022,
        album_cover_url: "https://img.imageimg.net/artist/xg/img/product_1034080.jpg"
    },
    {
        name: "Mascara",
        year_released: 2022,
        album_cover_url: "https://img.imageimg.net/artist/xg/img/product_1034520.jpg"
    }
]
xg_albums.map {|xg_album| Album.create(xg_album) }

xg_songs = [
    {
        name: "Tippy Toes",
        artist_id: Artist.find_by(name: "XG").id,
        album_id: Album.find_by(name: "Tippy Toes").id
    },
    {
        name: "Mascara",
        artist_id: Artist.find_by(name: "XG").id,
        album_id: Album.find_by(name: "Mascara").id
    }
]
xg_songs.map {|xg_song| Song.create(xg_song) }

xg_members = [
    {
        name: "Chisa",
        image_url: "https://img.imageimg.net/artist/xg/img/member_1002361.png"
    },
    {
        name: "Cocona",
        image_url: "https://img.imageimg.net/artist/xg/img/member_1002401.png"
    },
    {
        name: "Harvey",
        image_url: "https://img.imageimg.net/artist/xg/img/member_1002362.png"
    },
    {
        name: "Hinata",
        image_url: "https://img.imageimg.net/artist/xg/img/member_1002403.png"
    },
    {
        name: "Juria",
        image_url: "https://img.imageimg.net/artist/xg/img/member_1002363.png"
    },
    {
        name: "Jurin",
        image_url: "https://img.imageimg.net/artist/xg/img/member_1002360.png"
    },
    {
        name: "Maya",
        image_url: "https://img.imageimg.net/artist/xg/img/member_1002402.png"
    }
]
xg_members.map {|xg_member| Member.create(xg_member) }

xg_artist_members = [
    {
        artist_id: Artist.find_by(name: "XG").id,
        member_id: Member.find_by(name: "Chisa").id
    },
    {
        artist_id: Artist.find_by(name: "XG").id,
        member_id: Member.find_by(name: "Harvey").id
    },
    {
        artist_id: Artist.find_by(name: "XG").id,
        member_id: Member.find_by(name: "Hinata").id
    },
    {
        artist_id: Artist.find_by(name: "XG").id,
        member_id: Member.find_by(name: "Maya").id
    },
    {
        artist_id: Artist.find_by(name: "XG").id,
        member_id: Member.find_by(name: "Juria").id
    },
    {
        artist_id: Artist.find_by(name: "XG").id,
        member_id: Member.find_by(name: "Jurin").id
    },
    {
        artist_id: Artist.find_by(name: "XG").id,
        member_id: Member.find_by(name: "Cocona").id
    }
]
xg_artist_members.map {|xg_member| ArtistMember.create(xg_member) }

le_sserafim = {
    name: "Le Sserafim",
    genre: "K-pop",
    date_established: 2022,
    interesting_fact: "The group's name, Le Sserafim, is an anagram of the phrase 'I'm Fearless'",
    artist_image_url: "https://64.media.tumblr.com/d692914b6363466d2d5d07090b6da0d6/5fa9270cb94e3feb-62/s540x810/18e5a31026ee9b4cd32338f95da2ddc72ba1e8d0.gif",
    user_id: User.find_by(username: "CASmooth").id
}
Artist.create(le_sserafim)

le_sserafim_albums = [
    {
        name: "Fearless",
        year_released: 2022,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/2/21/Le_Sserafim_%E2%80%93_Fearless.png"
    },
    {
        name: "Antifragile",
        year_released: 2022,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/e/e6/Le_Sserafim_-_Antifragile.png"
    }
]
le_sserafim_albums.map {|le_sserafim_album| Album.create(le_sserafim_album) }

le_sserafim_songs = [
    {
        name: "Fearless",
        artist_id: Artist.find_by(name: "Le Sserafim").id,
        album_id: Album.find_by(name: "Fearless").id
    },
    {
        name: "Antifragile",
        artist_id: Artist.find_by(name: "Le Sserafim").id,
        album_id: Album.find_by(name: "Antifragile").id
    }
]
le_sserafim_songs.map {|le_sserafim_song| Song.create(le_sserafim_song) }

le_sserafim_members = [
    {
        name: "Sakura",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/%EB%AF%B8%EC%95%BC%EC%99%80%ED%82%A4%EC%82%AC%EC%BF%A0%EB%9D%BC.jpg/330px-%EB%AF%B8%EC%95%BC%EC%99%80%ED%82%A4%EC%82%AC%EC%BF%A0%EB%9D%BC.jpg"
    },
    {
        name: "Chaewon",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Kim_Chaewon_LE_SSERAFIM_220923.jpg/250px-Kim_Chaewon_LE_SSERAFIM_220923.jpg"
    },
    {
        name: "Yunjin",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Huh_Yun-jin_%28LE_SSERAFIM%29_220624.jpg/220px-Huh_Yun-jin_%28LE_SSERAFIM%29_220624.jpg"
    },
    {
        name: "Kazuha",
        image_url: "https://static.wikia.nocookie.net/kpop/images/2/20/LE_SSERAFIM_Kazuha_Fearless_Japanese_single_concept_photo_2.png/revision/latest?cb=20221128004901"
    },
    {
        name: "Eunchae",
        image_url: "https://1409791524.rsc.cdn77.org/data/images/full/608432/le-sserafim-hong-eunchae.jpg?w=620"
    }
]
le_sserafim_members.map {|le_sserafim_member| Member.create(le_sserafim_member)}

le_sserafim_artist_members = [
    {
        artist_id: Artist.find_by(name: "Le Sserafim").id,
        member_id: Member.find_by(name: "Sakura").id
    },
    {
        artist_id: Artist.find_by(name: "Le Sserafim").id,
        member_id: Member.find_by(name: "Chaewon").id
    },
    {
        artist_id: Artist.find_by(name: "Le Sserafim").id,
        member_id: Member.find_by(name: "Yunjin").id
    },
    {
        artist_id: Artist.find_by(name: "Le Sserafim").id,
        member_id: Member.find_by(name: "Kazuha").id
    },
    {
        artist_id: Artist.find_by(name: "Le Sserafim").id,
        member_id: Member.find_by(name: "Eunchae").id
    }
]
le_sserafim_artist_members.map {|le_sserafim_artist_member| ArtistMember.create(le_sserafim_artist_member)}

newjeans = {
    name: "NewJeans",
    genre: "K-pop",
    date_established: 2022,
    interesting_fact: "The group's name, NewJeans, is a double entendre.  It alludes to the idea that jeans are a timeless fashion item and the group's intention to carve a timeless image for themselves.  The name is also a word play on the phrase \"new genes\", referring to the group ushering a new generation of pop music.",
    artist_image_url: "https://media.tenor.com/YCq2sjq1OJcAAAAC/haerin-new-jeans.gif",
    user_id: User.find_by(username: "CASmooth").id
}
Artist.create(newjeans)

newjeans_albums = [
    {
        name: "New Jeans",
        year_released: 2022,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/3/3d/New_Jeans_%28EP%29.jpg"
    },
    {
        name: "OMG",
        year_released: 2023,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/thumb/1/10/NewJeans_OMG_cover.jpg/220px-NewJeans_OMG_cover.jpg"
    }
]
newjeans_albums.map {|newjeans_album| Album.create(newjeans_album)}

newjeans_songs = [
    {
        name: "Attention",
        artist_id: Artist.find_by(name: "NewJeans").id,
        album_id: Album.find_by(name: "New Jeans").id
    },
    {
        name: "Hype Boy",
        artist_id: Artist.find_by(name: "NewJeans").id,
        album_id: Album.find_by(name: "New Jeans").id
    },
    {
        name: "Cookie",
        artist_id: Artist.find_by(name: "NewJeans").id,
        album_id: Album.find_by(name: "New Jeans").id
    },
    {
        name: "OMG",
        artist_id: Artist.find_by(name: "NewJeans").id,
        album_id: Album.find_by(name: "OMG").id
    },
    {
        name: "Ditto",
        artist_id: Artist.find_by(name: "NewJeans").id,
        album_id: Album.find_by(name: "OMG").id
    }
]
newjeans_songs.map {|newjeans_song| Song.create(newjeans_song)}

newjeans_members = [
    {
        name: "Minji",
        image_url: "data:image/jpeg;base64,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"
    },
    {
        name: "Hanni",
        image_url: "data:image/jpeg;base64,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"
    },
    {
        name: "Danielle",
        image_url: "data:image/jpeg;base64,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"
    },
    {
        name: "Haerin",
        image_url: "data:image/jpeg;base64,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"
    },
    {
        name: "Hyein",
        image_url: "data:image/jpeg;base64,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"
    }
]
newjeans_members.map {|newjeans_member| Member.create(newjeans_member)}

newjeans_artist_member = [
    {
        artist_id: Artist.find_by(name: "NewJeans").id,
        member_id: Member.find_by(name: "Hanni").id
    },
    {
        artist_id: Artist.find_by(name: "NewJeans").id,
        member_id: Member.find_by(name: "Danielle").id
    },
    {
        artist_id: Artist.find_by(name: "NewJeans").id,
        member_id: Member.find_by(name: "Hyein").id
    },
    {
        artist_id: Artist.find_by(name: "NewJeans").id,
        member_id: Member.find_by(name: "Haerin").id
    },
    {
        artist_id: Artist.find_by(name: "NewJeans").id,
        member_id: Member.find_by(name: "Minji").id
    }
]
newjeans_artist_member.map {|newjeans_artist_member| ArtistMember.create(newjeans_artist_member)}

fela_kuti = {
    name: "Fela Kuti",
    genre: "Afrobeat",
    date_established: 1958,
    interesting_fact: "Fela Aníkúlápó Kuti (born Olufela Olusegun Oludotun Ransome-Kuti; 15 October 1938 - 2 August 1997), also known as Abami Eda, was a Nigerian musician, bandleader, composer, political activist, and Pan-Africanist. He is regarded as the pioneer of Afrobeat, a Nigerian music genre that combines West African music with American funk and jazz.",
    artist_image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_Bh74nZq1WvWEItrq5A7TUBU8-zrdV9I-lQ&usqp=CAU",
    user_id: User.find_by(username: "CASmooth").id
}
Artist.create(fela_kuti)

fela_kuti_album = {
    name: "The Best Best of Fela Kuti",
    year_released: 1999,
    album_cover_url: "https://upload.wikimedia.org/wikipedia/en/f/f4/The_Best_Best_of_Fela_Kuti.jpg"
}
Album.create(fela_kuti_album)

fela_kuti_songs = [
    {
        name: "No Agreement",
        artist_id: Artist.find_by(name: "Fela Kuti").id,
        album_id: Album.find_by(name: "The Best Best of Fela Kuti").id
    },
    {
        name: "'I.T.T.' (International Thief Thief)",
        artist_id: Artist.find_by(name: "Fela Kuti").id,
        album_id: Album.find_by(name: "The Best Best of Fela Kuti").id
    },
    {
        name: "Gentleman",
        artist_id: Artist.find_by(name: "Fela Kuti").id,
        album_id: Album.find_by(name: "The Best Best of Fela Kuti").id
    },
    {
        name: "Zombie",
        artist_id: Artist.find_by(name: "Fela Kuti").id,
        album_id: Album.find_by(name: "The Best Best of Fela Kuti").id
    },
    {
        name: "Coffin for Head of State",
        artist_id: Artist.find_by(name: "Fela Kuti").id,
        album_id: Album.find_by(name: "The Best Best of Fela Kuti").id
    }
]
fela_kuti_songs.map {|fela_kuti_song| Song.create(fela_kuti_song)}

fela_kuti_member = {
    name: "Fela Kuti",
    image_url: "data:image/jpeg;base64,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"
}
Member.create(fela_kuti_member)


fela_kuti_artist_member = {
    artist_id: Artist.find_by(name: 'Fela Kuti').id,
    member_id: Member.find_by(name: 'Fela Kuti').id
}
ArtistMember.create(fela_kuti_artist_member)

prince_nico_mbarga = {
    name: "Prince Nico Mbarga",
    genre: "Afrobeat",
    date_established: 1970,
    interesting_fact: "He is renowned for his hit song 'Sweet Mother', recorded with his band Rocafil Jazz, which has been described as the best-selling song in history by an African recording artist.  His biggest hit, 'Sweet Mother' was released in 1976 and sold 13 million copies",
    artist_image_url: "https://www.myjoyonline.com/wp-content/uploads/2022/05/mbarga2-583x424.jpg",
    user_id: User.find_by(username: "CASmooth").id
}
Artist.create(prince_nico_mbarga)

prince_nico_mbarga_album = {
    name: "Sweet Mother",
    year_released: 1976,
    album_cover_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWnenqNiYDzzaNs1ZyE8XFpng5FG54K4T64Bs0QmkGD_HNmty6024eI5YOmgOnNCB69A0&usqp=CAU"
}
Album.create(prince_nico_mbarga_album)

sweet_mother_song = {
    name: "Sweet Mother",
    artist_id: Artist.find_by(name: "Prince Nico Mbarga").id,
    album_id: Album.find_by(name: "Sweet Mother").id
}
Song.create(sweet_mother_song)

prince_nico_mbarga_member = {
    name: "Prince Nico Mbarga",
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzkITm9dIVSifRYnmLWi03eWVDmWyvEOdI2A&usqp=CAU"
}
Member.create(prince_nico_mbarga_member)

prince_nico_mbarga_artist_member = {
    artist_id: Artist.find_by(name: "Prince Nico Mbarga").id,
    member_id: Member.find_by(name: "Prince Nico Mbarga").id
}
ArtistMember.create(prince_nico_mbarga_artist_member)

GG = {
    name: "Girl's Generation",
    genre: "K-pop",
    date_established: 2007,
    interesting_fact: "The group's Korean name is So-nyuh Shi-dae (Korean: 소녀시대; Hanja: 少女時代; RR: Sonyeo Sidae), from the Sino-Korean root meaning 'Generation of Girls'; they are also known as SoShi (소시) or SNSD, both of which are abbreviated forms of the group's Korean-language name.",
    artist_image_url: "https://media.tenor.com/uHAOszetpkMAAAAC/snsd-girls-generation.gif",
    user_id: User.find_by(username: "CASmooth").id
}
Artist.create(GG)

gg_album = [
    {
        name: "The Boys",
        year_released: 2011,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/7/70/The_Boys_%28Girls%27_Generation_album_-_cover_art%29.jpg"
    }
]
Album.create(gg_album)

gg_song = [
    {
        name: "The Boys",
        artist_id: Artist.find_by(name: "Girl's Generation").id,
        album_id: Album.find_by(name: "The Boys").id
    }
]
Song.create(gg_song)

gg_members = [
    {
        name: "Taeyeon",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Kim_Tae-yeon_at_Incheon_Airport_on_August_29%2C_2019.png/250px-Kim_Tae-yeon_at_Incheon_Airport_on_August_29%2C_2019.png"
    },
    {
        name: "Sunny",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Sunny_at_Budweiser_Project_B_Party_on_April_2018_02.png/250px-Sunny_at_Budweiser_Project_B_Party_on_April_2018_02.png"
    },
    {
        name: "Tiffany",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Tiffany_Young_at_Incheon_Airport_on_July_29%2C_2019_%282%29.jpg/220px-Tiffany_Young_at_Incheon_Airport_on_July_29%2C_2019_%282%29.jpg"
    },
    {
        name: "Hyoyeon",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/20220323_%EC%86%8C%EB%85%80%EC%8B%9C%EB%8C%80_%ED%9A%A8%EC%97%B0.jpg/220px-20220323_%EC%86%8C%EB%85%80%EC%8B%9C%EB%8C%80_%ED%9A%A8%EC%97%B0.jpg"
    },
    {
        name: "Yuri",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Yuri_2022.jpg/250px-Yuri_2022.jpg"
    },
    {
        name: "Sooyoung",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Choi_Soo_Young_at_Music_Bank_in_August_2022_07.png/250px-Choi_Soo_Young_at_Music_Bank_in_August_2022_07.png"
    },
    {
        name: "Yoona",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/%ED%88%AC%EB%AA%85%ED%95%9C_%ED%94%BC%EB%B6%80%EB%A5%BC_%EC%9C%A0%EC%A7%80%ED%95%98%EB%8A%94_%EC%9C%A4%EC%95%84%28YOONA%29%EC%9D%98_%ED%94%BC%EB%B6%80_%EA%B4%80%EB%A6%AC_%EB%B9%84%EA%B2%B0%EC%9D%80_%281%29.jpg/250px-%ED%88%AC%EB%AA%85%ED%95%9C_%ED%94%BC%EB%B6%80%EB%A5%BC_%EC%9C%A0%EC%A7%80%ED%95%98%EB%8A%94_%EC%9C%A4%EC%95%84%28YOONA%29%EC%9D%98_%ED%94%BC%EB%B6%80_%EA%B4%80%EB%A6%AC_%EB%B9%84%EA%B2%B0%EC%9D%80_%281%29.jpg"
    },
    {
        name: "Seohyun",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Seohyun_2022_KBS_Drama_Awards_1.jpg/220px-Seohyun_2022_KBS_Drama_Awards_1.jpg"
    }
]

gg_members.map do |member| 
    new_member=Member.create(member)
    Artist.find_by(name: "Girl's Generation").members << new_member
end

bts = {
    name: "BTS",
    genre: "K-pop",
    date_established: 2013,
    interesting_fact: "BTS stands for the Korean phrase Bangtan Sonyeondan (Korean: 방탄소년단; Hanja: 防彈少年團), which translates literally to 'Bulletproof Boy Scouts'",
    artist_image_url: "https://media.tenor.com/0aSvydSWjIgAAAAd/bts.gif",
    user_id: User.find_by(username: "CASmooth").id
}
Artist.create(bts)

bts_albums = [
    {
        name: "Be",
        year_released: 2020,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/a/a2/BTS_-_Be_Cover.png"
    },
    {
        name: "Map of the Soul",
        year_released: 2020,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/2/21/BTS_-_Map_of_the_Soul_7.png"
    }]
bts_albums.map { |album| Album.create(album) }

bts_songs = [
    {
        name: "Life Goes On",
        artist_id: Artist.find_by(name: "BTS").id,
        album_id: Album.find_by(name: "Be").id
    },
    {
        name: "Blue & Grey",
        artist_id: Artist.find_by(name: "BTS").id,
        album_id: Album.find_by(name: "Be").id
    },
    {
        name: "Dynamite",
        artist_id: Artist.find_by(name: "BTS").id,
        album_id: Album.find_by(name: "Be").id
    },
    {
        name: "Intro: Persona",
        artist_id: Artist.find_by(name: "BTS").id,
        album_id: Album.find_by(name: "Map of the Soul").id
    },
    {
        name: "Boy with Luv",
        artist_id: Artist.find_by(name: "BTS").id,
        album_id: Album.find_by(name: "Map of the Soul").id
    },    
    {
        name: "Make It Right",
        artist_id: Artist.find_by(name: "BTS").id,
        album_id: Album.find_by(name: "Map of the Soul").id
    },
    {
        name: "Dionysus",
        artist_id: Artist.find_by(name: "BTS").id,
        album_id: Album.find_by(name: "Map of the Soul").id
    },
    {
        name: "Black Swan",
        artist_id: Artist.find_by(name: "BTS").id,
        album_id: Album.find_by(name: "Map of the Soul").id
    },
    {
        name: "On",
        artist_id: Artist.find_by(name: "BTS").id,
        album_id: Album.find_by(name: "Map of the Soul").id
    }
]
bts_songs.map { |song| Song.create(song) }

bts_members = [
    {
        name: "Jin",
        image_url: "https://kprofiles.com/wp-content/uploads/2016/04/Jin.jpg"
    },
    {
        name: "Suga",
        image_url: "https://kprofiles.com/wp-content/uploads/2016/04/Suga.jpg"
    },
    {
        name: "J-Hope",
        image_url: "https://kprofiles.com/wp-content/uploads/2016/04/J-Hope.jpg"
    },
    {
        name: "RM",
        image_url: "https://kprofiles.com/wp-content/uploads/2016/04/RM.jpg"
    },
    {
        name: "Jimin",
        image_url: "https://kprofiles.com/wp-content/uploads/2016/04/Jimin.jpg"
    },
    {
        name: "V",
        image_url: "https://kprofiles.com/wp-content/uploads/2016/04/V.jpg"
    },   
    {
        name: "Jungkook",
        image_url: "https://kprofiles.com/wp-content/uploads/2016/04/JK.jpg"
    }
]

bts_members.map do |member| 
    new_member = Member.create(member) 
    Artist.find_by(name: "BTS").members << new_member
end

stray_kids = {
    name: "Stray Kids",
    genre: "K-pop",
    date_established: 2017,
    interesting_fact: "The group's name 'Stray Kids' was not defined by JYP Entertainment but conceptualized by the members themselves. It originally referred to a lost child who wants to chase their dreams and later evolved to represent the idea of finding a way together out of the ordinary.",
    artist_image_url: "https://media.tenor.com/o3iO38lDBIkAAAAC/stray-kids-get-cool.gif",
    user_id: User.find_by(username: "CASmooth").id
}
Artist.create(stray_kids)

stray_kids_albums = [
    {
        name: "Noeasy",
        year_released: 2021,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/5/59/Stray_Kids_-_Noeasy_%28Digital%29.jpeg"
    },
    {
        name: "Oddinary",
        year_released: 2022,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/4/45/Stray_Kids_-_Oddinary.jpeg"
    },
    {
        name: "Maxident",
        year_released: 2022,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/d/de/Stray_Kids_-_Maxident.png"
    }
]
stray_kids_albums.map { |album| Album.create(album) }

stray_kids_songs = [
    {
        name: "Thunderous",
        artist_id: Artist.find_by(name: "Stray Kids").id,
        album_id: Album.find_by(name: "Noeasy").id
    },
    {
        name: "Mixtape: Oh",
        artist_id: Artist.find_by(name: "Stray Kids").id,
        album_id: Album.find_by(name: "Noeasy").id
    },
    {
        name: "Wolfgang ",
        artist_id: Artist.find_by(name: "Stray Kids").id,
        album_id: Album.find_by(name: "Noeasy").id
    },
    {
        name: "Maniac",
        artist_id: Artist.find_by(name: "Stray Kids").id,
        album_id: Album.find_by(name: "Oddinary").id
    },
    {
        name: "Case 143",
        artist_id: Artist.find_by(name: "Stray Kids").id,
        album_id: Album.find_by(name: "Maxident").id
    },
    {
        name: "Circus",
        artist_id: Artist.find_by(name: "Stray Kids").id,
        album_id: Album.find_by(name: "Maxident").id
    }
]
stray_kids_songs.map { |song| Song.create(song) }

stray_kids_members = [
    {
    name: "Bang Chan",
    image_url: "data:image/jpeg;base64,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"
    },
    {
    name: "Lee Know",
    image_url: "https://kprofiles.com/wp-content/uploads/2017/11/09D65043-99A5-4725-80D7-2B8D9B8F3644-533x800.jpeg"
    },
    {
    name: "Changbin",
    image_url: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUSEhIVFRUSFRAVFRUVFxUVFRUXFRUWFhUVFRUYHSggGBolHRUVITEhJSktLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0lHR0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIASwAqAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAECBQAGB//EADsQAAEEAAUCAwYEBgEDBQAAAAEAAgMRBBIhMUEFUSJhcQYTMoGRsUJSodEUI3LB4fCSFUOCM2JjsvH/xAAbAQACAwEBAQAAAAAAAAAAAAACBAABAwUGB//EADMRAAICAQIEAwcDAwUAAAAAAAABAhEDITEEEkFRImFxBROBkaGxwTLR8BRC4QYjUrLx/9oADAMBAAIRAxEAPwArYj2USQkpwtPdSxi9PZ5vlEBC4cI2H9E8wUuLQpzFcvUFG60YWhC1WeeldAtpK2OMCFNGgRYjRMe80VOLsuM01oZGKcBwvNdQJFkNJteqx7hSwMU+rpSatWXgm1Pl3MGQu7FL+7k4an5JXd0J8h7lKtI6ab7CbS/YtKsJWj4gbTkUh7pTG3ygapWi07dCc2JJ0CmEitVZnomjPwAECXdhvTYXimaBqPqjGSMjRFLm8tCvCeaaB6I0mC2JPlHI/RUZOwfFY9E/ijZ2H0S0ZDTq0EHe1TTstO0JnFAmmgk8KUxDE2y4DnRcgp9w7S6H1cqcwCq/QJZz73XQo5DdDEkl0FPKRa/XfZEE9IlFszlkS3NEUkcY4BSX3ykpXEnVHCItny2tCM5OiYkcaA7oURAU4qbUDsje5jjXhbsXxxrRZWK1GibxkhJSZ81jN6UPYIf3Gf5oD9UzKNaCA6PVLM6UH1KsNJWdwJTL/JDfCN0LNF3F/domQBEY2xqhtOvoholkyM7KNkRtk2qSO1pRlo6kGWIm64RS2kFxI+eiplo6GPwi1yO94uuwUKUian0+fQJCR6exB4SL4DRIXQUUcLJmaeguzdEc0qI4CUcQnlaqkJy5p6lDNQSz3I0zCEu5qukRN3qQ12ql1kk7qvu91EbiAfNA7NY0hSTdI4p2q0Xi0tO3QlYzi6H8E1t1M2J5JITDDl3FoDX0bVi61imOSjZAkHZDmRS0VY3CUMmuqpsKGrshzuSqMrfurYkaIbYjws3uarYv7zSlRzdbUg1vurOiUL2KlxQcTrI0HbdFc0gIUAzya/hCF9i13DOaN6UIt0uV0UfTJYVAiJFJwxrvdJ7mOI8YCPC0okg80yQq5LUthckapIQfh9LWZJut9wpJYuEF2yKMjDNiTVox5JPCa3Q8+i0JIR+VI417I2lztANyUQK/4ickwWfjeoxt0zC/qVidU6255IZ4W9hufU/2WUZElPP0R2sPBpJN7m1N1YAaNJ8zokz1d17AJH3gQz8li5sbWJdjeh6uyiHNdZ9KXMx8V/vosGj/ALqpJVc7J7lHo8ZjA4CmEAILZzWxWPBi3N+E6flOo/x8lqYHFtf5O/Kf7HlWpczuynj5VS2COmHLSu/imDumC7TVT7tuWyAip9GC2uol/GRjXVLYfE/zCRynmtirxN1vdWEsDdPd3aCn1aLtdEwHvG7WuRmwwOduWrlfLLyKcoroz7LlVS1HpTHDmK2eRRVy2EY43N1FWxZsZOyOMIe7f1TUxbE2zp5rwHVfaB7ZJMjyWk6dvMjySMuMnJ1BaHVxezsaXj1Z7F2FJ1FO9Daz54TZsLy3TvaJ8Y3tbuE9qGvb46+f9ijx8bOP6lfoDm9lQkvBKvXUkQr5t7YdZE0pYw/y4yRp+Jw0LvTgfXleu9ruvNbhSYSQ6VzomnsAPG8eg0vuQvl5TWTOpRXLsxLheD93Nua1Wn+f2KucqFyuQqOrulWdNJERHU+hTglbX042rc+dpFo7GvRXzu/MfmhTZHGx5pYe2w7j1rYKr2ULDr8uNeN9x6JUOd3B9QFxkdy0fK/8q+byK5C7lzTXyUXa5Qh6Dpkwew38Q3/ddPIarZZfS8QWPHY20/Pb9aWvCbe3w5vELbV2L1C1UriYONS8hPCQvkdlY1zz2aC4/otHE9DxDd8PLX9Dj+oC93h/aGFrcsceUt0LQ0NIPagtbp/UpH6ub7saVmIs+dJR8Q1shz+l0ts+TR4Yk0dCODofopX2hwjlFSCOQebQfva5EuKhWsfqZvhp3owzW2aT0UeUIGGajYqWmrDNlc35B8PhWOPmed9q8WPdO5I1A8+F4vC9ODyDiZWxt3IsZz5AD4fmt3qJzlznl4YCScmXPQN+HNpfqvLxgSt/lsfbicrD4nga0DQ1Nc0jw6K2bSt+FOv58jaPT+nj/uu/5f4S8vTcI4/ysRk7A0R9TX3QMP7LTv8AiaGDu46/Qapsex355QBzlb+6aUZy2gvlX5FHkxQeuV363+Gjw/tOcsxjEnvBGAMw2sgEhup8h8lhm0aRwcSRsSSL311CkM7/AEUrsS+4H3a4QhGIQ3S8BR0tyJt7F/4dqqWs7qzMK46m1R+CKyeRLZBqD6skZeCFORJzRFqoyUjYofeq9UTk7MeIVV0WJB0Onn+6l7a/37LVNNWgdtzr57Lew2Kcwh4JFjg0aPZYNrciaSxml21v2VxV2gZPlpjrcXMXZxJZ7nf52iydclHxXfOqVihcOKRXtGXUWhlw1rR/M1hxeviXyGMP1ogfy3OYTuLJHqLXLJxeDLQHAZmOJaasFp/DrxfHoVyXeOv1bjHvb21Pv0aS6k+xl7pdmMUtfmN9kqHRjM6M6SQhzqjAF18Trvwjt6rZwfTYoRUbA3QC+T6k6qJH5TY//UnjMYSNXUOw0+pT2HNCEdtRHiMGXLOk/D/OnUfle0blv1CxPajqLcPh3vJALmubGPzPLTlA+l/JZGMxOuVlucTQA1JXm/a7+IGSGUaNY6YNHiy2clkjTvoDymsfESknoL5OBjFrxfA8dl/RWdKquChZc1DVWDc4laWCwg3P++aBhYLK14o1lI0ggzIwqSQK4aroDQycbhgQdFgkL1OKXmZRqfUoZLQBgk3hZ/wu2+yUVlUJuLsFqx+Rten+/ovT9OizNaP/AGt9dl5XDyginHjles6Y97Y25TTixn22tO4pJ21qL5Y7JuvMffhS2gQ75ghWkwZrRUw+OfsXG+Qf2KcllNW3fkd/Nv7LbHnjLfQxzcHkirg7/n1MiaEg07/eylOhjpPERp3PPkuUnjg3qaYMmVQ0R7Ey1udldnUAFoP6FEfzj5/uhD2bj/O/9P2SH9LIaXG4n3+RmYvqXmrYDAvxABJLI+/4nf0+XmtmPokA/wC2HebiXfodE+AtsfDJayF8vG2qxr4sSwnTY4vgYAeTu4+rjqsP20mprWn4cshdvWoyiwNasr1JXl/bK8vGjb1vZrrNVzX91tldR07r7mHDW8tvV0/s1+T5LLgHZwwjxHWu/mjDpLgQK15J2+i1emMzYqM9/wDK9hPhB2SkpvQ6SgtTxrPZ9xHx5fKvuqHp8zNnB36/dbHWYpfwWBysqX3oLchzZgONQeRopFyYUoxRWKRwNPZ8wNfon5MLpY2KnCYkh/un5S6gdCHDzF+S1Z6EZNbDhDJ06aLilV3oeP6m2gV52UarWx0jpHEZT8gdP8pafDNaD3Pnt+6sz6mZlUEJgga9kMxE6gFA0QGNV7rAyNcwAcBv2Xk8BgC9wABJ7cX5nhey6fgRGK5rVNcHF22KcU1yrv0CyEGjWu18/NGhk114V44gRaLiwDQAo1V/a0xmw34orX7mfDcVytY5PT7BnYkELlmWRopSXvX3Op7pdj6ypXLk8eeOXLlChZK857b4Ey4Y0QMjmvN9mg6Dz2Xowsj2me8Q3Hea9KFn4XbClT2NMd8yPBdGwI95E/kA3/x3XrS21i9IwhETZTp4msLTdglmcGyNiHA/NbkS5k01udtSjK+UC7Cg8JSfpLTwPotdoUvYs+Yuzx+K6UGmwNUzFhnZdiVrYpgta3ScOCNQrcgkfOcbEXgtbpfZLP6IXUSwHQA14Sa23B1X0KbpDcxNUmYOnNHCkc1LQpxTZ86wnsa+WTNkEbdNBa9S32Rw8bCXM2BJNngar2WGgACx/alpdBIxt29jm6b6ijXnVrKWSTYSilsj5/7O4Ue4bJVFz5HV31IafkL/AOS0pMqp0+FwaWnRrfh0A0Om9WdudrRHQ66rvcLjrEn1lqef43PzZnF7R0/cgEVQUvZyrNCmZ2iaoU5legu5odv9VCK5nhUpaXD45O2tR3HxeWMajLT0s+mLlNLkBlRC5RSlQuiVnddmyQudRuwAQaIJNBwPktC0n1VrTE7PVab7A3QPyJCoNbmDgsC+aMSAtZFIffFgzF+doLGsz2BkGVvF6KcK/Ra2Ani/hg6KgwNfQF0CCQ4C9fiteewU16dknxK0R0+EbbkvM1WK0rtEFjl0rtEkNCY1NnuvRdJeBVryOJhcT4XOGt0Fo4SSZwplAigSb0+SuS0CVG7itx52rxobYSGgE2e6uzRYlsK59LyntNjnNcyu+nm4kNr6ElehxElBeVxwpwzPzF7iGZmtysq3ZvCLNbfRNcNg95zSey+/T+d6XUWz8QsTilu39Ov/AK+lvdIHhBnYCBV1vROwJOgHJPH1XOi1TkTRQrauOfNWMPK9DDSKR5bKrk2u7EHYcjWktiIytN7DyqYiDVF5FRb37CJaapcmC1cqD5qPoNKKXzbDe2U8Qqw8H89kj0N/dEwXt3KJP5rQ5p/CAAfk4Lme8ieon7D4lXVOvPf+ebPolKCvNYX23w7r95njoE7Zvl3s/TzQJvbmPQxxlzTudAQe1WUfvF3FV7M4py5eR38K+d0erWd1+ZohcHOAJAIBIF0QdP3814yb24mBIDY648O36rBxHXJJZmPe8k2ACdKvTTtuheZDUfY2aKcptKu2t/Q3+m9RLYXRNcSzMa2r4i6mkb768bJfC4qn+qQhxGr25s3jJu7sOog2uelcsrYWGPKvXX5nsYJLCS6tiZGtuMA1vd7c7IHR8VmFHcLTfFaV2ZszzH/WsQDZi07s8YHqBrS2ML7YBrqfGQ127sjgNt7IrupfhSD4R9/unMPh5Do667Ek+fKuVDSWJx1epq4PqbJRbHWEzI9ZzY8utV6aK8UofdEEA0a117FBjxyyS5YieWccceaWxGIeSsvFRBz292ZjWvI3NA18NWaGq2nv0WLPhiZnu7tgGnDQ8k35nxaLuLGseJY0r1X31ZwXN5MryN9H9qSCMioADgAfRNRNUNHlaPH6JlsShHUBiW3SHNGmZIlU2qsLltuzGmab2Up+UrkXN5ActdT5u4oMjkZBeFw7Pq80XMhGu4Q3TFurdjuFLdQpLNKV8xjKHNqt+hSSYGkNkniB4BHNc9xsgSMLT3H2UEqnJiryO6kqNTq0xbMXN0JrknYAa5iTwm8Fjw8dncj9kl10Elji7McjQT4jtqNXEnYrKDqUn+pnNx41LDHXVaX6HssPMWuDgvT9PxzXAL5thuquGjvEPof8rVw3VGHZ2U+eiykgHikuh9Nhc1MGRoGq8Fh+r/8Ay/ZXxHWQRRkB+YWTQKgzb6l1TM7LHtyf2SOGn93iC2i1ryKt1MzkCy0A63yCLvnVZsGPZer27gbgbnz29UE9Qa2UvMnvAx7iwNJGcuoG7b4Q3IQCNSH6JjhZ+7d9DLPw081QjFt/H6nvXMtee6bLK6ZwcKaTiHC265GyZAAe1Zf+KSg9rHh5e6iKPhFho7UFtdH6qyQEuyxvNWC4akukNN20BJ8/EujDPHJTWlCXF+ys3CeGStyV6a+vn8arzHWAjZFD1LHtdZDgfQg/ZQGplNPU5nJKHhej7BM6E8oiGQpSI7F5A3kKVaRq5QFp9j5aQhuamHM1QnBcRn1SUQER4RShO0KKQhbMYJ00CeEpJF2TjgqFUpGOXGpbjXU4XOw8UoacvwE04UWtbQcTYN+Igiro6aFY4Pdeow8jTg5RTj/6bTt4S1xc1++orM31e1Y38N/5I5y1Ofw3DzakktpNevW/jYkGBXESOcGeB8tlQWNDp/Vos2xj3XL+pEhimldrv9sLi0/l+yBs3S00si0SJqhpUhw7oTaLrUag1IF1ZAs7BMY7EhjzRO9ANIdeU0TYABGh2AQsAASectuO/Fchpr50NN0sG62dyCP3WnMlDfqDCU5cS2qqMUr6pt2/ov5saMPUZWW5ry0kWfEfpon8B7USN1c7MOQc36WvPRP+L0SzNTSpZpJ2jXiPd5FU4KXNpqu3n9uq6M9432usg5AGeY8Xre36LRi9pICdS4eZDR9ja+dzS0R6KonW8eNmuohk9kcBKk4Vy6Wm7+N3+/mfUWdShftI35kf3XL5pHi9QPzLlr/XvsKP/TfDSfgyyS+D/b7DM41vuhPCYGrPRAcEsz0b7isgR4hoqOCJBsozGCqZSRiWkC0Xx2EpLEhKyxNn2fe10Usbh+CbcAmzEXMy6WPFC3byWILC1/ZkNzubJ8Dm0+qBALgwvaSDTmhxcPQjlJ4zClj3MO7XOB9Wkg/ZXLZM52Co5cqT10f0r8FGPUzCxqqBilCMyytqmdHgWEa3fcFVf0scFXzFcJSgYHgrVAf+m/7aqcNXCZ96VEhJFd0LZKj0R0ETg0yNJHhcLGYHxAN+ICh8R3KA4Jhsjg0syijTg4ggmgbo8jxDuhOCLLa5U+i++plwbj/uTW8pf9fD+GLMdQKrhRyunHA5RHChSxsZjvr/AGg3GyqPcrOQZnKmzOUt2VbL4r7WuQuPVcqswWaUdj0GDfx3VZtDSXgfRTmIZYtOy3OpCVw9ACNEEu0JqFU2Ze81DMQpokYBQ8oAZOzuksqVhFakAg6hwJotI7HZH6phMsjvEXhwa8OJJLhI0PBJIBJ8WpI3WfDI5rw4fhc0j1aQR9l6DrN1Ga8JjAY6jlc0PfVEgWQC0EVpXzJv9IorWdUtGmn6p2jBcxUdompAlKsoEbyJYFGVEcEEmzSFkdIuzugueePkmZG01L4CLNIA4gNaWucXWABmA3DXckcIUuZ0jLPkWOPM+moeSdrsuTNTRXiDRrZusu96GyL9d0J50RZA2yW/CTp8O2wOmnHCVndwqySTk2tisKljxRUnbrX1BRts32XPRyKCXcs27LbpA3hKTlNyFKO3VC85PYh3ZcqjupUB3NILUwhttLNcEzgpKKcZ0Mc6lReRlFSxOYiO9UpSFFzVMYYFzwqxlFUYSM6d5BXo2z58GDV5ZIx/S4RFsmb+oNhII7G/PDnaFtex0zJPewvyjM0gE8Z9A++MrxEfmtI200upz+L5cbjll/Y7/D+j1MqRBYExN3S2ZZWPS0ZWZyjCts2hzOTeHFNQy2BjrIpiVGCwEhiklIqM00GnavYW1Tqy0M11euXyKHin00laXVCWtw8Jbl9xEQRmDrcXOL5LHDjZ11prUWPROV7fcT4tc+SGKrUnr6LV/gzn6BBjbZtdK6zSJsFh0Gnq7BylAVpCqOQmUnqBkSz9vVMSlL8+migtMgrlxXKyjYlaqRmkecJdNjctGbGHdmbSXeKKpgZaTeJjsWED0YwnzIXa5Ea5LqwcrsrmDP1VenyNjnjJ2c4NJ4GbS74okH5IXvFSaMPFKJ0wMq54uK6m313CtY623lkaHtBNlt2HMJ5LXtkZ/wCKxHOXooWHFYYyZgZIQS5v5w3L70jSrAIkOutyGtF5iXdXONPTYwwZXLGlJ3KOkvX/ACqZUp1j9EmxWlmyi/oPNZM2i6NHos0bcQHy0WQtdJlNU+QD+Uw2dr1Pk0pPE4lzyXvNucSSaA4oaDQaALQ6jM2JjYIhqWsdNLTmvlLmm260fdDNlDSNchPa8jdHkXKlDtqxTh372Us+vi0Xonv8Xr3JibyplcrEpd5S7G26RQqHlShPKhiwMrq1QmjRdKbIHbU/2UkqC7epRcuK5Qh6KcJJ60MQ1ISBNJj2VEwuWvh5LFLEYU7hpKVNF4ZDGIiS4TrjaC5iA3lHqLuCDmoppwS0zFdmE09xvo3UHYaTO0+F1ZqFkVYzAWL0c5pF6hzgj9d6M+AtfYdFKX5HNJI8LqLHWAQ8CiQeCDqsOTaitjCdaP8ACyYebM6NphcC0tzZmuytvMDs0kZm0aABsVWqakqb9BDI3jnzwWj/AFfh+q+xmukDRqVr4MRRwmV9SSOztAtw92dg1paQfe8l2zG9yaR4OswYeMshiuXxNMr2hoNEjN4i5xGxyjKO9rDnxLnnM9xc6gMztTQ4VOsfm/sA3PidGnGH1kvTovXdeVnPfqXHWyXE9yTZKhhVAFduiXY9H6EyOQSpcVxQEbtlHFAldQtFckcS6yG/M/2UM8r5VZ0fc8qSuOihWL1RxK5cwXr2UqFqLZ6nEBZsoWnLss6dbo6eVaCpKPE5AerMRC8NzThl4RiUhGU41A0Px1iVcEJwRXKjkNGMkJzxoOHayyH5q0vLV6kd990ziEgzn0b/APdq1wq5JHM45uGOUo7pX8tRt8WpOtEki99+T3UUrlVWT7jKilSRwXOKlUcgYWyIChxVihlCWkDmfQvskYhdk8o3UPh+apwoLZXc67FXlcoV490ZmlbCVQUKMRsuVUFOXK6P/9k="
    },
    {
    name: "Hyunjin",
    image_url: "https://kprofiles.com/wp-content/uploads/2017/11/D9D8361C-ED02-4EF7-BF64-BADB5AF7D0D0-533x800.jpeg"
    },
    {
    name: "Han",
    image_url: "https://kprofiles.com/wp-content/uploads/2017/11/3114B979-DC5A-445A-AFA4-13FEB900D433-533x800.jpeg"
    },
    {
    name: "Felix",
    image_url: "https://kprofiles.com/wp-content/uploads/2017/11/7E35A9C2-7652-40F8-A5FC-E00C4B36F3CF-533x800.jpeg"
    },
    {
    name: "Seungmin",
    image_url: "https://kprofiles.com/wp-content/uploads/2017/11/09DCA51D-5324-469E-A771-F599B50CA28F-533x800.jpeg"
    },
    {
    name: "I.N.",
    image_url: "https://kprofiles.com/wp-content/uploads/2017/11/F0558F0F-3337-4EDB-BC97-879118A20E2E-533x800.jpeg"
    }
]

stray_kids_members.map do |member| 
    new_member = Member.create(member) 
    Artist.find_by(name: "Stray Kids").members << new_member
end

wonder_girls = {
    name: "Wonder Girls",
    genre: "K-pop",
    date_established: 2007,
    interesting_fact: "Wonder Girls are also known as 'South Korea's Retro Queens,' as their music has been noted to contain elements from the 1960s through 80s.",
    artist_image_url: "https://media.tenor.com/K70Xa0551dgAAAAC/wonder-girls-wonder.gif",
    user_id: User.find_by(username: "CASmooth").id
}
Artist.create(wonder_girls)

wonder_girls_albums = [
    {
        name: "So Hot",
        year_released: 2008,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/5/53/So_Hot_%28Wonder_Girls_album_-_cover_art%29.jpg"
    },
    {
        name: "The Wonder Years: Trilogy",
        year_released: 2008,
        album_cover_url: "https://upload.wikimedia.org/wikipedia/en/5/53/WGNobody.jpg"
    }
]
wonder_girls_albums.map {|album| Album.create(album)}

wonder_girls_songs = [
    {
        name: "So Hot",
        artist_id: Artist.find_by(name: "Wonder Girls").id,
        album_id: Album.find_by(name: "So Hot").id
    },
    {
        name: "Nobody",
        artist_id: Artist.find_by(name: "Wonder Girls").id,
        album_id: Album.find_by(name: "The Wonder Years: Trilogy").id
    },
]
wonder_girls_songs.map {|song| Song.create(song)}

wonder_girls_members = [
    {
        name: "Yubin",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/190402_%EC%9C%A0%EB%B9%88.jpg/250px-190402_%EC%9C%A0%EB%B9%88.jpg"
    },
    {
        name: "Yeeun",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Yenny_at_a_fanmeet_in_July_2016_02.jpg/220px-Yenny_at_a_fanmeet_in_July_2016_02.jpg"
    },
    {
        name: "Sunye",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Sunye.jpg/220px-Sunye.jpg"
    },
    {
        name: "Sunmi",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Lee_Sunmi_Marie_Claire_Korea_2_%28derived%29.jpg/220px-Lee_Sunmi_Marie_Claire_Korea_2_%28derived%29.jpg"
    },
    {
        name: "Hyuna",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Hyuna_at_fansigning_on_July_21%2C_2018.jpg/220px-Hyuna_at_fansigning_on_July_21%2C_2018.jpg"
    },
    {
        name: "Sohee",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/20220519%E2%80%94Ahn_So-hee%2C_Interview%2C_Marie_Claire_Korea_%2800m32s%29.jpg/220px-20220519%E2%80%94Ahn_So-hee%2C_Interview%2C_Marie_Claire_Korea_%2800m32s%29.jpg"
    },
    {
        name: "Hyerim",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Woo_Hye-rim_at_a_fanmeet_in_July_2016_03.jpg/220px-Woo_Hye-rim_at_a_fanmeet_in_July_2016_03.jpg"
    }
]

wonder_girls_members.map do |member| 
    new_member = Member.create(member) 
    Artist.find_by(name: "Wonder Girls").members << new_member
end

puts 'Seeding done'
