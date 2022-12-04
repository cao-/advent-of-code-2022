regex = r"(\d+)-(\d+),(\d+)-(\d+)"

ranges(r) = (m = parse.(Int, match(regex, r).captures); (m[1]:m[2], m[3]:m[4]))

all_assignment_pairs = ranges.(readlines("input.txt"));

fully_contain(assignment_pair) = ∩(assignment_pair...) ∈ assignment_pair
overlap(assignment_pair) = !isempty(∩(assignment_pair...))

solution1 = count(fully_contain.(all_assignment_pairs));
solution2 = count(overlap.(all_assignment_pairs));

@show (solution1, solution2)