class Homework < ApplicationRecord
  belongs_to :teacher, class_name: "User", foreign_key: "teacher_id"
  validates :title, presence: true
  validates :description, presence: true
  validates :deadline,presence: true
end
