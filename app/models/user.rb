# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, length: { in: 3..10 }, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 5..10 }
  has_many :posts
  has_many :comments
end
