class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: {in: %w()
end
