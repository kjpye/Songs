\version "2.25.13"

\include "kjp.ly"
\include "swing.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "What a Wonderful World"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "George David Weiss and Bob Thiele"
  arranger    = "Arr. Mark A. Brymer"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
}

TempoTrack = {
  \tempo \markup {"Slowly, with a 12/8 feel" ( \rhythm {8 8} = \rhythm {\tuplet 3/2 {4 8}} ) } 4=69
  s1*37
  \set Score.tempoHideNote = ##t
  s4 \tempo 4=60 s2.
  \tempo 4=30 s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "3a" } s1*2
  \mark \markup { \box "3b" } s1*2
  \mark \markup { \box "3c" } s1*2
  \mark \markup { \box "4a" } s1*2
  \mark \markup { \box "4b" } s1*2
  \mark \markup { \box "4c" } s1*2
  \mark \markup { \box "5a" } s1*2
  \mark \markup { \box "5b" } s1*2
  \mark \markup { \box "5c" } s1*2
  \mark \markup { \box "6a" } s1*2
  \mark \markup { \box "6b" } s1*2
  \mark \markup { \box "6c" } s1*2
  \mark \markup { \box "7a" } s1*2
  \mark \markup { \box "7b" } s1*2
  \mark \markup { \box "7c" } s1*2
  \mark \markup { \box "8a" } s1*3
  \mark \markup { \box "8b" } s1*3
  \mark \markup { \box "8c" } s1*3
}

ChordTrack = \chordmode {
  f2 g:m/f
  f2 g:m/f
  f2 a:m % 3b
  bes2 a:m
  g:m72 f % 3c
  a2:7 d:m
  des1 % 4a
  g2:m c:7
  f:2 f:aug % 4b
  bes2:maj7 c:7
  f2 a:m % 4c
  bes2 a:m
  g2:m7 f % 5a
  a2:7 d:m
  des1 % 5b
  g2:m c:7
  f2 bes:6/f % 5c
  g2:m7/f f
  c1:7 % 6a
  f1
  c1:7 % 6b
  f1
  d2:m c/e % 6c
  d2:m/f c/g
  d2:m/g fis:dim7 % 7a
  g4:m7 fis:dim7 c:7 des:7
  ges2 bes:m % 7b
  ces2 bes:m
  aes2:m7 ges % 7c
  bes2:7 ees:m
  d1 % 8a
  aes2:m11 des:7
  ges2 bes:m7.5-/e
  ees1:7 % 8b
  aes:m9
  ces2:6/des des:7.9-
  ges2 ces:6/ges % 8c
  aes2:m7/ges ges
  s1
}

dynamicsWomen = {
  s1 | s2. s4\omit\mf-\markup{\halign #RIGHT {\upright Unis \dynamic mf}} | s1*4 |
  s1*2 | s1\p\< | s1\! | s1*2 | % 4
  s1*4 | s2\< s\! | s\> s\! |
  s1*6 | % 6
  s1 | s2.\> s4\mf | s2.\< s4\f | s2 s\> | s1\! | s |
  s1*2 | s1\< | s\! | s2 s\> | s4\! s2.\mp | s2\< s\! | s1 | s2...\> s16\pp | % 8
}

soprano = \tripletFeel 8 \relative {
  \global
  R1
  r2 r4 c'8^\markup Unis. e
  f4. a8 c2 % 3b
  d4~ \tuplet 3/2 {8 8 8} c2
  r8 bes8 8 8 a2 % 3c
  r8 g g g f4 \tuplet 3/2 {r8^\markup Unis. f f}
  f4~ \tuplet 3/2 {8 8 8} 2 % 4a
  r4 f8^\markup Unis. 8 \tuplet 3/2 {e4 f g}
  a1 ~ % 4b
  a2 r4 c,8 e
  f4. a8 c4. 8 % 4c
  d4. 8 c4 r8 8
  bes4~ \tuplet 3/2 {8 8 8} a4. 8 % 5a
  g4~ \tuplet 3/2 {8 8 8} f4 \tuplet 3/2 {r8^\markup Unis. f f}
  f4~ \tuplet 3/2 {8 8 8} 2 % 5b
  r4 f8^\markup Unis. 8 \tuplet 3/2 {e4 f g}
  f2 (g % 5c
  bes2 a4) r8 f
  g8 8~ \tuplet 3/2 {8 8 8} 8 c,4 8 % 6a
  bes'8 a a gis a4. r8
  R1 % 6b
  r2 r4 \tuplet 3/2 {r8 a c}
  d4-- 8 8 c4~ \tuplet 3/2 {8 a c} % 6c
  d4-- 8 8 c2
  r8 d d d c8 4. % 7a
  bes4 a g r \bar "||" \key ges \major
  << {bes2 (des)} \new Voice {s2. s4} >> % 7b
  ees4. 8 des2
  r8 ces8 8 8 bes4. 8 % 7c
  aes4 ~ \tuplet 3/2 {8 8 8} ges4 \tuplet 3/2 {r8^\markup Unis. ges ges}
  fis4 ~ \tuplet 3/2 {8 8 8} 2 % 8a
  r4 ges8^\markup Unis. 8 \tuplet 3/2 {f4 ges aes}
  bes1 ~
  bes4 r bes--^\markup Unis. bes-- % 8b
  \tuplet 3/2 {bes4 ges aes} ges2
  r4 ges8 8 \tuplet 3/2 {f4 ges aes}
  ges2 (aes % 8c
  << {ces2 <bes des>^\markup div. ~ | q1\fermata)} \new Voice {s4 s2.^\markup\italic rit. | s2.. s8} >>
  \bar "|."
}

words = \lyricmode {
  I see trees of green, red __ ros -- es too,
  I see them bloom for me and you,
  and I think __ to my -- self,
  what a won -- der -- ful world. __

  I see skies of blue and clouds of white,
  the bright __ bless -- ed day,
  the dark __ sa -- cred night,
  and I think __ to my -- self,
  what a won -- der -- ful world. __

  The col -- ors __ of the rain -- bow,
  so pret -- ty in the \set associatedVoice = alignerT sky,
  are al -- so __ on the fac -- es
  of peo -- ple go -- in' \set associatedVoice = alignerS by,
  I see friends shak -- in' hands, __
  say -- in' "\"How" do you "do!\""
  They're real -- ly say -- in'
  "\"I" love "you.\""
  oo __ watch them grow
  They'll learn much more
  than I'll __ ev -- er know
  and I think __ to my -- self,
  what a won -- der -- ful world. __
  Yes, I think __ to my -- self,
  what a won -- der -- ful world. __
}

wordsWomen = \lyricmode {
  I see trees of green, red __ ros -- es too,
  I see them bloom for me and you,
  and I think __ to my -- self,
  what a won -- der -- ful world. __

  I see skies of blue and clouds of white,
  the bright __ bless -- ed day,
  the dark __ sa -- cred night,
  and I think __ to my -- self,
  what a won -- der -- ful world. __

  The col -- ors __ of the rain -- bow,
  so pret -- ty in the sky,

  I see friends shak -- in' hands, __
  say -- in' "\"How" do you "do!\""
  They're real -- ly say -- in'
  "\"I" love "you.\""
  oo __ watch them grow
  They'll learn much more
  than I'll __ ev -- er know
  and I think __ to my -- self,
  what a won -- der -- ful world. __
  Yes, I think __ to my -- self,
  what a won -- der -- ful world. __
}

wordsWomenMidi = \lyricmode {
  "I " "see " "trees " "of " "green, " "red "  ros "es " "too, "
  "\nI " "see " "them " "bloom " "for " "me " "and " "you, "
  "\nand " "I " "think "  "to " my "self, "
  "\nwhat " "a " won der "ful " "world. " 

  "\nI " "see " "skies " "of " "blue " "and " "clouds " "of " "white, "
  "\nthe " "bright "  bless "ed " "day, "
  "\nthe " "dark "  sa "cred " "night, "
  "\nand " "I " "think "  "to " my "self, "
  "\nwhat " "a " won der "ful " "world. " 

  "\nThe " col "ors "  "of " "the " rain "bow, "
  "\nso " pret "ty " "in " "the " "sky, "
  "\nI " "see " "friends " shak "in' " "hands, " 
  "\nsay" "in' " "\"How " "do " "you " "do!\" "
  "\nThey're " real "ly " say "in' "
  "\n\"I " "love " "you.\" "
  "\noo "  "watch " "them " "grow "
  "\nThey'll " "learn " "much " "more "
  "\nthan " "I'll "  ev "er " "know "
  "\nand " "I " "think "  "to " my "self, "
  "\nwhat " "a " won der "ful " "world. " 
  "\nYes, " "I " "think "  "to " my "self, "
  "\nwhat " "a " won der "ful " "world. " 
}


wordsMenMidi = \lyricmode {
  "and " "I " "think "  "to " my "self, "
  "\nwhat " "a " won der "ful " "world. " 

  "\nI " "see " "skies " "of " "blue " "and " "clouds " "of " "white, "
  "\nthe " "bright "  bless "ed " "day, "
  "\nthe " "dark "  sa "cred " "night, "
  "\nand " "I " "think "  "to " my "self, "
  "\nwhat " "a " won der "ful " "world. " 

  "\nare " al "so "  "on " "the " fac "es "
  "\nof " peo "ple " go "in' " "by, "
  "\nI " "see " "friends " shak "in' " "hands, " 
  "\nsay" "in' " "\"How " "do " "you " "do!\" "
  "\nThey're " real "ly " say "in' "
  "\n\"I " "love " "you.\" "

  "\nI " "hear " ba "bies " "cry, "
  "\nI " "watch " "them " "grow "
  "\nThey'll " "learn " "much " "more "
  "\nthan " "I'll "  ev "er " "know "
  "\nand " "I " "think "  "to " my "self, "
  "\nwhat " "a " won der "ful " "world. " 
  "\nYes, " "I " "think "  "to " my "self, "
  "\nwhat " "a " won der "ful " "world. " 
}


alto = \tripletFeel 8 \relative {
  \global
  R1
  r2 r4 c'8 e
  f4. 8 e2 % 3b
  f4~ \tuplet 3/2 {8 8 8} e2
  r8 d8 8 8 c2 % 3c
  r8 cis8 8 8 d4 \tuplet 3/2 {r8 f f}
  des4~ \tuplet 3/2 {8 8 8} 2 % 4a
  r4 f8 8 \tuplet 3/2 {e4 f g}
  a1 ~ % 4b
  a2 r4 c,8 e
  f4. a8 c4. 8 % 4c
  d4. 8 c4 r8 a8
  f4~ \tuplet 3/2 {8 8 8} 4. 8 % 5a
  e4~ \tuplet 3/2 {8 8 cis} d4 \tuplet 3/2 {r8 f f}
  des4~ \tuplet 3/2 {8 8 8} 2 % 5b
  r4 f8 8 \tuplet 3/2 {e4 f e}
  c2 (d % 5c
  f2 4) r8 8
  g8 f8~ \tuplet 3/2 {8 e d} e8 c4 8 % 6a
  d8 c c d c4. r8
  R1 % 6b
  r2 r4 \tuplet 3/2 {r8 a' a}
  f4-- 8 8 g4~ \tuplet 3/2 {8 a a} % 6c
  f4-- 8 8 e2
  r8 a8 8 8 8 4. % 7a
  f4 ees e r \bar "||" \key ges \major
  g2 (des) % 7b
  ges4. 8 f2
  r8 ges8 8 8 4. 8 % 7c
  f4 ~ \tuplet 3/2 {8 8 d8} ees4 \tuplet 3/2 {r8 ges ges}
  d4 ~ \tuplet 3/2 {8 8 8} 2 % 8a
  r4 ges8 8 \tuplet 3/2 {f4 ges aes}
  ges2( aes
  g4) r bes-- bes-- % 8b
  \tuplet 3/2 {bes4 ges aes} ges2
  r4 ges8 8 \tuplet 3/2 {f4 ges aes}
  des,2 (ees % 8c
  ges2 2~
  ges1\fermata)
  \bar "|."
}

dynamicsMen = {
  s1*5 | s2. \tuplet 3/2 {s8 s4\omit\mf-\markup{\halign #RIGHT \upright Unis. \dynamic mf}} |
  s1*2 | s1\p\< | s\! | s1*2 | % 4
  s1*4 | s2\< s\! | s\> s\! |
  s1*6 | % 6
  s1 | s2.\> s4\mf | s2.\< s8\! s\f | s2 s\> | s1\! | s |
  s1*2 | s1\< | s\! | s2 s\> | s4\! s2.\mp | s2\< s\! | s1 | s2...\> s16\pp | % 8
}

tenor = \relative {
  \global
  \tripletFeel 8 {
    R1
    R1
    R1 % 3b
    R1
    R1 % 3c
    r2 r4 \tuplet 3/2 {r8^\markup Unis. f f}
    aes4~ \tuplet 3/2 {8 8 8} 2 % 4a
    r4 f8^\markup Unis. 8 \tuplet 3/2 {e4 f g}
    a1 ~ % 4b
    a2 r4 c,8 e
    f4. 8 a4. 8 % 4c
    bes4. 8 a4 r8 a
    d4~ \tuplet 3/2 {8 8 8} c4. 8 % 5a
    cis4 ~ \tuplet 3/2 {8 8 a} a4 \tuplet 3/2 {r8^\markup Unis. f f}
    aes4 ~ \tuplet 3/2 {8 8 8} 2 % 5b
    r4 f8^\markup Unis. 8 \tuplet 3/2 {e4 f g}
    a2(bes % 5c
    d2 c4) r
    R1 % 6a
    r2 r4 r8 f,
    g8 8~ \tuplet 3/2 {8 8 8} 8 c4 8 % 6b
  }
  bes8^\markup\bold "even notes" a a gis a4 \tuplet 3/2 {r8 a c}
  \tripletFeel 8 {
    a4--^\markup\bold swing f8 a c4 ~ \tuplet 3/2 {c8 a c} % 6c
    d4-- 8 8 c2
    r8 d a d c8 4. % 7a
    d4 c bes \tuplet 3/2 {r8 des, f} \bar "||" \key ges \major
    ges4. bes8 des4. 8 % 7b
    ees4. 8 des2
    r8 ees8 8 8 des4. 8 % 7c
    d4 ~ \tuplet 3/2 {8 8 bes} 4 \tuplet 3/2 {r8^\markup Unis. ges ges}
    a4~ \tuplet 3/2 {8 8 8} 2 % 8a
    r4 ges8^\markup Unis. 8 \tuplet 3/2 {f4 ges aes}
    des1 ~
    des4 r bes4--^\markup Unis. 4-- % 8b
    \tuplet 3/2 {bes4 ges aes} ges2
    r4 ges8 8 \tuplet 3/2 {f4 ges aes}
    bes2 (ces % 8c
    <<{ees2 des~ | des1\fermata)} \new Voice {s4 s2.^\markup\italic rit. s2.. s8} >>
  }
  \bar "|."
}

wordsTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  I hear ba -- bies cry,
  I watch them grow
}

wordsMen = \lyricmode {
%  I see trees of green, red __ ros -- es too,
%  I see them bloom for me and you,
  and I think __ to my -- self,
  what a won -- der -- ful world. __

  I see skies of blue and clouds of white,
  the bright __ bless -- ed day,
  the dark __ sa -- cred night,
  and I think __ to my -- self,
  what a won -- der -- ful world. __

%  The col -- ors __ of the rain -- bow,
%  so pret -- ty in the sky,
  are al -- so __ on the fac -- es
  of peo -- ple go -- in' by,
  I see friends shak -- in' hands, __
  say -- in' "\"How" do you "do!\""
  They're real -- ly say -- in'
  "\"I" love "you.\""
  I hear ba -- bies cry,
  I watch them grow
  They'll learn much more
  than I'll __ ev -- er know
  and I think __ to my -- self,
  what a won -- der -- ful world. __
  Yes, I think __ to my -- self,
  what a won -- der -- ful world. __
}

bass = \relative {
  \global
  \tripletFeel 8 {
    R1
    R1
    R1 % 3b
    R1
    R1 % 3c
    r2 r4 \tuplet 3/2 {r8 f f}
    des4~ \tuplet 3/2 {8 8 8} 2 % 4a
    r4 f8 8 \tuplet 3/2 {e4 f g}
    a1 ~ % 4b
    a2 r4 c,8 e
    f4. 8 a4. 8 % 4c
    bes4. 8 a4 r8 a
    g4~ \tuplet 3/2 {8 8 8} f4. 8 % 5a
    a4 ~ \tuplet 3/2 {8 8 g} d4 \tuplet 3/2 {r8 f f}
    des4 ~ \tuplet 3/2 {8 8 8} 2 % 5b
    r4 f8 8 \tuplet 3/2 {e4 f g}
    f2(f % 5c
    f2 f4) r
    R1 % 6a
    r2 r4 r8 f
    g8 f8~ \tuplet 3/2 {8 e8 d8} e8 c4 8 % 6b
  }
  g'8 f f d c4 \tuplet 3/2 {r8 a' a}
  \tripletFeel 8 {
    d,4-- 8 8 e4 ~ \tuplet 3/2 {e8 a a} % 6c
    a4-- 8 8 g2
    r8 f8 8 8 fis8 4.  % 7a
    g4 fis c \tuplet 3/2 {r8 des f} \bar "||" \key ges \major
    ges4. bes8 des4. 8 % 7b
    ces4. 8 bes2
    r8 aes8 8 8 ges4. 8 % 7c
    bes4 ~ \tuplet 3/2 {8 8 aes} ees4 \tuplet 3/2 {r8 ges ges}
    d4~ \tuplet 3/2 {8 8 8} 2 % 8a
    r4 ges8 8 \tuplet 3/2 {f4 ges aes}
    ges2 (fes
    ees4) r bes'4-- 4-- % 8b
    \tuplet 3/2 {bes4 ges aes} ges2
    r4 ges8 8 \tuplet 3/2 {f4 ges aes}
    ges2 (ges % 8c
    ges2 ges~
    ges1\fermata)
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \tuplet 3/2 {c'8 f a} \tuplet 3/2 {c a f} \tuplet 3/2 {d g bes} \tuplet 3/2 {d bes g}
  \tuplet 3/2 {c,8 f a} \tuplet 3/2 {c a f} \tuplet 3/2 {d g bes} \tuplet 3/2 {d bes g}
  \tuplet 3/2 {c,8 f a} \tuplet 3/2 {c a f} \tuplet 3/2 {c e a} \tuplet 3/2 {c a e}
  \tuplet 3/2 {d f bes} \tuplet 3/2 {d bes f} \tuplet 3/2 {c e a} \tuplet 3/2 {c a e}
  \tuplet 3/2 {bes8 d g} \tuplet 3/2 {bes g d} \tuplet 3/2 {a c f} \tuplet 3/2 {a f c} % 3c
  \tuplet 3/2 {a8 cis e} \tuplet 3/2 {a g e} \tuplet 3/2 {f a, d} \tuplet 3/2 {f a f}
  << aes2 \new Voice {r4 \tuplet 3/2 {r8 aes, des}} >> \tuplet 3/2 {f8 aes f} \tuplet 3/2 {des f aes} % 4a
  <d, f g c>2\arpeggio \tuplet 3/2 {bes8 e g} \tuplet 3/2 {bes g e}
  \tuplet 3/2 {a,8 c f} \tuplet 3/2 {a f c} \tuplet 3/2 {a cis f} \tuplet 3/2 {<f f'>4 <g g'>8} % 4b
  <a a'>4 ~ \tuplet 3/2 {q8 <bes bes'> <a a'>} <g g'>4 \acciaccatura c8 <c c'>4
  \tuplet 3/2 {c,8 f a} \tuplet 3/2 {c a f} \tuplet 3/2 {c e a} \tuplet 3/2 {c a e} % 4c
  \tuplet 3/2 {d8 f bes} \tuplet 3/2 {d bes f} \tuplet 3/2 {c e a} \tuplet 3/2 {c a e}
  \tuplet 3/2 {bes d g} \tuplet 3/2 {bes g d} \tuplet 3/2 {a c f} \tuplet 3/2 {a f c} % 5a
  \tuplet 3/2 {a8 cis e} \tuplet 3/2 {a g e} \tuplet 3/2 {f a, d} \tuplet 3/2 {f a f}
  << aes2 \new Voice {r4 \tuplet 3/2 {r8 aes, des}} >> \tuplet 3/2 {f aes f} \tuplet 3/2 {d f a} % 5b
  <d, f g c>2\arpeggio \tuplet 3/2 {bes8 e g} \tuplet 3/2 {bes g e}
  \tuplet 3/2 {a8 c, f} <a a'>4 <g bes d g>2 % 5c
  <bes d f bes>4~ \tuplet 3/2 {q8 <g g'> <bes bes'>} <c f a c>2
  << {\voiceOne g'2 bes} \new Voice {\voiceTwo \tuplet 3/2 {g8 e bes} \tuplet 3/2 {g bes e} \tuplet 3/2 {bes' g e} \tuplet 3/2 {bes e g}} >> % 6a
  << {a2 c} \new Voice {\tuplet 3/2 {a8 f c} \tuplet 3/2 {a c f} \tuplet 3/2 {c' a f} \tuplet 3/2 {c f a}} >>
  << {g2 bes} \new Voice {\tuplet 3/2 {g8 e bes} \tuplet 3/2 {g bes e} \tuplet 3/2 {bes' g e} \tuplet 3/2 {bes e g}} >> % 6b
  << {a2 c} \new Voice {\tuplet 3/2 {a8 f c} \tuplet 3/2 {a c f} \tuplet 3/2 {c' a f} \tuplet 3/2 {c f a}}>>
  << {f4 4 e s} \new Voice {\voiceTwo \tuplet 3/2 {d8 a f} \tuplet 3/2 {d' a f} \tuplet 3/2 {c' e, g} \tuplet 3/2 {c e c}} >> % 6c
  << {f4 a g s} \new Voice {\voiceTwo \tuplet 3/2 {d8 a f} \tuplet 3/2 {f' d a} \tuplet 3/2 {e' c g} \tuplet 3/2 {<c c'> <bes bes'> <a a'>}} >>
  << {f'4 d s2} \new Voice {\voiceTwo \tuplet 3/2 {d8 a f} \tuplet 3/2 {a f d} \tuplet 3/2 {<c c'> <d d'> <ees ees'>} \tuplet 3/2 {<fis fis'> <a a'> <c c'>}} >> % 7a
  << {bes'4 s2.} \new Voice {\voiceTwo \tuplet 3/2 {g8 d bes} <a c ees a>4 \tuplet 3/2 {g'8 e bes16 g} <ces, des f aes>4} >> \bar "||" \key ges \major
  \oneVoice \tuplet 3/2 {des8 ges bes} \tuplet 3/2 {des bes ges} \tuplet 3/2 {des f bes} \tuplet 3/2 {des bes f} % 7b
  \tuplet 3/2 {ees8 ges ces} \tuplet 3/2 {ees ces ges} \tuplet 3/2 {des f bes} \tuplet 3/2 {des bes f}
  \tuplet 3/2 {ces8 ees aes} \tuplet 3/2 {ces aes ees} \tuplet 3/2 {bes des ges} \tuplet 3/2 {bes ges des} % 7c
  \tuplet 3/2 {bes8 d f} \tuplet 3/2 {bes aes f} \tuplet 3/2 {ges bes, ees} \tuplet 3/2 {ges bes ges}
  << {a2 s} \new Voice {r4 \tuplet 3/2 {r8 a, d} \tuplet 3/2 {fis8 aes fis} \tuplet 3/2 {d f aes}} >> % 8a
  <ees ges aes des>2\arpeggio \tuplet 3/2 {ces8 f aes} \tuplet 3/2 {ces aes f}
  \tuplet 3/2 {bes,8 des ges} \tuplet 3/2 {bes ges des} \tuplet 3/2 {bes des fes} \tuplet 3/2 {bes aes fes}
  \tuplet 3/2 {ees8 g bes} \tuplet 3/2 {ees bes ees} <g bes>2 % 8b
  <ces,, ees ges bes>2\arpeggio \tuplet 3/2 {ees''8 des ces} \tuplet 3/2 {aes ges ees}
  <ees, ges aes des>2 <ces d f aes>
  \tuplet 3/2 {bes'8 des, ges} <bes bes'>4 <aes ces ees aes>2 % 8c
  <ces ees ges ces>4 ~ \tuplet 3/2 {q8 <des des'> <ees ees'>} <ges bes des ges>2\arpeggio ~
  q1\fermata
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\mf s\<
  s2.\! s4\> 
  s1\! % 3b
  s1*5
  s2 s4\< s\! % 4b
  s2 s4\> s\!
  s1*6
  s4\< \tuplet 3/2 {s4 s8\!} s2 % 5c
  s4 s\> s2\!
  s1*4
  s1\f % 6c
  s1
  s1 % 7a
  s4 s2\> s4\mf
  s1*6
  s1\< % 8a++
  s1\! % 8b
  s2 s\>
  s1\mp
  s2\< s\! % 8c
  s4 s2.-\markup\italic rit.
  s2..\> s8\pp
}

pianoLH = \tripletFeel 8 \relative {
  \global
  f,4. c'8 f2
  f,4 \tuplet 3/2 {c'8 d c} f4 f,
  f4. 8 a4. 8 % 3b
  bes4. 8 a4. 8
  g4. 8 f4. 8 % 3c
  a4. 8 d,2
  \tuplet 3/2 {des8 aes' des} f4 des2 % 4a
  <g, f'>2\arpeggio c,4 c'
  f,4. c'8 f,4 cis' % 4b
  \tuplet 3/2 {bes8 f' a} \tuplet 3/2 {d a f} \tuplet 3/2 {c g' bes} e4
  f,,4. 8 a4. 8 % 4c
  bes4. 8 a4. 8
  g4. 8 f4. 8 % 5a
  a4. 8 d,2
  \tuplet 3/2 {des8 aes' des} f4 des2 % 5b
  <g, f'>2\arpeggio c,4 c'
  \tuplet 3/2 {f,8 c' f} \tuplet 3/2 {a f c} \tuplet 3/2 {f, d' g} \tuplet 3/2 {bes g d} % 5c
  \tuplet 3/2 {f,8 d' g} \tuplet 3/2 {bes g d} \tuplet 3/2 {f, c' f} <a c>4
  c,,4~ \tuplet 3/2 {c8 g' e'} c4~ \tuplet 3/2 {c8 g' c,} % 6a
  f,4~ \tuplet 3/2 {f8 c' a'} f4 ~ \tuplet 3/2 {f4 c8}
  c,4~ \tuplet 3/2 {c8 g' e'} c4 ~ \tuplet 3/2 {c8 g' c,} % 6b
  f,4~ \tuplet 3/2 {f8 c' a'} f4 ~ \tuplet 3/2 {f4 c8}
  d,4. 8 e4 e' % 6c
  f,4. 8 g4 g'
  f,4. 8 fis4 fis' % 7a
  <g, g'>4 <fis fis'> c <des des'> \key ges \major
  ges4. 8 bes4. 8 % 7b
  ces4. 8 bes4. 8
  aes4. 8 ges4. 8 % 7c
  bes4. 8 ees,2
  \tuplet 3/2 {d8 a' d} fis4 d2 % 8a
  <aes ges'>2\arpeggio des,4 des'
  ges,4. 8 fes4. 8
  ees4 \tuplet 3/2 {ees'4 bes'8} ees2 % 8b
  <aes,, ges'>1\arpeggio
  <des ces'>2 des4 des,
  \tuplet 3/2 {ges8 des' ges} \tuplet 3/2 {bes ges des} \tuplet 3/2 {f, ees' ges} \tuplet 3/2 {ces aes ees} % 8c
  \showStaffSwitch
  \tuplet 3/2 {ges,8 ees' aes} \tuplet 3/2 {ces as ees} \tuplet 3/2 {ges, des' ges} \tuplet 3/2 {bes des ges} \rh
  <bes des>1
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerS \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsTenor
          >>
        >>
        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano \with {connectArpeggios = ##t} <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerS \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsTenor
          >>
        >>
        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano \with {connectArpeggios = ##t} <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sep"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsWomen
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsWomen
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsMen
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsMen
          >>
        >>
        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano \with {connectArpeggios = ##t} <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sop"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsWomen
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsMen}
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        >>
        \new PianoStaff = piano \with {connectArpeggios = ##t} <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-alto"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsWomen
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsMen}
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        >>
        \new PianoStaff = piano \with {connectArpeggios = ##t} <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-tenor"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsMen
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsMen}
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        >>
        \new PianoStaff = piano \with {connectArpeggios = ##t} <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-bass"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsMen
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        >>
        \new PianoStaff = piano \with {connectArpeggios = ##t} <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsWomenMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMenMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
