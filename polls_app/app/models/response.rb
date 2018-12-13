# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  user_id          :integer          not null
#  answer_choice_id :integer          not null
#

class Response < ApplicationRecord

  validates :user_id, :answer_choice_id, presence: true
  validate :sibling_responses

  belongs_to :respondent,
    class_name: :User,
    foreign_key: :user_id,
    primary_key: :id

  belongs_to :answer_choice,
    class_name: :AnswerChoice,
    foreign_key: :answer_choice_id,
    primary_key: :id

  has_one :question,
    through: :answer_choice,
    source: :question

    def sibling_responses
      
    end
end 
