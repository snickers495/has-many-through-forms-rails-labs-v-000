class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  accepts_nested_attributes_for :user, reject_if: :all_blank
  has_many :comments
  has_many :users, through: :comments


end
