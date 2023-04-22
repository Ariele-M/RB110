munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# select males
   #
# sum ages of males

names = munsters.keys

male_munsters = names.select do |name|
  munsters[name]["gender"] == "male"
end

ages = male_munsters.map do |name|
  munsters[name]["age"]
end

p ages = ages.sum