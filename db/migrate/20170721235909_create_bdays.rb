class CreateBdays < ActiveRecord::Migration[5.0]
  def change
    create_table :bdays do |t|
      t.string :name
      t.date :fecha

      t.timestamps
    end
  end
end
