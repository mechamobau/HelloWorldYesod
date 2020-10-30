{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Home where

import Data.Text;

import Foundation
import Yesod.Core

getHomeR :: Handler Html
getHomeR = defaultLayout $ do
    setTitle "Minimal Multifile"
    toWidgetHead [lucius|
        h1 {
            color: red;
        }
    |]
    [whamlet|
        <h1>Bem vindo

        <a href=@{OlaR "Mundo"}>vai lá
    |]

    

getOlaR :: Text -> Handler Html
getOlaR name = defaultLayout $ do 
    toWidgetHead [julius|
        function teste() {
            alert('bem vindo!')
        }
    |]
    [whamlet|
        <p>Olá #{name}
        <button onclick="teste()">OK
    |]