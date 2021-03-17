module Playground exposing (..)

import Html exposing (Html, text)
import MyList exposing (..)


escapeEarth : Float -> Float -> String -> String
escapeEarth myVelocity mySpeed fuelStatus =
    let
        escapeVelocityInKmPerSec =
            11.186

        orbitalSpeedInKmPerSec =
            7.67

        whereToLand =
            if fuelStatus == "low" then
                "Land on droneship"

            else
                "Land on launchpad"
    in
    if myVelocity > escapeVelocityInKmPerSec then
        "Godspeed"

    else if mySpeed == orbitalSpeedInKmPerSec then
        "Stay in orbit"

    else
        whereToLand


computeSpeed distance time =
    distance / time


computeTime startTime endTime =
    endTime - startTime


add a b =
    a + b


mult c d =
    c * d


div e f =
    e / f


weekDay dayInNumber =
    case dayInNumber of
        0 ->
            "Monday"

        1 ->
            "Tuesday"

        2 ->
            "Wednesday"

        3 ->
            "Thursday"

        4 ->
            "Friday"

        5 ->
            "Saturday"

        6 ->
            "Sunday"

        _ ->
            "Unknown day"


revelation =
    """
    It became very clear to me sitting out there today
    that every decision I've made in my entire life has
    been wrong. My life is the complete "opposite" of
    everything I want it to be. Every instinct I have,
    in every aspect of life, be it something to wear,
    something to eat - it's all been wrong.
    """


scoreMultiplier =
    2


highestScores =
    [ 316, 320, 312, 370, 337, 318, 314 ]


doubleScores scores =
    List.map (\x -> x * scoreMultiplier) scores


list1 : MyList a
list1 =
    Empty


list2 : MyList number
list2 =
    Node 9 Empty


main =
    isEmpty list1
        |> Debug.toString
        |> text



{- escapeEarth 10 6.7 "low"
   |> Html.text
-}
{- div 30 10
   |> mult 10
   |> add 5
   |> String.fromFloat
   |> Html.text
-}
-- Html.text (String.fromFloat (add 5 (mult 10 (div 30 10))))
--     Html.text (escapeEarth 11 (computeSpeed 7.67 (computeTime 2 3)))
{- computeTime 2 3
   |> computeSpeed 7.67
   |> escapeEarth 11
   |> Html.text
-}
