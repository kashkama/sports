class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.column :name, :string
      t.column :members, :string, array: true, default: []
      t.column :points, :integer
      t.column :win, :integer
      t.column :loss, :integer
      t.column :sport_id, :integer

      t.timestamps
    end
  end
end
