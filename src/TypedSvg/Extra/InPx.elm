module TypedSvg.Extra.InPx exposing (centeredImage)

{-| Typed SVG elements that default to `px` units


# Helpers

@docs centeredImage

-}

import TypedSvg exposing (image)
import TypedSvg.Attributes exposing (xlinkHref)
import TypedSvg.Attributes.InPx exposing (height, width, x, y)
import TypedSvg.Core exposing (Svg)


{-| Centers an image (png, svg, etc.) on the given x, y coordinate
-}
centeredImage : String -> Float -> Float -> Float -> Float -> Svg msg
centeredImage href w_ h_ x_ y_ =
    image
        [ x (x_ - w_ / 2)
        , y (y_ - h_ / 2)
        , width w_
        , height h_
        , xlinkHref href
        ]
        []
