class Question < ApplicationRecord
    validates_presence_of :title, :content, :user

    belongs_to :user
    has_many :anwsers

    scope :my_questions, -> { order('questions.created_at DESC').limit(3) }
end
