class CreateSports < ActiveRecord::Migration[5.0]
  def change
    create_table :sports do |t|
      t.column :name, :string
      t.column :image, :string

      t.timestamps
    end
  end
end
