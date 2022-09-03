module HttpTrigger where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, mkEffectFn1)
import Effect.Class.Console as Console
import Control.Promise (Promise, fromAff)

run :: EffectFn1 String (Promise Unit)
run = mkEffectFn1 \ctx -> do
  Console.log ctx
  fromAff (Console.log "Runningggg")
