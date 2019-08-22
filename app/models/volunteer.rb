class Volunteer < ApplicationRecord

  has_one_attached :image

  validates :first_name,:last_name,:age,:gender,:address,:profession,:image, presence: true

  private


  rails_admin do
    create do
      field :image
      field :first_name
      field :last_name
      field :age
      field :gender , :enum do
        enum do
          [['MALE','MALE'],['FEMALE','FEMALE'],['OTHER','OTHER']]
        end
      end
      field :address
      field :contact
      field :email
      field :blood_group , :enum do
        enum do
          [['A+','A+'],['A-','A-'],['B+','B+'],['B-','B-'],['O+','O+'],['O-','O-'],['AB+','AB+'],['AB-','AB-']]
        end
      end

      # field :profession , :enum do
      #   enum do
      #     [['Doctor','Doctor'],['Lawyer','Lawyer'],['Engineer','Engineer']]
      #   end
      # end

      field :profession

      field :description

      field :active

    end

    edit do
      field :image
      field :first_name
      field :last_name
      field :age
      field :gender , :enum do
        enum do
          [['MALE','MALE'],['FEMALE','FEMALE'],['OTHER','OTHER']]
        end
      end
      field :address
      field :contact
      field :email
      field :blood_group , :enum do
        enum do
          [['A+','A+'],['A-','A-'],['B+','B+'],['B-','B-'],['O+','O+'],['O-','O-'],['AB+','AB+'],['AB-','AB-']]
        end
      end
      # field :profession , :enum do
      #   enum do
      #     [['Doctor','Doctor'],['Lawyer','Lawyer'],['Engineer','Engineer']]
      #   end
      # end

      field :profession

      field :description

      field :active

    end
    list do
      field :first_name
      field :last_name
      field :contact
      field :email
      field :active
    end

  end
end
