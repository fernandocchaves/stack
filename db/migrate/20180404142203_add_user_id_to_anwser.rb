class AddUserIdToAnwser < ActiveRecord::Migration[5.0]
  def change
    add_column :anwsers, :user_id, :integer
  end
end
