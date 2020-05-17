{-# language OverloadedStrings, ViewPatterns #-}
module Pure.Data.Styles (module Pure.Data.Styles, module Export) where

import Pure.Data.Styles.Functions as Export
import Pure.Data.Styles.Orphans as Export

import Pure.Data.Txt

import Data.List as List
import GHC.Exts (IsList(..))
import Numeric (showHex)

display :: Txt
display = "display"

inline :: Txt
inline = "inline"

block :: Txt
block = "block"

flex :: Txt
flex = "flex"

flexbox :: Txt
flexbox = "flexbox"

contents :: Txt
contents = "contents"

table :: Txt
table = "table"

list :: Txt
list = "list"

runin :: Txt
runin = "run-in"

caption :: Txt
caption = "caption"

group :: Txt
group = "group"

visibility :: Txt
visibility = "visibility"

overflow :: Txt
overflow = "overflow"

x :: Txt
x = "x"

y :: Txt
y = "y"

z :: Txt
z = "z"

visible :: Txt
visible = "visible"

hidden :: Txt
hidden = "hidden"

cell :: Txt
cell = "cell"

flow :: Txt
flow = "flow"

context :: Txt
context = "context"

menu :: Txt
menu = "menu"

column :: Txt
column = "column"

columns :: Txt
columns = "columns"

content :: Txt
content = "content"

place :: Txt
place = "place"

row :: Txt
row = "row"

rows :: Txt
rows = "rows"

item :: Txt
item = "item"

items :: Txt
items = "items"

justify :: Txt
justify = "justify"

gap :: Txt
gap = "gap"

template :: Txt
template = "template"

area :: Txt
area = "area"

areas :: Txt
areas = "areas"

dense :: Txt
dense = "dense"

start :: Txt
start = "start"

end :: Txt
end = "end"

align :: Txt
align = "align"

span :: Txt
span = "span"

self :: Txt
self = "self"

positive :: Txt
positive = "positive"

orient :: Txt
orient = "orient"

stretch :: Txt
stretch = "stretch"

center :: Txt
center = "center"

min :: Txt
min = "min"

max :: Txt
max = "max"

fill :: Txt
fill = "fill"

scroll :: Txt
scroll = "scroll"

alias :: Txt
alias = "alias"


n :: Txt
n = "n"

e :: Txt
e = "e"

w :: Txt
w = "w"

ne :: Txt
ne = "ne"

ns :: Txt
ns = "ns"

nw :: Txt
nw = "nw"

nesw :: Txt
nesw = "nesw"

nwse :: Txt
nwse = "nwse"

ew :: Txt
ew = "ew"

se :: Txt
se = "se"

sw :: Txt
sw = "sw"

cursor :: Txt
cursor = "cursor"

text :: Txt
text = "text"

pointer :: Txt
pointer = "pointer"

col :: Txt
col = "col"

copy :: Txt
copy = "copy"

crosshair :: Txt
crosshair = "crosshair"

grab :: Txt
grab = "grab"

grabbing :: Txt
grabbing = "grabbing"

help :: Txt
help = "help"

move :: Txt
move = "move"

resize :: Txt
resize = "resize"

no :: Txt
no = "no"

drop :: Txt
drop = "drop"

not :: Txt
not = "not"

allowed :: Txt
allowed = "allowed"

wait :: Txt
wait = "wait"

zoom :: Txt
zoom = "zoom"

zoomin :: Txt
zoomin = zoom-"in"

out :: Txt
out = "out"

vertical :: Txt
vertical = "vertical"

background :: Txt
background = "background"

color :: Txt
color = "color"

image :: Txt
image = "image"

repeat :: Txt
repeat = "repeat"

attachment :: Txt
attachment = "attachment"

position :: Txt
position = "position"

size :: Txt
size = "size"

cover :: Txt
cover = "cover"

origin :: Txt
origin = "origin"

clip :: Txt
clip = "clip"

border :: Txt
border = "border"

outline :: Txt
outline = "outline"

style :: Txt
style = "style"

width :: Txt
width = "width"

offset :: Txt
offset = "offset"

source :: Txt
source = "source"

slice :: Txt
slice = "slice"

outset :: Txt
outset = "outset"

top :: Txt
top = "top"

bottom :: Txt
bottom = "bottom"

left :: Txt
left = "left"

right :: Txt
right = "right"

radius :: Txt
radius = "radius"

collapse :: Txt
collapse = "collapse"

separate :: Txt
separate = "separate"

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

box :: Txt
box = "box"

sizing :: Txt
sizing = "sizing"

margin :: Txt
margin = "margin"

padding :: Txt
padding = "padding"

height :: Txt
height = "height"

filter_ :: Txt
filter_ = "filter"

space :: Txt
space = "space"

around :: Txt
around = "around"

between :: Txt
between = "between"

evenly :: Txt
evenly = "evenly"

distribute :: Txt
distribute = "distribute"

order :: Txt
order = "order"

basis :: Txt
basis = "basis"

grow :: Txt
grow = "grow"

shrink :: Txt
shrink = "shrink"

direction :: Txt
direction = "direction"

reverse :: Txt
reverse = "reverse"

horizontal :: Txt
horizontal = "horizontal"

type_ :: Txt
type_ = "type"

inside :: Txt
inside = "inside"

outside :: Txt
outside = "outside"

disc :: Txt
disc = "disc"

armenian :: Txt
armenian = "armenian"

cjk :: Txt
cjk = "cjk"

ideographic :: Txt
ideographic = "ideographic"

decimal :: Txt
decimal = "decimal"

leading :: Txt
leading = "leading"

zero :: Txt
zero = "zero"

georgian :: Txt
georgian = "georgian"

hebrew :: Txt
hebrew = "hebrew"

hiragana :: Txt
hiragana = "hiragana"

katakana :: Txt
katakana = "katakana"

iroha :: Txt
iroha = "iroha"

lower :: Txt
lower = "lower"

alpha :: Txt
alpha = "alpha"

greek :: Txt
greek = "greek"

latin :: Txt
latin = "latin"

roman :: Txt
roman = "roman"

square :: Txt
square = "square"

none :: Txt
none = "none"

initial :: Txt
initial = "initial"

inherit :: Txt
inherit = "inherit"

normal :: Txt
normal = "normal"

auto :: Txt
auto = "auto"

emptyQuotes :: Txt
emptyQuotes = "\"\""

noBreakSpace :: Txt
noBreakSpace = "\"\\00a0\""

true :: Txt
true = "true"

false :: Txt
false = "false"

nav :: Txt
nav = "nav"

down :: Txt
down = "down"

up :: Txt
up = "up"

sizes :: Txt
sizes = "sizes"

srcset :: Txt
srcset = "srcset"

subject :: Txt
subject = "subject"

button :: Txt
button = "button"

touch :: Txt
touch = "touch"

action :: Txt
action = "action"

events :: Txt
events = "events"

empty :: Txt
empty = "empty"

cells :: Txt
cells = "cells"

default_ :: Txt
default_ = "default"

all :: Txt
all = "all"

xmlns :: Txt
xmlns = "xmlns"

forwards :: Txt
forwards = "forwards"

backwards :: Txt
backwards = "backwards"

side :: Txt
side = "side"

closest :: Txt
closest = "closest"

farthest :: Txt
farthest = "farthest"

corner :: Txt
corner = "corner"

fixed :: Txt
fixed = "fixed"

absolute :: Txt
absolute = "absolute"

static :: Txt
static = "static"

relative :: Txt
relative = "relative"

both :: Txt
both = "both"

float :: Txt
float = "float"

clear :: Txt
clear = "clear"

index :: Txt
index = "index"

valign :: Txt
valign = "valign"

to :: Txt
to = "to"

from :: Txt
from = "from"

rtl :: Txt
rtl = "rtl"

ltr :: Txt
ltr = "ltr"

font :: Txt
font = "font"

family :: Txt
family = "family"

weight :: Txt
weight = "weight"

xx :: Txt
xx = "xx"

small :: Txt
small = "small"

medium :: Txt
medium = "medium"

large :: Txt
large = "large"

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

optimized :: Txt
optimized = "optimized"

bold :: Txt
bold = "bold"

bolder :: Txt
bolder = "bolder"

lighter :: Txt
lighter = "lighter"

shadow :: Txt
shadow = "shadow"

decoration :: Txt
decoration = "decoration"

line :: Txt
line = "line"

baseline :: Txt
baseline = "baseline"

middle :: Txt
middle = "middle"

indent :: Txt
indent = "indent"

ellipsis :: Txt
ellipsis = "ellipsis"

underline :: Txt
underline = "underline"

transform :: Txt
transform = "transform"

capitalize :: Txt
capitalize = "capitalize"

uppercase :: Txt
uppercase = "uppercase"

lowercase :: Txt
lowercase = "lowercase"

unicode :: Txt
unicode = "unicode"

bidi :: Txt
bidi = "bidi"

override :: Txt
override = "override"

hyphens :: Txt
hyphens = "hyphens"

wrap :: Txt
wrap = "wrap"

nowrap :: Txt
nowrap = "nowrap"

pack :: Txt
pack = "pack"

pre :: Txt
pre = "pre"

word :: Txt
word = "word"

break :: Txt
break = "break"

spacing :: Txt
spacing = "spacing"

jump :: Txt
jump = "jump"

step :: Txt
step = "step"

perspective :: Txt
perspective = "perspective"

backface :: Txt
backface = "backface"

transition :: Txt
transition = "transition"

delay :: Txt
delay = "delay"

duration :: Txt
duration = "duration"

property :: Txt
property = "property"

timing :: Txt
timing = "timing"

function :: Txt
function = "function"

mode :: Txt
mode = "mode"

infinite :: Txt
infinite = "infinite"

linear :: Txt
linear = "linear"

animation :: Txt
animation = "animation"

name :: Txt
name = "name"

paused :: Txt
paused = "paused"

play :: Txt
play = "play"

state :: Txt
state = "state"

iteration :: Txt
iteration = "iteration"

count :: Txt
count = "count"

ease :: Txt
ease = "ease"

easein :: Txt
easein = ease-"in"

easeinout :: Txt
easeinout = ease-"in"-out

will :: Txt
will = "will"

change :: Txt
change = "change"

user :: Txt
user = "user"

select :: Txt
select = "select"

scrolling :: Txt
scrolling = "scrolling"

preserve3d :: Txt
preserve3d = "preserve-3d"

webkit :: Txt
webkit = "-webkit"

moz :: Txt
moz = "-moz"

microsoft :: Txt
microsoft = "-ms"

(%) :: Txt -> Txt
(%) p = p <> "% "

px :: Txt
px = "px"

cm :: Txt
cm = "cm"

mm :: Txt
mm = "mm"

q :: Txt
q = "Q"

inch :: Txt
inch = "in"

pc :: Txt
pc = "pc"

pt :: Txt
pt = "pt"

-- <angle>

deg :: Txt
deg = "deg"

rad :: Txt
rad = "rad"

grad :: Txt
grad = "grad"

turn :: Txt
turn = "turn"

-- <resolution>

dpi :: Txt
dpi = "dpi"

dpcm :: Txt
dpcm = "dpcm"

dppx :: Txt
dppx = "dppx"

-- <flex>

fr :: Txt
fr = "fr"

-- <frequency>

hz :: Txt
hz = "hz"

kHz :: Txt
kHz = "kHz"

-- <font-relative lengths>

cap :: Txt
cap = "cap"

ch :: Txt
ch = "ch"

em :: Txt
em = "em"

ex :: Txt
ex = "ex"

ic :: Txt
ic = "ic"

lh :: Txt
lh = "lh"

rem :: Txt
rem = "rem"

rlh :: Txt
rlh = "rlh"

-- <viewport-percentage lengths>

vh :: Txt
vh = "vh"

vw :: Txt
vw = "vw"

vi :: Txt
vi = "vi"

vb :: Txt
vb = "vb"

vmin :: Txt
vmin = "vmin"

vmax :: Txt
vmax = "vmax"

-- <time>

s :: Txt
s = "s"

ms :: Txt
ms = "ms"

bgcolor :: Txt
bgcolor = "bgcolor"

currentColor :: Txt
currentColor = "currentColor"

opacity :: Txt
opacity = "opacity"

transparent :: Txt
transparent = "transparent"

(#) :: Int -> Txt
(#) = hex

-- There is a corner-case that isn't covered with this approach:
--
-- > hex 0x000fff => #fff => #ffffff
--
hex :: Int -> Txt
hex rgb = "#" <> code
  where
    code :: Txt
    code = toTxt $ pad $ showHex rgb []

    pad :: String -> String
    pad s@(List.length -> n) 
      | n == 3    = s
      | otherwise = List.replicate (6 - n) '0' <> s

-- There is a corner-case that isn't covered with this approach:
--
-- > hex 0x0000ffff => #ffff => #ffffffff
--
hexa :: Int -> Txt
hexa rgba = "#" <> code
  where
    code :: Txt
    code = toTxt $ pad $ showHex rgba []

    pad :: String -> String
    pad s@(List.length -> n)
      | n == 4    = s
      | otherwise = List.replicate (8 - n) '0' <> s

{-# INLINE hsba #-}
hsba :: (Int, Double, Double, Double) -> Txt
hsba (_, _, 0, a) = "hsla(0,0%,0%," <> dec a <> ")"
hsba (h, s, b, a) =
  let
    l = (b / 2) * (2 - (s / 100))
    s'
      | l < 50    = (b * s) / (l * 2)
      | l == 100  = (b * s)
      | otherwise = (b * s) / (200 - l * 2)
  in "hsla(" <> elems [int h,percent s',percent l,dec a] <> ")"

hsb :: (Int, Double, Double) -> Txt
hsb (h, s, b) = hsba (h, s, b, 1)

rgb :: (Txt,Txt,Txt) -> Txt
rgb (r,g,b) = "rgb(" <> elems [r,g,b] <> ")"

rgba :: (Txt,Txt,Txt,Txt) -> Txt
rgba (r,g,b,a) = "rgba(" <> elems [r,g,b,a] <> ")"

hsl :: (Txt,Txt,Txt) -> Txt
hsl (h,s,l) = "hsl(" <> elems [h,s,l] <> ")"

hsla :: (Txt,Txt,Txt,Txt) -> Txt
hsla (h,s,l,a) = "hsla(" <> elems [h,s,l,a] <> ")"

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
