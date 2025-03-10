module Vendas where

import System.IO (stdout, hSetBuffering, BufferMode(NoBuffering))

valorTotal :: Double -> Double -> Double
valorTotal morangos maçãs = tmorangos + tmaças

  where
    tmorangos
      | morangos <= 5 = morangos*8.5
      | morangos > 5 = morangos*7.2

    tmaças
      | maçãs >= 5 = maçãs * 4.75
      | maçãs < 5 = maçãs * 5.25



main :: IO ()
main = do
  putStrLn("Digite a quantidade de Morangos (em kg): ")
  morangos <- readLn
  putStrLn("Digite a quantidade de Maçãs (em kg): ")
  maçãs <- readLn

  let valor = valorTotal morangos maçãs
  if valor < 0
    then
    putStrLn("Entrada inválida")
    else putStrLn("O valor total da compra é R$ " ++ show(valor))
