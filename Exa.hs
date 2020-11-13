main = do 
    fecha 
fecha = do 
    putStrLn "Ingresa tu día"
    d <- getLine
    let dInt = read d :: Int
    dia dInt
dia n = do 
    if (n > 0 && n <=28)
        then
            mes
        else if (n > 0 && n <31)
            then 
                mes2
            else if (n> 0 && n < 32)
                then 
                    mes3
                else do
                    putStrLn "***************************************"
                    putStrLn "Datos ingresados incorrectamente"
                    putStrLn "Vuelve a ingresar tu día de nacimiento [1-31]"
                    fecha
mes = do 
    putStrLn "**************************************"
    putStrLn "Ingresa tu mes de nacimiento"
    m <- getLine
    let mInt = read m :: Int
    if (mInt == 2) 
        then 
            mes28 2
        else if (mInt == 1 && mInt <=12   ) 
            then 
                mes30 mInt 
            else 
                mes30 mInt
mes28 n = do
    case n of 
        2 -> putStrLn "Naciste en Febrero y tu mes tiene 28 días"
mincorrecto = do
    putStrLn "*************************************"
    putStrLn "Por favor vuelve a teclear tu mes de nacimiento [1-12]"
    mes
mes2 = do 
    putStrLn "Ingresa tu mes de nacimiento"
    m <- getLine
    let mInt = read m :: Int
    mes30 mInt

mes30 n = do 
    case n of 
        1 -> mes31 1 
        2 -> febin
        3 -> mes31 3 
        4 -> putStrLn "Naciste en Abril y tu mes tiene 30 días"
        5 -> mes31 5 
        6 -> putStrLn "Naciste en Junio y tu mes tiene 30 días"
        7 -> mes31 7 
        8 -> mes31 8 
        9-> putStrLn "Naciste en Septiembre y tu mes tiene 30 días"
        10 -> mes31 10 
        11 -> putStrLn "Naciste en Noviembre y tu mes tiene 30 días"
        12 -> mes31 12 
        _ -> mincorrecto
febin = do 
    putStrLn "***********************************"
    putStrLn "Recuerda que Febrero solo tiene 28 días"
    putStrLn "Vuelve a teclear tu mes "
    mes2
mes3 = do 
    putStrLn "*******************************************"
    putStrLn "Ingresa tu mes de nacimiento"
    m <- getLine
    let mInt = read m :: Int
    mes31 mInt
mes31 n = do 
    case n of 
        1 -> putStrLn "Naciste en Enero y tu mes tiene 31 días"
        2 -> febin
        3-> putStrLn "Naciste en Marzo y tu mes tiene 31 días"
        4 -> mes30 4
        5 -> putStrLn "Naciste en Mayo y tu mes tiene 31 días"
        6 -> mes30 6
        7 -> putStrLn "Naciste en Julio y tu mes tiene 31 días"
        8 -> putStrLn "Naciste en Agosto y tu mes tiene 31 días"
        9 -> mes30 9
        10 -> putStrLn "Naciste en Octubre y tu mes tiene 31 días"
        12 -> putStrLn "Naciste en Diciembre y tu mes tiene 31 días"
        _ -> mincorrecto
        