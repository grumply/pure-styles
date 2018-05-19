{-# language OverloadedStrings #-}
{-# language CPP #-}
module Pure.Data.Styles where

import Pure.Data.Txt (Txt,ToTxt(..),FromTxt(..))
import qualified Pure.Data.Txt as Txt

import Data.Monoid

import Prelude (($),id,map,Int,Double,Num(..))

infixr 6 <&>>
(<&>>) :: Txt -> Txt -> Txt
(<&>>) x y = x <> ", " <> y

infixr 6 <+>
(<+>) :: Txt -> Txt -> Txt
(<+>) x y = x <> "+" <> y

infixr 6 <->
(<->) :: Txt -> Txt -> Txt
(<->) x y = x <> "-" <> y

infixr 6 <<+>>
(<<+>>) :: Txt -> Txt -> Txt
(<<+>>) x y = x <> " + " <> y

infixr 6 <<*>>
(<<*>>) :: Txt -> Txt -> Txt
(<<*>>) x y = x <> " * " <> y

infixr 6 <</>>
(<</>>) :: Txt -> Txt -> Txt
(<</>>) x y = x <> " / " <> y

infixr 6 <<->>
(<<->>) :: Txt -> Txt -> Txt
(<<->>) x y = x <> " - " <> y

infixr 6 <<>>
(<<>>) :: Txt -> Txt -> Txt
(<<>>) x y = x <> " " <> y

infixr 6 <.>
(<.>) :: Txt -> Txt -> Txt
(<.>) x y = x <> "." <> y

infixr 6 <<.>
(<<.>) :: Txt -> Txt -> Txt
(<<.>) x y = x <> " ." <> y

infixr 6 <.>>
(<.>>) :: Txt -> Txt -> Txt
(<.>>) x y = x <> ". " <> y

screenMinWidth :: Txt -> Txt
screenMinWidth w = "only screen and (min-width:" <> w <> ")"

allMinWidth :: Txt -> Txt
allMinWidth w = "all and (min-width" <> w <> ")"

screenMaxWidth :: Txt -> Txt
screenMaxWidth w = "only screen and (max-width:" <> w <> ")"

allMaxWidth :: Txt -> Txt
allMaxWidth w = "all and (max-width:" <> w <> ")"

emptyQuotes :: Txt
emptyQuotes = "\"\""

noBreakSpace :: Txt
noBreakSpace = "\"\\00a0\""

true :: Txt
true = "true"

false :: Txt
false = "false"

color :: Txt
color = "color"

bgcolor :: Txt
bgcolor = "bgcolor"

border :: Txt
border = "border"

sizes :: Txt
sizes = "sizes"

srcset :: Txt
srcset = "srcset"

subject :: Txt
subject = "subject"

valign :: Txt
valign = "valign"

none :: Txt
none = "none"

button :: Txt
button = "button"

zero :: Txt
zero = "0"

one :: Txt
one = "1"

two :: Txt
two = "2"

negativeOne :: Txt
negativeOne = "-1"

initial :: Txt
initial = "initial"

inherit :: Txt
inherit = "inherit"

auto :: Txt
auto = "auto"

forwards :: Txt
forwards = "forwards"

backwards :: Txt
backwards = "backwards"

center :: Txt
center = "center"

normal :: Txt
normal = "normal"

neg :: Txt -> Txt
neg i = "-" <> i

vhs :: Int -> Txt
vhs i = toTxt i <> "vh"

vws :: Int -> Txt
vws i = toTxt i <> "vw"

vms :: Int -> Txt
vms i = toTxt i <> "vm"

int :: Int -> Txt
int = toTxt

dec :: Double -> Txt
dec = toTxt

sec :: Double -> Txt
sec n = (toTxt n) <> "s"

ms :: Int -> Txt
ms n = toTxt n <> "ms"

per :: Double -> Txt
per n = toTxt n <> "%"

deg :: Double -> Txt
deg n = toTxt n <> "deg"

per2 :: Double -> Double -> Txt
per2 n1 n2 = per n1 <<>> per n2

per3 :: Double -> Double -> Double -> Txt
per3 n1 n2 n3 = per n1 <<>> per n2 <<>> per n3

per4 :: Double -> Double -> Double -> Double -> Txt
per4 n1 n2 n3 n4 = per n1 <<>> per n2 <<>> per n3 <<>> per n4

pxs :: Int -> Txt
pxs n = int n <> "px"

pxs2 :: Int -> Int -> Txt
pxs2 n1 n2 = pxs n1 <<>> pxs n2

pxs3 :: Int -> Int -> Int -> Txt
pxs3 n1 n2 n3 = pxs n1 <<>> pxs n2 <<>> pxs n3

pxs4 :: Int -> Int -> Int -> Int -> Txt
pxs4 n1 n2 n3 n4 = pxs n1 <<>> pxs n2 <<>> pxs n3 <<>> pxs n4

ems :: Double -> Txt
ems n = dec n <> "em"

ems2 :: Double -> Double -> Txt
ems2 n1 n2 = ems n1 <<>> ems n2

ems3 :: Double -> Double -> Double -> Txt
ems3 n1 n2 n3 = ems n1 <<>> ems n2 <<>> ems n3

ems4 :: Double -> Double -> Double -> Double -> Txt
ems4 n1 n2 n3 n4 = ems n1 <<>> ems n2 <<>> ems n3 <<>> ems n4

rems :: Double -> Txt
rems n = dec n <> "rem"

rems2 :: Double -> Double -> Txt
rems2 n1 n2 = rems n1 <<>> rems n2

rems3 :: Double -> Double -> Double -> Txt
rems3 n1 n2 n3 = rems n1 <<>> rems n2 <<>> rems n3

rems4 :: Double -> Double -> Double -> Double -> Txt
rems4 n1 n2 n3 n4 = rems n1 <<>> rems n2 <<>> rems n3 <<>> rems n4

individual :: Txt -> Txt
individual = ("#" <>)

classified :: Txt -> Txt
classified = ("." <>)

content :: Txt
content = "content"

touchAction :: Txt
touchAction = "touch-action"

pointerEvents :: Txt
pointerEvents = "pointer-events"

margin :: Txt
margin = "margin"

marginLeft :: Txt
marginLeft = "margin-left"

marginRight :: Txt
marginRight = "margin-right"

marginTop :: Txt
marginTop = "margin-top"

marginBottom :: Txt
marginBottom = "margin-bottom"

padding :: Txt
padding = "padding"

paddingLeft :: Txt
paddingLeft = "padding-left"

paddingRight :: Txt
paddingRight = "padding-right"

paddingTop :: Txt
paddingTop = "padding-top"

paddingBottom :: Txt
paddingBottom = "padding-bottom"

borderImage :: Txt
borderImage = "border-image"

borderImageSource :: Txt
borderImageSource = "border-image-source"

borderImageSlice :: Txt
borderImageSlice = "border-image-slice"

borderImageWidth :: Txt
borderImageWidth = "border-image-width"

borderImageOutset :: Txt
borderImageOutset = "border-image-outset"

borderImageRepeat :: Txt
borderImageRepeat = "border-image-repeat"

outline :: Txt
outline = "outline"

outlineStyle :: Txt
outlineStyle = "outline-style"

outlineWidth :: Txt
outlineWidth = "outline-width"

outlineColor :: Txt
outlineColor = "outline-color"

outlineOffset :: Txt
outlineOffset = "outline-offset"

borderTop :: Txt
borderTop = "border-top"

borderTopImage :: Txt
borderTopImage = "border-top-image"

borderRight :: Txt
borderRight = "border-right"

borderRightImage :: Txt
borderRightImage = "border-right-image"

borderBottom :: Txt
borderBottom = "border-bottom"

borderBottomImage :: Txt
borderBottomImage = "border-bottom-image"

borderLeft :: Txt
borderLeft = "border-left"

borderLeftImage :: Txt
borderLeftImage = "border-left-image"

borderRadius :: Txt
borderRadius = "border-radius"

borderTopRightRadius :: Txt
borderTopRightRadius = "border-top-right-radius"

borderBottomRightRadius :: Txt
borderBottomRightRadius = "border-bottom-right-radius"

borderBottomLeftRadius :: Txt
borderBottomLeftRadius = "border-bottom-left-radius"

borderTopLeftRadius :: Txt
borderTopLeftRadius = "border-top-left-radius"

borderStyle :: Txt
borderStyle = "border-style"

borderTopStyle :: Txt
borderTopStyle = "border-top-style"

borderRightStyle :: Txt
borderRightStyle = "border-right-style"

borderBottomStyle :: Txt
borderBottomStyle = "border-bottom-style"

borderLeftStyle :: Txt
borderLeftStyle = "border-left-style"

borderWidth :: Txt
borderWidth = "border-width"

borderTopWidth :: Txt
borderTopWidth = "border-top-width"

borderRightWidth :: Txt
borderRightWidth = "border-right-width"

borderBottomWidth :: Txt
borderBottomWidth = "border-bottom-width"

borderLeftWidth :: Txt
borderLeftWidth = "border-left-width"

borderColor :: Txt
borderColor = "border-color"

borderTopColor :: Txt
borderTopColor = "border-top-color"

borderRightColor :: Txt
borderRightColor = "border-right-color"

borderBottomColor :: Txt
borderBottomColor = "border-bottom-color"

borderLeftColor :: Txt
borderLeftColor = "border-left-color"

collapse :: Txt
collapse = "collapse"

borderCollapse :: Txt
borderCollapse = "border-collapse"

borderSpacing :: Txt
borderSpacing = "border-spacing"

dotted :: Txt
dotted = "dotted"

dashed :: Txt
dashed = "dashed"

solid :: Txt
solid = "solid"

double :: Txt
double = "double"

groove :: Txt
groove = "groove"

ridge :: Txt
ridge = "ridge"

inset :: Txt
inset = "inset"

outset :: Txt
outset = "outset"

listStyle :: Txt
listStyle = "list-style"

listStyleType :: Txt
listStyleType = "list-style-type"

listStyleImage :: Txt
listStyleImage = "list-style-image"

listStylePosition :: Txt
listStylePosition = "list-style-position"

inside :: Txt
inside = "inside"

outside :: Txt
outside = "outside"

disc :: Txt
disc = "disc"

armenian :: Txt
armenian = "armenian"

cjkIdeographic :: Txt
cjkIdeographic = "cjk-ideographic"

decimal :: Txt
decimal = "decimal"

decimalLeadingZero :: Txt
decimalLeadingZero = "decimal-leading-zero"

georgian :: Txt
georgian = "georgian"

hebrew :: Txt
hebrew = "hebrew"

hiragana :: Txt
hiragana = "hiragana"

katakana :: Txt
katakana = "katakana"

katakanaIroha :: Txt
katakanaIroha = "katakana-iroha"

lowerAlpha :: Txt
lowerAlpha = "lower-alpha"

lowerGreek :: Txt
lowerGreek = "lower-greek"

lowerLatin :: Txt
lowerLatin = "lower-latin"

lowerRoman :: Txt
lowerRoman = "lower-roman"

square :: Txt
square = "square"

upperAlpha :: Txt
upperAlpha = "upper-alpha"

upperLatin :: Txt
upperLatin = "upper-latin"

upperRoman :: Txt
upperRoman = "upper-roman"

zIndex :: Txt
zIndex = "z-index"

display :: Txt
display = "display"

inline :: Txt
inline = "inline"

block :: Txt
block = "block"

inlineBlock :: Txt
inlineBlock = "inline-block"

table :: Txt
table = "table"

inlineTable :: Txt
inlineTable = "inline-table"

listItem :: Txt
listItem = "list-item"

runIn :: Txt
runIn = "run-in"

tableCaption :: Txt
tableCaption = "table-caption"

captionSide :: Txt
captionSide = "caption-side"

emptyCells :: Txt
emptyCells = "empty-cells"

tableCell :: Txt
tableCell = "table-cell"

tableLayout :: Txt
tableLayout = "table-layout"

tableColumn :: Txt
tableColumn = "table-column"

tableColumnGroup :: Txt
tableColumnGroup = "table-column-group"

tableFooterGroup :: Txt
tableFooterGroup = "table-footer-group"

tableHeaderGroup :: Txt
tableHeaderGroup = "table-header-group"

tableRow :: Txt
tableRow = "table-row"

tableRowGroup :: Txt
tableRowGroup = "table-row-group"

both :: Txt
both = "both"

float :: Txt
float = "float"

clear :: Txt
clear = "clear"

position :: Txt
position = "position"

static :: Txt
static = "static"

relative :: Txt
relative = "relative"

fixed :: Txt
fixed = "fixed"

absolute :: Txt
absolute = "absolute"

top :: Txt
top = "top"

right :: Txt
right = "right"

bottom :: Txt
bottom = "bottom"

left :: Txt
left = "left"

overflow :: Txt
overflow = "overflow"

visible :: Txt
visible = "visible"

hidden :: Txt
hidden = "hidden"

scroll :: Txt
scroll = "scroll"

overflowX :: Txt
overflowX = "overflow-x"

overflowY :: Txt
overflowY = "overflow-y"

clip :: Txt
clip = "clip"

rect :: (Num n, ToTxt n) => (n,n,n,n) -> Txt
rect (t,r,b,l) = "rect(" <> (Txt.intercalate "," $ map toTxt [t,r,b,l]) <> ")"

lineHeight :: Txt
lineHeight = "line-height"

height :: Txt
height = "height"

width :: Txt
width = "width"

maxWidth :: Txt
maxWidth = "max-width"

minWidth :: Txt
minWidth = "min-width"

maxHeight :: Txt
maxHeight = "max-height"

minHeight :: Txt
minHeight = "min-height"

boxSizing :: Txt
boxSizing = "box-sizing"

borderBox :: Txt
borderBox = "border-box"

contentBox :: Txt
contentBox = "content-box"

font :: Txt
font = "font"

fontFamily :: Txt
fontFamily = "font-family"

fontWeight :: Txt
fontWeight = "font-weight"

fontSize :: Txt
fontSize = "font-size"

xxSmall :: Txt
xxSmall = "xx-small"

xSmall :: Txt
xSmall = "x-small"

medium :: Txt
medium = "medium"

large :: Txt
large = "large"

xLarge :: Txt
xLarge = "x-large"

xxLarge :: Txt
xxLarge = "xx-large"

smaller :: Txt
smaller = "smaller"

larger :: Txt
larger = "larger"

italic :: Txt
italic = "italic"

regular :: Txt
regular = "regular"

antialiased :: Txt
antialiased = "antialiased"

weight :: Int -> Txt
weight = toTxt

bold :: Txt
bold = "bold"

bolder :: Txt
bolder = "bolder"

lighter :: Txt
lighter = "lighter"

boxShadow :: Txt
boxShadow = "box-shadow"

textDecoration :: Txt
textDecoration = "text-decoration"

textDecorationColor :: Txt
textDecorationColor = "text-decoration-color"

textDecorationLine :: Txt
textDecorationLine = "text-decoration-line"

textDecorationStyle :: Txt
textDecorationStyle = "text-decoration-style"

textAlign :: Txt
textAlign = "text-align"

verticalAlign :: Txt
verticalAlign = "vertical-align"

baseline :: Txt
baseline = "baseline"

middle :: Txt
middle = "middle"

textIndent :: Txt
textIndent = "text-indent"

textJustify :: Txt
textJustify = "text-justify"

textOverflow :: Txt
textOverflow = "text-overflow"

ellipsis :: Txt
ellipsis = "ellipsis"

underline :: Txt
underline = "underline"

textShadow :: Txt
textShadow = "text-shadow"

textTransform :: Txt
textTransform = "text-transform"

capitalize :: Txt
capitalize = "capitalize"

uppercase :: Txt
uppercase = "uppercase"

lowercase :: Txt
lowercase = "lowercase"

unicodeBidi :: Txt
unicodeBidi = "unicode-bidi"

bidiOverride :: Txt
bidiOverride = "bidir-override"

whiteSpace :: Txt
whiteSpace = "white-space"

wrap :: Txt
wrap = "wrap"

nowrap :: Txt
nowrap = "nowrap"

wrapreverse :: Txt
wrapreverse = "wrap-reverse"

preLine :: Txt
preLine = "pre-line"

preWrap :: Txt
preWrap = "pre-wrap"

wordWrap :: Txt
wordWrap = "word-wrap"

wordBreak :: Txt
wordBreak = "word-break"

wordSpacing :: Txt
wordSpacing = "word-spacing"

breakWord :: Txt
breakWord = "break-word"

to :: Txt -> Txt
to dir = "to " <> dir

from :: Txt -> Txt
from dir = "from " <> dir

closestSide :: Txt
closestSide = "closest-side"

farthestSide :: Txt
farthestSide = "farthest-side"

closestCorner :: Txt
closestCorner = "closest-corner"

farthestCorner :: Txt
farthestCorner = "farthest-corner"

background :: Txt
background = "background"

backgroundColor :: Txt
backgroundColor = "background-color"

backgroundImage :: Txt
backgroundImage = "background-image"

url :: Txt -> Txt
url u = "url(" <> u <> ")"

backgroundRepeat :: Txt
backgroundRepeat = "background-repeat"

noRepeat :: Txt
noRepeat = "no-repeat"

backgroundAttachment :: Txt
backgroundAttachment = "background-attachment"

backgroundPosition :: Txt
backgroundPosition = "background-position"

backgroundSize :: Txt
backgroundSize = "background-size"

cover :: Txt
cover = "cover"

backgroundOrigin :: Txt
backgroundOrigin = "background-origin"

backgroundClip :: Txt
backgroundClip = "background-clip"

imageFilter :: Txt
imageFilter = "filter"

default_ :: Txt
default_ = "default"

cursor :: Txt
cursor = "cursor"

pointer :: Txt
pointer = "pointer"

alias :: Txt
alias = "alias"

allScroll :: Txt
allScroll = "all-scroll"

cell :: Txt
cell = "cell"

contextMenu :: Txt
contextMenu = "context-menu"

colResize :: Txt
colResize = "col-resize"

copy :: Txt
copy = "copy"

crosshair :: Txt
crosshair = "crosshair"

eResize :: Txt
eResize = "e-resize"

ewResize :: Txt
ewResize = "ew-resize"

grab :: Txt
grab = "grab"

grabbing :: Txt
grabbing = "grabbing"

help :: Txt
help = "help"

move :: Txt
move = "move"

nResize :: Txt
nResize = "n-resize"

neResize :: Txt
neResize = "ne-resize"

neswResize :: Txt
neswResize = "nesw-resize"

nsResize :: Txt
nsResize = "ns-resize"

nwResize :: Txt
nwResize = "nw-resize"

nwseResize :: Txt
nwseResize = "nwse-resize"

noDrop :: Txt
noDrop = "no-drop"

notAllowed :: Txt
notAllowed = "not-allowed"

rowResize :: Txt
rowResize = "row-resize"

sResize :: Txt
sResize = "s-resize"

seResize :: Txt
seResize = "se-resize"

swResize :: Txt
swResize = "sw-resize"

vText :: Txt
vText = "vertical-text"

wResize :: Txt
wResize = "w-resize"

wait :: Txt
wait = "wait"

zoomIn :: Txt
zoomIn = "zoom-in"

zoomOut :: Txt
zoomOut = "zoom-out"

navDown :: Txt
navDown = "nav-down"

navIndex :: Txt
navIndex = "nav-index"

navLeft :: Txt
navLeft = "nav-left"

navRight :: Txt
navRight = "nav-right"

navUp :: Txt
navUp = "nav-up"

matrix :: Double -> Double -> Double -> Double -> Int -> Int -> Txt
matrix scX skY skX scY tX tY =
  "matrix(" <> dec scX <> ","
            <> dec skY <> ","
            <> dec skX <> ","
            <> dec scY <> ","
            <> int tX  <> ","
            <> int tY  <> ")"

scale :: Txt -> Txt
scale opts1 = "scale(" <> opts1 <> ")"

scale2 :: Txt -> Txt -> Txt
scale2 opts1 opts2 = "scale(" <> opts1 <> "," <> opts2 <> ")"

scaleX :: Txt -> Txt
scaleX opts1 = "scaleX(" <> opts1 <> ")"

scaleY :: Txt -> Txt
scaleY opts1 = "scaleY(" <> opts1 <> ")"

scaleZ :: Txt -> Txt
scaleZ opts1 = "scaleZ(" <> opts1 <> ")"

scale3d :: Txt -> Txt -> Txt
scale3d opts1 opts2 = "scale3d(" <> opts1 <> "," <> opts2 <> ")"

rotate :: Txt -> Txt
rotate opts = "rotate(" <> opts <> ")"

translate :: Txt -> Txt
translate opts = "translate(" <> opts <> ")"

translateX :: Txt -> Txt
translateX opts1 = "translateX(" <> opts1 <> ")"

translateY :: Txt -> Txt
translateY opts1 = "translateY(" <> opts1 <> ")"

translateZ :: Txt -> Txt
translateZ opts1 = "translateZ(" <> opts1 <> ")"

translate3d :: Txt -> Txt -> Txt -> Txt
translate3d o1 o2 o3 = "translate3d(" <> o1 <> "," <> o2 <> "," <> o3 <> ")"

matrix3d :: Double -> Double -> Double -> Double
         -> Double -> Double -> Double -> Double
         -> Double -> Double -> Double -> Double
         -> Double -> Double -> Double -> Double
         -> Txt
matrix3d a1 b1 c1 d1 a2 b2 c2 d2 a3 b3 c3 d3 a4 b4 c4 d4 =
  "matrix3d(" <> dec a1 <> ","
              <> dec b1 <> ","
              <> dec c1 <> ","
              <> dec d1 <> ","
              <> dec a2 <> ","
              <> dec b2 <> ","
              <> dec c2 <> ","
              <> dec d2 <> ","
              <> dec a3 <> ","
              <> dec b3 <> ","
              <> dec c3 <> ","
              <> dec d3 <> ","
              <> dec a4 <> ","
              <> dec b4 <> ","
              <> dec c4 <> ","
              <> dec d4 <> ")"

skew :: Double -> Double -> Txt
skew opts1 opts2 = "skew(" <> deg opts1 <> "," <> deg opts2 <> ")"

skewX :: Double -> Txt
skewX opts1 = "skewX(" <> deg opts1 <> ")"

skewY :: Double -> Txt
skewY opts1 = "skewY(" <> deg opts1 <> ")"

rotateX :: Double -> Txt
rotateX opts = "rotateX(" <> deg opts <> ")"

rotateY :: Double -> Txt
rotateY opts = "rotateY(" <> deg opts <> ")"

rotateZ :: Double -> Txt
rotateZ opts = "rotateZ(" <> deg opts <> ")"

rotate3d :: Double -> Double -> Txt
rotate3d opts1 opts2 = "rotate3d(" <> deg opts1 <> "," <> deg opts2 <> ")"

perspective :: Txt
perspective = "perspective"

perspectiveOrigin :: Txt
perspectiveOrigin = "perspective-origin"

backfaceVisibility :: Txt
backfaceVisibility = "backface-visibility"

transition :: Txt
transition = "transition"

transitionDelay :: Txt
transitionDelay = "transition-delay"

transitionDuration :: Txt
transitionDuration = "transition-duration"

transitionProperty :: Txt
transitionProperty = "transition-property"

transitionTimingFunction :: Txt
transitionTimingFunction = "transition-timing-function"

infinite :: Txt
infinite = "infinite"

linear :: Txt
linear = "linear"

linearGradient :: Txt -> Txt
linearGradient lg = "linear-gradient(" <> lg <> ")"

willChange :: Txt
willChange = "will-change"

animation :: Txt
animation = "animation"

transform :: Txt
transform = "transform"

transformStyle :: Txt
transformStyle = "transform-style"

transformOrigin :: Txt
transformOrigin = "transform-origin"

preserve3d :: Txt
preserve3d = "preserve-3d"

ease :: Txt
ease = "ease"

easeIn :: Txt
easeIn = "ease-in"

easeOut :: Txt
easeOut = "ease-out"

easeInOut :: Txt
easeInOut = "ease-in-out"

cubicBezier :: (Double,Double,Double,Double) -> Txt
cubicBezier (n1,n2,n3,n4) =
  "cubic-bezier(" <> (Txt.intercalate "," $ map toTxt [n1,n2,n3,n4]) <> ")"

visibility :: Txt
visibility = "visibility"

all :: Txt
all = "all"

direction :: Txt
direction = "direction"

rtl :: Txt
rtl = "rtl"

ltr :: Txt
ltr = "ltr"

currentColor :: Txt
currentColor = "currentColor"

alpha :: Txt -> Txt
alpha alph = "alpha(" <> alph <> ")"

opacity :: Txt
opacity = "opacity"

transparent :: Txt
transparent = "transparent"

hex :: Txt -> Txt
hex rgb = "#" <> rgb
  -- "#" <> (pack $ showHex rgb []) -- doesn't work with leading zeros

rgb :: (Int,Int,Int) -> Txt
rgb (r,g,b) = "rgb(" <> (Txt.intercalate "," [int r,int g,int b]) <> ")"

rgba :: (Int,Int,Int,Double) -> Txt
rgba (r,g,b,a) = "rgba(" <> (Txt.intercalate "," $ [int r,int g,int b,dec a]) <> ")"

hsl :: (Int,Double,Double) -> Txt
hsl (h,s,l) = "hsl(" <> (Txt.intercalate "," [int h,per s,per l]) <> ")"

hsla :: (Int,Double,Double,Double) -> Txt
hsla (h,s,l,a) = "hsla(" <> (Txt.intercalate "," [int h,per s, per l,dec a]) <> ")"

aqua :: Txt
aqua = "aqua"

aquamarine :: Txt
aquamarine = "aquamarine"

azure :: Txt
azure = "azure"

beige :: Txt
beige = "beige"

bisque :: Txt
bisque = "bisque"

black :: Txt
black = "black"

blanchedalmond :: Txt
blanchedalmond = "blanchedalmond"

blue :: Txt
blue = "blue"

blueviolet :: Txt
blueviolet = "blueviolet"

brown :: Txt
brown = "brown"

burlywood :: Txt
burlywood = "burlywood"

cadetblue :: Txt
cadetblue = "cadetblue"

chartreuse :: Txt
chartreuse = "chartreuse"

chocolate :: Txt
chocolate = "chocolate"

coral :: Txt
coral = "coral"

cornflowerblue :: Txt
cornflowerblue = "cornflowerblue"

cornsilk :: Txt
cornsilk = "cornsilk"

crimson :: Txt
crimson = "crimson"

cyan :: Txt
cyan = "cyan"

darkblue :: Txt
darkblue = "darkblue"

darkcyan :: Txt
darkcyan = "darkcyan"

darkgoldenrod :: Txt
darkgoldenrod = "darkgoldenrod"

darkgray :: Txt
darkgray = "darkgray"

darkgreen :: Txt
darkgreen = "darkgreen"

darkgrey :: Txt
darkgrey = "darkgrey"

darkkhaki :: Txt
darkkhaki = "darkkhaki"

darkmagenta :: Txt
darkmagenta = "darkmagenta"

darkolivegreen :: Txt
darkolivegreen = "darkolivegreen"

darkorange :: Txt
darkorange = "darkorange"

darkorchid :: Txt
darkorchid = "darkorchid"

darkred :: Txt
darkred = "darkred"

darksalmon :: Txt
darksalmon = "darksalmon"

darkseagreen :: Txt
darkseagreen = "darkseagreen"

darkslateblue :: Txt
darkslateblue = "darkslateblue"

darkslategray :: Txt
darkslategray = "darkslategray"

darkslategrey :: Txt
darkslategrey = "darkslategrey"

darkturquoise :: Txt
darkturquoise = "darkturquoise"

darkviolet :: Txt
darkviolet = "darkviolet"

deeppink :: Txt
deeppink = "deeppink"

deepskyblue :: Txt
deepskyblue = "deepskyblue"

dimgray :: Txt
dimgray = "dimgray"

dimgrey :: Txt
dimgrey = "dimgrey"

dodgerblue :: Txt
dodgerblue = "dodgerblue"

firebrick :: Txt
firebrick = "firebrick"

floralwhite :: Txt
floralwhite = "floralwhite"

forestgreen :: Txt
forestgreen = "forestgreen"

fuchsia :: Txt
fuchsia = "fuchsia"

gainsboro :: Txt
gainsboro = "gainsboro"

ghostwhite :: Txt
ghostwhite = "ghostwhite"

gold :: Txt
gold = "gold"

goldenrod :: Txt
goldenrod = "goldenrod"

gray :: Txt
gray = "gray"

green :: Txt
green = "green"

greenyellow :: Txt
greenyellow = "greenyellow"

grey :: Txt
grey = "grey"

honeydew :: Txt
honeydew = "honeydew"

hotpink :: Txt
hotpink = "hotpink"

indianred :: Txt
indianred = "indianred"

indigo :: Txt
indigo = "indigo"

ivory :: Txt
ivory = "ivory"

khaki :: Txt
khaki = "khaki"

lavender :: Txt
lavender = "lavender"

lavenderblush :: Txt
lavenderblush = "lavenderblush"

lawngreen :: Txt
lawngreen = "lawngreen"

lemonchiffon :: Txt
lemonchiffon = "lemonchiffon"

lightblue :: Txt
lightblue = "lightblue"

lightcoral :: Txt
lightcoral = "lightcoral"

lightcyan :: Txt
lightcyan = "lightcyan"

lightgoldenrodyellow :: Txt
lightgoldenrodyellow = "lightgoldenrodyellow"

lightgray :: Txt
lightgray = "lightgray"

lightgreen :: Txt
lightgreen = "lightgreen"

lightgrey :: Txt
lightgrey = "lightgrey"

lightpink :: Txt
lightpink = "lightpink"

lightsalmon :: Txt
lightsalmon = "lightsalmon"

lightseagreen :: Txt
lightseagreen = "lightseagreen"

lightskyblue :: Txt
lightskyblue = "lightskyblue"

lightslategray :: Txt
lightslategray = "lightslategray"

lightslategrey :: Txt
lightslategrey = "lightslategrey"

lightsteelblue :: Txt
lightsteelblue = "lightsteelblue"

lightyellow :: Txt
lightyellow = "lightyellow"

lime :: Txt
lime = "lime"

limegreen :: Txt
limegreen = "limegreen"

linen :: Txt
linen = "linen"

magenta :: Txt
magenta = "magenta"

maroon :: Txt
maroon = "maroon"

mediumaquamarine :: Txt
mediumaquamarine = "mediumaquamarine"

mediumblue :: Txt
mediumblue = "mediumblue"

mediumorchid :: Txt
mediumorchid = "mediumorchid"

mediumpurple :: Txt
mediumpurple = "mediumpurple"

mediumseagreen :: Txt
mediumseagreen = "mediumseagreen"

mediumslateblue :: Txt
mediumslateblue = "mediumslateblue"

mediumspringgreen :: Txt
mediumspringgreen = "mediumspringgreen"

mediumturquoise :: Txt
mediumturquoise = "mediumturquoise"

mediumvioletred :: Txt
mediumvioletred = "mediumvioletred"

midnightblue :: Txt
midnightblue = "midnightblue"

mintcream :: Txt
mintcream = "mintcream"

mistyrose :: Txt
mistyrose = "mistyrose"

moccasin :: Txt
moccasin = "moccasin"

navajowhite :: Txt
navajowhite = "navajowhite"

navy :: Txt
navy = "navy"

oldlace :: Txt
oldlace = "oldlace"

olive :: Txt
olive = "olive"

olivedrab :: Txt
olivedrab = "olivedrab"

orange :: Txt
orange = "orange"

orangered :: Txt
orangered = "orangered"

orchid :: Txt
orchid = "orchid"

palegoldenrod :: Txt
palegoldenrod = "palegoldenrod"

palegreen :: Txt
palegreen = "palegreen"

paleturquoise :: Txt
paleturquoise = "paleturquoise"

palevioletred :: Txt
palevioletred = "palevioletred"

papayawhip :: Txt
papayawhip = "papayawhip"

peachpuff :: Txt
peachpuff = "peachpuff"

peru :: Txt
peru = "peru"

pink :: Txt
pink = "pink"

plum :: Txt
plum = "plum"

powderblue :: Txt
powderblue = "powderblue"

purple :: Txt
purple = "purple"

red :: Txt
red = "red"

rosybrown :: Txt
rosybrown = "rosybrown"

royalblue :: Txt
royalblue = "royalblue"

saddlebrown :: Txt
saddlebrown = "saddlebrown"

salmon :: Txt
salmon = "salmon"

sandybrown :: Txt
sandybrown = "sandybrown"

seagreen :: Txt
seagreen = "seagreen"

seashell :: Txt
seashell = "seashell"

sienna :: Txt
sienna = "sienna"

silver :: Txt
silver = "silver"

skyblue :: Txt
skyblue = "skyblue"

slateblue :: Txt
slateblue = "slateblue"

slategray :: Txt
slategray = "slategray"

slategrey :: Txt
slategrey = "slategrey"

snow :: Txt
snow = "snow"

springgreen :: Txt
springgreen = "springgreen"

steelblue :: Txt
steelblue = "steelblue"

tan :: Txt
tan = "tan"

teal :: Txt
teal = "teal"

thistle :: Txt
thistle = "thistle"

tomato :: Txt
tomato = "tomato"

turquoise :: Txt
turquoise = "turquoise"

violet :: Txt
violet = "violet"

wheat :: Txt
wheat = "wheat"

white :: Txt
white = "white"

whitesmoke :: Txt
whitesmoke = "whitesmoke"

yellow :: Txt
yellow = "yellow"

yellowgreen :: Txt
yellowgreen = "yellowgreen"

alignSelf :: Txt
alignSelf = "align-self"

alignContent :: Txt
alignContent = "align-content"

justifyContent :: Txt
justifyContent = "justify-content"

alignItems :: Txt
alignItems = "align-items"

flexStart :: Txt
flexStart = "flex-start"

flexEnd :: Txt
flexEnd = "flex-end"

stretch :: Txt
stretch = "stretch"

end :: Txt
end = "end"

start :: Txt
start = "start"

spaceAround :: Txt
spaceAround = "space-around"

spaceBetween :: Txt
spaceBetween = "space-between"

distribute :: Txt
distribute = "distribute"

justify :: Txt
justify = "justify"

order :: Txt
order = "order"

flexBasis :: Txt
flexBasis = "flex-basis"

flexGrow :: Txt
flexGrow = "flex-grow"

flex :: Txt
flex = "flex"

flexFlow :: Txt
flexFlow = "flex-flow"

flexDirection :: Txt
flexDirection = "flex-direction"

columnReverse :: Txt
columnReverse = "column-reverse"

vertical :: Txt
vertical = "vertical"

reverse :: Txt
reverse = "reverse"

rowReverse :: Txt
rowReverse = "row-reverse"

horizontal :: Txt
horizontal = "horizontal"

flexWrap :: Txt
flexWrap = "flex-wrap"

row :: Txt
row = "row"

column :: Txt
column = "column"

xmlns :: Txt
xmlns = "xmlns"
