datastream = read("input.txt", String)

chars_to_process(n) = first(Iterators.dropwhile(i -> !allunique(datastream[i-n+1:i]), n:length(datastream)))

solution1 = chars_to_process(4)
solution2 = chars_to_process(14)

@show (solution1, solution2);
