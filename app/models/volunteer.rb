class Volunteer < ApplicationRecord

  has_one_attached :image

  validates :first_name,:last_name,:age,:gender,:blood_group,:address,:profession,:image, presence: true

  validate :custom_validation
  private
  def custom_validation
    if :profession == 'Profession'
      self.errors[:base] << "Custom error message"
    end
  end

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

      field :profession , :enum do
        enum do
          [['Doctor','Doctor'],['Lawyer','Lawyer'],['Engineer','Engineer']]
        end
      end

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

      field :profession , :enum do
        enum do
          [['Doctor','Doctor'],['Lawyer','Lawyer'],['Engineer','Engineer']]
        end
      end

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
