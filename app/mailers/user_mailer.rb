class UserMailer < ApplicationMailer
 default from: 'postmaster@sandbox297954caf0144383a8e35855a9618348.mailgun.org'

 def send_winner_email(winner)
   @winner = winner
   @url  = 'http://localhost:3000/users/sign_in'
   mail(to: 'rafflernotifications@gmail.com', subject: "Congratulations #{@winner}! You\'ve won a draw on Raffler!")
 end

 def send_seller_notification(user)
   @user = user
   @url  = 'http://localhost:3000/users/sign_in'
   mail(to: 'rafflernotifications@gmail.com', subject: "#{@user.email} has won your item on Raffler!")
 end

 def send_bid_receipt(bidder, amount)
   @bidder = bidder
   @amount = amount
   @url  = 'http://localhost:3000/users/sign_in'
   mail(to: 'rafflernotifications@gmail.com', subject: "#Thank you for your purchase on Raffler {@bidder.email}!")
 end
end
