import Test.Hspec
import Control.Exception (evaluate)

import Lib

main :: IO ()
main = hspec $ do
    describe "Lib" $ do
        describe "parseLine" $ do
            it "should parse '+10' into Integer 10" $ do
                parseLine "+10" `shouldBe` (10 :: Integer)
            it "should parse '-10' into Integer -10" $ do
                parseLine "-10" `shouldBe` ((-10) :: Integer)
