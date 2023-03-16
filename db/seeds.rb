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

blackpink = {
    name: "Blackpink",
    genre: "K-pop",
    date_established: 2016,
    interesting_fact: "Referred to as the biggest girl group in the world.  They are the most successful Korean girl group internationally",
    artist_image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/20190106_%28NEWSEN%29_%EB%B8%94%EB%9E%99%ED%95%91%ED%81%AC_%28BLACKPINK%29%2C_%EC%88%98%EC%A4%8D%EC%9D%80_%EB%A7%8E%EC%9D%80_%EC%86%8C%EB%85%80%EC%A7%80%EB%A7%8C_%EB%8F%8B%EB%B3%B4%EC%9D%B4%EB%8A%94_%EC%95%84%EB%A6%84%EB%8B%A4%EC%9A%B4_%EB%AF%B8%EB%AA%A8_%28Golden_Disc_Awards_2019%29_%282%29.jpg/800px-20190106_%28NEWSEN%29_%EB%B8%94%EB%9E%99%ED%95%91%ED%81%AC_%28BLACKPINK%29%2C_%EC%88%98%EC%A4%8D%EC%9D%80_%EB%A7%8E%EC%9D%80_%EC%86%8C%EB%85%80%EC%A7%80%EB%A7%8C_%EB%8F%8B%EB%B3%B4%EC%9D%B4%EB%8A%94_%EC%95%84%EB%A6%84%EB%8B%A4%EC%9A%B4_%EB%AF%B8%EB%AA%A8_%28Golden_Disc_Awards_2019%29_%282%29.jpg",
    user_id: User.find_by(username: "CASmooth").id
}
# Artist.create(blackpink)

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
puts 'Blackpink albums created'

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
puts "Created #{blackpink_songs.count}blackpink songs."

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
# blackpink_members.map {|member| Member.create(member)}

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
# blackpink_artist_member.map {|artist_member| ArtistMember.create(artist_member)}

twice = {
    name: "Twice",
    genre: "K-pop",
    date_established: 2015,
    interesting_fact: "Twice is the first female Korean act to simultaneously top both Billboard's World Albums and World Digital Song Sales charts with the release of their first studio album Twicetagram and its lead single 'Likey' in 2017. ",
    artist_image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Twice_210615.png/220px-Twice_210615.png",
    user_id: User.find_by(username: "CASmooth").id
}
# Artist.create(twice)

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
# twice_albums.map {|twice_album| Album.create(twice_album)}

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
# twice_songs.map {|twice_song| Song.create(twice_song)}

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
# twice_members.map {|twice_member| Member.create(twice_member) }

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
# twice_artist_members.map {|twice_artist_member| ArtistMember.create(twice_artist_member) }

red_velvet = {
    name: "Red Velvet",
    genre: "K-pop",
    date_established: 2014,
    interesting_fact: "Musically, the work of Red Velvet reflects their own group name: their predominantly-pop 'red' side experiments occasionally with electronic and funk, and while their 'velvet' side focuses on '90s-influenced R&B with elements of ballad and hip hop.",
    artist_image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Red_Velvet_at_The_Shilla_Duty_Free_Beauty%26You%E2%80%99s_first_anniversary_on_July_30%2C_2019.png/800px-Red_Velvet_at_The_Shilla_Duty_Free_Beauty%26You%E2%80%99s_first_anniversary_on_July_30%2C_2019.png",
    user_id: User.find_by(username: "CASmooth").id
}
# Artist.create(red_velvet)

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
# red_velvet_albums.map {|red_velvet_album| Album.create(red_velvet_album)}

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
# red_velvet_songs.map {|red_velvet_song| Song.create(red_velvet_song)}

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
# red_velvet_members.map {|red_velvet_member| Member.create(red_velvet_member)}

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
# red_velvet_artist_members.map {|red_velvet_artist_member| ArtistMember.create(red_velvet_artist_member)}

xg = {
    name: "XG",
    genre: "J-pop",
    date_established: 2022,
    interesting_fact: "XG is an acronym for Xtraordinary Girls.  The term is used as an aspirational name the group strives to empower young people all over the world with their fresh, inventive music and performance.",
    artist_image_url: "https://media1.giphy.com/media/nRSvklP9dS93yklj2P/giphy.gif",
    user_id: User.find_by(username: "CASmooth").id
}
# Artist.create(xg)

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
# xg_albums.map {|xg_album| Album.create(xg_album) }

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
# xg_songs.map {|xg_song| Song.create(xg_song) }

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
# xg_members.map {|xg_member| Member.create(xg_member) }

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
# xg_artist_members.map {|xg_member| ArtistMember.create(xg_member) }

le_sserafim = {
    name: "Le Sserafim",
    genre: "K-pop",
    date_established: 2022,
    interesting_fact: "The group's name, Le Sserafim, is an anagram of the phrase 'I'm Fearless'",
    artist_image_url: "https://64.media.tumblr.com/d692914b6363466d2d5d07090b6da0d6/5fa9270cb94e3feb-62/s540x810/18e5a31026ee9b4cd32338f95da2ddc72ba1e8d0.gif",
    user_id: User.find_by(username: "CASmooth").id
}
# Artist.create(le_sserafim)

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
# le_sserafim_albums.map {|le_sserafim_album| Album.create(le_sserafim_album) }

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
# le_sserafim_songs.map {|le_sserafim_song| Song.create(le_sserafim_song) }

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
# le_sserafim_members.map {|le_sserafim_member| Member.create(le_sserafim_member)}

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
# le_sserafim_artist_members.map {|le_sserafim_artist_member| ArtistMember.create(le_sserafim_artist_member)}

newjeans = {
    name: "NewJeans",
    genre: "K-pop",
    date_established: 2022,
    interesting_fact: "The group's name, NewJeans, is a double entendre.  It alludes to the idea that jeans are a timeless fashion item and the group's intention to carve a timeless image for themselves.  The name is also a word play on the phrase \"new genes\", referring to the group ushering a new generation of pop music.",
    artist_image_url: "https://media.tenor.com/YCq2sjq1OJcAAAAC/haerin-new-jeans.gif",
    user_id: User.find_by(username: "CASmooth").id
}
# Artist.create(newjeans)

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
# newjeans_albums.map {|newjeans_album| Album.create(newjeans_album)}

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
# newjeans_songs.map {|newjeans_song| Song.create(newjeans_song)}

newjeans_members = [
    {
        name: "Minji",
        image_url: "https://kprofiles.com/wp-content/uploads/2022/07/5DFC115E-AFEE-4962-931D-53B5A5995B64-533x800.jpeg"
    },
    {
        name: "Hanni",
        image_url: "https://kprofiles.com/wp-content/uploads/2022/07/7CD920D6-9B39-439C-BCC6-4C54C59BAE84-533x800.jpeg"
    },
    {
        name: "Danielle",
        image_url: "https://kprofiles.com/wp-content/uploads/2022/07/D95A6A7B-1428-406F-A869-9711D5067974-533x800.jpeg"
    },
    {
        name: "Haerin",
        image_url: "https://kprofiles.com/wp-content/uploads/2022/07/4CE8A33A-7F51-49A5-9865-15B03A85D3CE-533x800.jpeg"
    },
    {
        name: "Hyein",
        image_url: "https://kprofiles.com/wp-content/uploads/2022/07/993DF58B-E0FB-40A9-8FCD-40B04844F017-533x800.jpeg"
    }
]
# newjeans_members.map {|newjeans_member| Member.create(newjeans_member)}

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
# newjeans_artist_member.map {|newjeans_artist_member| ArtistMember.create(newjeans_artist_member)}

fela_kuti = {
    name: "Fela Kuti",
    genre: "Afrobeat",
    date_established: 1958,
    interesting_fact: "Fela Aníkúlápó Kuti (born Olufela Olusegun Oludotun Ransome-Kuti; 15 October 1938 - 2 August 1997), also known as Abami Eda, was a Nigerian musician, bandleader, composer, political activist, and Pan-Africanist. He is regarded as the pioneer of Afrobeat, a Nigerian music genre that combines West African music with American funk and jazz.",
    artist_image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_Bh74nZq1WvWEItrq5A7TUBU8-zrdV9I-lQ&usqp=CAU",
    user_id: User.find_by(username: "CASmooth").id
}
# Artist.create(fela_kuti)

fela_kuti_album = {
    name: "The Best Best of Fela Kuti",
    year_released: 1999,
    album_cover_url: "https://upload.wikimedia.org/wikipedia/en/f/f4/The_Best_Best_of_Fela_Kuti.jpg"
}
# Album.create(fela_kuti_album)

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
# fela_kuti_songs.map {|fela_kuti_song| Song.create(fela_kuti_song)}

fela_kuti_member = {
    name: "Fela Kuti",
    image_url: "data:image/jpeg;base64,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"
}
Member.create(fela_kuti_member)

fela_kuti_artist_member = {
    artist_id: Artist.find_by(name: 'Fela Kuti').id,
    member_id: Member.find_by(name: 'Fela Kuti').id
}
# ArtistMember.create(fela_kuti_artist_member)

prince_nico_mbarga = {
    name: "Prince Nico Mbarga",
    genre: "Afrobeat",
    date_established: 1970,
    interesting_fact: "He is renowned for his hit song \"Sweet Mother\", recorded with his band Rocafil Jazz, which has been described as the best-selling song in history by an African recording artist.  His biggest hit, 'Sweet Mother' was released in 1976 and sold 13 million copies",
    artist_image_url: "https://www.myjoyonline.com/wp-content/uploads/2022/05/mbarga2-583x424.jpg",
    user_id: User.find_by(username: "CASmooth").id
}
# Artist.create(prince_nico_mbarga)

prince_nico_mbarga_album = {
    name: "Sweet Mother",
    year_released: 1976,
    album_cover_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWnenqNiYDzzaNs1ZyE8XFpng5FG54K4T64Bs0QmkGD_HNmty6024eI5YOmgOnNCB69A0&usqp=CAU"
}
# Album.create(prince_nico_mbarga_album)

sweet_mother_song = {
    name: "Sweet Mother",
    artist_id: Artist.find_by(name: "Prince Nico Mbarga").id,
    album_id: Album.find_by(name: "Sweet Mother").id
}
# Song.create(sweet_mother_song)

prince_nico_mbarga_member = {
    name: "Prince Nico Mbarga",
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzkITm9dIVSifRYnmLWi03eWVDmWyvEOdI2A&usqp=CAU"
}
# Member.create(prince_nico_mbarga_member)

prince_nico_mbarga_artist_member = {
    artist_id: Artist.find_by(name: "Prince Nico Mbarga").id,
    member_id: Member.find_by(name: "Prince Nico Mbarga").id
}
# ArtistMember.create(prince_nico_mbarga_artist_member)

puts "Sweet Mother I will never forget you"
puts 'Seeding done'
