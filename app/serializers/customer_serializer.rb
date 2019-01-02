class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :email, :password_digest

  has_many :rentals
  has_many :movies, through: :rentals
end
