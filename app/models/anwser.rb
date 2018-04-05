class Anwser < ApplicationRecord
    validates_presence_of :content, :question, :user

    belongs_to :question
    belongs_to :user
    has_many :votes
end
