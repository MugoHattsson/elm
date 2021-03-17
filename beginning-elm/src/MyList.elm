module MyList exposing (MyList(..), isEmpty, sum)


type MyList a
    = Empty
    | Node a (MyList a)


sum : MyList Int -> Int
sum xs =
    case xs of
        Empty ->
            0

        Node x list ->
            x + sum list


isEmpty : MyList a -> Bool
isEmpty xs =
    case xs of
        Empty ->
            True

        _ ->
            False
