<<<<<<< HEAD
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
<img src="https://media.licdn.com/dms/image/v2/D5610AQF8PJ3hw02UOw/image-shrink_800/image-shrink_800/0/1708701304012?e=2147483647&v=beta&t=0y7aLTMElor7xr1ftvazP3b28vvnz2zHHKUhY6XRrU0"/>
* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# InstaShip
# InstaShip
# InstaShip
# InstaShip
# Locomotive
# Locomotive
=======
# Locomotive Docs

<img src="https://salty-coast-45816-cbab611b455b.herokuapp.com/icon.png" width="300px"></img>

## Environment variables
in the file \.env 
you can see all your environment variables for stripe payments

    STRIPE_SECRET_API_KEY="your-stripe-secret-api-key"
    STRIPE_SECRET_LIVE_API_KEY="your-stripe-live-api-key"
    STRIPE_SIGNING_SECRET_KEY="your-stripe-signing-secret"


### Remember:
Do not forget to add your stripe Price Id in \app\controllers\stripe_controller.rb

    def checkout
        @session = Stripe::Checkout::Session.create({
            mode:"subscription",
            success_url: root_url,
            cancel_url: root_url,
            customer: current_user.stripe_customer_id,
            line_items:[{
                price:"stripe-price-id",
                quantity: 1,
            }]
        })
        redirect_to @session.url, status: 303, allow_other_host: true
    end
    
## Stripe initializer

in the file \config\initializers\stripe.rb

    Stripe.api_key = ENV['STRIPE_SECRET_API_KEY']



Remember changing your stripe api key .env variable from STRIPE_SECRET_API_KEY (test) to STRIPE_SECRET_LIVE_API_KEY (live) in production,

>>>>>>> 39a36f63660bdb3d81138deb27ac22c0ddd8ebc3
