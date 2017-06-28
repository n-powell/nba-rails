class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.column :name, :string
      t.column :city, :string

      t.column :wins, :integer

      t.timestamps
    end
  end
end
