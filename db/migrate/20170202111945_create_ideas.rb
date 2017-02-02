class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :contents
      t.string :member
      t.text :need
      t.integer :user_id

      t.timestamps
    end
  end
end
