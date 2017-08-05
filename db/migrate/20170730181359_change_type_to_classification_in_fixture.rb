class ChangeTypeToClassificationInFixture < ActiveRecord::Migration[5.1]
  def change
  	rename_column :Fixtures, :type, :classification
  end
end
