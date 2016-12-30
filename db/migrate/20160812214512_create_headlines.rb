class CreateHeadlines < ActiveRecord::Migration[5.0]
  def change
    create_table :headlines do |t|
      t.string :title

      t.timestamps
    end
  end
end
