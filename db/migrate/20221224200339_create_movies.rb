class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.text :summary
      t.string :director
      t.integer :release_date
      t.boolean :would_watch_again

      t.timestamps
    end
  end
end
