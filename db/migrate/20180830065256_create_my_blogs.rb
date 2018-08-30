class CreateMyBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :my_blogs do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
