all_rucksacks = readlines("input.txt")

common(rucksacks) = reduce(∩, rucksacks)

priority(letter) = letter - (letter ≥ 'a' ? 'a' - 1 : 'A' - 27) 

only_common_priority = priority ∘ only ∘ common

solution1 = sum(only_common_priority, Iterators.partition.(all_rucksacks, length.(all_rucksacks) .÷ 2))
solution2 = sum(only_common_priority, Iterators.partition(all_rucksacks, 3))

@show (solution1, solution2);
