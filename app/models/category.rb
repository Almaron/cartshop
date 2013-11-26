class Category < ActiveRecord::Base
  has_many :tags
  belongs_to :section
  has_many :items

  accepts_attributes_for :tags
end
