class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :mic_name
      t.string :address
      t.datetime :date_of_show

      t.timestamps
    end
  end
end
