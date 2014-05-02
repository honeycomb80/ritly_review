class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.text :link
      t.string :random_string

      t.timestamps
    end
  end
end
