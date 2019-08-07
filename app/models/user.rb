class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable


  rails_admin do
    create do
      field :email
      field :password
    end

    edit do
      field :email
      field :password
    end
    show do
      field :email
      field :password
    end
    list do
      field :email
      field :created_at
    end
  end


end
