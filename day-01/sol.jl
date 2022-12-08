input = read("input.txt", String)

total_calories = split(input, "\n\n") .|> split .|> r -> sum(parse.(Int, r))

partialsort!(total_calories, 1:3, rev=true)

solution1 = total_calories[1]
solution2 = sum(total_calories[1:3])

@show solution1, solution2;