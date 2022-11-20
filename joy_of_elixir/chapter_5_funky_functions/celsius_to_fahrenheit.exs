c_to_f = fn (c) -> c * 1.8 + 32 end

IO.puts("Celsius to fahrenheit: #{c_to_f.(40)}")

f_to_c = fn (f) -> Float.ceil((f - 32) / 1.8, 2) end

IO.puts("Fahrenheit to Celsius: #{f_to_c.(40)}")

