all_rucksacks = readlines("input.txt")

common(rucksacks) = ∩(rucksacks...)

priority(letter) = letter - (letter ≥ 'a' ? 'a' - 1 : 'A' - 27) 

only_common_priority = priority ∘ only ∘ common

compartments(rucksack) = Iterators.partition(rucksack, length(rucksack) ÷ 2)

solution1 = sum(only_common_priority.(compartments.(all_rucksacks)))

solution2 = sum(only_common_priority.(Iterators.partition(all_rucksacks, 3)))

@show (solution1, solution2);
