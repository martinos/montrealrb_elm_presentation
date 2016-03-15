# Presentation

## What is Elm

- Functionnal programming language in you browser
- Uses Functional Reactive Programing
- 

# What's great about Elm
- No runtime errors
- Ultrafast feedback feedback loop

# What I like about elm

- Functional
- Inferred types
- No runtime error
- Semantic version enforced on comminity libraries
- Time traveling debugger


## elm package

    elm package diff evancz/elm-html 3.0.0 4.0.2

```
Comparing evancz/elm-html 3.0.0 to 4.0.2...
This is a MAJOR change.

------ Changes to module Html.Attributes - MAJOR ------

    Removed:
        boolProperty : String -> Bool -> Attribute
        stringProperty : String -> String -> Attribute


------ Changes to module Html.Events - MINOR ------

    Added:
        type alias Options =
            { stopPropagation : Bool, preventDefault : Bool }
        defaultOptions : Html.Events.Options
        onWithOptions : String -> Html.Events.Options -> Json.Decode.Decoder a -> (a -> Signal.Message) -> Html.Attribute
```

## What should I talk about

- How do we use elm . Elm.embed()

## Where Elm fall short
- Some stuff is not baked in: (set focus )
- Javascript Interop is a bit painful


## Tools

### elm-format

- Format your source code for you.
- elm reactor
- elm live

## Great resources

- Pragmatic Studio screencast



#### Don't forget to bring water
