class CreateWeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :weeks do |t|
      t.column :week_number, :int
      t.column :title, :string
      t.column :description, :string
      t.column :season_id, :integer
      t.timestamps
    end
  end
end
