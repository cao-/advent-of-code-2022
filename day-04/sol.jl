regex = r"(\d+)-(\d+),(\d+)-(\d+)"

ranges(r) = (m = parse.(Int, match(regex, r).captures); (m[1]:m[2], m[3]:m[4]))

all_assignment_pairs = ranges.(readlines("input.txt"));

solution1 = count(assignment_pair -> ∩(assignment_pair...) ∈ assignment_pair, all_assignment_pairs)
solution2 = count(assignment_pair -> !isdisjoint(assignment_pair...), all_assignment_pairs)

@show (solution1, solution2);
