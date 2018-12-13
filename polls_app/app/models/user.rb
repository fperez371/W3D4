# == Schema Information
#
# Table name: users
#
#  id       :bigint(8)        not null, primary key
#  username :string           not null
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :authored_polls,
    class_name: :poll,
    foreign_key: :author_id,
    primary_key: :id 

  has_many :responses,
    class_name: :response,
    foreign_key: :user_id,
    primary_key: :id

end 
