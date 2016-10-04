class Addcolumntosummaries < ActiveRecord::Migration[5.0]
  def change
    add_column :summaries, :month_id, :integer
  end
end
