{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Calculadora where

import Foundation
import Yesod.Core

getSomaR :: Int -> Int -> Handler Html
getSomaR x y = defaultLayout $ do
    res <- return (show $ x+y)
    [whamlet|
        <p> #{res}
    |]