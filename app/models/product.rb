class Product < ActiveRecord::Base
  belongs_to :manufacturer
  has_many :reviews
end
