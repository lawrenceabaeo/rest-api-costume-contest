class RemoveRankFromEntries < ActiveRecord::Migration
  def change
    remove_column :entries, :rank, :integer
  end
end
