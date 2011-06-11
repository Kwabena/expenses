class CreateExpenses < ActiveRecord::Migration
  def self.up
    create_table :expenses do |t|
      t.string :name
      t.text :note
      t.decimal :amount, :precision => 8, :scale => 2
      t.datetime :time

      t.timestamps
    end
  end

  def self.down
    drop_table :expenses
  end
end
