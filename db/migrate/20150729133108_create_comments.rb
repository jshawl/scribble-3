class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text_body
      t.string :photo_url
      t.string :author
      t.string :date_created
      t.references :post, index: true, foreign_key: true
    end
  end
end
