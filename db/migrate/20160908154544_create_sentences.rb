class CreateSentences < ActiveRecord::Migration[5.0]
  def change
    create_table :sentences do |t|
      t.string :content
      t.string :image
      t.integer :user_id
      t.integer :story_id
      t.timestamps
    end
  end
end
