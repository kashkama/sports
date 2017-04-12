class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.column :team1, :string
      t.column :team2, :string
      t.column :date, :timestamp

      t.timestamps
    end
  end
end
