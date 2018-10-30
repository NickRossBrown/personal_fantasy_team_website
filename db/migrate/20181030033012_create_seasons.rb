class CreateSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :seasons do |t|
      t.column :year, :string
      t.column :title, :string
      t.column :description, :string
      t.timestamps
    end
  end
end
