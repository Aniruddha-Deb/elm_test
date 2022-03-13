{- 
 - what do I want to make?
 - Hmm. I have no idea. What are good beginner elm projects? 
 -
 - How about reading from a CSV file and writing some data to the webpage? Will
 - be a good check on how elm works and file loading and stuff, required for 
 - the project finally.  
 - 
 -}

-- three dots allow us to expose all the functions in this module
module Main exposing (..) 

import Browser
import Html exposing (..)
import Html.Events exposing (onClick)

main =
  Browser.sandbox {init = init, update = update, model = model}

-- MODEL

type alias Model = {
  code: String,
  name: String,
  credits: Float,
  credit_structure: String,
  description: String  
}

init: Model
init =
  {code: "NONE", name: "NONE", credits: 0, credit_structure: "0-0-0", description: "NONE"}

-- UPDATE

type Msg = Update of String

update: Msg -> Model 
update (Update code)  =
  -- fetch file
  -- fetch course from file
  -- update the model

-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ div [] 
      [ input [ placeholder "Course Name", value model.code ]
      , button [ onClick Update ] [ text "Get Course Info" ]
      ]
    , div [] 
      [ label [ value model.code ]
      , label [ value model.name ]
      , label [ value String.fromFloat model.credits ]
      , label [ value model.credit_structure ]
      , label [ value model.description ]
      ]
    ]