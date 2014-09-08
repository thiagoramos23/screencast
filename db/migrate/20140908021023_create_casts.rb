class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.string :title
      t.text :content
      t.string :video_url
      t.integer :user_id
      t.integer :category_id
      t.integer :type
      t.string :code_url

      t.timestamps
    end
  end
end
