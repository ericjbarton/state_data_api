require "csv"

CSV.foreach(Rails.root.join("lib/tasks/seed_csv/state_data.csv"), headers: true) do |row|
  State.create({
    state: row["state"],
    median_household_income: row["median_household_income"],
    share_unemployed_seasonal: row["share_unemployed_seasonal"],
    share_population_in_metro_areas: row["share_population_in_metro_areas"],
    share_population_with_high_school_degree: row["share_population_with_high_school_degree"],
  })
end

CSV.foreach(Rails.root.join("lib/tasks/seed_csv/abbreviations.csv"), headers: true) do |row|
  Abbreviation.create({
    state: row["State"],
    abbrev: row["Abbrev"],
    code: row["Code"],
  })
end
