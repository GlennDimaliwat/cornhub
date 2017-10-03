class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :year_released
      t.string :genre

      t.timestamps
    end
  end
end
