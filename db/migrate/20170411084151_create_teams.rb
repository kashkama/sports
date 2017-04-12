class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.column :name, :string
      t.column :member, :string
      t.column :points, :integer
      
      t.timestamps
    end
  end
end