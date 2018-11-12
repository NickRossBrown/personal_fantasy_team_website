class CreateChampions < ActiveRecord::Migration[5.2]
  def change
    create_table :champions do |t|
      t.string :champion
      t.string :description

      t.timestamps
    end
  end
end
