class Author < ApplicationRecord
  validates :email, presence: true, uniqueness: true
end
