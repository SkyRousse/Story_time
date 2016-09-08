class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :story_id, default: 0
      t.integer :sentence_id, default: 0
      t.timestamps
    end
  end
end
