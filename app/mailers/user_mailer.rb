class UserMailer < ApplicationMailer
 default from: 'postmaster@sandbox297954caf0144383a8e35855a9618348.mailgun.org'

 def send_winner_email(item, winner)
   @winner = winner
   @item = item
   @url  = 'http://localhost:3000/users/sign_in'
   mail(to: 'rafflernotifications@gmail.com', subject: "Congratulations #{@winner.profile.first_name}! You\'ve won a draw on Raffler!")
 end

 def send_seller_email(item, winner, draw_total)
   @seller = item.seller
   @item = item
   @winner = winner
   @draw_total = draw_total
   @url  = 'http://localhost:3000/users/sign_in'
   mail(to: 'rafflernotifications@gmail.com', subject: "#{@winner.profile.username} has won your item on Raffler!")
 end

 def send_bid_receipt(bidder, amount, item)
   @bidder = bidder
   @amount = amount
   @item = item
   @url  = 'http://localhost:3000/users/sign_in'
   mail(to: 'rafflernotifications@gmail.com', subject: "#Thank you for your purchase on Raffler #{@bidder.profile.first_name}!")
 end
end
