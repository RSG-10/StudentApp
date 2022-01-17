class Studprofile < ApplicationRecord
  belongs_to :studmark
  has_one_attached :image
  validates :age, presence: true ,numericality: true
  validates :email, presence: true ,uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :address, presence: true
  validates :image, presence: true
  validates :mobilenumber,:presence => true,
  :numericality => true,
  :length => { :minimum => 10, :maximum => 10 }

end
