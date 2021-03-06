# == Schema Information
#
# Table name: questions
#
#  id      :bigint(8)        not null, primary key
#  poll_id :integer          not null
#  text    :text
#

class Question < ApplicationRecord
  validates :poll_id, presence: true

  belongs_to :poll, 
    class_name: :Poll,
    foreign_key: :poll_id,
    primary_key: :id

  has_many :answer_choices,
    class_name: :AnswerChoice,
    foreign_key: :answer_choice_id,
    primary_key: :id 

  has_many :responses,
    through: :answer_choices,
    source: :question
end 
