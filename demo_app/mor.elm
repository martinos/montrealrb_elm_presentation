module Main (..) where

import Html exposing (..)
import Html.Events exposing (..)
import StartApp.Simple
import ViewHelper exposing (..)


model =
  [ "John", "Ann" ]
    |> update (Add "Jose")
    |> update (Add "Alice")


main =
  StartApp.Simple.start { model = model, update = update, view = view }


type Action
  = Add String
  | Pop


update action model =
  case action of
    Add user ->
      (user :: model)

    Pop ->
      model |> List.tail |> Maybe.withDefault [ "undefined function for nil class" ]


view appAddress users =
  div
    []
    [ input [ onChange appAddress Add ] []
    , button [ onClick appAddress Pop ] [ text "Pop" ]
    , ul
        []
        (users |> List.map userView)
    ]


userView user =
  li [] [ text user ]
