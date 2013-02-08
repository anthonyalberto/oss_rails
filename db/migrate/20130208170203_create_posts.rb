class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.boolean :public

      t.timestamps
    end
  end
end
