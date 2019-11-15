class AddAmountToDoses < ActiveRecord::Migration[5.2]
  def change
    add_column :doses, :amount, :integer
  end
end
