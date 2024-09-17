class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable,omniauth_providers: [:github]

  def to_s
    email
  end
      
  after_create do
    customer = Stripe::Customer.create(email: self.email)
    update(stripe_customer_id: customer.id)
    redirect_to root_path
  end
  # app/models/user.rb

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    unless user
        user = User.create(
           email: data['email'],
           password: Devise.friendly_token[0,20]
        )
    end
    user
  end
end
