class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :leagueGame
      t.string :home
      t.string :away
      t.string :venue
      t.string :date
      t.string :homeLogo
      t.string :awayLogo

      t.timestamps
    end
  end
end
