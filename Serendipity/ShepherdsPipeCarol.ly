\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title       = "Shepherd's Pipe Carol"
  composer    = "John Rutter"
  poet        = "John Rutter"
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

 \paper {
   #(set-paper-size "a4")
   line-width = 180\mm
   left-margin = 20\mm
   bottom-margin = 10\mm
   top-margin = 10\mm
 }

global = {
  \override BreathingSign.Y-offset = #2.6
  \override BreathingSign.text = \markup { \musicglyph #"scripts.tickmark" }
  \key f \major
  \time 4/4
  \tempo 4=132
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "86a" } \time 4/4 s1*4
  \repeat volta 2 {
    \mark \markup { \circle "86b" } s1*2
    \mark \markup { \circle "86c" } s1*3
    \mark \markup { \circle "87a" } s1*2
    \mark \markup { \circle "87b" } s1
    \mark \markup { \box A }        s1
    \mark \markup { \circle "87c" } s1 \time 3/8 s4.*3
    \mark \markup { \circle "88a" } s4. \time 2/4 s2 \time 4/4 s1
    \mark \markup { \circle "88b" } s1*2
  }
  \alternative {
    {
      \mark \markup { \circle "88c" } s1*2
    }
    {
      s1*2
    }
  }
  \mark \markup { \box "C" } s16
  \mark \markup { \circle "89a" } s s8 s4 s2 s1
  \mark \markup { \circle "89b" } s1*3
  \mark \markup { \circle "89c" } s1*3
  \mark \markup { \circle "90a" } s1*2 \time 3/8 s4.*2
  \mark \markup { \circle "90b" } s4.*2 \time 2/4 s2 \time 4/4 s1
  \mark \markup { \circle "91a" } s1*3
  \mark \markup { \circle "91b" } s1*3
  \mark \markup { \circle "91c" } s1*3
  \mark \markup { \circle "92a" } s1*2
  \mark \markup { \circle "92b" } s1*3
  \mark \markup { \circle "92c" } s1 \time 3/8 s4.*2
  \mark \markup { \circle "93a" } s4.*2 \time 2/4 s2
  \mark \markup { \circle "93b" } \time 4/4 s1*2
  \mark \markup { \circle "93c" } s1*2
  \mark \markup { \circle "94a" } s1*2
  \mark \markup { \circle "94b" } s1*2
  \mark \markup { \circle "94c" } s1*2
  \mark \markup { \circle "95a" } s1*2
  \mark \markup { \circle "95b" } s1*2 \time 3/8 s4.
  \mark \markup { \circle "95c" } s4.*3 \time 2/4 s2
  \mark \markup { \circle "96a" } \time 4/4 s1*2
  \mark \markup { \circle "96b" } s1*4
}

sopranoJoint = \relative c' {
  \global
  s1
  s1
  s1
  s1
  \repeat volta 2 {
    \oneVoice r1 % 86b
    r1 \voiceOne
    c8-. d-. f-. g-. a-. r g-. f~ % 86c
    f8 \oneVoice r r4 r2
    r1
    r1 % 87a
    \voiceOne ees8-. f-. aes-. bes-. c-. \oneVoice r \voiceOne bes-. aes~
    aes8 \oneVoice r r4 r2 \voiceOne
    f'4 g8 e~e d c4
    ees4 f8 d~d c bes4 \time 3/8 % 87b
    des4 ees8
    c4 des8
    bes4 c8
    aes4 bes8 % 88a
    \time 2/4 g8 aes g c \time 4/4
    c,8 d f a c4 bes8(a)
    bes4 \breathe c8 c a(g) f4 % 88b
    f8 g a c f \oneVoice r \voiceOne c8 f,~
  }
  \alternative {
    {
      f8 \oneVoice r r4 r2 % 88c
      r1 \voiceOne
    }
    {
      f8 \oneVoice r r4 r2 % 88c
    }
  }
  r1 \voiceOne \break
  s1*10
  \time 3/8 s4.*4
  \time 2/4 s2
  \time 4/4 s1*4
  \oneVoice r1 % 91b
  r1
  r1
  r1 % 91c
  \voiceOne c8-. d-. f-. g-. a-. \oneVoice r \voiceOne g-. f~
  f8 \oneVoice r r4 r2 \voiceOne
  c8 d f a c4 bes8 a % 92a
  bes4-- c8 c a(g) f4
  ees8-. g-. aes-. bes-. c-. \oneVoice r \voiceOne bes-. aes~ % 92b
  aes8 \oneVoice r r4 r2 \voiceOne
  f'4 g8 e~e d c4
  ees4 f8 d~d c bes4 % 92c
  \time 3/8 des4 ees8
  c4 des8
  bes4 c8 % 83a
  aes4 bes8
  \time 2/4 g8 aes g c
  \time 4/4
  c,8 d f a c4 bes8(a) % 93b
  bes4 c8 c a(g) f4
  f8 g a c f \oneVoice r \voiceOne c f,~ % 93c
  f8 \oneVoice r r4 r2 \voiceOne
  c8 d f a c4 bes8 a % 94a
  bes4 c8 c a g f4
  c8-. d-. f-. g-. a-. \oneVoice r \voiceOne g-. f~ % 94b
  f8 \oneVoice r r4 r2 \voiceOne
  c8 d f a c4 bes8 a % 94c
  bes4 c a8(g) f4
  ees8-. f-. aes-. bes-. c-. \oneVoice r \voiceOne bes-. aes~ % 95a
  aes8 \oneVoice r r4 r2 \voiceOne
  f'4 g8 e~e d c4 % 95b
  ees4 f8 d~d c bes4
  \time 3/8 des4 ees8
  c4 des8 % 95c
  bes4 c8
  aes4 bes8
  \time 2/4 g8 aes g c
  \time 4/4 c,8 d f a c4 bes8(a) % 96a
  bes4 c a8(g) f4
  f8 g a c f2~ % 96b
  f2 c
  c1~
  c8 \oneVoice r r4 r2
  \bar "|."
}

sopranoSeparate = \relative c' {
  \global
  s1*4
  \repeat volta 2 {
    s1*10
    \time 3/8 s4.*4
    \time 2/4 s2
    \time 4/4 s1*3
  }
  \alternative {
    {
      s1*2
    }
    {
      s1
    }
  }
  r1
  c8 d f a c4 bes8 a % 89a
  bes4 c a8(g) f4
  c8 d f g a4 g8 f~ % 89b
  f2 r
  c8 d f-- a c4 bes8(a)
  bes4 c a8 g f4 % 89c
  ees8 f aes bes c4 bes8 aes~(
  aes4. bes8 c2)
  d2(c % 90a
  bes2 c)
  \time 3/8 des4 ees8
  c4 des8
  bes4 c8 % 90b
  aes4 bes8
  \time 2/4 g8 aes g c
  \time 4/4 c,8 d f a c4 bes8 a
  bes4 c a8(g) f4 % 91a
  f8 g a c f4 c
  f,2 r
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1 % 86a
  s1
  s1
  s1
  \repeat volta 2 {
    s1 % 86b
    s1
    s1 % 86c
    s1
    s1
    s1 % 87a
    s1
    s1 % 87b
    s1
    s1 % 87c
    \time 3/8 s4.
    s4.
    s4.
    s4. % 88a
    \time 2/4 s2
    \time 4/4 s1
    s1 % 88b
    s1
  }
  \alternative {
    {
      s1
      s1
    }
    {
      s1
    }
  }
  s1
  s1^\markup{\dynamic mp \bold \italic {dolce e legato}}
  s1
  s1 % 89b
  s1
  s1
  s1 % 89c
  s1
  s1 \cresc
  s1\mp % 90a
  s1
  \time 3/8 s4.
  s4.
  s4. % 90b
  s4.
  \time 2/4 s2
  \time 4/4 s1
  s2 s\dim % 91a
  s1 \pp
  s1
  % nothing more to see here!
}

%%% Lyrics for scores

LyricsSopranoJointAboveRepeat = \lyricmode { % lyrics above sopranos
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  \override Lyrics.LyricText.font-shape = #'italic
  An- gels in __ the sky brought this mes- sage nigh:
  'Dance and sing for joy that Christ the new- born King is come
  to bring us peace on __ earth,
  and he's ly- ing‿ cra- dled there at Beth- le- hem.' __

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  An- gels in __ the sky brought this mes- sage nigh:
  'Dance and sing for joy that Christ the new- born King is come
  to bring us peace on __ earth,
  and he's ly- ing‿ cra- dled there at Beth- le- hem.'

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  An- gels in __ the sky brought this mes- sage nigh:
  'Dance and sing for joy that Christ the in- fant King
  is 
  \revert Lyrics.LyricText.font-shape
}

LyricsSopranoJointAboveSingle = \lyricmode { % lyrics above sopranos
  \override Lyrics.LyricText.font-shape = #'italic
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  An- gels in __ the sky brought this mes- sage nigh:
  'Dance and sing for joy that Christ the new- born King is come
  to bring us peace on __ earth,
  and he's ly- ing‿ cra- dled there at Beth- le- hem.'

  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  An- gels in __ the sky brought this mes- sage nigh:
  'Dance and sing for joy that Christ the new- born King is come
  to bring us peace on __ earth,
  and he's ly- ing‿ cra- dled there at Beth- le- hem.'

  _ _ _ _ _ _ _ _ _ _
  _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  An- gels in __ the sky brought this mes- sage nigh:
  'Dance and sing for joy that Christ the new- born King is come
  to bring us peace on __ earth,
  and he's ly- ing‿ cra- dled there at Beth- le- hem.'

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  An- gels in __ the sky brought this mes- sage nigh:
  'Dance and sing for joy that Christ the in- fant King
  is 
  \revert Lyrics.LyricText.font-shape
}

LyricsSopranoSingleAbove = \lyricmode {}

LyricsOne = \lyricmode {
  \set stanza = "1. "
  Go- ing through the hills on a night all star- _ ry
  On the way to Beth- le- hem, __
  Far a- way I heard a __ _ shep- herd boy pi- ping
  On the way to Beth- le- hem. __
}

LyricsSpace = \lyricmode { _ }

LyricsChorus = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  An- gels __ brought this mes- sage:
  'Dance and sing __ for joy __ that Christ __ the King is come
  to bring us peace on __ earth,
  and he's ly- ing‿ cra- dled there at Beth- le- hem.' __
  \revert Lyrics.LyricText.font-shape
}

LyricsTwo = \lyricmode {
  \set stanza = "2. "
  'Tell me, shep- herd boy pi- ping tunes so mer- ri- ly
  On the way to Beth- le- hem, __
  Who will hear your tunes on these hills __ _ so lone- ly
  On the way to Beth- le- hem?'
}

LyricsThree = \lyricmode {
  \set stanza = "3. "
  'None may hear my pipes on these hills so lone- ly
  On the way to Beth- le- hem; __
  But a King will hear me __
  play sweet lul- la- bies
  When I get to Beth- le- hem.' __
  \override Lyrics.LyricText.font-shape = #'italic
  Ah __
  Hov- ered o'er the man- ger where the babe was ly- ing‿ cra- dled
  in the arms of his mo- ther Ma- ry,
  sleep- ing now at Beth- le- hem.
}

LyricsFourTenor = \lyricmode {
  \set stanza = "4. "
  'Where is this new King, shep- herd boy pip- ing mer- ri- ly,
  Is he here at Beth- le- hem?'
  _ _ _ _ _ _ _
}

LyricsSopranoJointBelow = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  'I will find him soon by the star shi- ning bright- ly
  In the sky o'er Beth- le- hem.' __
}

LyricsSopranoJointBelowSingle = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  'I will find him soon by the star shi- ning bright- ly
  In the sky o'er Beth- le- hem.' __
}

LyricsFive = \lyricmode {
  \set stanza = "5. "
  'May I come with you, shep- herd boy pi- ping mer- ri- ly,
  Come with you to Beth- le- hem? __
  Pay my hom- age too at the new King's cra- dle,
  Is it far to Beth- le- "hem?'" __
}

LyricsChorusFive = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  An- gels __ brought this mes- sage:
  'Dance and sing __ for joy __ that Christ __ the King is
  born this night in low- ly __ sta- ble yon- der,
  Born for you at Beth- le- "hem.'" __
  \revert Lyrics.LyricText.font-shape
}

wordsAlto = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  Ah __ Ah __ Ah __
  Ah __ Ah __ Ah __ Ah __
  \revert Lyrics.LyricText.font-shape
}

wordsTenor = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  Ah __ Ah __ Ah __ Ah __
  An- gels in __ the sky‿ came down from on high,
  Ah __ Ah __ Ah __
  \revert Lyrics.LyricText.font-shape
}

wordsBass = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  Ah __ Ah __ Ah __
  Ah __ Ah __ Ah __
  \revert Lyrics.LyricText.font-shape
}

%%% Lyrics for karaoke

MLyricsSopranoJoint = \lyricmode { % midi lyrics for sopranos
  "On " "the " "way " "to " Beth le "hem,
"
  "On " "the " "way " "to " Beth le "hem,
"
  An "gels " "in " "the " "sky
" "brought " "this " mes "sage " "nigh:
"
  "'Dance " "and " "sing " "for " "joy
" "that " "Christ " "the " new "born " "King
" "is " "come "  "to " "bring
" "us " "peace " "on " "earth,
"
  "and " "he's " ly "ing‿ " "cra" "dled
" "there " "at " "Beth" "le" "hem.'

"
  "On " "the " "way " "to " Beth le "hem,
"
  "On " "the " "way " "to " Beth le "hem,
"
  An "gels " "in " "the " "sky
" "brought " "this " mes "sage " "nigh:
"
  "'Dance " "and " "sing " "for " "joy
" "that " "Christ " "the " new "born " "King
" "is " "come " "to " "bring
" "us " "peace " "on " "earth,
"
  "and " "he's " ly "ing‿ " "cra" "dled
" "there " "at " "Beth" "le" "hem.'

"

  "Is " "he " "here" "at " Beth le "hem, "
  "'I " "will " "find " "him " "soon " "by " "the " "star " "shi" "ning " "bright" "ly "
  "In " "the " "sky " "o'er " "Beth" "le" "hem.' "
  
  An "gels " "in " "the " "sky " "brought " "this " "mes" "sage " "nigh: "
  "'Dance " "and " "sing " "for " "joy " "that " "Christ " "the " "new" "born " "King " "is " "come "
  "to " "bring " "us " "peace " "on " "earth, "
  "and " "he's " "ly" "ing‿ " "cra" "dled " "there " "at " "Beth" "le" "hem.' "

  \set stanza = "5. "
  "'May " "I " "come " "with " "you, " "shep" "herd " "boy " "pi" "ping " "mer" "ri" "ly, "
  "Come " "with " "you " "to " "Beth" "le" "hem "
  "Pay " "my " "hom" "age " "too " "at " "the " "new " "King's " "cra" "dle, "
  "Is " "it " "far " "to " "Beth" "le" "hem?' "

  "An" "gels " "in " "the " "sky " "brought " "this " "mes" "sage " "nigh: "
  "'Dance " "and " "sing " "for " "joy " "that " "Christ " "the " "in" "fant " "King "
  "is  " "born " "this " "night " "in " "low" "ly " "sta" "ble " "yon" "der, "
  "Born " "for " "you " "at " "Beth" "le" "hem.' "
}

MLyricsSopranoSeparate = \lyricmode {
  \set stanza = "3. "
  "'None " "may " "hear " "my " "pipes " "on " "these " "hills " "so " "lone" "ly "
  "On " "the " "way " "to " "Beth" "le" "hem; "
  "But " "a " "King " "will " "hear " "me "
  "play " "sweet " "lul" "la" "bies "
  "When " "I " "get " "to " "Beth" "le" "hem.' "
  "Ah "
  "Hov" "ered " "o'er " "the " "man" "ger " "where " "the " "babe " "was " "ly" "ing‿ " "cra" "dled "
  "in " "the " "arms " "of " "his " "mo" "ther " "Ma" "ry, "
  "sleep" "ing " "now " "at " "Beth" "le" "hem. "
}

MLyricsAltoJoint = \lyricmode {
  "On " "the " "way " "to " Beth le "hem, "
  "On " "the " "way " "to " Beth le "hem, "
  "An" "gels " __ "brought " "this " "mes" "sage: "
  "'Dance " "and " "sing " __ "for " "joy " __ "that " "Christ " __ "the " "King " "is " "come "
  "to " "bring " "us " "peace " "on " __ "earth, "
  "and " "he's " "ly" "ing‿ " "cra" "dled " "there " "at " "Beth" "le" "hem.' "

  "On " "the " "way " "to " Beth le "hem, "
  "On " "the " "way " "to " Beth le "hem, "
  "An" "gels " __ "brought " "this " "mes" "sage: "
  "'Dance " "and " "sing " __ "for " "joy " __ "that " "Christ " __ "the " "King " "is " "come "
  "to " "bring " "us " "peace " "on " __ "earth, "
  "and " "he's " "ly" "ing‿ " "cra" "dled " "there " "at " "Beth" "le" "hem.' "

  "Is " "he " "here " "at " Beth le "hem? "
  "'I " "will " "find " "him " "soon " "by " "the " "star " "shi" "ning " "bright" "ly "
  "In " "the " "sky " "o'er " "Beth" "le" "hem.' " __
  "An" "gels " __ "brought " "this " "mes" "sage: "
  "'Dance " "and " "sing " __ "for " "joy " __ "that " "Christ " __ "the " "King " "is " "come "
  "to " "bring " "us " "peace " "on " __ "earth, "
  "and " "he's " "ly" "ing‿ " "cra" "dled " "there " "at " "Beth" "le" "hem.' "
  \set stanza = "5. "
  "'May " "I " "come " "with " "you, " "shep" "herd " "boy " "pi" "ping " "mer" "ri" "ly, "
  "Come " "with " "you " "to " "Beth" "le" "hem? "
  "Pay " "my " "hom" "age " "too " "at " "the " "new " "King's " "cra" "dle, "
  "Is " "it " "far " "to " "Beth" "le" "hem?' "
  "An" "gels " __ "brought " "this " "mes" "sage: "
  "'Dance " "and " "sing " __ "for " "joy " __ "that " "Christ " __ "the " "King " "is "
  "born " "this " "night " "in " "low" "ly " __ "sta" "ble " "yon" "der, "
  "Born " "for " "you " "at " "Beth" "le" "hem.' "
}

MLyricsSopranoJointAboveSingle = \lyricmode { % lyrics above sopranos
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  "An" "gels " "in " __ "the " "sky " "brought " "this " "mes" "sage " "nigh: "
  "'Dance " "and " "sing " "for " "joy " "that " "Christ " "the " "new" "born " "King " "is " "come "
  "to " "bring " "us " "peace " "on " __ "earth, "
  "and " "he's " "ly" "ing‿ " "cra" "dled " "there " "at " "Beth" "le" "hem.' "

  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  "An" "gels " "in " __ "the " "sky " "brought " "this " "mes" "sage " "nigh: "
  "'Dance " "and " "sing " "for " "joy " "that " "Christ " "the " "new" "born " "King " "is " "come "
  "to " "bring " "us " "peace " "on " __ "earth, "
  "and " "he's " "ly" "ing‿ " "cra" "dled " "there " "at " "Beth" "le" "hem.' "

  _ _ _ _ _ _ _ _ _ _
  _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  "An" "gels " "in " __ "the " "sky " "brought " "this " "mes" "sage " "nigh: "
  "'Dance " "and " "sing " "for " "joy " "that " "Christ " "the " "new" "born " "King " "is " "come "
  "to " "bring " "us " "peace " "on " __ "earth, "
  "and " "he's " "ly" "ing‿ " "cra" "dled " "there " "at " "Beth" "le" "hem.' "

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "An" "gels " "in " __ "the " "sky " "brought " "this " "mes" "sage " "nigh: "
  "'Dance " "and " "sing " "for " "joy " "that " "Christ " "the " "in" "fant " "King "
  "is  "
}

MLyricsSopranoSingleAbove = \lyricmode {}

MLyricsOne = \lyricmode {
  \set stanza = "1. "
  "Go" "ing " "through " "the " "hills " "on " "a " "night " "all " "star" _ "ry "
  "On " "the " "way " "to " "Beth" "le" "hem, " __
  "Far " "a" "way " "I " "heard " "a " __ _ "shep" "herd " "boy " "pi" "ping "
  "On " "the " "way " "to " "Beth" "le" "hem. " __
}

MLyricsChorus = \lyricmode {
  "An" "gels " __ "brought " "this " "mes" "sage: "
  "'Dance " "and " "sing " __ "for " "joy " __ "that " "Christ " __ "the " "King " "is " "come "
  "to " "bring " "us " "peace " "on " __ "earth, "
  "and " "he's " "ly" "ing‿ " "cra" "dled " "there " "at " "Beth" "le" "hem.' " __
}

MLyricsTwo = \lyricmode {
  \set stanza = "2. "
  "'Tell " "me, " "shep" "herd " "boy " "pi" "ping " "tunes " "so " "mer" "ri" "ly "
  "On " "the " "way " "to " "Beth" "le" "hem, " __
  "Who " "will " "hear " "your " "tunes " "on " "these " "hills " __ _ "so " "lone" "ly "
  "On " "the " "way " "to " "Beth" "le" "hem?' "
}

MLyricsFourTenor = \lyricmode {
  \set stanza = "4. "
  "'Where " "is " "this " "new " "King, " "shep" "herd " "boy " "pip" "ing " "mer" "ri" "ly, "
  "Is " "he " "here " "at " "Beth" "le" "hem?' "
  "In " "the " "sky " "o'er " Beth le "hem. "
}

MLyricsSopranoJointBelow = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
}

MLyricsSopranoJointBelowSingle = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
  "'I " "will " "find " "him " "soon " "by " "the " "star " "shi" "ning " "bright" "ly "
  "In " "the " "sky " "o'er " "Beth" "le" "hem.' " __
}

MLyricsFive = \lyricmode {
  \set stanza = "5. "
  "'May " "I " "come " "with " "you, " "shep" "herd " "boy " "pi" "ping " "mer" "ri" "ly, "
  "Come " "with " "you " "to " "Beth" "le" "hem? "
  "Pay " "my " "hom" "age " "too " "at " "the " "new " "King's " "cra" "dle, "
  "Is " "it " "far " "to " "Beth" "le" "hem?' " __
}

MLyricsChorusFive = \lyricmode {
  "An" "gels " __ "brought " "this " "mes" "sage: "
  "'Dance " "and " "sing " __ "for " "joy " __ "that " "Christ " __ "the " "King " "is "
  "born " "this " "night " "in " "low" "ly " __ "sta" "ble " "yon" "der, "
  "Born " "for " "you " "at " "Beth" "le" "hem.' " __
}

MwordsAlto = \lyricmode {
  "Ah " __ "Ah " __ "Ah " __
  "Ah " __ "Ah " __ "Ah " __ "Ah " __
}

MwordsTenor = \lyricmode {
  "Ah " __ "Ah " __ "Ah " __ "Ah " __
  "An" "gels " "in " __ "the " "sky‿ " "came " "down " "from " "on " "high, "
  "Ah " __ "Ah " __ "Ah " __
}

MwordsBass = \lyricmode {
  "Ah " "Ah " "Ah " "Ah " "Ah " "Ah "
}

altoJoint = \relative c' {
  \global
  s1 % 86a
  s1
  s1
  s1
  \repeat volta 2 {
    s1 % 86b
    s1
    a8-. bes-. c-. c-. f-. s d-. c~ % 86c
    c8 s8 s4 s2
    s1
    s1 % 87a
    ees8-. des-. ees-. ees-. aes-. s f-. ees~
    ees s s4 s2 % 87b
    bes'4. a8~a2
    aes4 aes8 g~g4 g % 87c
    \time 3/8 f4 ees8
    aes4 f8
    g4 g8
    g8(f) f % 88a
    \time 2/4 ees4 d
    \time 4/4 c8 d f a c4 bes8(a)
    bes4 c8 c a(g) f4 % 88b
    d8 e f g bes s a f~
  }
  \alternative {
    {
      f8 s s4 s2 % 88c
      s1
    }
    {
      f8 s s4 s2
    }
  }
  s1
  s1*10
  \time 3/8 s4.*4
  \time 2/4 s2
  \time 4/4 s1*4
  s1 % 91b
  s1
  s1
  s1 % 91c
  c8-. d-. f-. g-. a-. s g-. f~
  f8 s s4 s2
  c8 d f a c4 bes8 a % 92a
  bes4-- c8 c a(g) f4
  ees8-. des-. ees-. ees-. aes-. s f-. ees~ % 92b
  ees8 s s2.
  bes'4. a8~a2
  aes4 aes8 g~g4 g % 92c
  \time 3/8 f4 ees8
  aes4 f8
  g4 g8 % 93a
  g8(f) f
  \time 2/4 ees4 \breathe d
  \time 4/4 c8 d f a c4 bes8(a) % 93b
  bes4 \breathe c8 c a(g) f4
  d8 e f g bes s a f~ % 93c
  f8 s s2.
  c8 d f a c4 bes8 a % 94a
  bes4 c8 c a g f4
  a,8 bes c c f s d c~ % 94b
  c8 s s2.
  c8 d f a c4 bes8 a % 94c
  bes4 c a8(g) f4
  ees8-. des-. ees-. ees-. aes-. s f-. ees8~ % 95a
  ees8 s s2.
  bes'4. a8~a2 % 95b
  aes4 aes8 g~g4 g
  \time 3/8 f4 ees8
  aes4 f8 % 95c
  g4 g8
  g8(f) f
  \time 2/4 ees4 d
  \time 4/4 c8 d f a c4 bes8(a) % 96a
  bes4 c a8(g) f4
  d8 e f g bes2~ % 96b
  bes2 g
  g2(f~
  f8) s s2.
  \bar "|."
}

altoSeparate = \relative c' {
  \global
  s1*4
  \repeat volta 2 {
    s1*10
    \time 3/8 s4.*4
    \time 2/4 s2
    \time 4/4 s1*3
  }
  \alternative {
    {
      s1*2
    }
    {
      s1
    }
  }
  r1
  f2(e % 89a
  ees2 d
  bes2) d( % 89b
  e4 d2 e4
  f2) e(
  ees2 d % 89c
  ees2) f(
  ees4 f2 g4
  bes2) a( % 90a
  g2 aes~
  \time 3/8 aes4.
  g4.
  f4. % 90b
  ees4.~
  \time 2/4 ees4) d(
  \time 4/4 c4 f e2
  ees2) d~( % 91a
  d1
  c2) r
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1 % 86a
  s1
  s1
  s1
  \repeat volta 2 {
    s1 % 86b
    s1
    s1 % 86c
    s1
    s1
    s1 % 87a
    s1
    s1 % 87b
    s1
    s1 % 87c
    \time 3/8 s4.
    s4.
    s4.
    s4. % 88a
    \time 2/4 s2
    \time 4/4 s1
    s1 % 88b
    s1
  }
  \alternative {
    {
      s1
      s1
    }
    {
      s1
    }
  }
  s1
  s1\p
  s1
  s1 % 89b
  s1
  s1
  s1 % 89c
  s1
  s1 \cresc
  s1\mp % 90a
  s2 s\dim
  \time 3/8 s4.\p
  s4.
  s4. % 90b
  s4.
  \time 2/4 s2
  \time 4/4 s1
  s2 s\dim % 91a
  s1 \pp
  s1
  % nothing more to see here!
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1 % 86a
  s1
  s1
  s1
  \repeat volta 2 {
    s1 % 86b
    s1
    s1\p -\markup delicately % 86c
    s1
    s1
    s1 % 87a
    s1\p
    s1 % 87b
    s1-\markup { \dynamic mf \bold legato}
    s1 % 87c
    \time 3/8 s4.
    s4.
    s4.
    s4. % 88a
    \time 2/4 s2
    \time 4/4 s1
    s1 % 88b
    s1
  }
  \alternative {
    {
      s1
      s1
    }
    {
      s1
    }
  }
  s1
  s1 % 89a
  s1
  s1 % 89b
  s1
  s1
  s1 % 89c
  s1
  s1
  s1 % 90a
  s1
  \time 3/8 s4.
  s4.
  s4. % 90b
  s4.
  \time 2/4 s2
  \time 4/4 s1
  s1 % 91a
  s1
  s1
  s1 % 91b
  s1
  s1
  s1 % 91c
  s1\mp
  s1
  s1 \mf % 92a
  s1
  s1 % 92b
  s1
  s1\f
  s1 % 92c
  \time 3/8 s4.
  s4.
  s4. % 93a
  s4.
  \time 2/4 s2
  \time 4/4 s1 % 93b
  s1
  s1\mp % 93c
  s1
  s1\mf % 94a
  s1
  s1 % 94b
  s1
  s1 % 94c
  s1
  s1 % 95a
  s1
  s1\f % 95b
  s1
  \time 3/8 s4.
  s4. % 95c
  s4.
  s4.
  \time 2/4 s2
  \time 4/4 s1\dim % 96a
  s1
  s1\p % 96b
  s1
  s2^\markup{ \bold rit} \< s\>
  s1\!
}

tenorJoint = \relative c {
  \global
  s1 % 86a
  s1
  s1
  s1
  \repeat volta 2 {
    c8 d f a c4 bes8 a
    bes4 c a8 g f4
    c'8-. bes-. a-. c-. bes-. \oneVoice r \voiceOne bes-. a~ % 86c
    a8 \oneVoice r r4 r2 \voiceOne
    c,8 d f a c4 bes8 a
    bes8 bes c4 a8(g) f4 % 87a
    c'8-. des-. c-. ees-. d-. \oneVoice r \voiceOne d-. c~
    c8 \oneVoice r r4 r2 \voiceOne % 87b
    d4. c8~c2
    ces4 ces8 bes8~bes4 bes4 % 87c
    \time 3/8 bes4 bes8
    c4 aes8
    g8(aes) bes
    c4 c8 % 88a
    \time 2/4 b4 \breathe bes
    \time 4/4 a8 d, f a c4 bes8(a)
    bes4 \breathe c8 c a(g) f4 % 88b
    c'8 c d c d \oneVoice r \voiceOne bes a~
  }
  \alternative {
    {
      a8 \oneVoice r r4 r2 \voiceOne
      r1
    }
    {
      \voiceOne a8 \oneVoice r r4 r2 \voiceOne
    }
  }
  r1
  s1*10
  \time 3/8 s4.*4
  \time 2/4 s2
  \time 4/4 s1*4
  \oneVoice r1 % 91b
  r1 \voiceOne
  c,8 d f a c4 bes8 a
  bes4 c8 c a g f4 % 91c
  c'8-. bes-. a-. c-. bes-. \oneVoice r \voiceOne bes-. a~
  a8 \oneVoice r r4 r2
  r1 % 92a
  r1 \voiceOne
  c8-. des-. c-. ees-. des-. \oneVoice r \voiceOne des-. c~ % 92b
  c8 \oneVoice r r4 r2 \voiceOne
  d4. c8~c2
  ces4 ces8 bes~bes4 bes % 92c
  \time 3/8 bes4 bes8
  c4 aes8
  g8(aes) bes % 93a
  c4 c8
  \time 2/4 b4 \breathe bes
  \time 4/4 a8 d, f a c4 bes8(a) % 93b
  bes4 \breathe c8 c a(g) f4
  c'8 c d c d \oneVoice r \voiceOne bes a~
  a8 \oneVoice r r4 r2 \voiceOne
  c,8 d f a c4 bes8 a % 94a
  bes4 c8 c a g f4
  c'8-. bes-. a-. c-. bes-. \oneVoice r \voiceOne bes-. a~ % 94b
  a8 \oneVoice r r4 r2 \voiceOne
  c,8 d f a c4 bes8 a % 94c
  bes4 c a8(g) f4
  c'8-. des-. c-. ees-. des-. \oneVoice r \voiceOne des-. c~ % 95a
  c8 \oneVoice r r4 r2 \voiceOne
  d4. c8~c2 % 95b
  ces4 ces8 bes~bes4 bes
  \time 3/8 bes4 bes8
  c4 aes8 % 95c
  g8(aes) bes
  c4 c8
  \time 2/4 b4 bes
  \time 4/4 a8 d, f a c4 bes8(a) % 96a
  bes4 c a8(g) f4
  f'8 e d c d2~ % 96b
  d2 <bes d>
  <a d>2(<g des'>
  <a c>8) \oneVoice r r4 r2
  \bar "|."
}

tenorSeparateOne = \relative c' {
  \global
  \voiceOne
  s1*4
  \repeat volta 2 {
    s1*10
    \time 3/8 s4.*4
    \time 2/4 s2
    \time 4/4 s1*3
  }
  \alternative {
    {
      s1*2
    }
    {
      s1
    }
  }
  \oneVoice r1 \voiceOne
  c1( % 89a
  bes4 a g2~
  g2) g2( % 89b
  c2 bes)
  c1(
  bes2 a % 89c
  aes2) \oneVoice des2(
  c2 d4 e)
  f4 g8 e~e d c4 % 90a
  ees4 f8 d~d c bes4
  \time 3/8 f'4.(
  ees4.
  des4. % 90b
  c4.
  \time 2/4 b4) bes(
  \time 4/4 a2 c
  bes2 a~ % 91a
  a2) bes(
  a2) \oneVoice r \voiceOne
}

tenorSeparateTwo = \relative c' {
  \global
  \voiceTwo
  s1*4
  \repeat volta 2 {
    s1*10
    \time 3/8 s4.*4
    \time 2/4 s2
    \time 4/4 s1*3
  }
  \alternative {
    {
      s1*2
    }
    {
      s1
    }
  }
  s1
  a2( g~ % 89a
  g4 a b2
  c2) bes( % 89b
  a2 g)
  a2( g~
  g2 f % 89c
  aes2) s
  s1
  s1 % 90a
  s1
  \time 3/8 s4.
  s4.
  s4. % 90b
  s4. \time 2/4 s4 bes(
  \time 4/4 a2 g~
  g2 f~ % 91a
  f2) g(
  a2) s
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1 % 86a
  s1
  s1
  s1
  \repeat volta 2 {
    s1 % 86b
    s1
    s1 % 86c
    s1
    s1
    s1 % 87a
    s1
    s1 % 87b
    s1
    s1 % 87c
    \time 3/8 s4.
    s4.
    s4.
    s4. % 88a
    \time 2/4 s2
    \time 4/4 s1
    s1 % 88b
    s1
  }
  \alternative {
    {
      s1
      s1
    }
    {
      s1
    }
  }
  s1
  s1\p
  s1
  s1 % 89b
  s1
  s1
  s1 % 89c
  s1
  s1 \cresc
  s1^\markup{\dynamic mf \bold \italic legato} % 90a
  s1
  \time 3/8 s4.\p
  s4.
  s4. % 90b
  s4.
  \time 2/4 s2
  \time 4/4 s1
  s2 s\dim % 91a
  s1 \pp
  s1
  % nothing more to see here!
}

bassJoint= \relative c {
  \global
  s1 % 86a
  s1
  s1
  s1
  \repeat volta 2 {
    c8 d f a c4 bes8 a % 86b
    bes4 c a8 g f4
    a8-. g-. f-. e-. d-. s e-. f~ % 86c
    f8 s s4 s2
    c8 d f a c4 bes8 a
    bes8 bes c4 a8(g) f4 % 87a
    c'8-. bes-. aes-. g-. f-. s g-. aes~
    a8 s s4 s2 % 87b
    f4. f8~f2
    f4 f8 f~f4 f % 87c
    \time 3/8 bes4 g8
    g8(f) f
    f8(e) e
    ees4 d8 % 88a
    \time 2/4 des4 c
    \time 4/4 g'8 d f a c4 bes8(a)
    bes4 c8 c a(g) f4 % 88b
    c'8 c bes a g s c, f~
  }
  \alternative {
    {
      f8 s s4 s2
      s1
    }
    {
      f8 s s4 s2
    }
  }
  s1
  s1*10
  \time 3/8 s4.*4
  \time 2/4 s2
  \time 4/4 s1*4
  s1 % 91b
  s1
  c8 d f a c4 bes8 a
  bes4 c8 c a g f4 % 91c
  a8-. g-. f-. e-. d-. s e f~
  f8 s s4 s2
  s1 % 92a
  s1
  c'8-. bes aes g f s g aes~ % 92b
  aes s s2.
  f4. f8~f2
  f4 f8 f~f4 f
  \time 3/8 bes4 g8
  g8(f) f
  f8(e) e % 93a
  ees4 d8
  \time 2/4 des4 c
  \time 4/4 f8 d f a c4 bes8(a) % 93b
  bes4 c8 c a8(g) f4
  c'8 c bes a g s c,8 f~ % 93c
  f8 s s2.
  c8 d f a c4 bes8 a % 94a
  bes4 c8 c a g f4
  a8 g f e d s e f~ % 94b
  f8 s s2.
  c8 d f a c4 bes8 a % 94c
  bes4 c a8(g) f4
  c'8 bes aes g f s g aes~ % 95a
  aes8 s s2.
  d,4. d8~d2 % 95b
  f4 f8 f~f4 f
  \time 3/8 bes4 g8
  g8(f) f % 95c
  f8(e) e
  ees4 d8
  \time 2/4 des4 c
  \time 4/4 f8 d f a c4 bes8(a) % 96a
  bes4 c a8(g) f4
  d'8 c bes a g2~ % 96b
  g2 c,
  f2(ees
  f8) s s2.
  \bar "|."
}

bassSeparateOne = \relative c {
  \global
  \voiceOne
  s1*4
  \repeat volta 2 {
    s1*10
    \time 3/8 s4.*4
    \time 2/4 s2
    \time 4/4 s1*3
  }
  \alternative {
    {
      s1*2
    }
    {
      s1
    }
  }
  r1
  c1(~ % 89a
  c2 d
  f2) e2( % 89b
  c2 d
  c1
  f,2 bes4) b4( \oneVoice % 89c
  c2 ees
  aes2 g)
  f1~ % 90a
  f2 bes,2(
  \time 3/8 ees4.~
  ees4.~
  ees4.~ % 90b
  ees4.
  \time 2/4 des4 c)
  \time 4/4 \voiceOne c1(
  f,2 bes % 91a
  c1~
  c2) \oneVoice r \break
}

bassSeparateTwo = \relative c, {
  \global
  \voiceTwo
  s1*4
  \repeat volta 2 {
    s1*10
    \time 3/8 s4.*4
    \time 2/4 s2
    \time 4/4 s1*3
  }
  \alternative {
    {
      s1*2
    }
    {
      s1
    }
  }
  r1
  f1~ % 89a
  f1
  g2 c( % 89b
  f,1~
  f1~
  f2 bes4) b % 89c
  s1
  s1
  s1 % 90a
  s1
  \time 3/8 s4.
  s4.
  s4. % 90b
  s4.
  \time 2/4 s2
  f1~(
  f2 bes % 91a
  c1
  f,2) s
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1 % 86a
  s1
  s1
  s1
  \repeat volta 2 {
    s1 % 86b
    s1
    s1 % 86c
    s1
    s1
    s1 % 87a
    s1
    s1 % 87b
    s1
    s1 % 87c
    \time 3/8 s4.
    s4.
    s4.
    s4. % 88a
    \time 2/4 s2
    \time 4/4 s1
    s1 % 88b
    s1
  }
  \alternative {
    {
      s1
      s1
    }
    {
      s1
    }
  }
  s1
  s1\p
  s1
  s1 % 89b
  s1
  s1
  s1 % 89c
  s1
  s1 \cresc
  s1\mp % 90a
  s2 s\dim
  \time 3/8 s4.\p
  s4.
  s4. % 90b
  s4.
  \time 2/4 s2
  \time 4/4 s1
  s2 s\dim % 91a
  s1 \pp
  s1
  % nothing more to see here!
}
dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  s1 % 86a
  s1
  s1
  s1
  \repeat volta 2 {
    s1\mp-\markup {crisp and rhythmic} % 86b
    s1
    s1-\markup{\dynamic p delicately}
    s1
    s1\mp
    s1 % 87a
    s1\p
    s1 % 87b
    s1-\markup { \dynamic mf \bold legato}
    s1 % 87c
    \time 3/8 s4.
    s4.
    s4.
    s4. % 88a
    \time 2/4 s2
    \time 4/4 s1
    s4 s2.\dim % 88b
    s1_\markup{\dynamic p non stacc.}
  }
  \alternative {
    {
      s1
      s1
    }
    {
      s1
    }
  }
  s1
  s1 % 89a
  s1
  s1 % 89b
  s1
  s1
  s1 % 89c
  s1
  s1
  s1 % 90a
  s1
  \time 3/8 s4.
  s4.
  s4. % 90b
  s4.
  \time 2/4 s2
  \time 4/4 s1
  s1 % 91a
  s1
  s1
  s1 % 91b
  s1
  s1_\markup{\dynamic mf crisply}
  s1 % 91c
  s1\mp
  s1
  s1 % 92a
  s1
  s1\mf % 92b
  s1
  s1\f
  s1 % 92c
  \time 3/8 s4.
  s4.
  s4. % 93a
  s4.
  \time 2/4 s2
  \time 4/4 s1 % 93b
  s2 s\dim
  s1\mp % 93c
  s1
  s1\mf % 94a
  s1
  s1 % 94b
  s1
  s1 % 94c
  s1
  s1 % 95a
  s1
  s1\f % 95b
  s1
  \time 3/8 s4.
  s4. % 95c
  s4.
  s4.
  \time 2/4 s2
  \time 4/4 s1\dim % 96a
  s1
  s1\p % 96b
  s1
  s2 \< s\>
  s1\!
}

pianoRH = \relative c'' {
  \global
  f8-. a-. c-. f-. d-. bes-. g-. d'-.
  c8-. a-. f-. a-. bes-. g16(f e8) f-.
  c4 c'8-. c-. r c,-. c'-. c-.
  r8 e,-. a-. a-. r d,-. a'-. a-.
  \repeat volta 2 {
    <a f'>8 r <bes, f>4~q8 c8-. c'-. a-. % 86b
    g8-. d'-. c-. e,-. f4~f16 g( a bes
    <f c'>8-.) r r4 <bes,, d>4. <a c>8~ % 86c
    q8 c'8-. c'-. a-. g-. d'-. c-. a-.
    f8 r <bes,, f>4~q8 c'-. f-. a-.
    g8-. d'-. c-. e,-. f4~f16 e(f g % 87a
    aes8-.) r8 r4 <des,, f>4. <c ees>8~
    q8 ees'-. c'4~c8 g16(a bes c d e % 87b
    <f, bes f'>4)~ <g bes g'>8 <e a e'>~q2
    <ees aes ees'>4~<f aes f'>8 <d g d'>~q2 % 87c
    \time 3/8 r8 <bes des>-. <g' bes>-.
    r8 <aes, c>-. <f' aes>-.
    r8 <g, bes>-. <e' g>-.
    r8 <f, aes>-. <c' f>-. % 88a
    \time 2/4 <f, b g'>8\arpeggio r <d' g c>\arpeggio r
    \time 4/4 <f a f'>8 r <bes,, f>4~q8 c'(c' a
    g8 d' c e, f4~f16 g a b % 88b
    <f c'>4) r <g,, bes>4. r8
  }
  \alternative {
    {
      f''8-. a-. c-. f-. d-. bes-. g-. d'-. % 88c
      c8-. a-. f-. a-. bes-. g16(f e8) g-.
    }
    {
      <f,, a>4 s2.
    }
  }
  R1*9 \break
  \ottava #1 <f'' f'>4\arpeggio r <e e'>\arpeggio r % 90a
  <ees ees'>4\arpeggio r <d d'>\arpeggio r \ottava #0
  \time 3/8 r8 ees ees'
  r8 ees, ees'
  r8 ees, ees' % 90b
  r8 ees, ees'
  \time 2/4 r8 ees,( e' e,
  \time 4/4 c'4) r4 r8 \ottava #1 c(c' c,)
  r8 c(c' c,) r d(d' d,) % 91a
  <f f'>4 r <c c'> r
  <f, f'>4 \ottava 0 s2.
  s2 d'8-. bes-. g-. d'-. % 91b
  c8-. a-. f-. a-. bes-. g16(f e8) g-.
  c,4 \ottava #1 f'4\startTrillSpan f8-. \stopTrillSpan f'-. c-. a-.
  g8-. d'-. c-. e,-. f4.\startTrillSpan e16 \stopTrillSpan f % 91c
  c8-. bes-. a-. g-. f-. r e-. f-.
  r8 c'-. c'-. a-. g-. d'-. c-. a-.
  f4 \startTrillSpan e8 \stopTrillSpan ( d c) f16-. a-. c8-. a-. % 92a
  g8-. d'-. c-. e,-. f4. \startTrillSpan e16 \stopTrillSpan f
  ees8-. des-. c-. bes-. aes-. r g-. aes \ottava #0 % 92b
  r8 ees-. c'4~c8 g16( a bes c d e
  <f, bes f'>4) ~ <g bes g'>8 <e a e'>~q2
  <ees aes ees'>4 ~ <f aes f'>8 <d g d'> ~ q2 % 92c
  \time 3/8 r8 \ottava #1 <bes' des>8-. <g' bes>-.
  r8 <aes, c>-. <f' aes>-.
  r8 <g, bes>-. <e' g>-. % 93a
  r8 <f, aes>-. <c' f>-.
  \time 2/4 <f, ees'>8 r <e d'> r
  \time 4/4 c'2 \startTrillSpan c8-. \stopTrillSpan f-. c'-. a-. % 93b
  g8-. d'-. c-. e,-. f2 \startTrillSpan
  \grace { g16 \stopTrillSpan a b } c8-. \ottava #0 r r4 bes,,, r % 93c
  s1
  s1 % 94a
  <d g bes>4 s2.
  <c a' c>8 r r4 <f, bes d>8 r <g bes d> <a c f> ~ % 94b
  q8 s s2.
  s1 % 94c
  s1
  <c aes' c>8 r r4 <aes des f>8 r <bes des f> s % 95a
  s1
  s1 % 95b
  s1
  \time 3/8 \ottava #1 r8 \times 2/3 { des''16(ees f } g8)
  r8 \times 2/3 { c,16( des ees } f8) % 95c
  r8 \times 2/3 { bes,16( c d } e8)
  r8 \times 2/3 { aes,16(bes c } d8) \ottava #0
  \time 2/4 r8 <f,, a g'>-. r <d' g c>-.
  \time 4/4 <f a g'>8-. r s2. % 96a
  s1
  <d, f>2 \ottava #1 <f' f'>8-. <g g'>-. <a a'>-. <c c'>-. % 96b
  <f f'>4-- \ottava #0 r r2
  r1
  \acciaccatura { c16 d e } f8-> r8 r4 r2
%  \bar "|."
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  s1*4
  \repeat volta 2 {
    s1*10
    s4.*4
    s2
    s1*3
  }
  \alternative {
    {
      s1*2
    }
    {
      s1
    }
  }
  c1
  s1*10
  \time 3/8 s4.
  s4.
  s4.
  s4.
  \time 2/4 s2
  \time 4/4 s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1 % 92a
  s1
  s1
  s1
  s1
  s1
  \time 3/8 s4.
  s4.
  s4.
  s4.
  \time 2/4 s2
  \time 4/4 s1
  s1
  s1
  a16(g a bes c a bes c d c d e f g a bes
  <c,, c'>4) <bes bes'> <f' a> bes8 <a c> % 94a
  s4 <bes c> <f f'>8 <e e'> <d d'>4
  s1 % 94b
  s8 c ~ (c' a g d' c a
  <a, c f>4) <bes bes'> <f' a> bes8 <a c> % 94c
  <g bes>2 <c, c'>4. <b b'>8
  s2. s8 <c ees a>8~ % 95a
  c16 bes( c des ees c des ees f d e f \times 4/6 {g a bes c d e}
  f4)g8 e~e2 % 95b
  ees4 f8 d~d2
  \time 3/8 s4.
  s4. % 95c
  s4.
  s4.
  \time 2/4 s2
  \time 4/4 s4 f,2 bes8 a % 96a
  g2 f
  s1 % 96b
  s1
  s1
  s1
}

pianoRHtwo = \relative c'' {
  \global
  \voiceTwo
  s1*4
  \repeat volta 2 {
    s1*10
    s4.*4
    s2
    s1*3
  }
  \alternative {
    {
      s1*2
    }
    {
      s4 <a c>4( <bes d> <g bes>
    }
  }
  a2 <f bes>4 <d g>
  <a c f>4) s2.
  s1*9
  \time 3/8 s4.
  s4.
  s4.
  s4.
  \time 2/4 s2
  \time 4/4 s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1 % 92a
  s1
  s1
  s1
  s1
  s1
  \time 3/8 s4.
  s4.
  s4.
  s4.
  \time 2/4 s2
  \time 4/4 s1
  s1
  s1
  s1
  a'8 g f e a, c f e % 94a
  s4 c8 e c'4~c8 bes
  s1 % 94b
  s4 <c, e> d <d e>
  s4 f8 e a, c f e % 94c
  d4 c8 e f2
  s1 % 95a
  s1
  bes4. a8~a2 % 95b
  aes4. g8~g2
  \time 3/8 s4.
  s4. % 95c
  s4.
  s4.
  \time 2/4 s2
  \time 4/4 s4 bes, a8 bes c4 % 96a
  d4 c f ees
  s1 % 96b
  s1
  s1
  s1
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1
  s1
  s2 s\>
  \repeat volta 2 {
    s1\p % 86b
    s1
    s1 % 86c
    s1
    s1
    s1 % 87a
    s1
    s8 s\< s4 s2 % 87b
    s1\mf
    s1 % 87c
    \time 3/8 s4.
    s4.
    s4.
    s4. % 88a
    \time 2/4 s2
    \time 4/4 s4 s2.\mp
    s1 % 88b
    s2 s\p
  }
  \alternative {
    {
      s1\mf
      s1
    }
    {
      s4 s2.\p
    }
  }
  s1
  s1 % 89a
  s1
  s1 % 89b
  s1
  s1
  s1 % 89c
  s1
  s1
  s1\p % 90a
  s1
  \time 3/8 s4.
  s4.
  s4. % 90b
  s4.
  \time 2/4 s2
  \time 4/4 s1
  s2 s\> % 91a
  s1\pp
  s4 s2.\<
  s1\mf % 91b
  s1
  s1\mp
  s1 % 91c
  s1
  s1
  s1 % 92a
  s1
  s1 % 92b
  s1\<
  s1\f
  s1 % 92c
  \time 3/8 s4.
  s4.
  s4. % 93a
  s4.
  \time 2/4 s2
  \time 4/4 s1\mf % 93b
  s1
  s2 s\mp % 93c
  s1\mf
  s1-\markup{legato} % 94a
  s1
  s1\mp % 94b
  s8 s\mf s2.
  s1 % 94c
  s1
  s1\mp % 95a
  s1
  s1\f % 95b
  s1
  \time 3/8 s4.
  s4. % 95c
  s4.
  s4.
  \time 2/4 s2\mf
  \time 4/4 s4 s2.\mp % 96a
  s1\>
  s1\p % 96b
  s1
  s1
  s1\ff
}

pianoLH = \relative c' {
  \global
  \oneVoice
  \set Staff.connectArpeggios = ##t
  <<
    { a2\arpeggio bes\arpeggio | c2\arpeggio bes4\arpeggio ~ <bes d>}
    \\
    { <f, c'>4\arpeggio f'~<g, f'>\arpeggio e'~ | <e a,>4\arpeggio <bes d> g4\arpeggio c}
  >>
  s1
  s1
  \repeat volta 2 {
    s1 % 86b
    s1
    <c a'>8-. r r4 s2% 86c
    s1
    s1
    s1 % 87a
    s8 r8 r4 bes ees
    s1 % 87b
    s1
    s1 % 87c
    \time 3/8 s4.
    s4.
    s4.
    s4. % 88a
    \time 2/4 <des b'>8 r <c bes'> r
    \time 4/4 s1
    s1 % 88b
    s4 r s2
  }
  \alternative {
    {
      s1 % 88c
      s1
    }
    {
      s1
    }
  }
  s1
  <f, c'>4 r4 r2
  R1*7
  s1 % 90a
  s1
  \time 3/8 s4.
  s4.
  s4. % 90b
  s4.
  \time 2/4 <des' b'>4 <c bes'>
  \time 4/4 <f, c' a'>2 <f' g c e>
  <f g bes ees>2 <bes, f' a> % 91a
  s1
  s1
  s1 % 91b
  s1
  s1
  s1 % 91c
  <c a' c>8 r r4 <g d' bes'>8 r <c g' bes> r
  s1
  s1 % 92a
  s1
  <ees c' ees>8 r r4 <bes f' des'>8 r <ees bes' des> r % 92b
  s1
  s1
  s1 % 92c
  \time 3/8 s4.
  s4.
  s4. % 93a
  s4.
  \time 2/4 <des b'>8 r <c bes'> r
  \time 4/4 s1 % 93b
  s1
  s8 r r4 <c g'> r % 93c
  <f, f'>4 <a e'> <g f' bes> <c bes' d>
  s1 % 94a
  s1
  c4 c,2. % 94b
  f4( a bes <c bes'>)
  s1 % 94c
  s1
  ees4 ees,2. % 95a
  s1
  s1 % 95b
  s1
  \time 3/8 s4.
  s4. % 95c
  s4.
  s4.
  \time 2/4 <des' b'>4 <c bes'>
  \time 4/4 s1 % 96a
  s1
  s2 \appoggiatura <g f' bes>8 f''8 g-. \clef treble a-. c-. % 96b
  f4-- r r2
  r1 \clef bass
  <f,,,, f'>8-> r r4 r2
%  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  \set Staff.connectArpeggios = ##t
  s1
  s1
  <g a c>2 <ges bes c ees>
  <f g b e>2 <e bes' d>
  \repeat volta 2 {
    <c a'>4 d c c' % 86b
    d4 c~c4. bes8
    s2 g,4 c~ % 86c
    c4 a' bes2\arpeggio
    <c, a'>4 d c c'
    d4 c~c4. b8 % 87a
    <aes c>8 s8 s4 s2
    r4 <ees c'> bes'2\arpeggio % 87b
    <d, bes'>4.\arpeggio <c a>8~q2
    <f ces' ees>4. <bes d>8~q4. beses8 % 87c
    \time 3/8 aes8 g4~
    g8 f4~
    f8 e4
    ees4 d8 % 88a
    \time 2/4 s2
    \time 4/4 <c a'>4 d c c'
    d4 c~c4. b8 % 88b
    c4 s2.
  }
  \alternative {
    {
      a2\arpeggio bes\arpeggio % 88c
      c2\arpeggio bes\arpeggio
    }
    {
      s4 e f ees
    }
  }
  e2 d4 bes
  s1*8
  <d f>2 <c e> % 90a
  <g bes>2 <aes c>
  \time 3/8 <des f>4.
  <ees g>4.
  <des f>4. % 90b
  <c ees>4.
  \time 2/4 s2
  \time 4/4 s1
  s1 % 91a
  <a d>2 <g bes>
  a2. g4
  a2-\arpeggio bes % 91b
  c2-\arpeggio bes-\arpeggio
  <c, a'>4 <d bes'> <c a'> <c' e>
  <bes d>4 ~ c4~c4. bes8 % 91c
  s1
  a2-\arpeggio bes-\arpeggio
  <c, a'>4-\arpeggio <d bes'> <c a'> <c' e> % 92a
  <bes d>4 ~ c~c4. b8
  s1 % 92b
  r4 <ees, c'> bes'2-\arpeggio
  <d, bes'>4.-\arpeggio <c a'>8~q2
  <f ces' ees>4. <bes d>8~q4. beses8 % 92c
  \time 3/8 aes8 g4~
  g8 f4~
  f8 e4 % 93a
  ees4 d8
  \time 2/4 s2
  \time 4/4
  <c a'>4-\arpeggio <d bes'> <c a'> <c' e> % 93b
  d4 c~c4. b8
  <a c>8 s s2. % 93c
  s1
  c,4 d c d8 c % 94a
  f8 d e g f2
  s1 % 94b
  s1
  c4 d c d8 c % 94c
  f8 d e g f2
  s1 % 95a
  aes4 g bes2
  d4. c8~c2 % 95b
  ces4. bes8~bes4. beses8
  \time 3/8 aes8 g4~
  g8 f4~ % 95c
  f8 e4
  e4 d8
  \time 2/4 s2
  \time 4/4 <c a'>4-\arpeggio d c f % 96a
  bes2 b4 bes8 a
  c4 bes s2 % 96b
  s1
  s1
  s1
%  \bar "|."
}

pianoLHtwo = \relative c {
  \global
  \voiceTwo
  \set Staff.connectArpeggios = ##t
  s1
  s1
  r4 <a e'> e <aes ees'>
  r4 <g d'> r <c, g'> \break
  \repeat volta 2 {
    f2. f'4~ % 86b
    f4 e~e <d f>
    s1 % 86c
    f,4 f'~<f, f'>\arpeggio <c' e>
    f,2. f'4~
    <f bes>4 ~ <e bes'>4~<e a> <d f> % 87a
    ees8 s s4 s2
    aes,2 <g f'>4\arpeggio <c e> % 87b
    f,2~\arpeggio f4. f8->~
    f4. f'8~f4. beses8 % 87c
    \time 3/8 bes,4.
    aes4.
    g4.
    f4. % 88a
    \time 2/4 s2
    \time 4/4 f2. f'4~
    <f bes>4 ~  <e bes'>4~<e a> <d f> % 88b
    <c a'>4 s g c~
  }
  \alternative {
    {
      <f, c'>4\arpeggio f'~<g, f'>\arpeggio e'~ % 88c
      <a, e'>4\arpeggio <d f> g,\arpeggio c
    }
    {
      <f, c'>4\repeatTie f'2.~
    }
  }
  f2 c
  s1*8
  f1~ % 90a
  f2 bes,
  \time 3/8 ees4.~
  ees4.~
  ees4.~ % 90b
  ees4.
  \time 2/4 s2
  \time 4/4 s2. \clef treble c''4^- \clef bass
  s4 \clef treble c^- \clef bass s \clef treble d^- \clef bass % 91a
  c,,1
  <f, c>2 bes
  <f c'>4-\arpeggio f'~<f, f'> e'~% 91b
  <a, e'>4-\arpeggio <d f> g,-.-\arpeggio c-.
  f,2. f'4 ~
  f4 <e bes'>~<e a> <d f> % 91c
  s1
  <f, c'>4-\arpeggio f' ~ <f, f'>-\arpeggio <c e>
  f2.-\arpeggio f'4~ % 92a
  f4 <e bes'> <e a> <d f>
  s1 % 92b
  aes2 <g f'>4-\arpeggio <c e>
  f,2~-\arpeggio f4. f8-> ~
  f4. f'8~f4. beses8
  \time 3/8 bes,4.
  aes4.
  g4. % 93a
  f4.
  \time 2/4 s2
  \time 4/4 f2.-\arpeggio f'4~ % 93b
  f4 <e bes'>~<e a> <d f>
  c8 s s2. % 93c
  s1
  f,1 % 94a
  g2 a4 bes
  s1 % 94b
  s1
  f1 % 94c
  g2 a4 d
  s1 % 95a
  aes2 <g f'>4 <c g'>
  f2~f4. f,8->~ % 95b
  f4. f'8~f2
  \time 3/8 bes,4.
  aes4. % 95c
  g4.
  f4.
  \time 2/4 s2
  \time 4/4 f2.-\arpeggio f'4~
  f4 e ees8 d c4
  <bes f'>2 s % 96b
  s1
  s1
  s1
%  \bar "|."
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MIDI score without repeats (alto)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\book {
  \bookOutputSuffix "alto"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \unfoldRepeats \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "sopranosingle" \unfoldRepeats \sopranoSeparate
          >>
                                % Single alto staff
          \new Dynamics \unfoldRepeats \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "altosingle" \unfoldRepeats \altoSeparate
            \new Lyrics \lyricsto "altosingle" \MwordsAlto
          >>
                                % Single tenor staff
          \new Dynamics \unfoldRepeats \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenorsingle" << { \voiceOne \unfoldRepeats \tenorSeparateOne }
                                          { \voiceTwo \unfoldRepeats \tenorSeparateTwo }
                                        >>
          >>
                                % Single bass staff
          \new Dynamics \unfoldRepeats \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "basssingle " << { \voiceOne \unfoldRepeats \bassSeparateOne }
                                          { \voiceTwo \unfoldRepeats \bassSeparateTwo }
                                        >>
          >>
                                % Joint soprano/alto staff
          \new Dynamics \unfoldRepeats \dynamicsWomen
          \new Staff = staffJointSopranoAlto \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "sopranojoint" { \voiceOne \unfoldRepeats \sopranoJoint }
            \new Voice = "altojoint"    { \voiceTwo \unfoldRepeats \altoJoint    }
            \new Lyrics \lyricsto "altojoint" \MLyricsAltoJoint
          >>
                                % Joint tenor/bass staff
          \new Staff = staffJointTenorBass\with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \unfoldRepeats \tenorJoint }
            \new Voice = "bass"  { \voiceTwo \unfoldRepeats \bassJoint  }
          >>
          \new Dynamics \unfoldRepeats \dynamicsMen
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff \with { \consists "Span_arpeggio_engraver" }
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MIDI score without repeats (bass)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\book {
  \bookOutputSuffix "bass"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \unfoldRepeats \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "sopranosingle" \unfoldRepeats \sopranoSeparate
          >>
                                % Single alto staff
          \new Dynamics \unfoldRepeats \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "altosingle" \unfoldRepeats \altoSeparate
          >>
                                % Single tenor staff
          \new Dynamics \unfoldRepeats \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenorsingle" << { \voiceOne \unfoldRepeats \tenorSeparateOne }
                                          { \voiceTwo \unfoldRepeats \tenorSeparateTwo }
                                        >>
          >>
                                % Single bass staff
          \new Dynamics \unfoldRepeats \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "BassSingleOne" { \voiceOne \unfoldRepeats \bassSeparateOne }
            \new Voice = "BassSingleTwo" { \voiceTwo \unfoldRepeats \bassSeparateTwo }
            \new Lyrics \lyricsto "BassSingleOne" \MwordsBass
          >>
                                % Joint soprano/alto staff
          \new Dynamics \unfoldRepeats \dynamicsWomen
          \new Staff = staffJointSopranoAlto \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "sopranojoint" { \voiceOne \unfoldRepeats \sopranoJoint }
            \new Voice = "altojoint"    { \voiceTwo \unfoldRepeats \altoJoint    }
          >>
                                % Joint tenor/bass staff
          \new Staff = staffJointTenorBass\with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \unfoldRepeats \tenorJoint }
            \new Voice = "bass"  { \voiceTwo \unfoldRepeats \bassJoint  }
            \new Lyrics \with { alignAboveContext = "staffJointTenorBass" }
            { \lyricsto tenor { \MLyricsOne  \MLyricsChorus
                                \MLyricsTwo  \MLyricsChorus
                                \MLyricsFourTenor \MLyricsChorus
                                \MLyricsFive \MLyricsChorusFive
                              } }
          >>
          \new Dynamics \unfoldRepeats \dynamicsMen
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff \with { \consists "Span_arpeggio_engraver" }
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MIDI score without repeats (tenor)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\book {
  \bookOutputSuffix "tenor"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \unfoldRepeats \dynamicsSop
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "sopranosingle" \unfoldRepeats \sopranoSeparate
          >>
                                % Single alto staff
          \new Dynamics \unfoldRepeats \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "altosingle" \unfoldRepeats \altoSeparate
          >>
                                % Single tenor staff
          \new Dynamics \unfoldRepeats \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenorsingle" << { \voiceOne \unfoldRepeats \tenorSeparateOne }
                                          { \voiceTwo \unfoldRepeats \tenorSeparateTwo }
                                        >>
            \new Lyrics \lyricsto "tenorsingle" \MwordsTenor
          >>
                                % Single bass staff
          \new Dynamics \unfoldRepeats \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "basssingle " << { \voiceOne \unfoldRepeats \bassSeparateOne }
                                          { \voiceTwo \unfoldRepeats \bassSeparateTwo }
                                        >>
          >>
                                % Joint soprano/alto staff
          \new Dynamics \unfoldRepeats \dynamicsWomen
          \new Staff = staffJointSopranoAlto \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "sopranojoint" { \voiceOne \unfoldRepeats \sopranoJoint }
            \new Voice = "altojoint"    { \voiceTwo \unfoldRepeats \altoJoint    }
          >>
                                % Joint tenor/bass staff
          \new Staff = staffJointTenorBass\with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \unfoldRepeats \tenorJoint }
            \new Voice = "bass"  { \voiceTwo \unfoldRepeats \bassJoint  }
            \new Lyrics \with { alignAboveContext = "staffJointTenorBass" }
            { \lyricsto tenor { \MLyricsOne  \MLyricsChorus
                                \MLyricsTwo  \MLyricsChorus
                                \MLyricsFourTenor \MLyricsChorus
                                \MLyricsFive \MLyricsChorusFive
                              } }
          >>
          \new Dynamics \unfoldRepeats \dynamicsMen
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff \with { \consists "Span_arpeggio_engraver" }
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MIDI score without repeats (soprano)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\book {
  \bookOutputSuffix "soprano"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \unfoldRepeats \dynamicsSop
          \new Lyrics = "MSopranoSingleAbove"
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "sopranosingle" \unfoldRepeats \sopranoSeparate
            \new Lyrics \lyricsto "sopranosingle" \MLyricsSopranoSeparate
          >>
                                % Single alto staff
          \new Dynamics \unfoldRepeats \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "altosingle" \unfoldRepeats \altoSeparate
          >>
                                % Single tenor staff
          \new Dynamics \unfoldRepeats \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenorsingle" << { \voiceOne \unfoldRepeats \tenorSeparateOne }
                                          { \voiceTwo \unfoldRepeats \tenorSeparateTwo }
                                        >>
          >>
                                % Single bass staff
          \new Dynamics \unfoldRepeats \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "basssingle " << { \voiceOne \unfoldRepeats \bassSeparateOne }
                                          { \voiceTwo \unfoldRepeats \bassSeparateTwo }
                                        >>
          >>
                                % Joint soprano/alto staff
          \new Dynamics \unfoldRepeats \dynamicsWomen
          \new Staff = staffJointSopranoAlto \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "sopranojoint" { \voiceOne \unfoldRepeats \sopranoJoint }
            \new Voice = "altojoint"    { \voiceTwo \unfoldRepeats \altoJoint    }
            \new Lyrics \with { alignAboveContext = staffJointSopranoAlto } { \lyricsto sopranojoint \MLyricsSopranoJoint }
          >>
                                % Joint tenor/bass staff
          \new Staff = staffJointTenorBass\with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \unfoldRepeats \tenorJoint }
            \new Voice = "bass"  { \voiceTwo \unfoldRepeats \bassJoint  }
          >>
          \new Dynamics \unfoldRepeats \dynamicsMen
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff \with { \consists "Span_arpeggio_engraver" }
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Standard score with repeats
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \dynamicsSop
          \new Lyrics = "SopranoSingleAbove"
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "sopranosingle" \sopranoSeparate
            \context Lyrics = "SopranoSingleAbove" { \lyricsto sopranosingle { \LyricsSopranoSingleAbove } }
            \new Lyrics \lyricsto "sopranosingle" \LyricsThree
          >>
                                % Single alto staff
          \new Dynamics \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "altosingle" \altoSeparate
            \new Lyrics \lyricsto "altosingle" \wordsAlto
          >>
                                % Single tenor staff
          \new Dynamics \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenorsingleone" { \tenorSeparateOne }
            \new Voice = "tenorsingletwo" { \tenorSeparateTwo }
            \new Lyrics \lyricsto "tenorsingleone" \wordsTenor
          >>
                                % Single bass staff
          \new Dynamics \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bassseparateone" \bassSeparateOne
            \new Voice = "bassseparatetwo" \bassSeparateTwo
            \new Lyrics \lyricsto "bassseparateone" \wordsBass
          >>
                                % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff = staffJointSopranoAlto \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \RehearsalTrack
            \new Voice = "sopranojoint" { \voiceOne \sopranoJoint }
            \new Voice = "altojoint"    { \voiceTwo \altoJoint    }
            \new Lyrics \with { alignAboveContext = staffJointSopranoAlto }
            { \lyricsto sopranojoint \LyricsSopranoJointAboveRepeat }
            \new Lyrics { \lyricsto sopranojoint \LyricsSopranoJointBelow }
          >>
                                % Joint tenor/bass staff
          \new Staff = staffJointTenorBass\with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenorJoint }
            \new Voice = "bass"  { \voiceTwo \bassJoint  }
            \new Lyrics \with { alignAboveContext = "staffJointTenorBass" }
            { \lyricsto tenor { \LyricsOne \LyricsChorus \LyricsSpace
                                \LyricsFourTenor \LyricsChorus
                                \LyricsFive \LyricsChorusFive } }
            \new Lyrics \with { alignAboveContext = "staffJointTenorBass" }
            { \lyricsto tenor \LyricsTwo }
          >>
          \new Dynamics \dynamicsMen
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { \consists "Span_arpeggio_engraver" }
          <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Standard score without repeats
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\book {
  \bookOutputSuffix "single"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Dynamics \unfoldRepeats \dynamicsSop
          \new Lyrics = "SopranoSingleAbove"
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "sopranosingle" \unfoldRepeats \sopranoSeparate
            \context Lyrics = "SopranoSingleAbove" { \lyricsto sopranosingle { \LyricsSopranoSingleAbove } }
            \new Lyrics \lyricsto "sopranosingle" \LyricsThree
          >>
                                % Single alto staff
          \new Dynamics \unfoldRepeats \dynamicsAlto
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "altosingle" \unfoldRepeats \altoSeparate
            \new Lyrics \lyricsto "altosingle" \wordsAlto
          >>
                                % Single tenor staff
          \new Dynamics \unfoldRepeats \dynamicsTenor
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenorsingle" << { \voiceOne \unfoldRepeats \tenorSeparateOne }
                                          { \voiceTwo \unfoldRepeats \tenorSeparateTwo }
                                        >>
            \new Lyrics \lyricsto "tenorsingle" \wordsTenor
          >>
                                % Single bass staff
          \new Dynamics \unfoldRepeats \dynamicsBass
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "basssingle" << { \voiceOne \unfoldRepeats \bassSeparateOne }
                                          { \voiceTwo \unfoldRepeats \bassSeparateTwo }
                                        >>
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
                                % Joint soprano/alto staff
          \new Dynamics \unfoldRepeats \dynamicsWomen
          \new Staff = staffJointSopranoAlto \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "sopranojoint" { \voiceOne \unfoldRepeats \sopranoJoint }
            \new Voice = "altojoint"    { \voiceTwo \unfoldRepeats \altoJoint    }
            \new Lyrics \with { alignAboveContext = staffJointSopranoAlto } { \lyricsto sopranojoint \LyricsSopranoJointAboveSingle }
            \new Lyrics \lyricsto sopranojoint \LyricsSopranoJointBelowSingle
          >>
                                % Joint tenor/bass staff
          \new Staff = staffJointTenorBass\with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \unfoldRepeats \tenorJoint }
            \new Voice = "bass"  { \voiceTwo \unfoldRepeats \bassJoint  }
            \new Lyrics \with { alignAboveContext = "staffJointTenorBass" }
            { \lyricsto tenor { \LyricsOne  \LyricsChorus
                                \LyricsTwo  \LyricsChorus
                                \LyricsFourTenor \LyricsChorus
                                \LyricsFive \LyricsChorusFive
                              } }
          >>
          \new Dynamics \unfoldRepeats \dynamicsMen
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff \with { \consists "Span_arpeggio_engraver" }
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
