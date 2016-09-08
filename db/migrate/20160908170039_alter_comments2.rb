class AlterComments2 < ActiveRecord::Migration[5.0]
  def change
    change_table :comments do |t|
      t.integer :user_id
      t.remove :sentence_id
    end
  end
end
