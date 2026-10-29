module Counter exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)


-- MODEL

type alias Model =
    Int


-- UPDATE

type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


-- VIEW

view : Model -> Html Msg
view model =
    div
        [ style "display" "flex"
        , style "flex-direction" "column"
        , style "align-items" "center"
        , style "gap" "12px"
        , style "font-family" "sans-serif"
        , style "padding" "40px"
        ]
        [ button
            [ onClick Decrement
            , style "font-size" "20px"
            , style "width" "48px"
            , style "height" "48px"
            , style "border-radius" "8px"
            , style "border" "none"
            , style "background-color" "#e74c3c"
            , style "color" "white"
            , style "cursor" "pointer"
            ]
            [ text "-" ]
        , div
            [ style "font-size" "32px"
            , style "font-weight" "bold"
            , style "min-width" "80px"
            , style "text-align" "center"
            ]
            [ text (String.fromInt model) ]
        , button
            [ onClick Increment
            , style "font-size" "20px"
            , style "width" "48px"
            , style "height" "48px"
            , style "border-radius" "8px"
            , style "border" "none"
            , style "background-color" "#2ecc71"
            , style "color" "white"
            , style "cursor" "pointer"
            ]
            [ text "+" ]
        ]


main =
    Browser.sandbox { init = 0, update = update, view = view }
