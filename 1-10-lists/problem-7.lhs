> import Prelude

Flatten a nested list structure.

Transform a list, possibly holding lists as elements into a `flat' list by
replacing each list with its elements (recursively).

> data NestedList a = Elem a | List [NestedList a]

> myFlatten :: NestedList a -> [a]
> myFlatten (List []) = []
> myFlatten (Elem x) = [x]
> myFlatten (List (x:xs)) =  (myFlatten x) ++ (myFlatten (List xs))
