# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!([
  { id: 999, email: 'admin@raffler.com',          password: 'password' },

  { email: 'merl.howe@autozone-inc.info',         password: 'password' },
  { email: 'pabl.moshie@autozone-inc.info',       password: 'password' },
  { email: 'snoopdogg311@hotmail.com',            password: 'password' },
  { email: 'tony_montana@gina.co',                password: 'password' },
  { email: 'mara_partid@progressenergyinc.info',  password: 'password' },
  { email: 'finley_doe@diaperstack.com',          password: 'password' }
])

Profile.create!([
  { id: 999, user_id: 999, username: 'admin', first_name: 'Admin',  last_name: 'Raffler' },

  { user_id: 1, username: 'merlhowe',       first_name: 'Merl',     last_name: 'Howe' },
  { user_id: 2, username: 'pabl_moshie',    first_name: 'Pablo',    last_name: 'Moshieman' },
  { user_id: 3, username: 'snoopaloop',     first_name: 'Snoop',    last_name: 'Dogg' },
  { user_id: 4, username: 'tony_montana',   first_name: 'Tony',     last_name: 'Montana' },
  { user_id: 5, username: 'mara_partid',    first_name: 'Mara',     last_name: 'Partid' },
  { user_id: 6, username: 'finley_doe',     first_name: 'Finley',   last_name: 'Doe' }
])

Seller.create!([
  { id: 999, user_id: 999, seller_rating: 10 },

  { user_id: 1, seller_rating: 8 },
  { user_id: 2, seller_rating: 9 },
  { user_id: 3, seller_rating: 6 },
  { user_id: 4, seller_rating: 7 }
])

Item.create!([

  {
    seller_id: 3,
    name: "iPad Pro 9.7\" WiFi 128GB Gold",
    description: 'iPad Pro is more than the next generation of iPad — it’s an uncompromising vision of personal computing for the modern world. It puts incredible power that leaps past most portable PCs at your fingertips. It makes even complex work as natural as touching, swiping or writing with a pencil. And whether you choose the 12.9-inch model or the 9.7-inch model, iPad Pro is more capable, versatile and portable than anything that’s come before. In a word, super.',
    price: 15.0,
    item_image_file_name: "IPR97W128D_B_ipad_pro_9_7_wifi_128gb_gold.jpg",
    created_at: "2017-05-07 12:26:24"
  },

  {
    seller_id: 1,
    name: 'Apple iPhone 7 Plus (256GB, Jet Black)',
    description: 'If you were waiting for an iPhone with water-resistance, better battery life, game-changing camera and more power than ever before, iPhone 7 Plus has answered your prayers. It takes a leap forward in all the most important aspects of the smartphone experience.',
    price: 10.0,
    item_image_file_name: "IP7P128BL_iphone_7_plus_128gb_jet_black.jpg",
    created_at: "2017-05-06 12:26:24"
  },

  {
    seller_id: 2,
    name: 'Sony X7000D 49" 4K UHD HDR Android Smart LCD LED TV',
    description: 'Discover the amazing world of Sony 4K HDR. It’s the complete home entertainment experience. Discover brilliant Sony 4K HDR picture quality plus a world of movies, TV shows, apps and more with Android TV. Slim and streamlined - with a slim profile this TV blends seamlessly into your living space. It’s perfect for wall mounting while its discreet, narrow bezel puts your focus firmly on the picture, not the frame.',
    price: 25.0,
    item_image_file_name: "189770-L-LO.jpg",
    created_at: "2017-05-09 12:26:24"
  },

  {
    seller_id: 2,
    name: 'MacBook Pro 13" 256GB with Touch Bar Space Grey',
    description: 'The new MacBook Pro is faster and more powerful than before, yet remarkably thinner and lighter1. It has the brightest, most colourful Mac notebook display ever. And it introduces the revolutionary Touch Bar — a Multi-Touch–enabled strip of glass built into the keyboard for instant access to what you want to do, when you want to do it. The new MacBook Pro is built on groundbreaking ideas. And it’s ready for yours.',
    price: 15.0,
    item_image_file_name: "MBP13BESG_macbook_pro_13_256gb_with_touch_bar_space_grey.jpg",
    created_at: "2017-05-10 12:26:24"
  },

  {
    seller_id: 4,
    name: 'Merge Corner Workstation',
    description: 'The Merge Corner Workstation provides plenty of storage and desktop space. It comes with built in drawers for your stationery items and your filing plus a cupboard to organise your loose item',
    price: 10.0,
    item_image_file_name: "JBMERGECWS_j_burrows_merge_corner_workstation_silver.jpg",
    created_at: "2017-05-11 12:26:24"
  },

  {
    seller_id: 4,
    name: 'MakerBot Replicator 3D Printer',
    description: 'The MakerBot Replicator 3D Printer is designed to streamline and enhance your model making process. It comes with impressive features such as an onboard camera for monitoring your print, a 3.5 inch full colour LCD display for easy operation and a range of connectivity options to suit your needs.',
    price: 50.0,
    item_image_file_name: "TMMAKE5DSK_makerbot_replicator_desktop_3d_printer_5th_generation.jpg",
    created_at: "2017-05-13 12:26:24"
  },

  {
    seller_id: 2,
    name: 'Jordan Retro 11 - Men\'s, Size 10.5',
    description: 'The Jordan Retro 11 is a retro version of the top-performing shoe that helped MJ deliver a 72-win season, his fourth ring and an All-Star/Finals MVP sweep. It\'s constructed with a full-grain leather and sueded upper. It also features a polyurethane midsole with full-length Air-Sole® unit in the forefoot and heel and a solid and clear rubber sole with cylindrical traction pattern. Removable insole. Wt. 14.3 oz.',
    price: 18.5,
    item_image_file_name: "jordanshoes.png",
    created_at: "2017-05-10 12:26:24"
  },

  {
    seller_id: 1,
    name: 'Jordan 6 Rings - Men\'s, Size 11',
    description: 'The Jordan 6 Rings shoe incorporates key features from each shoe that MJ wore while stacking up the championship rings in Chicago. Celebrate the history of Jordan with this hybrid design that takes its cues from six legendary Jordan shoe styles. For Jordan fans and sneakerheads, the 6 Rings is a must-have due to the historic significance the shoe represents. The best of six championship rolled up into one title-worthy Jordan shoe.',
    price: 16.5,
    item_image_file_name: "jordan_6_rings.png",
    created_at: "2017-05-12 12:26:24"
  }
])

Bid.create!([
  { user_id: 1, item_id: 1, created_at: "2017-05-12 13:53:13" },
  { user_id: 2, item_id: 1, created_at: "2017-05-10 09:24:24" },
  { user_id: 4, item_id: 1, created_at: "2017-05-07 10:10:42" },
  { user_id: 5, item_id: 1, created_at: "2017-05-09 11:09:53" },
  { user_id: 6, item_id: 2, created_at: "2017-05-06 13:46:55" },
  { user_id: 2, item_id: 2, created_at: "2017-05-08 21:45:10" },
  { user_id: 3, item_id: 3, created_at: "2017-05-07 20:43:09" },
  { user_id: 4, item_id: 3, created_at: "2017-05-05 14:01:08" },
  { user_id: 5, item_id: 3, created_at: "2017-05-06 11:23:10" },
  { user_id: 1, item_id: 4, created_at: "2017-05-12 22:53:13" },
  { user_id: 3, item_id: 4, created_at: "2017-05-06 09:35:13" },
  { user_id: 4, item_id: 4, created_at: "2017-05-07 10:10:42" },
  { user_id: 5, item_id: 4, created_at: "2017-05-09 15:09:53" },
  { user_id: 6, item_id: 4, created_at: "2017-05-06 13:45:55" }
])
