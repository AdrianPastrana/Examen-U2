main = do 
    exa
exa = do
    putStrLn "Inserta tu día"
    d <- getLine
    let dInt = read d ::Int
    dia dInt 
dia n = do 
    case n of 
        1 -> mes
        2 -> mes
        3 -> mes
        4 -> mes
        5 -> mes
        6 -> mes
        7 -> mes
        8 -> mes
        9 -> mes
        10 -> mes
        11 -> mes
        12 -> mes
        13 -> mes
        14 -> mes
        15 -> mes
        16 -> mes
        17 -> mes
        18 -> mes
        19 -> mes
        20 -> mes
        21-> mes
        22 -> mes
        23 -> mes
        24 -> mes
        25 -> mes
        26 -> mes
        27-> mes
        28 -> mes
        29 -> mes
        30 -> mes
        31 -> mes
        _ -> dincorrecto
dincorrecto = do
    putStrLn "Por favor vuelve a teclear tu día [1-30]"
    exa 
mes = do 
    putStrLn "Ingresa tu mes"
    m <- getLine
    let mInt = read m :: Int
    meses mInt
meses n = do 
    case n of 
        1 -> putStrLn "Naciste en Enero y tu mes tiene 31 días"
        2 -> putStrLn "Naciste en Febrero y tu mes tiene 30 días"
        3-> putStrLn "Naciste en Marzo y tu mes tiene 31 días"
        4 -> putStrLn "Naciste en Abril y tu mes tiene 30 días"
        5 -> putStrLn "Naciste en Mayo y tu mes tiene 31 días"
        6 -> putStrLn "Naciste en Junio y tu mes tiene 30 días"
        7 -> putStrLn "Naciste en Julio y tu mes tiene 31 días"
        8 -> putStrLn "Naciste en Agosto y tu mes tiene 31 días"
        9-> putStrLn "Naciste en Septiembre y tu mes tiene 30 días"
        10 -> putStrLn "Naciste en Octubre y tu mes tiene 31 días"
        11 -> putStrLn "Naciste en Noviembre y tu mes tiene 30 días"
        12 -> putStrLn "Naciste en Diciembre y tu mes tiene 31 días"
        _ -> mincorrecto
mincorrecto = do 
    putStrLn "Por favor vuelve a teclear tu mes [1-12]"
    mes 


         
            
