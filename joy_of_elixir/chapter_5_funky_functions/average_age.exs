# Make a function which takes two maps
#with "age" keys in them and returns
#the average age.

average = fn (%{"age" => age_1}, %{"age" => age_2}) -> (age_1 + age_2) / 2 end
IO.puts("Average age of Harry 30 and David 20 is #{average.(%{"age" => 30}, %{"age" => 20})}")