-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Auth.Enum.CacheControlScope exposing (..)

import Json.Decode as Decode exposing (Decoder)


type CacheControlScope
    = Public
    | Private


list : List CacheControlScope
list =
    [ Public, Private ]


decoder : Decoder CacheControlScope
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "PUBLIC" ->
                        Decode.succeed Public

                    "PRIVATE" ->
                        Decode.succeed Private

                    _ ->
                        Decode.fail ("Invalid CacheControlScope type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : CacheControlScope -> String
toString enum =
    case enum of
        Public ->
            "PUBLIC"

        Private ->
            "PRIVATE"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe CacheControlScope
fromString enumString =
    case enumString of
        "PUBLIC" ->
            Just Public

        "PRIVATE" ->
            Just Private

        _ ->
            Nothing
