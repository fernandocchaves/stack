class CreateAnwsers < ActiveRecord::Migration[5.0]
  def change
    create_table :anwsers do |t|
      t.text :content

      t.timestamps
    end
  end
end
