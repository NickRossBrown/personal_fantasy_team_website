class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.column :name, :string
      t.column :title, :string
      t.column :description, :string
      t.column :number_of_wins, :int
      t.column :number_of_playoffs, :int
    end
  end
end
