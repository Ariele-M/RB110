munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

names = munsters.keys

names.each do |name|
if munsters[name]["age"] <= 17
  munsters[name]["age_group"] = "kid"
elsif munsters[name]["age"] >= 65
  munsters[name]["age_group"] = "senior"
else
  munsters[name]["age_group"] = "adult"
end
end

p munsters