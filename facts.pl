stronger(paper, rock).
stronger(scissors, paper).
stronger(rock, scissors).

draw(PlayerChoice, ComputerChoice) :-
    PlayerChoice == ComputerChoice.

play(PlayerChoice, ComputerChoice) :-
    write("Enter paper, rock, or scissors: "),
    read(PlayerChoice),
    random_member(ComputerChoice, [paper, rock, scissors]),
    (   draw(PlayerChoice, ComputerChoice) ->
        write("Darn, it was a draw!")
    ;   stronger(PlayerChoice, ComputerChoice) ->
        write("Congratulations, you won!")
    ;   write("Darn, you didn't win...")
    ).
