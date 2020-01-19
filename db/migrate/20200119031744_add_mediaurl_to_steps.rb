class AddMediaurlToSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :steps, :mediaurl, :string
  end
end
