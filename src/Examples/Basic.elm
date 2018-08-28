module Examples.Basic exposing (Model, Msg(..), view)

import Browser
import Html exposing (Html)
import TypedSvg exposing (circle, svg)
import TypedSvg.Attributes exposing (cx, cy, fill, height, r, stroke, strokeWidth, viewBox, width)
import TypedSvg.Color as Color
import TypedSvg.Types exposing (px)


main =
    Browser.sandbox { init = 0, update = update, view = view }


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    model


type alias Model =
    Int


view : Model -> Html Msg
view model =
    Html.div []
        [ Html.p [] [ Html.text "hello" ]
        , svg
            [ viewBox 0 0 200 400
            , height (px 400)
            , width (px 200)
            ]
            [ circle
                [ cx (px 50)
                , cy (px 50)
                , r (px 30)
                , fill <| Color.rgba 255 60 0 1 -- black
                , strokeWidth (px 2)
                , stroke <| Color.rgba 90 60 60 1
                ]
                []
            ]
        ]
