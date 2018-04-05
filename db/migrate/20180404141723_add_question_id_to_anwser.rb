class AddQuestionIdToAnwser < ActiveRecord::Migration[5.0]
  def change
    add_column :anwsers, :question_id, :integer
  end
end
