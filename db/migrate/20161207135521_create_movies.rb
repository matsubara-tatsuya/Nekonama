class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :room_name
      t.text :detail

      t.timestamps null: false
    end
  end
end
