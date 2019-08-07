class Slideshow < ApplicationRecord
  has_one_attached :image


  rails_admin do
    create do
      field :image
      field :title
      field :caption
    end

    edit do
      field :image
      field :title
      field :caption
    end
    show do
      field :image
      field :title
      field :caption
    end
    list do
      field :image
      field :title
      field :caption
    end
  end


end
