# Locomotive Docs



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

