#Make a function which returns the number of
#seconds in the specified amount of days.
#For example, seconds.(2) should tell us
# how many seconds
#there are in 2 days.

seconds = fn (days) -> days * 60 * 60 * 24 end

IO.puts("Seconds in 2 days: #{seconds.(2)}")
