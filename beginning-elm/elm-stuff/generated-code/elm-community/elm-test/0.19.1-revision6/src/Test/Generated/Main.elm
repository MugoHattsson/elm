module Test.Generated.Main exposing (main)

import FuzzTests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    Test.Runner.Node.run
        { runs = 100
        , report = ConsoleReport UseColor
        , seed = 99134264568150
        , processes = 4
        , globs =
            [ "tests/FuzzTests.elm"
            ]
        , paths =
            [ "/home/hugo/Documents/prog/elm/beginning-elm/tests/FuzzTests.elm"
            ]
        }
        [ ( "FuzzTests"
          , [ Test.Runner.Node.check FuzzTests.addOneTests
            , Test.Runner.Node.check FuzzTests.addTests
            , Test.Runner.Node.check FuzzTests.flipTests
            , Test.Runner.Node.check FuzzTests.multiplyFloatTests
            , Test.Runner.Node.check FuzzTests.pizzaLeftTests
            , Test.Runner.Node.check FuzzTests.stringTests
            ]
          )
        ]