{-# LANGUAGE PatternSynonyms, OverloadedStrings #-}
module Pure.Data.Styles.Patterns where

import Pure.Data.Txt (Txt)
import Pure.Data.Styles
import Pure.Data.View.Patterns

import Data.Monoid

import Pure.Data.Styles

pattern Color :: HasFeatures a => Txt -> a -> a
pattern Color v a = Style "color" v a

pattern Bgcolor :: HasFeatures a => Txt -> a -> a
pattern Bgcolor v a = Style "bgcolor" v a

pattern Border :: HasFeatures a => Txt -> a -> a
pattern Border v a = Style "border" v a

pattern Sizes :: HasFeatures a => Txt -> a -> a
pattern Sizes v a = Style "sizes" v a

pattern Srcset :: HasFeatures a => Txt -> a -> a
pattern Srcset v a = Style "srcset" v a

pattern Subject :: HasFeatures a => Txt -> a -> a
pattern Subject v a = Style "subject" v a

pattern Valign :: HasFeatures a => Txt -> a -> a
pattern Valign v a = Style "valign" v a

pattern Content :: HasFeatures a => Txt -> a -> a
pattern Content v a = Style "content" v a

pattern TouchAction :: HasFeatures a => Txt -> a -> a
pattern TouchAction v a = Style "touch-action" v a

pattern PointerEvents :: HasFeatures a => Txt -> a -> a
pattern PointerEvents v a = Style "pointer-events" v a

pattern Margin :: HasFeatures a => Txt -> a -> a
pattern Margin v a = Style "margin" v a

pattern MarginLeft :: HasFeatures a => Txt -> a -> a
pattern MarginLeft v a = Style "margin-left" v a

pattern MarginRight :: HasFeatures a => Txt -> a -> a
pattern MarginRight v a = Style "margin-right" v a

pattern MarginTop :: HasFeatures a => Txt -> a -> a
pattern MarginTop v a = Style "margin-top" v a

pattern MarginBottom :: HasFeatures a => Txt -> a -> a
pattern MarginBottom v a = Style "margin-bottom" v a

pattern Padding :: HasFeatures a => Txt -> a -> a
pattern Padding v a = Style "padding" v a

pattern PaddingLeft :: HasFeatures a => Txt -> a -> a
pattern PaddingLeft v a = Style "padding-left" v a

pattern PaddingRight :: HasFeatures a => Txt -> a -> a
pattern PaddingRight v a = Style "padding-right" v a

pattern PaddingTop :: HasFeatures a => Txt -> a -> a
pattern PaddingTop v a = Style "padding-top" v a

pattern PaddingBottom :: HasFeatures a => Txt -> a -> a
pattern PaddingBottom v a = Style "padding-bottom" v a

pattern BorderImage :: HasFeatures a => Txt -> a -> a
pattern BorderImage v a = Style "border-image" v a

pattern BorderImageSource :: HasFeatures a => Txt -> a -> a
pattern BorderImageSource v a = Style "border-image-source" v a

pattern BorderImageSlice :: HasFeatures a => Txt -> a -> a
pattern BorderImageSlice v a = Style "border-image-slice" v a

pattern BorderImageWidth :: HasFeatures a => Txt -> a -> a
pattern BorderImageWidth v a = Style "border-image-width" v a

pattern BorderImageOutset :: HasFeatures a => Txt -> a -> a
pattern BorderImageOutset v a = Style "border-image-outset" v a

pattern BorderImageRepeat :: HasFeatures a => Txt -> a -> a
pattern BorderImageRepeat v a = Style "border-image-repeat" v a

pattern Outline :: HasFeatures a => Txt -> a -> a
pattern Outline v a = Style "outline" v a

pattern OutlineStyle :: HasFeatures a => Txt -> a -> a
pattern OutlineStyle v a = Style "outline-style" v a

pattern OutlineWidth :: HasFeatures a => Txt -> a -> a
pattern OutlineWidth v a = Style "outline-width" v a

pattern OutlineColor :: HasFeatures a => Txt -> a -> a
pattern OutlineColor v a = Style "outline-color" v a

pattern OutlineOffset :: HasFeatures a => Txt -> a -> a
pattern OutlineOffset v a = Style "outline-offset" v a

pattern BorderTop :: HasFeatures a => Txt -> a -> a
pattern BorderTop v a = Style "border-top" v a

pattern BorderTopImage :: HasFeatures a => Txt -> a -> a
pattern BorderTopImage v a = Style "border-top-image" v a

pattern BorderRight :: HasFeatures a => Txt -> a -> a
pattern BorderRight v a = Style "border-right" v a

pattern BorderRightImage :: HasFeatures a => Txt -> a -> a
pattern BorderRightImage v a = Style "border-right-image" v a

pattern BorderBottom :: HasFeatures a => Txt -> a -> a
pattern BorderBottom v a = Style "border-bottom" v a

pattern BorderBottomImage :: HasFeatures a => Txt -> a -> a
pattern BorderBottomImage v a = Style "border-bottom-image" v a

pattern BorderLeft :: HasFeatures a => Txt -> a -> a
pattern BorderLeft v a = Style "border-left" v a

pattern BorderLeftImage :: HasFeatures a => Txt -> a -> a
pattern BorderLeftImage v a = Style "border-left-image" v a

pattern BorderRadius :: HasFeatures a => Txt -> a -> a
pattern BorderRadius v a = Style "border-radius" v a

pattern BorderTopRightRadius :: HasFeatures a => Txt -> a -> a
pattern BorderTopRightRadius v a = Style "border-top-right-radius" v a

pattern BorderBottomRightRadius :: HasFeatures a => Txt -> a -> a
pattern BorderBottomRightRadius v a = Style "border-bottom-right-radius" v a

pattern BorderBottomLeftRadius :: HasFeatures a => Txt -> a -> a
pattern BorderBottomLeftRadius v a = Style "border-bottom-left-radius" v a

pattern BorderTopLeftRadius :: HasFeatures a => Txt -> a -> a
pattern BorderTopLeftRadius v a = Style "border-top-left-radius" v a

pattern BorderStyle :: HasFeatures a => Txt -> a -> a
pattern BorderStyle v a = Style "border-style" v a

pattern BorderTopStyle :: HasFeatures a => Txt -> a -> a
pattern BorderTopStyle v a = Style "border-top-style" v a

pattern BorderRightStyle :: HasFeatures a => Txt -> a -> a
pattern BorderRightStyle v a = Style "border-right-style" v a

pattern BorderBottomStyle :: HasFeatures a => Txt -> a -> a
pattern BorderBottomStyle v a = Style "border-bottom-style" v a

pattern BorderLeftStyle :: HasFeatures a => Txt -> a -> a
pattern BorderLeftStyle v a = Style "border-left-style" v a

pattern BorderWidth :: HasFeatures a => Txt -> a -> a
pattern BorderWidth v a = Style "border-width" v a

pattern BorderTopWidth :: HasFeatures a => Txt -> a -> a
pattern BorderTopWidth v a = Style "border-top-width" v a

pattern BorderRightWidth :: HasFeatures a => Txt -> a -> a
pattern BorderRightWidth v a = Style "border-right-width" v a

pattern BorderBottomWidth :: HasFeatures a => Txt -> a -> a
pattern BorderBottomWidth v a = Style "border-bottom-width" v a

pattern BorderLeftWidth :: HasFeatures a => Txt -> a -> a
pattern BorderLeftWidth v a = Style "border-left-width" v a

pattern BorderColor :: HasFeatures a => Txt -> a -> a
pattern BorderColor v a = Style "border-color" v a

pattern BorderTopColor :: HasFeatures a => Txt -> a -> a
pattern BorderTopColor v a = Style "border-top-color" v a

pattern BorderRightColor :: HasFeatures a => Txt -> a -> a
pattern BorderRightColor v a = Style "border-right-color" v a

pattern BorderBottomColor :: HasFeatures a => Txt -> a -> a
pattern BorderBottomColor v a = Style "border-bottom-color" v a

pattern BorderLeftColor :: HasFeatures a => Txt -> a -> a
pattern BorderLeftColor v a = Style "border-left-color" v a

pattern BorderCollapse :: HasFeatures a => Txt -> a -> a
pattern BorderCollapse v a = Style "border-collapse" v a

pattern BorderSpacing :: HasFeatures a => Txt -> a -> a
pattern BorderSpacing v a = Style "border-spacing" v a

pattern ListStyle :: HasFeatures a => Txt -> a -> a
pattern ListStyle v a = Style "list-style" v a

pattern ListStyleType :: HasFeatures a => Txt -> a -> a
pattern ListStyleType v a = Style "list-style-type" v a

pattern ListStyleImage :: HasFeatures a => Txt -> a -> a
pattern ListStyleImage v a = Style "list-style-image" v a

pattern ListStylePosition :: HasFeatures a => Txt -> a -> a
pattern ListStylePosition v a = Style "list-style-position" v a

pattern ZIndex :: HasFeatures a => Txt -> a -> a
pattern ZIndex v a = Style "z-index" v a

pattern Display :: HasFeatures a => Txt -> a -> a
pattern Display v a = Style "display" v a

pattern Float :: HasFeatures a => Txt -> a -> a
pattern Float v a = Style "float" v a

pattern TableCaption :: HasFeatures a => Txt -> a -> a
pattern TableCaption v a = Style "table-caption" v a

pattern CaptionSide :: HasFeatures a => Txt -> a -> a
pattern CaptionSide v a = Style "caption-side" v a

pattern EmptyCells :: HasFeatures a => Txt -> a -> a
pattern EmptyCells v a = Style "empty-cells" v a

pattern TableLayout :: HasFeatures a => Txt -> a -> a
pattern TableLayout v a = Style "table-layout" v a

pattern Position :: HasFeatures a => Txt -> a -> a
pattern Position v a = Style "position" v a

pattern Top :: HasFeatures a => Txt -> a -> a
pattern Top v a = Style "top" v a

pattern Right :: HasFeatures a => Txt -> a -> a
pattern Right v a = Style "right" v a

pattern Bottom :: HasFeatures a => Txt -> a -> a
pattern Bottom v a = Style "bottom" v a

pattern Left :: HasFeatures a => Txt -> a -> a
pattern Left v a = Style "left" v a

pattern Overflow :: HasFeatures a => Txt -> a -> a
pattern Overflow v a = Style "overflow" v a

pattern Scroll :: HasFeatures a => Txt -> a -> a
pattern Scroll v a = Style "scroll" v a

pattern OverflowX :: HasFeatures a => Txt -> a -> a
pattern OverflowX v a = Style "overflow-x" v a

pattern OverflowY :: HasFeatures a => Txt -> a -> a
pattern OverflowY v a = Style "overflow-y" v a

pattern Clip :: HasFeatures a => Txt -> a -> a
pattern Clip v a = Style "clip" v a

pattern LineHeight :: HasFeatures a => Txt -> a -> a
pattern LineHeight v a = Style "line-height" v a

pattern Height :: HasFeatures a => Txt -> a -> a
pattern Height v a = Style "height" v a

pattern Width :: HasFeatures a => Txt -> a -> a
pattern Width v a = Style "width" v a

pattern MaxWidth :: HasFeatures a => Txt -> a -> a
pattern MaxWidth v a = Style "max-width" v a

pattern MinWidth :: HasFeatures a => Txt -> a -> a
pattern MinWidth v a = Style "min-width" v a

pattern MaxHeight :: HasFeatures a => Txt -> a -> a
pattern MaxHeight v a = Style "max-height" v a

pattern MinHeight :: HasFeatures a => Txt -> a -> a
pattern MinHeight v a = Style "min-height" v a

pattern BoxSizing :: HasFeatures a => Txt -> a -> a
pattern BoxSizing v a = Style "box-sizing" v a

pattern Font :: HasFeatures a => Txt -> a -> a
pattern Font v a = Style "font" v a

pattern FontFamily :: HasFeatures a => Txt -> a -> a
pattern FontFamily v a = Style "font-family" v a

pattern FontWeight :: HasFeatures a => Txt -> a -> a
pattern FontWeight v a = Style "font-weight" v a

pattern FontSize :: HasFeatures a => Txt -> a -> a
pattern FontSize v a = Style "font-size" v a

pattern BoxShadow :: HasFeatures a => Txt -> a -> a
pattern BoxShadow v a = Style "box-shadow" v a

pattern TextDecoration :: HasFeatures a => Txt -> a -> a
pattern TextDecoration v a = Style "text-decoration" v a

pattern TextDecorationColor :: HasFeatures a => Txt -> a -> a
pattern TextDecorationColor v a = Style "text-decoration-color" v a

pattern TextDecorationLine :: HasFeatures a => Txt -> a -> a
pattern TextDecorationLine v a = Style "text-decoration-line" v a

pattern TextDecorationStyle :: HasFeatures a => Txt -> a -> a
pattern TextDecorationStyle v a = Style "text-decoration-style" v a

pattern TextAlign :: HasFeatures a => Txt -> a -> a
pattern TextAlign v a = Style "text-align" v a

pattern VerticalAlign :: HasFeatures a => Txt -> a -> a
pattern VerticalAlign v a = Style "vertical-align" v a

pattern TextIndent :: HasFeatures a => Txt -> a -> a
pattern TextIndent v a = Style "text-indent" v a

pattern TextJustify :: HasFeatures a => Txt -> a -> a
pattern TextJustify v a = Style "text-justify" v a

pattern TextOverflow :: HasFeatures a => Txt -> a -> a
pattern TextOverflow v a = Style "text-overflow" v a

pattern TextShadow :: HasFeatures a => Txt -> a -> a
pattern TextShadow v a = Style "text-shadow" v a

pattern TextTransform :: HasFeatures a => Txt -> a -> a
pattern TextTransform v a = Style "text-transform" v a

pattern WhiteSpace :: HasFeatures a => Txt -> a -> a
pattern WhiteSpace v a = Style "white-space" v a

pattern Background :: HasFeatures a => Txt -> a -> a
pattern Background v a = Style "background" v a

pattern BackgroundColor :: HasFeatures a => Txt -> a -> a
pattern BackgroundColor v a = Style "background-color" v a

pattern BackgroundImage :: HasFeatures a => Txt -> a -> a
pattern BackgroundImage v a = Style "background-image" v a

pattern BackgroundRepeat :: HasFeatures a => Txt -> a -> a
pattern BackgroundRepeat v a = Style "background-repeat" v a

pattern BackgroundAttachment :: HasFeatures a => Txt -> a -> a
pattern BackgroundAttachment v a = Style "background-attachment" v a

pattern BackgroundPosition :: HasFeatures a => Txt -> a -> a
pattern BackgroundPosition v a = Style "background-position" v a

pattern BackgroundSize :: HasFeatures a => Txt -> a -> a
pattern BackgroundSize v a = Style "background-size" v a

pattern BackgroundOrigin :: HasFeatures a => Txt -> a -> a
pattern BackgroundOrigin v a = Style "background-origin" v a

pattern BackgroundClip :: HasFeatures a => Txt -> a -> a
pattern BackgroundClip v a = Style "background-clip" v a

pattern Cursor :: HasFeatures a => Txt -> a -> a
pattern Cursor v a = Style "cursor" v a

pattern Perspective :: HasFeatures a => Txt -> a -> a
pattern Perspective v a = Style "perspective" v a

pattern PerspectiveOrigin :: HasFeatures a => Txt -> a -> a
pattern PerspectiveOrigin v a = Style "perspective-origin" v a

pattern BackfaceVisibility :: HasFeatures a => Txt -> a -> a
pattern BackfaceVisibility v a = Style "backface-visibility" v a

pattern Transition :: HasFeatures a => Txt -> a -> a
pattern Transition v a = Style "transition" v a

pattern TransitionDelay :: HasFeatures a => Txt -> a -> a
pattern TransitionDelay v a = Style "transition-delay" v a

pattern TransitionDuration :: HasFeatures a => Txt -> a -> a
pattern TransitionDuration v a = Style "transition-duration" v a

pattern TransitionProperty :: HasFeatures a => Txt -> a -> a
pattern TransitionProperty v a = Style "transition-property" v a

pattern TransitionTimingFunction :: HasFeatures a => Txt -> a -> a
pattern TransitionTimingFunction v a = Style "transition-timing-function" v a

pattern WillChange :: HasFeatures a => Txt -> a -> a
pattern WillChange v a = Style "will-change" v a

pattern Animation :: HasFeatures a => Txt -> a -> a
pattern Animation v a = Style "animation" v a

pattern Transform :: HasFeatures a => Txt -> a -> a
pattern Transform v a = Style "transform" v a

pattern TransformStyle :: HasFeatures a => Txt -> a -> a
pattern TransformStyle v a = Style "transform-style" v a

pattern TransformOrigin :: HasFeatures a => Txt -> a -> a
pattern TransformOrigin v a = Style "transform-origin" v a

pattern Visibility :: HasFeatures a => Txt -> a -> a
pattern Visibility v a = Style "visibility" v a

pattern Direction :: HasFeatures a => Txt -> a -> a
pattern Direction v a = Style "direction" v a

pattern Opacity :: HasFeatures a => Txt -> a -> a
pattern Opacity v a = Style "opacity" v a

pattern AlignSelf :: HasFeatures a => Txt -> a -> a
pattern AlignSelf v a = Style "align-self" v a

pattern AlignContent :: HasFeatures a => Txt -> a -> a
pattern AlignContent v a = Style "align-content" v a

pattern JustifyContent :: HasFeatures a => Txt -> a -> a
pattern JustifyContent v a = Style "justify-content" v a

pattern AlignItems :: HasFeatures a => Txt -> a -> a
pattern AlignItems v a = Style "align-items" v a

pattern Order :: HasFeatures a => Txt -> a -> a
pattern Order v a = Style "order" v a

pattern FlexBasis :: HasFeatures a => Txt -> a -> a
pattern FlexBasis v a = Style "flex-basis" v a

pattern FlexGrow :: HasFeatures a => Txt -> a -> a
pattern FlexGrow v a = Style "flex-grow" v a

pattern Flex :: HasFeatures a => Txt -> a -> a
pattern Flex v a = Style "flex" v a

pattern FlexFlow :: HasFeatures a => Txt -> a -> a
pattern FlexFlow v a = Style "flex-flow" v a

pattern FlexDirection :: HasFeatures a => Txt -> a -> a
pattern FlexDirection v a = Style "flex-direction" v a

pattern FlexWrap :: HasFeatures a => Txt -> a -> a
pattern FlexWrap v a = Style "flex-wrap" v a
