class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :title
      t.references :user, index: true
      t.string :link

      t.timestamps
    end
  end
end
