case String.toInt "42" of
    Just number ->
        "Got a number: " ++ String.fromInt number

    Nothing ->
        "That wasn't a number"
