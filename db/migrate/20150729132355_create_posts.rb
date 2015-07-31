class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :subject
      t.string :text_body
      t.string :photo_url
      t.string :author
      t.string :date_created
    end
  end
end
