class CreateTalks < ActiveRecord::Migration[5.2]
  def change
    create_table :talks do |t|
      t.boolean :is_man
      t.text :content

      t.timestamps
    end
  end
end
