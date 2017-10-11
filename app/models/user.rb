class User < ApplicationRecord
  validates :name, presence: true
  validates :nickname, allow_blank: true, format: { with: /\w+/ }
  validates :age, numericality: { only_integer: true }
  validates :height, numericality: true
  validates :mobile, format: { with: /\A\d{3}-\d{4}-\d{4}\z/ }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
end
