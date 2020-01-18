class AddImgurlToScenarios < ActiveRecord::Migration[5.2]
  def change
    add_column :scenarios, :imgurl, :string
  end
end
