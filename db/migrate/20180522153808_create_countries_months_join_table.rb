class CreateCountriesMonthsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :countries, :months do |t|
      # t.index [:country_id, :month_id]
      # t.index [:month_id, :country_id]
    end
  end
end
