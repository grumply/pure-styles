{-# language PatternSynonyms, OverloadedStrings, FlexibleInstances, TypeSynonymInstances, TypeFamilies #-}
module Pure.Data.Styles.Orphans where

import Pure.Data.Txt as Txt

import Data.String

elems :: [Txt] -> Txt
elems = Txt.intercalate ","

instance IsString (Txt -> Txt) where
  fromString s = (toTxt s <>)

instance Num (Txt -> Txt) where
  (-) a b = \x -> a x - b x
  (+) a b = \x -> a x + b x
  (*) a b = \x -> a x * b x
  negate a = \x -> negate (a x)
  abs = error "abs not defined for (Txt -> Txt)"
  signum = error "signum not defined for (Txt -> Txt)"
  fromInteger a = \x -> toTxt a <> x

-- Note that css property names will have any spaces removed, 
-- so it is possible to use the `-` to construct property names:
-- 
-- > grid-template-columns => "grid - template - columns"
--   in CSS property names => "grid-template-columns"
instance Num Txt where
  (-) a b = a <> "-" <> b
  (+) a b = a <> "+" <> b
  (*) a b = a <> "*" <> b
  negate x = "-" <> x
  abs = error "abs not defined for Txt"
  signum = error "signum not defined for Txt"
  fromInteger = toTxt

instance Fractional Txt where
  (/) a b = a <> "/" <> b
  recip = error "recip not defined for Txt"
  fromRational = toTxt . (fromRational :: Rational -> Double)

instance Fractional (Txt -> Txt) where
  (/) a b = \x -> a x <> "/" <> b x
  recip =  error "recip not defined for (Txt -> Txt)"
  fromRational a = \x -> toTxt ((fromRational :: Rational -> Double) a) <> x

