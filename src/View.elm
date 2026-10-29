view : RemoteData -> Html Msg
view data =
    case data of
        Loading ->
            text "Loading..."

        Failure message ->
            text ("Oops: " ++ message)

        Success user ->
            text ("Hello, " ++ user.name)
