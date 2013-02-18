class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :comment_id
      t.string :content

      t.timestamps
    end
  end
end
