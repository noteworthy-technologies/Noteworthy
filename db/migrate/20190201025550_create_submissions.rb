class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.string :title
      t.text :content
      t.string :url

      t.timestamps
    end
  end
end
