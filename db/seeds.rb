# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!([
  { id: 999, email: 'admin@raffler.com', password: 'password' },
  { email: 'merl.howe@autozone-inc.info', password: 'password' },
  { email: 'pabl.moshie@autozone-inc.info', password: 'password' },
  { email: 'snoopdogg311@hotmail.com', password: 'password' },
  { email: 'tony_montana@gina.co', password: 'password' },
  { email: 'mara_partid@progressenergyinc.info', password: 'password' },
  { email: 'finley_doe@diaperstack.com', password: 'password' }
])

Profile.create!([
  { id: 999, user_id: 999, username: 'admin', first_name: 'Admin', last_name: 'Raffler' },
  { user_id: 1, username: 'merlhowe', first_name: 'Merl', last_name: 'Howe' },
  { user_id: 2, username: 'pabl_moshie', first_name: 'Pablo', last_name: 'Moshieman' },
  { user_id: 3, username: 'snoopaloop', first_name: 'Snoop', last_name: 'Dogg' },
  { user_id: 4, username: 'tony_montana', first_name: 'Tony', last_name: 'Montana' },
  { user_id: 5, username: 'mara_partid', first_name: 'Mara', last_name: 'Partid' },
  { user_id: 6, username: 'finley_doe', first_name: 'Finley', last_name: 'Doe' }
])

Seller.create!([
  { id: 999, user_id: 999, seller_rating: 10 },
  { user_id: 1, seller_rating: 8 },
  { user_id: 1, seller_rating: 9 }
])

Item.create!([
  { seller_id: 999, name: 'Apple iPhone 7 Plus', description: 'Available in jet black1, black, silver, gold, rose gold and (PRODUCT)RED™2, iPhone 7 Plus features all-new 12-megapixel wide-angle and telephoto cameras; splash, water and dust resistance; an A10 Fusion chip; a new Retina HD display with wide colour; stereo speakers; and iOS 10.', price: 10.0, item_image_file_name: "IP7P128BL_iphone_7_plus_128gb_jet_black.jpg" },

  { seller_id: 1, name: "iPad Pro 9.7\" WiFi 128GB Gold", description: 'iPad Pro is more than the next generation of iPad — it’s an uncompromising vision of personal computing for the modern world. It puts incredible power that leaps past most portable PCs at your fingertips. It makes even complex work as natural as touching, swiping or writing with a pencil. And whether you choose the 12.9-inch model or the 9.7-inch model, iPad Pro is more capable, versatile and portable than anything that’s come before. In a word, super.', price: 8.0, item_image_file_name: "IPR97W128D_B_ipad_pro_9_7_wifi_128gb_gold.jpg" },

  { seller_id: 1, name: 'Sony X7000D 49" 4K UHD HDR Android Smart LCD LED TV', description: 'Discover the amazing world of Sony 4K HDR
It’s the complete home entertainment experience. Discover brilliant Sony 4K HDR picture quality plus a world of movies, TV shows, apps and more with Android TV. Slim and streamlined - with a slim profile this TV blends seamlessly into your living space. It’s perfect for wall mounting while its discreet, narrow bezel puts your focus firmly on the picture, not the frame.', price: 6.0, item_image_file_name: "189770-L-LO.jpg" },

  { seller_id: 2, name: 'MacBook Pro 13" 256GB with Touch Bar Space Grey', description: 'The new MacBook Pro is faster and more powerful than before, yet remarkably thinner and lighter1. It has the brightest, most colourful Mac notebook display ever. And it introduces the revolutionary Touch Bar — a Multi-Touch–enabled strip of glass built into the keyboard for instant access to what you want to do, when you want to do it. The new MacBook Pro is built on groundbreaking ideas. And it’s ready for yours.', price: 10.0, item_image_file_name: "MBP13BESG_macbook_pro_13_256gb_with_touch_bar_space_grey.jpg" },

  { seller_id: 2, name: 'Merge Corner Workstation', description: 'The Merge Corner Workstation provides plenty of storage and desktop space. It comes with built in drawers for your stationery items and your filing plus a cupboard to organise your loose item', price: 4.0, item_image_file_name: "JBMERGECWS_j_burrows_merge_corner_workstation_silver.jpg" },

  { seller_id: 999, name: 'MakerBot Replicator 3D Printer', description: 'The MakerBot Replicator 3D Printer is designed to streamline and enhance your model making process. It comes with impressive features such as an onboard camera for monitoring your print, a 3.5 inch full colour LCD display for easy operation and a range of connectivity options to suit your needs.', price: 12.0, item_image_file_name: "TMMAKE5DSK_makerbot_replicator_desktop_3d_printer_5th_generation.jpg" }
])
