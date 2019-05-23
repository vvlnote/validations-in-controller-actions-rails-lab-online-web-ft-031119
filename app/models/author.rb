class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqu
end
