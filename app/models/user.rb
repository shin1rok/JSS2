class User < ApplicationRecord
  self.abstract_class = true
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :validatable, :confirmable, :lockable, :timeoutable, :trackable
end
