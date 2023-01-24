class CreateMochibes < ActiveRecord::Migration[6.1]
  def change
    create_table :mochibes do |t|
      t.string :title
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
