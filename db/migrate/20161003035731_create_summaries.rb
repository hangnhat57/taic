class CreateSummaries < ActiveRecord::Migration[5.0]
  def change
    create_table :summaries do |t|
      t.references :customer, foreign_key: true
      t.string :LiscenseID
      t.string :Product
      t.float :Version
      t.integer :Amount
      t.string :Username
      t.string :Hostname
      t.datetime :StartTime
      t.datetime :EndTime
      t.string :Duration_hours
      t.string :Duration_second
      t.timestamps
    end
  end
end
