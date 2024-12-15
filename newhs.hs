sumPairs pairs = map (\(x, y) -> x + y) pairs

deleteSpaces :: String -> String
deleteSpaces s=filter (/=' ') s

forall _ []=True
forall f (h:t)|not (f h)=False
			   |otherwise=forall f t
			   
dup l =duph l 1
	where 
			duph [] _=[]
			duph (h:t) c=replicate c h ++ duph t (succ c)
			
andRec :: [Bool] -> Bool
andRec (h:t)|h==True =andRec t 
			|otherwise=False
andHigher :: [Bool]->Bool
andHigher l=foldr (&&) True l