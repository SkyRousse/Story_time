class AlterComments < ActiveRecord::Migration[5.0]
  def change
    change_table :comments do |t|
      t.remove :user_id
      t.remove :story_id
      t.references :commentable, polymorphic: true, index: true
    end
  end
end
