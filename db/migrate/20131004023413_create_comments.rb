class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter_name
      t.text :message
      t.belongs_to :post

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
