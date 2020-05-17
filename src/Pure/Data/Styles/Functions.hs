{-# language OverloadedStrings #-}
module Pure.Data.Styles.Functions where

import Pure.Data.Styles.Orphans
import Pure.Data.Txt as Txt (Txt,replace) 

infixr 4 <<>>
(<<>>) :: Txt -> Txt -> Txt
(<<>>) x y = x <> " " <> y

int :: Integral a => a -> Txt
int = fromIntegral

dec :: Real a => a -> Txt
dec = fromRational . toRational

neg :: Num a => a -> a
neg = negate

per :: Real a => a -> Txt
per = percent

fi :: (Integral a, Num b) => a -> b
fi = fromIntegral

rtf :: (Real a, Fractional b) => a -> b
rtf = realToFrac

rtn :: (Real a,Num b) => a -> b
rtn = fi . (round :: Double -> Int) . rtf

class ToAppendable a where
  toAppendable :: a -> (Txt -> Txt)

instance ToAppendable Integer where
  toAppendable = fi

instance ToAppendable Int where
  toAppendable = fi

instance ToAppendable Double where
  toAppendable = rtf

instance ToAppendable Float where
  toAppendable = rtf

infixl 5 <#>
(<#>) :: ToAppendable a => a -> Txt -> Txt
(<#>) = toAppendable

percent :: Real a => a -> Txt
percent p = (dec p <> per)

mils :: Real a => a -> Txt
mils ms = rtf ms ("ms" :: Txt)

secs :: Real a => a -> Txt
secs s = rtf s ("s" :: Txt)

pxs :: Real a => a -> Txt
pxs ps = rtf ps ("px" :: Txt)

ems :: Real a => a -> Txt
ems es = rtf es ("em" :: Txt)

rems :: Real a => a -> Txt
rems rs = rtf rs ("rem" :: Txt)

calc :: Txt -> Txt
calc c = "calc(" <> process c <> ")"
  where
    process = Txt.replace "-" " - "
            . Txt.replace "*" " * "
            . Txt.replace "+" " + "
            . Txt.replace "/" " / "


rect :: (Txt,Txt,Txt,Txt) -> Txt
rect (t,r,b,l) = "rect(" <> elems [t,r,b,l] <> ")"

blur :: Txt -> Txt
blur b = "blur(" <> b <> ")"

brightness :: Txt -> Txt
brightness b = "brightness(" <> b <> ")"

contrast :: Txt -> Txt
contrast b = "contrast(" <> b <> ")"

dropShadow :: Txt -> Txt
dropShadow b = "drop-shadow(" <> b <> ")"

grayscale_ :: Txt -> Txt
grayscale_ b = "grayscale(" <> b <> ")"

hueRotate :: Txt -> Txt
hueRotate b = "hue-rotate(" <> b <> ")"

invert :: Txt -> Txt
invert b = "invert(" <> b <> ")"

opacity_ :: Txt -> Txt
opacity_ b = "opacity(" <> b <> ")"

opac :: Txt -> Txt
opac = opacity_

saturate :: Txt -> Txt
saturate b = "saturate(" <> b <> ")"

sepia :: Txt -> Txt
sepia b = "sepia(" <> b <> ")"

linearGradient :: [Txt] -> Txt
linearGradient g = "linear-gradient(" <> elems g <> ")"

radialGradient :: [Txt] -> Txt
radialGradient g = "radial-gradient(" <> elems g <> ")"

repeatingLinearGradient :: [Txt] -> Txt
repeatingLinearGradient g = "repeating-" <> linearGradient g

repeatingRadialGradient :: [Txt] -> Txt
repeatingRadialGradient g = "repeating-" <> radialGradient g

conicGradient :: [Txt] -> Txt
conicGradient g = "conic-gradient(" <> elems g <> ")"

minmax :: (Txt,Txt) -> Txt
minmax (l,h) = "minmax(" <> elems [l,h] <> ")"

repeat_ :: (Txt,Txt) -> Txt
repeat_ (n,x) = "repeat(" <> elems [n,x] <> ")"

screenMinWidth :: Txt -> Txt
screenMinWidth w = "only screen and (min-width:" <> w <> ")"

allMinWidth :: Txt -> Txt
allMinWidth w = "all and (min-width:" <> w <> ")"

screenMaxWidth :: Txt -> Txt
screenMaxWidth w = "only screen and (max-width:" <> w <> ")"

allMaxWidth :: Txt -> Txt
allMaxWidth w = "all and (max-width:" <> w <> ")"

cubicBezier :: (Txt,Txt,Txt,Txt) -> Txt
cubicBezier (x1,y1,x2,y2) = 
  "cubic-bezier(" <> elems [x1,y1,x2,y2] <> ")"

cubez :: (Txt,Txt,Txt,Txt) -> Txt
cubez = cubicBezier

steps :: (Txt,Txt) -> Txt
steps (n,f) =
  "steps(" <> elems [n,f] <> ")"

-- (scale-x,skew-y,skew-x,scale-y,translate-x,translate-y)
matrix :: (Txt,Txt,Txt,Txt,Txt,Txt) -> Txt
matrix (a,b,c,d,tx,th) = 
  "matrix(" <> elems [a,b,c,d,tx,th] <> ")"

mat :: (Txt,Txt,Txt,Txt,Txt,Txt) -> Txt
mat = matrix

matrix3d :: (Txt,Txt,Txt,Txt
            ,Txt,Txt,Txt,Txt
            ,Txt,Txt,Txt,Txt
            ,Txt,Txt,Txt,Txt
            ) -> Txt
matrix3d (a1,b1,c1,d1,a2,b2,c2,d2,a3,b3,c3,d3,a4,b4,c4,d4) =
  "matrix3d(" <> elems [a1,b1,c1,d1,a2,b2,c2,d2,a3,b3,c3,d3,a4,b4,c4,d4] <> ")"

mat3d :: (Txt,Txt,Txt,Txt
         ,Txt,Txt,Txt,Txt
         ,Txt,Txt,Txt,Txt
         ,Txt,Txt,Txt,Txt
         ) -> Txt
mat3d = matrix3d

perspective_ :: Txt -> Txt
perspective_ p = "perspective(" <> p <> ")"

persp :: Txt -> Txt
persp = perspective_

rotate :: Txt -> Txt
rotate r = "rotate(" <> r <> ")"

rot :: Txt -> Txt
rot = rotate

rotate3d :: (Txt,Txt,Txt,Txt) -> Txt
rotate3d (x,y,z,r) = "rotate3d(" <> elems [x,y,z,r] <> ")"

rot3d :: (Txt,Txt,Txt,Txt) -> Txt
rot3d = rotate3d

rotateX :: Txt -> Txt
rotateX r = "rotateX(" <> r <> ")"

rotX :: Txt -> Txt
rotX = rotateX

rotateY :: Txt -> Txt
rotateY r = "rotateY(" <> r <> ")"

rotY :: Txt -> Txt
rotY = rotateY

rotateZ :: Txt -> Txt
rotateZ r = "rotateZ(" <> r <> ")"

rotZ :: Txt -> Txt
rotZ = rotateZ

scale :: Txt -> Txt
scale x = scale2(x,x)

scale2 :: (Txt,Txt) -> Txt
scale2 (sx,sy) = "scale(" <> elems [sx, sy] <> ")"

scale3d :: (Txt,Txt,Txt) -> Txt
scale3d (sx,sy,sz) = "scale3d(" <> elems [sx,sy,sz] <> ")"

scaleX :: Txt -> Txt
scaleX s = "scaleX(" <> s <> ")"

scaleY :: Txt -> Txt
scaleY s = "scaleY(" <> s <> ")"

scaleZ :: Txt -> Txt
scaleZ s = "scaleZ(" <> s <> ")"

skew :: Txt -> Txt
skew s = skew2d(s,0)

skew2d :: (Txt,Txt) -> Txt
skew2d (x,y) = "skew(" <> elems [x,y] <> ")"

skewX :: Txt -> Txt
skewX x = "skewX(" <> x <> ")"

skewY :: Txt -> Txt
skewY y = "skewY(" <> y <> ")"

translate :: Txt -> Txt
translate x = translate2d(x,0)

translate2d :: (Txt,Txt) -> Txt
translate2d (x,y) = "translate(" <> elems [x,y] <> ")"

translate3d :: (Txt,Txt,Txt) -> Txt
translate3d (x,y,z) = "translate3d(" <> elems [x,y,z] <> ")"

translateX :: Txt -> Txt
translateX x = "translateX(" <> x <> ")"

translateY :: Txt -> Txt
translateY y = "translateY(" <> y <> ")"

translateZ :: Txt -> Txt
translateZ z = "translateZ(" <> z <> ")"

url :: Txt -> Txt
url u = "url(" <> u <> ")"

alpha_ :: Txt -> Txt
alpha_ a = "alpha(" <> a <> ")"

