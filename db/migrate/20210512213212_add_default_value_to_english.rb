class AddDefaultValueToEnglish < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :english, 'boolean USING CAST(english AS boolean)'
    change_column_default :movies, :english, true
  end
end
