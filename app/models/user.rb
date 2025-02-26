class User < ApplicationRecord
  enum role: { student: 0, teacher: 1 } 
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end