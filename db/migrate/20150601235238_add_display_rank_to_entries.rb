class AddDisplayRankToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :display_rank, :integer
  end
end
