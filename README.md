## What is Raffler?

A marketplace where you can potentially buy something for a lot, lot less.

### Project resources
The live version of the project can be seen [here](http://raffler-project.herokuapp.com/)

For a general outline on how the system works, see this [infographic](https://1drv.ms/p/s!AtM30fNCNt04mhfA-JqnUmBgtnfK)

The development outline for this project can be found on this Trello [board](https://trello.com/b/GtGdDZ9l/raffler)

---

Gems used in this project:
- `gem 'devise'`
- `gem 'figaro'`
- `gem 'stripe'`
- `gem "paperclip", "~> 5.0.0"`
- `gem 'aws-sdk', '~> 2.3'`
- `gem 'delayed_job_active_record'`
- `gem 'bootstrap-sass'`

This project is built around a 2-sided marketplace structure. Users can play the role of a buyer(bidder) or a seller. There is also an admin user that has all the site's functionality exposed only for that particular user.
