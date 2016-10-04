class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         validates_presence_of :email, :first_name, :last_name

         acts_as_messageable

 def mailboxer_name
  self.first_name
 end

 def mailboxer_email(object)
  self.email
 end
end
