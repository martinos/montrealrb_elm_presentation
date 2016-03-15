module Main (..) where

import Html exposing (..)
import Html.Events exposing (..)
import StartApp.Simple
import ViewHelper exposing (..)


initialModel =
  [ "Ann", "Bob" ]
    |> update (Add "Jose")
    |> update (Add "Martin")


main =
  StartApp.Simple.start { model = initialModel, update = update, view = view }


type Action
  = Add String
  | Pop


update action model =
  case action of
    Add user ->
      (user :: model)

    Pop ->
      model |> List.tail |> Maybe.withDefault [ "undefined is not a function" ]


view appAddress model =
  div
    []
    [ label
        []
        [ text "Name"
        , input [ onChange appAddress Add ] []
        , button [ onClick appAddress Pop ] [ text "Pop" ]
        ]
    , ul
        []
        (model |> List.map userHtml)
    ]


userHtml : String -> Html
userHtml user =
  li [] [ text user ]
