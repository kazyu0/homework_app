class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :homeworks, foreign_key: :teacher_id, dependent: :destroy

         enum role: { student: 0, teacher: 1 }


         after_initialize :set_default_role, if: :new_record?

         private
       
         def set_default_role
           self.role ||= :student 
         end
        end       
