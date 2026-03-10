import System.CPUTime

gcdE :: Integer -> Integer -> Integer
gcdE a 0 = a
gcdE a b = gcdE b (mod a b)

main = do
    start <- getCPUTime
    
    let a = 987654321
    let b = 123456789
    let resultado = gcdE a b

    end <- getCPUTime

    let tiempo = fromIntegral (end - start) / (10^12)

    putStrLn "Haskell (declarativo)"
    putStrLn ("MCD(" ++ show a ++ "," ++ show b ++ ") = " ++ show resultado)
    putStrLn ("Tiempo: " ++ show tiempo ++ " segundos")
