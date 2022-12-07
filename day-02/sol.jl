parserow(r) = only.(split(r, " ")) - ['A', 'X']
games = parserow.(readlines("input.txt"))

score1(f, s) = 1 + s + 3mod(s - f + 1, 3)
score2(f, s) = 1 + 3s + mod(f + s - 1, 3)

solution1 = sum(Base.splat(score1), games)
solution2 = sum(Base.splat(score2), games)

@show (solution1, solution2)
