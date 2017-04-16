class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :leagueGame
      t.string :home
      t.string :homeAbr
      t.string :away
      t.string :awayAbr
      t.string :venue
      t.string :prettyDate
      t.string :homeLogo
      t.string :homeLogoLarge
      t.string :awayLogo
      t.string :awayLogoLarge
      t.date :date

      t.timestamps
    end
  end
end
