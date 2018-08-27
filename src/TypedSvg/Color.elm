module TypedSvg.Color exposing (Color(..), colorToCssRgb, colorToCssRgba, cssColorString, rgba)


type Color
    = Rgba Float Float Float Float


rgba : Int -> Int -> Int -> Float -> Color
rgba int int2 int3 float =
    Rgba
        (toFloat int)
        (toFloat int2)
        (toFloat int3)
        float


toRgb : Color -> { red : Float, green : Float, blue : Float, alpha : Float }
toRgb color =
    case color of
        Rgba red green blue alpha ->
            { red = red
            , green = green
            , blue = blue
            , alpha = alpha
            }


colorToCssRgb : Color -> String
colorToCssRgb cl =
    let
        { red, green, blue, alpha } =
            toRgb cl
    in
    cssColorString "rgb"
        [ String.fromFloat red
        , String.fromFloat green
        , String.fromFloat blue
        ]


colorToCssRgba : Color -> String
colorToCssRgba cl =
    let
        { red, green, blue, alpha } =
            toRgb cl
    in
    cssColorString "rgb"
        [ String.fromFloat red
        , String.fromFloat green
        , String.fromFloat blue
        , String.fromFloat alpha
        ]


cssColorString : String -> List String -> String
cssColorString kind values =
    kind ++ "(" ++ String.join ", " values ++ ")"
