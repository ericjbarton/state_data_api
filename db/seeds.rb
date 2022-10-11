require "csv"

all = []
CSV.foreach(Rails.root.join("lib/tasks/seed_csv/state_data.csv"), headers: true) do |row|
  state = State.new({
    state: row["state"],
    median_household_income: row["median_household_income"],
    share_unemployed_seasonal: row["share_unemployed_seasonal"],
    share_population_in_metro_areas: row["share_population_in_metro_areas"],
    share_population_with_high_school_degree: row["share_population_with_high_school_degree"],
  })
  all << state
end

index = 0
CSV.foreach(Rails.root.join("lib/tasks/seed_csv/abbreviations.csv"), headers: true) do |row|
  all[index]["code"] = row["Code"]
  all[index].save
  index += 1
end

# states["code"] << abbreviations["code"]
