class Project < ApplicationRecord

has_one_attached :image

    rails_admin do
      create do
        field :image
        field :title
        field :description
        field :time
        field :nop
      end

      edit do
        field :image
        field :title
        field :description
        field :time
        field :nop
      end
      show do
        field :image
        field :title
        field :description
        field :time
        field :nop
      end
      list do
        field :image
        field :title
        field :time
      end
    end

end