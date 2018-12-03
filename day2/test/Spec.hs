import           Test.Hspec

import           Lib

main :: IO ()
main = hspec $ do
    describe "containsTwoRepeats" $ do
        it "should return True if contains 2 repeats" $ do
            containsTwoRepeats "abbcde" `shouldBe` True
        it "should return False if doesn't repeat" $ do
            containsTwoRepeats "abcdef" `shouldBe` False
    describe "containsThreeRepeats" $ do
        it "should return True if contains 3 repeats" $ do
            containsThreeRepeats "bababc" `shouldBe` True
        it "should return False if doesn't repeat" $ do
            containsThreeRepeats "abcdef" `shouldBe` False
    describe "calculateCheckSum" $ do
        it "should return 12 for a list of ids" $ do
            calculateCheckSum ["abcdef", "bababc", "abbcde", "abcccd", "aabcdd", "abcdee", "ababab"] `shouldBe` 12