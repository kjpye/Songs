\version "2.25.18"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "“Oklahoma” Choral Selection"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Richard Rodgers"
  arranger    = "Arr. Clay Warnick"
%  opus        = "opus"

  poet        = "Oscar Hammerstein II"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 2/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Furioso 4=120
  s2*8 |
  \tempo \markup {Allegretto \italic "(gracefully)" "(“Oh, What A Beautiful Morning”)"} 4=120
  s2.*12 |
  s2.*8 | \tempo Joyously 4=120 s2.*7 |
  s2.*11 | \tempo "L’istesso Tempo" 4=120 s1*4 |
  \tempo \markup{"Tempo giusto" \italic "(Brightly)" "(“The Surrey with the Fringe on Top”)"} 4=120
  s1*8 | % 5
  s1*8 |
  s1*8 | % 7
  s1*8 |
  s1*8 | % 9
  \tempo \markup{Moderato \italic "(in a smooth, even tempo)" "(“People will Say We’re in Love”)"} 4=120
  \repeat volta 2 { s1*13 \alternative { { s1*3 } { s1*3 } } }
  s1*6 |
  s1*8 | s2*4 | % 12
  \tempo \markup{Lustily \italic "(“Oklahoma”)"} 4=120
  s2*13 | % 15
  s2*14 |
  s2*14 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup\box    "2a" s2*5
  \textMark \markup\box    "2b" s2*3
  \mark     \markup\circle "A"  s2.*2
  \textMark \markup { \box "2c" } s2.*5
  \textMark \markup { \box "2d" } s2.
  \mark \markup\circle "B" s2.*4
  \textMark \markup { \box "3a" } s2.*4
  \mark \markup\circle "C"
  \textMark \markup { \box "3b" } s2.*4
  \mark \markup\circle "D"
  \textMark \markup { \box "3c" } s2.*7
  \textMark \markup { \box "4a" } s2.
  \mark \markup\circle "E" s2.*7
  \textMark \markup { \box "4b" } s2.
  \mark \markup\circle "F" s2.*2 s1*4
  \mark \markup\circle "G"
  \textMark \markup { \box "5a" } s1*4
  \textMark \markup { \box "5b" } s1*4
  \mark \markup\circle "H"
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1*4
  \mark \markup\circle "I"
  \textMark \markup { \box "7a" } s1*4
  \textMark \markup { \box "7b" } s1*4
  \mark \markup\circle "J"
  \textMark \markup { \box "8a" } s1*4
  \textMark \markup { \box "8b" } s1*4
  \mark \markup\circle "K"
  \textMark \markup { \box "9a" } s1*4
  \textMark \markup { \box "9b" } s1*4
  \mark \markup\circle "L"
  \repeat volta 2 {
    \textMark \markup { \box "10a" } s1*7
    \textMark \markup { \box "10b" } s1
    \mark \markup\circle "M" s1*5
    \alternative {
      {
        \textMark \markup { \box "11a" } s1*3
      }
      {
        s1*3
      }
    }
  }
  \mark \markup\circle "N"
  \textMark \markup { \box "11b" } s1*6
  \textMark \markup { \box "12a" } s1*2
  \mark \markup\circle "O" s1*4
  \textMark \markup { \box "12b" } s1*2
  \mark \markup\circle "P" s2*4
  \mark \markup\circle "Q"
  \textMark \markup { \box "13a" } s2*6
  \textMark \markup { \box "13b" } s2*2
  \mark \markup\circle "R" s2*5
  \textMark \markup { \box "14a" } s2*3
  \mark \markup\circle "S" s2*4
  \textMark \markup { \box "14b" } s2*4
  \mark \markup\circle "T" s2*2
  \textMark \markup\box "15a" s2*7
  \textMark \markup\box "15b" s2*7
  \mark \markup\circle "V"
  \textMark \markup\box "16a" s2*7
  \textMark \markup\box "16b" s2
  \mark \markup\circle "W" s2*6
  \mark \markup\circle "X"
  \textMark \markup\box "17a" s2*6
  \textMark \markup\box "17b" s2*6
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2*8 | s2.*12 |
  s2.\p | s2.*2 | s2 s4-\markup\italic "a tempo" | s2.*2 s8 s2\< s8\! | s4 s2-\markup\italic "poco rit." |
  s2.\omit\mf-\markup{\dynamic mf \italic "(melody)"} | s2.*6 |
  s2.*8 | s2.\> | s2.\omit\mp-\markup{\dynamic mp \italic "sempre rit."} | s2. | % 4a
  s2 s\<^\markup\italic "poco a poco accel." | s2.\! s4\sf | s1 | s4 s2.\> |
  s1\mp | s1*6 | s4 s2.\mf | % 5
  s1*7 | s2. s4\f |
  s1*7 | s8 s2.\> s8\! | % 7
  s1\mp | s1*7 |
  s1*2 | s1\omit\dim-\markup\italic "poco a poco dim." | s1 | s\p | s2 s\pp | s1 | s2 s4\ppp\< s |
  \repeat volta 2 {
    s1\omit\mp-\markup{\dynamic mp \bold - \dynamic mf} s1*12
    \alternative { { s1*3 } { s1*3 } }
  }
  s1\mp | s1*5 |
  s1*2 | s1\omit\mf-\markup{\dynamic mf \italic "(melody)"} | s1*2 | s2. s4\< | s1\f | s | s2*4 | % 12
  s2*2 | s2\p | s2*3 | s4 s\f | s s\p | s2*5 |
  s4\< s\! | s2\mf | s | s\omit\mp-\markup{\dynamic mp \italic "(Sopranos divisi)"} | s2*5 | s4 s\f | s s\pp | s2*2 | % 14
  s2*3 s8 s4.\< | s2\! | s4. s8\mp | s2*3 | s4 s\f | s2*4 |
  s2\omit\mf-\markup{\dynamic mf \italic "(Sopranos divisi)"} | s2*7 | s2\f | s2*4 | s4 s\p | % 16
  s2\omit\cresc-\markup\italic "poco a poco cresc" | s2*2 | s4 s\f | s2 | s8 s4.\< | s2\! | s\< | s\! | s | s\ff | s\fff |
}

dynamicsSopSingle = {
  \override DynamicTextSpanner.style = #'none
  s2*8 | s2.*12 |
  s2.\p | s2.*2 | s2 s4-\markup\italic "a tempo" | s2.*2 s8 s2\< s8\! | s4 s2-\markup\italic "poco rit." |
  s2.\omit\mf-\markup{\dynamic mf \italic "(melody)"} | s2.*6 |
  s2.*8 | s2.\> | s2.\omit\mp-\markup{\dynamic mp \italic "sempre rit."} | s2. | % 4a
  s2 s\<^\markup\italic "poco a poco accel." | s2.\! s4\sf | s1 | s4 s2.\> |
  s1\mp | s1*6 | s4 s2.\mf | % 5
  s1*7 | s2. s4\f |
  s1*7 | s8 s2.\> s8\! | % 7
  s1\mp | s1*7 |
  s1*2 | s1\omit\dim-\markup\italic "poco a poco dim." | s1 | s\p | s2 s\pp | s1 | s2 s4\ppp\< s |
  s1\mp s1*15 % 10
  s1\mf s1*15 % 10
  s1\mp | s1*5 |
  s1*2 | s1\omit\mf-\markup{\dynamic mf \italic "(melody)"} | s1*2 | s2. s4\< | s1\f | s | s2*4 | % 12
  s2*2 | s2\p | s2*3 | s4 s\f | s s\p | s2*5 |
  s4\< s\! | s2\mf | s | s\omit\mp-\markup{\dynamic mp \italic "(Sopranos divisi)"} | s2*5 | s4 s\f | s s\pp | s2*2 | % 14
  s2*3 s8 s4.\< | s2\! | s4. s8\mp | s2*3 | s4 s\f | s2*4 |
  s2\omit\mf-\markup{\dynamic mf \italic "(Sopranos divisi)"} | s2*7 | s2\f | s2*4 | s4 s\p | % 16
  s2\omit\cresc-\markup\italic "poco a poco cresc" | s2*2 | s4 s\f | s2 | s8 s4.\< | s2\! | s\< | s\! | s | s\ff | s\fff |
}

soprano = \relative {
  \global
  R2*8 | \time 3/4 R2.*12 |
  bes'2.^\markup\italic unison ( | aes | g | aes2\fermata) r4 |
  bes2.( | c | cis | d) \section |
  bes4^\markup\italic "a tempo" g d | ees g bes | des2. | c2~8 r | bes4 g d | ees g bes | f2.~ |
  f2~8 r | bes4 g d | ees g bes | d2. | ees2~8 r | 4 bes g | d' aes f | ees2.( | % 4a
  f2.) | ees'4 bes g | d' aes f \section \time 4/4 | ees1~ | 2. 4-> | c'1-> ~ | 2.~8 r \section \key aes \major \time 2/2 |
  aes2(g | f ees) | aes(g | f ees) | % 5a
  aes2(g | f ees) | ees(d | des8) r f4 c' bes |
  ees,4 4 4 4 | 4 8 d e aes r4 | ees4 4 4 4 | 4 8 d ees bes' r4 | % 6a
  ees,4 4 4 4 | 4 8 d ees c' bes aes | bes2. c4 | ees r r ees |
  des4 c bes8 8 aes8 8 | des8 8 c4 bes4. f8 | aes4 4 8 8 4 | bes aes2 4 | % 7a
  ees'8 8 d4 c8 8 bes8 8 | ees4 d c4. g8 | bes4 8 8 4 c8 d | ees2 bes |
  <<{
    \vt \repeat unfold 5 {ees,8 r ees d ees r ees d | }
    ees8 r ees d ees4 r |
  } \new Voice {\vo
                aes2^\markup\italic Hum, ^\markup\italic "(Sopranos divisi)" (g | f ees4) r | aes2^\markup\italic Hum, (g | f ees4) r |
                aes2^\markup\italic Hum, (g | f ees) |
  }>>
  \ov f2(a | bes4) r r2 |
  aes2(g | f) r | ees8 r ees d ees r ees des | f4 r r2 | % 9a
  ees8 r ees des ees r ees des | f4 r f-. g-. | aes-. r ees-. r | aes,-. r f'2\fermata \section \key des \major \time 4/4 |
  \repeat volta 2 {
    des2 aes'~ | 2. bes4 | c f,4 2~ | 2.~8 r | des2 aes'~ | 2. bes4 | ges c, c2~ |
    c2.~8 r | des2 aes'~ | 2~ \tuplet 3/2 {aes4 bes c} | des g, g2~ | 2.~8 r | bes2 a4 bes |
    \alternative {
      { a2 aes4 a | aes1~ | 2.~8 r | }
      { c2 b4 c | des1~ | 2.~8 r | }
    }
  }
  ces2(bes | aes bes | des ces | bes aes4~8) r | bes2(a | aes bes | % 11b
  c2 bes | a2 aes4~8) r | des,2 aes'~ | 2~ \tuplet 3/2 {4 bes c} | des ees4 2~ | 2.~8 r | % 12a
  f2 e4 f | ees2 d4 ees \section \time 2/4 | des2~ | 2~ | 8 r r4 | R2 \section \key d \major |
  R2 | R | fis,2~ | fis( | g~) | g | % 13a
  g8 r a a | c a a g | fis4 a | 8 r r fis | e4 g | 8 r fis e | fis4 g |
  a8 b cis dis | e2~ | 4~8 r | <d, fis>4(<e g> | <fis a> <g b> | <a cis> <b d> | <cis e> <d fis>) | % 14a
  <e g>2( | <dis fis> | <e g>8) r a, a | c a a g | fis4 a | 8 r r fis |
  e4 g | 8 r fis g | a4 b | 8 a b c | d2~ | 4~8 d,( | d'2~) | % 15a
  d2~ | d~ | 8 r a b | cis e4 8 | 4 d8 b | cis2~ | 8 a b cis |
  <a d>4(<bes ees> | <b e> <cis eis> | <d fis>2~ | 4~8) r | <b e>4(<c f> | <cis fis> <d g> | <e gis>2~ | % 16a
  q4~8) r | <d fis>4 <cis e>8 <b d> | <ais cis>4 <ais bis>8 <ais cis> | <b d>2 | <d fis>8-^ r <b d> <b e> | <d fis>4 <b cis>~( | <a cis>8) r <g cis>4 |
  <a d>4 <a cis> | <a d> <c e> | <d fis> <cis e> | <d fis>8 r \breathe <e g> <e gis> | <fis a>2~ | 2~ | % 17a
  q2~ | q~ | q~ | q | d8-^ r r4 | \override NoteHead.style = #'cross e8 r r4 |
  \bar "|."
}

hum = \lyricmode { \markup\italic Hum, }

wordsSop = \lyricmode {
  \hum __ \hum __
  Oh, what a beau -- ti -- ful morn -- in’, __
  Oh, what a beau -- ti -- ful day. __
  I got a beau -- ti -- ful feel -- in’ __
  Ev -- ’ry -- things go -- in’ my way. __
  Oh, what a beau -- ti -- ful day! __
  "" "" \hum __ \hum __ \hum __ \hum __
  N’ we c’n watch that fringe and see how it flut -- ters
  When you drive them high- step -- pin’ strut -- ters,
  Nos -- ey pokes -- ’ll peek thru their shut -- ters
  and their eyes will pop!
  The wheels are yel -- ler, the up -- hol -- ster -- y’s brown,
  The dash -- board’s gen -- u -- ine leath -- er,
  With is -- ing -- glass cur -- tains y’ can roll right down,
  in case there’s a change in the weath -- er
  Clip -- pe -- ty clop -- pe -- ty,
  clip -- pe -- ty clop -- pe -- ty,
  Clip -- pe -- ty clop -- pe -- ty,
  clip -- pe -- ty clop -- pe -- ty,
  Clip -- pe -- ty clop -- pe -- ty,
  clip -- pe -- ty clop,
  \hum __ \hum __
  Clop -- pe -- ty clip -- pe -- ty clop.
  Clop -- pe -- ty clip -- pe -- ty clop on the top, clip, clop, ""
  Don’t throw bou -- quets at me __
  Don’t please __ my folks too much __
  Don’t laugh __ at my jokes too much __
  peo -- ple will say we’re in love! __ "" _ _ _
  Oo, __ Oo, __
  Sweet -- heart __ they’re sus -- pect -- ing things __
  Peo -- ple will say we’re in love! __
  Oh! __
  plain, Ok -- la -- ho -- ma,
  where the wa -- vin’ wheat can sure smell sweet
  When the wind comes right be -- hind the rain. __
  Oh! __ Oh! __
  Ev -- ’ry night we sit a -- lone and talk
  and watch a hawk mak -- in’ la -- zy cir -- cles in the sky. __
  Ah! __
  And the land we be -- long to is grand! __
  And when we say __ ay! __
  You’re do -- in’ fine, Ok -- la -- hom -- a!
  Ok -- la -- hom -- a! __
  O -- K -- L -- A -- H -- O -- M -- A,
  Ok -- la -- hom -- a!
  Yeow!
}

wordsSopSingle = \lyricmode {
  \hum __ \hum __
  Oh, what a beau -- ti -- ful morn -- in’, __
  Oh, what a beau -- ti -- ful day. __
  I got a beau -- ti -- ful feel -- in’ __
  Ev -- ’ry -- things go -- in’ my way. __
  Oh, what a beau -- ti -- ful day! __
  "" "" \hum __ \hum __ \hum __ \hum __
  N’ we c’n watch that fringe and see how it flut -- ters
  When you drive them high- step -- pin’ strut -- ters,
  Nos -- ey pokes -- ’ll peek thru their shut -- ters
  and their eyes will pop!
  The wheels are yel -- ler, the up -- hol -- ster -- y’s brown,
  The dash -- board’s gen -- u -- ine leath -- er,
  With is -- ing -- glass cur -- tains y’ can roll right down,
  in case there’s a change in the weath -- er
  Clip -- pe -- ty clop -- pe -- ty,
  clip -- pe -- ty clop -- pe -- ty,
  Clip -- pe -- ty clop -- pe -- ty,
  clip -- pe -- ty clop -- pe -- ty,
  Clip -- pe -- ty clop -- pe -- ty,
  clip -- pe -- ty clop,
  \hum __ \hum __
  Clop -- pe -- ty clip -- pe -- ty clop.
  Clop -- pe -- ty clip -- pe -- ty clop on the top, clip, clop, ""
  Don’t throw bou -- quets at me __
  Don’t please __ my folks too much __
  Don’t laugh __ at my jokes too much __
  peo -- ple will say we’re in love! __
  Don’t sigh __ and gaze at me __
  Your sighs __ are so like mine __
  Your eyes __ mus -- n’t glow like mine __
  peo -- ple will say we’re in love! __
  Oo, __ Oo, __
  Sweet -- heart __ they’re sus -- pect -- ing things __
  Peo -- ple will say we’re in love! __
  Oh! __
  plain, Ok -- la -- ho -- ma,
  where the wa -- vin’ wheat can sure smell sweet
  When the wind comes right be -- hind the rain. __
  Oh! __ Oh! __
  Ev -- ’ry night we sit a -- lone and talk
  and watch a hawk mak -- in’ la -- zy cir -- cles in the sky. __
  Ah! __
  And the land we be -- long to is grand! __
  And when we say __ ay! __
  You’re do -- in’ fine, Ok -- la -- hom -- a!
  Ok -- la -- hom -- a! __
  O -- K -- L -- A -- H -- O -- M -- A,
  Ok -- la -- hom -- a!
  Yeow!
}

wordsSopMidi = \lyricmode {
  "Hum "  "Hum " 
  "\nOh, " "what " "a " beau ti "ful " morn "in’, " 
  "\nOh, " "what " "a " beau ti "ful " "day. " 
  "\nI " "got " "a " beau ti "ful " feel "in’ " 
  "\nEv" ’ry "things " go "in’ " "my " "way. " 
  "\nOh, " "what " "a " beau ti "ful " "day! " 
  "\n " " " "Hum "  "Hum "  "Hum "  "Hum " 
  "\nN’ " "we " "c’n " "watch " "that " "fringe " "and " "see " "how " "it " flut "ters "
  "\nWhen " "you " "drive " "them " high step "pin’ " strut "ters, "
  "\nNos" "ey " pokes "’ll " "peek " "thru " "their " shut "ters "
  "\nand " "their " "eyes " "will " "pop! "
  "\nThe " "wheels " "are " yel "ler, " "the " up hol ster "y’s " "brown, "
  "\nThe " dash "board’s " gen u "ine " leath "er, "
  "\nWith " is ing "glass " cur "tains " "y’ " "can " "roll " "right " "down, "
  "\nin " "case " "there’s " "a " "change " "in " "the " weath "er "
  "\nClip" pe "ty " clop pe "ty, "
  "\nclip" pe "ty " clop pe "ty, "
  "\nClip" pe "ty " clop pe "ty, "
  "\nclip" pe "ty " clop pe "ty, "
  "\nClip" pe "ty " clop pe "ty, "
  "\nclip" pe "ty " "clop, "
  "\nHum "  "Hum " 
  "\nClop" pe "ty " clip pe "ty " "clop. "
  "\nClop" pe "ty " clip pe "ty " "clop " "on " "the " "top, " "clip, " "clop, " " "
  "\nDon’t " "throw " bou "quets " "at " "me " 
  "\nDon’t " "please "  "my " "folks " "too " "much " 
  "\nDon’t " "laugh "  "at " "my " "jokes " "too " "much " 
  "\npeo" "ple " "will " "say " "we’re " "in " "love! " 
  "\nDon’t " "sigh "  "and " "gaze " "at " "me " 
  "\nYour " "sighs "  "are " "so " "like " "mine " 
  "\nYour " "eyes "  mus "n’t " "glow " "like " "mine " 
  "\npeo" "ple " "will " "say " "we’re " "in " "love! " 
  "\nOo, "  "Oo, " 
  "\nSweet" "heart "  "they’re " sus pect "ing " "things " 
  "\nPeo" "ple " "will " "say " "we’re " "in " "love! " 
  "\nOh! " 
  "\nplain, " Ok la ho "ma, "
  "\nwhere " "the " wa "vin’ " "wheat " "can " "sure " "smell " "sweet "
  "\nWhen " "the " "wind " "comes " "right " be "hind " "the " "rain. " 
  "\nOh! "  "Oh! " 
  "\nEv" "’ry " "night " "we " "sit " a "lone " "and " "talk "
  "\nand " "watch " "a " "hawk " mak "in’ " la "zy " cir "cles " "in " "the " "sky. " 
  "\nAh! " 
  "\nAnd " "the " "land " "we " be "long " "to " "is " "grand! " 
  "\nAnd " "when " "we " "say "  "ay! " 
  "\nYou’re " do "in’ " "fine, " Ok la hom "a! "
  "\nOk" la hom "a! " 
  "\nO" K L A H O M "A, "
  "\nOk" la hom "a! "
  "\nYeow! "
}

wordsWomenTwo = \lyricmode {
  \repeat unfold 175 \skip 1
  Don’t sigh __ and gaze at me __
  Your sighs __ are so like mine __
  Your eyes __ mus -- n’t glow like mine __
  peo -- ple will _ _ _ _ say we’re in love! __
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2*8 | s2.*12 |
  s2.\p | s2.*2 | s2 s4-\markup\italic "a tempo" | s2.*2 s8 s2\< s8\! | s4 s2-\markup\italic "poco rit." |
  s2.\omit\mf-\markup{\dynamic mf \italic "(melody)"} | s2.*6 |
  s2.*8 | s2.\> | s2.\omit\mp-\markup{\dynamic mp \italic "sempre rit."} | s2. | % 4a
  s2 s\<^\markup\italic "poco a poco accel." | s2.\! s4\sf | s1 | s4 s2.\> |
  s1\mp | s1*6 | s4 s2.\mf | % 5
  s1*7 | s2. s4\f |
  s1*7 | s8 s2.\> s8\! | % 7
  s1\mp | s1*7 |
  s1*2 | s1\omit\dim-\markup\italic "poco a poco dim." | s1 | s\p | s2 s\pp | s1 | s2 s\ppp\< |
  \repeat volta 2 {
    s1\omit\mp-\markup{\dynamic mp \bold - \dynamic mf} s1*12
    \alternative { { s1*3 } { s1*3 } }
  }
  s1\mp | s1*5 |
  s1*2 | s1\mf | s1*2 | s2. s4\< | s1\f | s | s2*4 | % 12
  s2*2 | s2\p | s2*3 | s4 s\f | s s\p | s2*5 |
  s4\< s\! | s2\mf | s | s\mp | s2*5 | s4 s\f | s s\pp | s2*2 | % 14
  s2*3 s8 s4.\< | s2\! | s4. s8\mp | s2*3 | s4 s\f | s2*4 |
  s2\mf | s2*7 | s2\f | s2*4 | s4 s\p | % 16
  s2\omit\cresc-\markup\italic "poco a poco cresc" | s2*2 | s4 s\f | s2 | s8 s4.\< | s2\! | s\< | s\! | s | s\ff | s\fff |
}

dynamicsAltoSingle = {
  \override DynamicTextSpanner.style = #'none
  s2*8 | s2.*12 |
  s2.\p | s2.*2 | s2 s4-\markup\italic "a tempo" | s2.*2 s8 s2\< s8\! | s4 s2-\markup\italic "poco rit." |
  s2.\omit\mf-\markup{\dynamic mf \italic "(melody)"} | s2.*6 |
  s2.*8 | s2.\> | s2.\omit\mp-\markup{\dynamic mp \italic "sempre rit."} | s2. | % 4a
  s2 s\<^\markup\italic "poco a poco accel." | s2.\! s4\sf | s1 | s4 s2.\> |
  s1\mp | s1*6 | s4 s2.\mf | % 5
  s1*7 | s2. s4\f |
  s1*7 | s8 s2.\> s8\! | % 7
  s1\mp | s1*7 |
  s1*2 | s1\omit\dim-\markup\italic "poco a poco dim." | s1 | s\p | s2 s\pp | s1 | s2 s\ppp\< |
  s1\mp s1*15 | % 10
  s1\mf s1*15 | % 10
  s1\mp | s1*5 |
  s1*2 | s1\mf | s1*2 | s2. s4\< | s1\f | s | s2*4 | % 12
  s2*2 | s2\p | s2*3 | s4 s\f | s s\p | s2*5 |
  s4\< s\! | s2\mf | s | s\mp | s2*5 | s4 s\f | s s\pp | s2*2 | % 14
  s2*3 s8 s4.\< | s2\! | s4. s8\mp | s2*3 | s4 s\f | s2*4 |
  s2\mf | s2*7 | s2\f | s2*4 | s4 s\p | % 16
  s2\omit\cresc-\markup\italic "poco a poco cresc" | s2*2 | s4 s\f | s2 | s8 s4.\< | s2\! | s\< | s\! | s | s\ff | s\fff |
}

alto = \relative {
  \global
  R2*8 | R2.*12 |
  bes'2.^\markup\italic unison ( | aes | g | aes2\fermata) r4 |
  g2.( | g | g | f) \section |
  g4 ees bes | bes ees g | a2. | 2~8 r | g4 ees bes | bes ees g | d2.~ |
  d2~8 r | g4 ees bes | bes ees g | f2. | ges2~8 r | g4 g ees | aes f d | c2.( | % 4a
  d2.) | g4 g ees | aes f d \section | bes1~ | 2. 4-> f'1-> ~ 2.~ 8 r \section \key aes \major |
  aes2(g | f ees) | aes(g | f ees) | % 5a
  aes2(g | f ees) | ees(d | des8) r f4 c' bes |
  ees,4 4 4 4 | 4 8 d e aes r4 | ees4 4 4 4 | 4 8 d ees bes' r4 | % 6a
  ees,4 4 4 4 | 4 8 d ees c' bes aes | bes2. c4 | ees r r g, |
  ges4 4 8 8 8 8 | f8 8 4 4. des8 | ees4 4 8 8 4 | f4 2 4 | % 7a
  aes8 8 4 8 8 8 8 | g4 4 4. ees8 | aes4 8 8 4 8 8 | 2 g |
  \repeat unfold 5 { c,8 r c b c r c b | } % 8a
  c8 r c b c4 r | des2(ees | f4) r r2 |
  c2( c | des) r | c8 r c b c r c b | des4 r r2 | % 9a
  c8 r c b c r c b | des4 r des-. des-. | ees-. r ees-. r | aes,4-. r c2\fermata \section \key des \major \time 4/4 |
  \repeat volta 2 {
    bes2 des~ | 2. f4 | f ees des2~ | 2.~8 r | bes2 des~ | 2. f4 | des bes aes2~ |
    aes2.~8 r | bes2 des~ | 2 ~ \tuplet 3/2 {des4 f f} | f f ees2~ | 2.~8 r | ees2 4 4 |
    \alternative {
      { ees2 4 4 | des1~ | 2.~8 r | }
      { ges2 4 4 | aes1~ | 2.~8 r | }
    }
  }
  aes2(fes | 2 2 | bes aes | ees2.~8) r | ees2(2 | d aes' |
  g2 2 | ges2.~8) r | bes,2 des~ | 2~ \tuplet 3/2 {des4 f f} | aes4 4 g2~ | 2.~8 r |
  des'2 c4 des | bes2 b4 c \section \time 2/4 | aes2~ | 2~ | 8 r r4 | R2 \section \key d \major |
  R2 | R | d,2~ | 2( | e)( | dis) | % 13a
  cis8 r a' a | b a g e | d4 fis | 8 r r d | 4 e | 8 r fis e | d4 4 |
  fis8 gis a a | gis2( | g4)~8 r | a,4(b | cis d | e fis | g a) | % 14a
  b2-> ( | bis | c8) r a a | b a g e | d4 fis | 8 r r d |
  d4 e | 8 r fis g | fis4 gis | g8 8 8 8 | f2~ | 4~8 d( | d'2~) | % 15a
  d2~ | d~ | 8 r f, f | e cis'4 8 | b4 8 gis | a2~ | 8 a b cis |
  fis,4(g | gis gis | a2~ | 4~8) r | gis4(a | ais ais | b2~ | % 16a
  b4~8) r | a4 8 g | fis4 8 8 | 2 | gis8-^ r g g | a4 g( | fis8) r e4 |
  fis4 4 | 4 a | a a | 8 r \breathe c cis | d2~ | d~ | % 17a
  d2~ | d~ | d~ | d | d8-^ r r4 | \override NoteHead.style = #'cross e8 r r4 |
  \bar "|."
}

wordsAlto = \lyricmode {
  \hum __ \hum __
  Oh, what a beau -- ti -- ful morn -- in’, __
  Oh, what a beau -- ti -- ful day. __
  I got a beau -- ti -- ful feel -- in’ __
  Ev -- ’ry -- things go -- in’ my way. __
  Oh, what a beau -- ti -- ful day! __
  "" "" \hum __ \hum __ \hum __ \hum __
  N’ we c’n watch that fringe and see how it flut -- ters
  When you drive them high- step -- pin’ strut -- ters,
  Nos -- ey pokes -- ’ll peek thru their shut -- ters
  and their eyes will pop!
  The wheels are yel -- ler, the up -- hol -- ster -- y’s brown,
  The dash -- board’s gen -- u -- ine leath -- er,
  With is -- ing -- glass cur -- tains y’ can roll right down,
  in case there’s a change in the weath -- er
  Clip -- pe -- ty clop -- pe -- ty,
  clip -- pe -- ty clop -- pe -- ty,
  Clip -- pe -- ty clop -- pe -- ty,
  clip -- pe -- ty clop -- pe -- ty,
  Clip -- pe -- ty clop -- pe -- ty,
  clip -- pe -- ty clop,
  \hum __ \hum __
  Clop -- pe -- ty clip -- pe -- ty clop.
  Clop -- pe -- ty clip -- pe -- ty clop on the top, clip, clop, ""
  Don’t throw bou -- quets at me __
  Don’t please __ my folks too much __
  Don’t laugh __ at my jokes too much __
  peo -- ple will say we’re in love! __ "" _ _ _
  Oo, __ Oo, __
  Sweet -- heart __ they’re sus -- pect -- ing things __
  Peo -- ple will say we’re in love! __
  Oh! __
  plain, Ok -- la -- ho -- ma,
  where the wa -- vin’ wheat can sure smell sweet
  When the wind comes right be -- hind the rain. __
  Oh! __ Oh! __
  Ev -- ’ry night we sit a -- lone and talk
  and watch a hawk mak -- in’ la -- zy cir -- cles in the sky. __
  Ah! __
  And the land we be -- long to is grand! __
  And when we say __ ay! __
  You’re do -- in’ fine, Ok -- la -- hom -- a!
  Ok -- la -- hom -- a! __
  O -- K -- L -- A -- H -- O -- M -- A,
  Ok -- la -- hom -- a!
  Yeow!
}

wordsAltoSingle = \lyricmode {
  \hum __ \hum __
  Oh, what a beau -- ti -- ful morn -- in’, __
  Oh, what a beau -- ti -- ful day. __
  I got a beau -- ti -- ful feel -- in’ __
  Ev -- ’ry -- things go -- in’ my way. __
  Oh, what a beau -- ti -- ful day! __
  "" "" \hum __ \hum __ \hum __ \hum __
  N’ we c’n watch that fringe and see how it flut -- ters
  When you drive them high- step -- pin’ strut -- ters,
  Nos -- ey pokes -- ’ll peek thru their shut -- ters
  and their eyes will pop!
  The wheels are yel -- ler, the up -- hol -- ster -- y’s brown,
  The dash -- board’s gen -- u -- ine leath -- er,
  With is -- ing -- glass cur -- tains y’ can roll right down,
  in case there’s a change in the weath -- er
  Clip -- pe -- ty clop -- pe -- ty,
  clip -- pe -- ty clop -- pe -- ty,
  Clip -- pe -- ty clop -- pe -- ty,
  clip -- pe -- ty clop -- pe -- ty,
  Clip -- pe -- ty clop -- pe -- ty,
  clip -- pe -- ty clop,
  \hum __ \hum __
  Clop -- pe -- ty clip -- pe -- ty clop.
  Clop -- pe -- ty clip -- pe -- ty clop on the top, clip, clop, ""
  Don’t throw bou -- quets at me __
  Don’t please __ my folks too much __
  Don’t laugh __ at my jokes too much __
  peo -- ple will say we’re in love! __
  Don’t sigh __ and gaze at me __
  Your sighs __ are so like mine __
  Your eyes __ mus -- n’t glow like mine __
  peo -- ple will say we’re in love! __
  Oo, __ Oo, __
  Sweet -- heart __ they’re sus -- pect -- ing things __
  Peo -- ple will say we’re in love! __
  Oh! __
  plain, Ok -- la -- ho -- ma,
  where the wa -- vin’ wheat can sure smell sweet
  When the wind comes right be -- hind the rain. __
  Oh! __ Oh! __
  Ev -- ’ry night we sit a -- lone and talk
  and watch a hawk mak -- in’ la -- zy cir -- cles in the sky. __
  Ah! __
  And the land we be -- long to is grand! __
  And when we say __ ay! __
  You’re do -- in’ fine, Ok -- la -- hom -- a!
  Ok -- la -- hom -- a! __
  O -- K -- L -- A -- H -- O -- M -- A,
  Ok -- la -- hom -- a!
  Yeow!
}

wordsAltoMidi = \lyricmode {
  "Hum "  "Hum " 
  "\nOh, " "what " "a " beau ti "ful " morn "in’, " 
  "\nOh, " "what " "a " beau ti "ful " "day. " 
  "\nI " "got " "a " beau ti "ful " feel "in’ " 
  "\nEv" ’ry "things " go "in’ " "my " "way. " 
  "\nOh, " "what " "a " beau ti "ful " "day! " 
  "\n " " " "Hum "  "Hum "  "Hum "  "Hum " 
  "\nN’ " "we " "c’n " "watch " "that " "fringe " "and " "see " "how " "it " flut "ters "
  "\nWhen " "you " "drive " "them " high step "pin’ " strut "ters, "
  "\nNos" "ey " pokes "’ll " "peek " "thru " "their " shut "ters "
  "\nand " "their " "eyes " "will " "pop! "
  "\nThe " "wheels " "are " yel "ler, " "the " up hol ster "y’s " "brown, "
  "\nThe " dash "board’s " gen u "ine " leath "er, "
  "\nWith " is ing "glass " cur "tains " "y’ " "can " "roll " "right " "down, "
  "\nin " "case " "there’s " "a " "change " "in " "the " weath "er "
  "\nClip" pe "ty " clop pe "ty, "
  "\nclip" pe "ty " clop pe "ty, "
  "\nClip" pe "ty " clop pe "ty, "
  "\nclip" pe "ty " clop pe "ty, "
  "\nClip" pe "ty " clop pe "ty, "
  "\nclip" pe "ty " "clop, "
  "\nHum "  "Hum " 
  "\nClop" pe "ty " clip pe "ty " "clop. "
  "\nClop" pe "ty " clip pe "ty " "clop " "on " "the " "top, " "clip, " "clop, " " "
  "\nDon’t " "throw " bou "quets " "at " "me " 
  "\nDon’t " "please "  "my " "folks " "too " "much " 
  "\nDon’t " "laugh "  "at " "my " "jokes " "too " "much " 
  "\npeo" "ple " "will " "say " "we’re " "in " "love! " 
  "\nDon’t " "sigh "  "and " "gaze " "at " "me " 
  "\nYour " "sighs "  "are " "so " "like " "mine " 
  "\nYour " "eyes "  mus "n’t " "glow " "like " "mine " 
  "\npeo" "ple " "will " "say " "we’re " "in " "love! " 
  "\nOo, "  "Oo, " 
  "\nSweet" "heart "  "they’re " sus pect "ing " "things " 
  "\nPeo" "ple " "will " "say " "we’re " "in " "love! " 
  "\nOh! " 
  "\nplain, " Ok la ho "ma, "
  "\nwhere " "the " wa "vin’ " "wheat " "can " "sure " "smell " "sweet "
  "\nWhen " "the " "wind " "comes " "right " be "hind " "the " "rain. " 
  "\nOh! "  "Oh! " 
  "\nEv" "’ry " "night " "we " "sit " a "lone " "and " "talk "
  "\nand " "watch " "a " "hawk " mak "in’ " la "zy " cir "cles " "in " "the " "sky. " 
  "\nAh! " 
  "\nAnd " "the " "land " "we " be "long " "to " "is " "grand! " 
  "\nAnd " "when " "we " "say "  "ay! " 
  "\nYou’re " do "in’ " "fine, " Ok la hom "a! "
  "\nOk" la hom "a! " 
  "\nO" K L A H O M "A, "
  "\nOk" la hom "a! "
  "\nYeow! "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2*8 | s2.*3 | s2.\mp | s2.*7 | s2 s4-\markup\italic "(melody)" |
  s2.*3 | s2 s4-\markup\italic "(melody)" | % 3a
  s2.^\markup\italic "(unison)" | s2. | s8 s2\< s8\! | s4 s2-\markup\italic "poco rit." |
  s2.\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2.*6 |
  s2.*8 | s2.\> | s2.\omit\mp-\markup{\dynamic mp \italic "sempre rit."} | s2. | % 4a
  s2 s\<^\markup\italic "poco a poco accel." | s2.\! s4\sf | s1 | s4 s2.\> |
  s1\mp | s1*7 | % 5
  s1\mp | s1*6 | s2 s4^\markup{\halign #CENTER \italic \center-column {"(Pull finger" "from inside cheek)"}} s\f |
  s1*7 | s8 s2.\> s8\! | % 7
  s1\mf | s1*7 |
  s1*2 | s1\omit\dim-\markup\italic "poco a poco dim." | s4 s2.\mp | s1 | s2 s\pp | s1 | s2 s4\ppp\< s\! |
  \repeat volta 2 {
    s1-\markup{\dynamic mp \bold - \dynamic mf} s1*12
    \alternative { { s1*3 } { s1*3 } }
  }
  s1\mp | s1*5 |
  s1*2 | s1\mf | s1*2 | s2. s4\< | s1\f | s | s2*2 | s8 s4.\< | s2 | % 12
  s2\pp | s | s\mp | s2*3 | s4 s\f | s s\p | s2*5 |
  s4\< s\! | s2\mf | s | s\mp | s2*4 | s4\< s\! | s4 s\f | s s\pp | s2*2 | % 14
  s2*3 s8 s4.\< | s2\! | s4. s8\f | s2*3 | s4. s8\mp | s2*4 |
  s2\f | s2*7 | s2\omit\f-\markup{\dynamic f \italic "(Tenors divisi)"} | s2*4 | s4 s\p | % 16
  s2\omit\cresc-\markup\italic "poco a poco cresc" | s2*2 | s4 s\f | s2 | s8 s4.\< | s2\! | s\< | s\! | s | s\ff | s\fff |
}

dynamicsTenorSingle = {
  \override DynamicTextSpanner.style = #'none
  s2*8 | s2.*3 | s2.\mp | s2.*7 | s2 s4-\markup\italic "(melody)" |
  s2.*3 | s2 s4-\markup\italic "(melody)" | % 3a
  s2.^\markup\italic "(unison)" | s2. | s8 s2\< s8\! | s4 s2-\markup\italic "poco rit." |
  s2.\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2.*6 |
  s2.*8 | s2.\> | s2.\omit\mp-\markup{\dynamic mp \italic "sempre rit."} | s2. | % 4a
  s2 s\<^\markup\italic "poco a poco accel." | s2.\! s4\sf | s1 | s4 s2.\> |
  s1\mp | s1*7 | % 5
  s1\mp | s1*6 | s2 s4^\markup{\halign #CENTER \italic \center-column {"(Pull finger" "from inside cheek)"}} s\f |
  s1*7 | s8 s2.\> s8\! | % 7
  s1\mf | s1*7 |
  s1*2 | s1\omit\dim-\markup\italic "poco a poco dim." | s4 s2.\mp | s1 | s2 s\pp | s1 | s2 s4\ppp\< s\! |
  s1\mp s1*15 | % 10
  s1\mf s1*15 | % 10
  s1\mp | s1*5 |
  s1*2 | s1\mf | s1*2 | s2. s4\< | s1\f | s | s2*2 | s8 s4.\< | s2 | % 12
  s2\pp | s | s\mp | s2*3 | s4 s\f | s s\p | s2*5 |
  s4\< s\! | s2\mf | s | s\mp | s2*4 | s4\< s\! | s4 s\f | s s\pp | s2*2 | % 14
  s2*3 s8 s4.\< | s2\! | s4. s8\f | s2*3 | s4. s8\mp | s2*4 |
  s2\f | s2*7 | s2\omit\f-\markup{\dynamic f \italic "(Tenors divisi)"} | s2*4 | s4 s\p | % 16
  s2\omit\cresc-\markup\italic "poco a poco cresc" | s2*2 | s4 s\f | s2 | s8 s4.\< | s2\! | s\< | s\! | s | s\ff | s\fff |
}

tenor = \relative {
  \global
  R2*8 | R2.*1 |
  R2.*2 | r4 bes aes | g f ees | f g aes | g bes2~ |
  bes8 r \breathe bes4 aes | g f ees | f g aes | g ees2~ | 4~8 r f4 |
  g4^\markup\italic "(unison)" f ees | f g aes | bes aes g | c2\fermata 8^\markup\italic "(melody)" ^\markup\italic "a tempo" 8 |
  bes4 4 4 | 4 4 4 | 4 4 4 | 2. \section |
  ees4 bes g | g bes ees | 2. | 2~8 r | 4 bes g | g bes ees | aes,2.~ |
  aes2~8 r | ees'4 bes g | g bes ees | c2. | 2~8 r | ees4 ees bes | f' d a | g2.( | % 4a
  aes2.) | ees'4 4 bes | f' d aes \section \time 4/4 | g1~ | 2. 4-> | des'1-> ~ | 2.~8 r \section \key aes \major |
  ees,4 4 4 4 | 4 8 d ees aes r4 | ees4 4 4 4 | 4 8 d ees bes' r4 |
  ees,4 4 4 4 | 4 8 d ees c' bes aes | bes2. c4 | ees,4 r r2 |
  aes2(g | f ees) | aes(g | f ees) | % 6a
  aes2(g | f ees) | ees(d | des4) r \once\override NoteHead.style = #'cross c'4 des |
  ees4 4 c8 8 8 8 | des8 8 4 4. bes8 | c4 4 8 8 4 | des4 2 4 | % 7a
  f8 8 4 d8 8 8 8 | ees4 4 4. c8 | ees4 8 8 d4 8 8 | des2 2 |
  ees,4 4 4 4 | 4 8 d ees aes r4 | ees4 4 4 4 | 4 8 d ees bes' r4 | % 8a
  ees,4 4 4 4 | 4 8 d ees c' bes aes | bes2 c | des4 r c bes |
  ees,8 8 8 8 8 8 8 8 | des'2 f,4 g | aes r r2 | r4 des f, g | % 9a
  aes8 ees8 8 8 8 8 8 8 | des'4 r bes4-. 4-. | c-. r ees-. r | aes,-. r a2\fermata \section \key des \major
  \repeat volta 2 {
    aes2 bes~ | 2. des4 | des c bes2~ | 2.~8 r | aes2 bes~ | 2. des4 | bes ges4 2~ |
    ges2.~8 r | aes2 bes~ | 2~ \tuplet 3/2 {bes4 des des} | des4 4 2~ | 2.~8 r | des2 4 4
    \alternative {
      { c2 4 4 | bes1~ | 2.~8 r | }
      { ees2 4 4 | f1~ | 2.~8 r | }
    }
  }
  fes2(des | bes des | ees ees | ces2.~8) r | c2(c | b d |
  des2 2 | c2.~8) r | aes2 bes~ | 2~ \tuplet 3/2 {4 des des} | ges4 4 ees2~ | 2.~8 r | % 12a
  f2 e4 f | ges2 4 4 \section f2~ | 2~ | 8 r des4-> | 4-> 4-> \section \key d \major |
  d2~ | 2~ | 8-> r r a | g fis e d | e4 a | 8 gis a b | % 13a
  a8 r a a | c a cis cis | c4 d | 8 r r c | b4 d | 8 r d d | b4 4 |
  d8 d e dis | d2( | cis4)~8 r | d2~ | d~ | 8-> r r a | g fis e d | % 14a
  e4 a | 8 gis a b | a r a a | c a cis cis | c4 d | 8 r r c |
  b4 d | 8 r d d | 4 4 | cis8 8 8 8 | d2~ | 4~8 8 | b d4 8 | % 15a
  d4 b8 g | a2~ | 8 r r d,( | a'2 | gis | g~ | 8) a b cis |
  d2~ | d | 8-^ r r a | g fis e d | e'2~ | e~ | 8 r r b | % 16a
  a8 gis fis e | <d' fis>4 <cis e>8 <b d> | <ais cis>4 <ais bis>8 <ais cis> | <b d>2 | <b e>8-^ r <b d> <b e> | <d fis>4 <b cis>~( | <a cis>8) r | <g cis>4 |
  <a d>4 <a cis> | <a d> <c e> | <d fis> <cis e> | <d fis>8 r \breathe <e g> <eis gis> | <fis a>2~ | 2~ | % 17a
  q2~ | q~ | q~ | q | d8-^ r r4 | \override NoteHead.style = #'cross e8 r r4 |
  \bar "|."
}

wordsTenor = \lyricmode {
  There’s a bright gold -- en haze on the mead -- ow __
  There’s a bright gold -- en haze on the mead -- ow __
  The corn is as high as an el -- e -- phant’s eye,
  An’ it looks like it’s climb -- in’ clear up to the sky,
  Oh, what a beau -- ti -- ful morn -- in’, __
  Oh, what a beau -- ti -- ful day. __
  I got a beau -- ti -- ful feel -- ing’ __
  Ev -- ’ry thing’s go -- in’ my way. __
  Oh, what a beau -- ti -- ful day! __
  "" ""
  Chicks and ducks and geese bet -- ter scur -- ry
  When I take you out in the sur -- rey,
  When I take you out in the sur -- rey with the  fringe on top!
  \hum __ \hum __ \hum __ \hum __ \markup\italic "(Pop)"
  The wheels are yel -- ler, the up -- hol -- ster -- y’s brown,
  The dash -- board’s gen -- u -- ine leath -- er,
  With is -- ing -- glass cur -- tains y’ can roll right down,
  in case there’s a change in the weath -- er
  Two bright side -- lights wink -- in’ and blink -- in’
  ain’t no fi -- ner rig I’m a think -- ’in,
  You c’n keep your rig if you’re think -- in’
  ’At I’d keer to swap for that
  shi -- ny lit -- tle sur -- rey with the fringe on the top.
  Don’t ev -- er stop that
  lit -- tle sur -- rey with the fringe on the top, clip, clop, ""
  Don’t throw bou -- quets at me __
  Don’t please __ my folks too much __
  Don’t laugh __ at my jokes too much __
  peo -- ple will  say we’re in love! __ "" _ _ _
  Oo, __ Oo, __
  Sweet -- heart __ they’re sus -- pect -- ing things __
  Peo -- ple will say we’re in love! __
  In love with
  Ok -- la -- hom -- a, where the wind comes sweep -- in’ down the plain,
  Ok -- la -- ho -- ma, where the wa -- vin’ wheat can sure smell sweet
  When the wind comes right be -- hind the rain. __
  Ok -- la -- hom -- a,
  Ev -- ’ry night my hon -- ey lamb and I
  Ev -- ’ry night we sit a -- lone and talk
  and watch a hawk mak -- in’ la -- zy cir -- cles in the sky. __
  We know we be -- long to the land __
  Ah! __
  And when we say __ Yeow! __
  A -- yip -- i -- o -- ee ay! __
  We’re on -- ly say -- in’
  You’re do -- in’ fine, Ok -- la -- hom -- a!
  Ok -- la -- hom -- a! __
  O -- K -- L -- A -- H -- O -- M -- A,
  Ok -- la -- hom -- a!
  Yeow!
}

wordsTenorSingle = \lyricmode {
  There’s a bright gold -- en haze on the mead -- ow __
  There’s a bright gold -- en haze on the mead -- ow __
  The corn is as high as an el -- e -- phant’s eye,
  An’ it looks like it’s climb -- in’ clear up to the sky,
  Oh, what a beau -- ti -- ful morn -- in’, __
  Oh, what a beau -- ti -- ful day. __
  I got a beau -- ti -- ful feel -- ing’ __
  Ev -- ’ry thing’s go -- in’ my way. __
  Oh, what a beau -- ti -- ful day! __
  "" ""
  Chicks and ducks and geese bet -- ter scur -- ry
  When I take you out in the sur -- rey,
  When I take you out in the sur -- rey with the  fringe on top!
  \hum __ \hum __ \hum __ \hum __ \markup\italic "(Pop)"
  The wheels are yel -- ler, the up -- hol -- ster -- y’s brown,
  The dash -- board’s gen -- u -- ine leath -- er,
  With is -- ing -- glass cur -- tains y’ can roll right down,
  in case there’s a change in the weath -- er
  Two bright side -- lights wink -- in’ and blink -- in’
  ain’t no fi -- ner rig I’m a think -- ’in,
  You c’n keep your rig if you’re think -- in’
  ’At I’d keer to swap for that
  shi -- ny lit -- tle sur -- rey with the fringe on the top.
  Don’t ev -- er stop that
  lit -- tle sur -- rey with the fringe on the top, clip, clop, ""
  Don’t throw bou -- quets at me __
  Don’t please __ my folks too much __
  Don’t laugh __ at my jokes too much __
  peo -- ple will  say we’re in love! __
  Don’t sigh __ and gaze at me __
  Your sighs __ are so like mine __
  Your eyes __ mus -- n’t glow like mine __
  peo -- ple will say we’re in love! __
  Oo, __ Oo, __
  Sweet -- heart __ they’re sus -- pect -- ing things __
  Peo -- ple will say we’re in love! __
  In love with
  Ok -- la -- hom -- a, where the wind comes sweep -- in’ down the plain,
  Ok -- la -- ho -- ma, where the wa -- vin’ wheat can sure smell sweet
  When the wind comes right be -- hind the rain. __
  Ok -- la -- hom -- a,
  Ev -- ’ry night my hon -- ey lamb and I
  Ev -- ’ry night we sit a -- lone and talk
  and watch a hawk mak -- in’ la -- zy cir -- cles in the sky. __
  We know we be -- long to the land __
  Ah! __
  And when we say __ Yeow! __
  A -- yip -- i -- o -- ee ay! __
  We’re on -- ly say -- in’
  You’re do -- in’ fine, Ok -- la -- hom -- a!
  Ok -- la -- hom -- a! __
  O -- K -- L -- A -- H -- O -- M -- A,
  Ok -- la -- hom -- a!
  Yeow!
}

wordsTenorMidi = \lyricmode {
  "There’s " "a " "bright " gold "en " "haze " "on " "the " mead "ow " 
  "\nThere’s " "a " "bright " gold "en " "haze " "on " "the " mead "ow " 
  "\nThe " "corn " "is " "as " "high " "as " "an " el e "phant’s " "eye, "
  "\nAn’ " "it " "looks " "like " "it’s " climb "in’ " "clear " "up " "to " "the " "sky, "
  "\nOh, " "what " "a " beau ti "ful " morn "in’, " 
  "\nOh, " "what " "a " beau ti "ful " "day. " 
  "\nI " "got " "a " beau ti "ful " feel "ing’ " 
  "\nEv" "’ry " "thing’s " go "in’ " "my " "way. " 
  "\nOh, " "what " "a " beau ti "ful " "day! " 
  "\n " " "
  "\nChicks " "and " "ducks " "and " "geese " bet "ter " scur "ry "
  "\nWhen " "I " "take " "you " "out " "in " "the " sur "rey, "
  "\nWhen " "I " "take " "you " "out " "in " "the " sur "rey " "with " "the "  "fringe " "on " "top! "
  "\nHum "  "Hum "  "Hum "  "Hum "  "(Pop) "
  "\nThe " "wheels " "are " yel "ler, " "the " up hol ster "y’s " "brown, "
  "\nThe " dash "board’s " gen u "ine " leath "er, "
  "\nWith " is ing "glass " cur "tains " "y’ " "can " "roll " "right " "down, "
  "\nin " "case " "there’s " "a " "change " "in " "the " weath "er "
  "\nTwo " "bright " side "lights " wink "in’ " "and " blink "in’ "
  "\nain’t " "no " fi "ner " "rig " "I’m " "a " think "’in, "
  "\nYou " "c’n " "keep " "your " "rig " "if " "you’re " think "in’ "
  "\n’At " "I’d " "keer " "to " "swap " "for " "that "
  "\nshi" "ny " lit "tle " sur "rey " "with " "the " "fringe " "on " "the " "top. "
  "\nDon’t " ev "er " "stop " "that "
  "\nlit" "tle " sur "rey " "with " "the " "fringe " "on " "the " "top, " "clip, " "clop, " " "
  "\nDon’t " "throw " bou "quets " "at " "me " 
  "\nDon’t " "please "  "my " "folks " "too " "much " 
  "\nDon’t " "laugh "  "at " "my " "jokes " "too " "much " 
  "\npeo" "ple " "will "  "say " "we’re " "in " "love! " 
  "\nDon’t " "sigh "  "and " "gaze " "at " "me " 
  "\nYour " "sighs "  "are " "so " "like " "mine " 
  "\nYour " "eyes "  mus "n’t " "glow " "like " "mine " 
  "\npeo" "ple " "will " "say " "we’re " "in " "love! " 
  "\nOo, "  "Oo, " 
  "\nSweet" "heart "  "they’re " sus pect "ing " "things " 
  "\nPeo" "ple " "will " "say " "we’re " "in " "love! " 
  "\nIn " "love " "with "
  "\nOk" la hom "a, " "where " "the " "wind " "comes " sweep "in’ " "down " "the " "plain, "
  "\nOk" la ho "ma, " "where " "the " wa "vin’ " "wheat " "can " "sure " "smell " "sweet "
  "\nWhen " "the " "wind " "comes " "right " be "hind " "the " "rain. " 
  "\nOk" la hom "a, "
  "\nEv" "’ry " "night " "my " hon "ey " "lamb " "and " "I "
  "\nEv" "’ry " "night " "we " "sit " a "lone " "and " "talk "
  "\nand " "watch " "a " "hawk " mak "in’ " la "zy " cir "cles " "in " "the " "sky. " 
  "\nWe " "know " "we " be "long " "to " "the " "land " 
  "\nAh! " 
  "\nAnd " "when " "we " "say "  "Yeow! " 
  "\nA" yip i o "ee " "ay! " 
  "\nWe’re " on "ly " say "in’ "
  "\nYou’re " do "in’ " "fine, " Ok la hom "a! "
  "\nOk" la hom "a! " 
  "\nO" K L A H O M "A, "
  "\nOk" la hom "a! "
  "\nYeow! "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2*8 | s2.*3 | s2.\mp | s2.*7 | s2 s4-\markup\italic "(melody)" |
  s2.*3 | s2 s4-\markup\italic "(melody)" | % 3a
  s2.^\markup\italic "(unison)" | s2. | s8 s2\< s8\! | s4 s2-\markup\italic "poco rit." |
  s2.\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2.*6 |
  s2.*8 | s2.\> | s2.\omit\mp-\markup{\dynamic mp \italic "sempre rit."} | s2. | % 4a
  s2 s\<^\markup\italic "poco a poco accel." | s2.\! s4\sf | s1 | s4 s2.\> |
  s1\mp | s1*7 | % 5
  s1\mp | s1*6 | s2 s4^\markup{\halign #CENTER \italic \center-column {"(Pull finger" "from inside cheek)"}} s\f |
  s1*7 | s8 s2.\> s8\! | % 7
  s1\mf | s1*7 |
  s1*2 | s1\omit\dim-\markup\italic "poco a poco dim." | s4 s2.\mp | s1 | s2 s\pp | s1 | s2 s4\ppp\< s\! |
  \repeat volta 2 {
    s1-\markup{\dynamic mp \bold - \dynamic mf} s1*12
    \alternative { { s1*3 } { s1*3 } }
  }
  s1\omit\mf-\markup{\dynamic mf \italic "(melody)"} | s1*5 |
  s1*2 | s1\mf | s1*2 | s2. s4\< | s1\f | s | s2*2 | s8 s4.\< | s2 | % 12
  s2\pp | s | s\mp | s2*3 | s4 s\f | s s\p | s2*5 | 
  s4\< s\! | s2\mf | s | s\mp | s2*4 | s4\< s\! | s4 s\f | s s\pp | s2*2 | % 14
  s2*3 s8 s4.\< | s2\! | s4. s8\f | s2*3 | s4. s8\mp | s2*4 |
  s2\f | s2*7 | s2\omit\f-\markup{\dynamic f \italic "(Basses divisi)"} | s2*4 | s4 s\p | % 16
  s2\omit\cresc-\markup\italic "poco a poco cresc" | s2*2 | s4 s\f | s2 | s8 s4.\< | s2\! | s\< | s\! | s | s\ff | s\fff |
}

dynamicsBassSingle = {
  \override DynamicTextSpanner.style = #'none
  s2*8 | s2.*3 | s2.\mp | s2.*7 | s2 s4-\markup\italic "(melody)" |
  s2.*3 | s2 s4-\markup\italic "(melody)" | % 3a
  s2.^\markup\italic "(unison)" | s2. | s8 s2\< s8\! | s4 s2-\markup\italic "poco rit." |
  s2.\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2.*6 |
  s2.*8 | s2.\> | s2.\omit\mp-\markup{\dynamic mp \italic "sempre rit."} | s2. | % 4a
  s2 s\<^\markup\italic "poco a poco accel." | s2.\! s4\sf | s1 | s4 s2.\> |
  s1\mp | s1*7 | % 5
  s1\mp | s1*6 | s2 s4^\markup{\halign #CENTER \italic \center-column {"(Pull finger" "from inside cheek)"}} s\f |
  s1*7 | s8 s2.\> s8\! | % 7
  s1\mf | s1*7 |
  s1*2 | s1\omit\dim-\markup\italic "poco a poco dim." | s4 s2.\mp | s1 | s2 s\pp | s1 | s2 s4\ppp\< s\! |
  s1\mp s1*15 | % 10
  s1\mf s1*15 | % 10
  s1\omit\mf-\markup{\dynamic mf \italic "(melody)"} | s1*5 |
  s1*2 | s1\mf | s1*2 | s2. s4\< | s1\f | s | s2*2 | s8 s4.\< | s2 | % 12
  s2\pp | s | s\mp | s2*3 | s4 s\f | s s\p | s2*5 | 
  s4\< s\! | s2\mf | s | s\mp | s2*4 | s4\< s\! | s4 s\f | s s\pp | s2*2 | % 14
  s2*3 s8 s4.\< | s2\! | s4. s8\f | s2*3 | s4. s8\mp | s2*4 |
  s2\f | s2*7 | s2\omit\f-\markup{\dynamic f \italic "(Basses divisi)"} | s2*4 | s4 s\p | % 16
  s2\omit\cresc-\markup\italic "poco a poco cresc" | s2*2 | s4 s\f | s2 | s8 s4.\< | s2\! | s\< | s\! | s | s\ff | s\fff |
}

bass = \relative {
  \global
  R2*8 | R2.*1 |
  R2.*2 | r4 bes aes | g f ees | f g aes | g bes2~ |
  bes8 r \breathe bes4 aes | g f ees | f g aes | g ees2~ | 4~8 r f4 |
  g4^\markup\italic "(unison)" f ees | f g aes | bes aes g | c2\fermata 8^\markup\italic "(melody)" ^\markup\italic "a tempo" 8 |
  bes4 4 4 | 4 4 4 | 4 4 4 | 2. \section |
  ees,4 4 4 | bes4 4 4 | aes2. | ees'2~8 r | 4 4 4 | bes4 4 4 | 2.~ |
  bes2~8 r | ees4 4 4 | bes4 4 4 | aes2. | a2~8 r | bes4 4 4 | 4 4 4 | 2.~ | % 4a
  bes2. | bes4 4 4 | 4 4 4 \section \time 4/4 | ees1~ | 2. 4-> | g1-> ~ | 2.~8 r \section \key aes \major |
  ees4 4 4 4 | 4 8 d ees aes r4 | ees4 4 4 4 | 4 8 d ees bes' r4 |
  ees,4 4 4 4 | 4 8 d ees c' bes aes | bes2. c4 | ees, r r2 |
  aes2(g | f ees) | aes(g | f ees) | % 6a
  aes2(g f ees) | ees(d | des4) r \once\override NoteHead.style = #'cross ees ees |
  aes4 4 8 8 8 8 | 8 8 4 4. 8 | ges4 4 8 8 4 | aes4 2 4 | % 7a
  bes8 8 4 8 8 8 8 | 4 4 4. 8 | d4 8 8 4 8 8 | bes2 ees, |
  ees4 4 4 4 | 4 8 d ees aes r4 | ees4 4 4 4 | 4 8 d ees bes' r4 | % 8a
  ees,4 4 4 4 | 4 8 d ees c' bes aes | bes2 c | des4 r c bes |
  ees,8 8 8 8 8 8 8 8 | des'2 f,4 g | aes r r2 | r4 des f, g | % 9a
  aes8 ees8 8 8 8 8 8 8 | des'4 r aes-. ees-. | aes-. r ees-. r | aes,-. r ges'2\fermata \section \key des \major |
  \repeat volta 2 {
    f2 2~ | 2. aes4 | 4 4 2~ | 2.~8 r | f2 2~ | 2. aes4 | ees4 4 2~ | % 10a
    ees2.~8 r | f2 2~ | 2~ \tuplet 3/2 {f4 bes aes} | g bes4 2~ | 2.~8 r | ges2 4 4 |
    \alternative {
      { ges2 4 4 | f1~ | 2.~8 r | }
      { aes2 4 4 | bes1~ | 2.~8 r | }
    }
  }
  des2 ges,~ | 2. g4 | g ges4 2~ | 2.~8 r | 4 f4 2 | ges2 4 f |
  ees1~ | 2.~8 r | f2 2~ | 2~ \tuplet 3/2 {4 aes aes} | bes4 4 des2~ | 2.~8 r | % 12a
  aes2 4 4 | 2 4 4 \section \time 2/4 des2~ | 2~ | 8 r des4-> | 4-> 4-> \section \key d \major |
  d2~ | 2~ | 8 r r a | g fis e d | e4 a | a8 gis a b | % 13a
  a8 r a a | b a g a | a4 c | c8 r r a | g4 b | bes8 r8 8 8 | a4 4 |
  a8 gis g fis | e2~ | 4~8 r | d'2~ | d~ | 8-> r r a | g fis e d | % 14a
  e4 a | 8 gis a b | a r a a | b a g a | 4 c | 8 r r a |
  g4 b | bes8 r bes bes | a4 f | e8 e a a | 2~ | 4~8 fis | g b4 8 | % 15a
  bes4 g8 e | fis2~ | 8 r r d( | a'2 | gis | g~ | 8) a b cis |
  d2~ | d | 8-^ r r a | g fis e d | e'2~ | e~ | 8 r r b | % 16a
  a8 gis fis e | <d a'>4 8 <d g> | fis4 8 8 | <b, fis'>2 | <e gis>8-^ r q q | <a, a'>4 <a g'>~( | <a fis>8) r <a e'>4 |
  <d fis>4 fis | q <a, a'> | <d a'> <fis a> | <d a'>8 r \breathe <a' c> q | d2~ | d~ | % 17a
  d2~ | d~ | d~ | d | d,8-^ r r4 | \override NoteHead.style = #'cross g8 r r4 |
  \bar "|."
}

wordsBass = \lyricmode {
  There’s a bright gold -- en haze on the mead -- ow __
  There’s a bright gold -- en haze on the mead -- ow __
  The corn is as high as an el -- e -- phant’s eye,
  An’ it looks like it’s climb -- in’ clear up to the sky,
  Oh, what a beau -- ti -- ful morn -- in’, __
  Oh, what a beau -- ti -- ful day. __
  I got a beau -- ti -- ful feel -- ing’ __
  Ev -- ’ry thing’s go -- in’ my way. __
  Oh, what a beau -- ti -- ful day! __
  "" ""
  Chicks and ducks and geese bet -- ter scur -- ry
  When I take you out in the sur -- rey,
  When I take you out in the sur -- rey with the  fringe on top!
  \hum __ \hum __ \hum __ \hum __ \markup\italic "(Pop)"
  The wheels are yel -- ler, the up -- hol -- ster -- y’s brown,
  The dash -- board’s gen -- u -- ine leath -- er,
  With is -- ing -- glass cur -- tains y’ can roll right down,
  in case there’s a change in the weath -- er
  Two bright side -- lights wink -- in’ and blink -- in’
  ain’t no fi -- ner rig I’m a think -- ’in,
  You c’n keep your rig if you’re think -- in’
  ’At I’d keer to swap for that
  shi -- ny lit -- tle sur -- rey with the fringe on the top.
  Don’t ev -- er stop that
  lit -- tle sur -- rey with the fringe on the top, clip, clop, ""
  Don’t throw bou -- quets at me __
  Don’t please __ my folks too much __
  Don’t laugh __ at my jokes too much __
  peo -- ple will say we’re in love! __ "" _ _ _
  Don’t start __ col -- lect -- ing things __
  Give me my rose and my glove. __
  Sweet -- heart __ they’re sus -- pect -- ing things __
  Peo -- ple will say we’re in love! __
  in love with __
  Ok -- la -- hom -- a, where the wind comes sweep -- in’ down the plain,
  Ok -- la -- ho -- ma, where the wa -- vin’ wheat can sure smell sweet
  When the wind comes right be -- hind the rain. __
  Ok -- la -- hom -- a,
  Ev -- ’ry night my hon -- ey lamb and I
  Ev -- ’ry night we sit a -- lone and talk
  and watch a hawk mak -- in’ la -- zy cir -- cles in the sky. __
  We know we be -- long to the land __
  Ah! __
  And when we say __ Yeow! __
  A -- yip -- i -- o -- ee ay! __
  We’re on -- ly say -- in’
  You’re do -- in’ fine, Ok -- la -- hom -- a!
  Ok -- la -- hom -- a! __
  O -- K -- L -- A -- H -- O -- M -- A,
  Ok -- la -- hom -- a!
  Yeow!
}

wordsBassSingle = \lyricmode {
  There’s a bright gold -- en haze on the mead -- ow __
  There’s a bright gold -- en haze on the mead -- ow __
  The corn is as high as an el -- e -- phant’s eye,
  An’ it looks like it’s climb -- in’ clear up to the sky,
  Oh, what a beau -- ti -- ful morn -- in’, __
  Oh, what a beau -- ti -- ful day. __
  I got a beau -- ti -- ful feel -- ing’ __
  Ev -- ’ry thing’s go -- in’ my way. __
  Oh, what a beau -- ti -- ful day! __
  "" ""
  Chicks and ducks and geese bet -- ter scur -- ry
  When I take you out in the sur -- rey,
  When I take you out in the sur -- rey with the  fringe on top!
  \hum __ \hum __ \hum __ \hum __ \markup\italic "(Pop)"
  The wheels are yel -- ler, the up -- hol -- ster -- y’s brown,
  The dash -- board’s gen -- u -- ine leath -- er,
  With is -- ing -- glass cur -- tains y’ can roll right down,
  in case there’s a change in the weath -- er
  Two bright side -- lights wink -- in’ and blink -- in’
  ain’t no fi -- ner rig I’m a think -- ’in,
  You c’n keep your rig if you’re think -- in’
  ’At I’d keer to swap for that
  shi -- ny lit -- tle sur -- rey with the fringe on the top.
  Don’t ev -- er stop that
  lit -- tle sur -- rey with the fringe on the top, clip, clop, ""
  Don’t throw bou -- quets at me __
  Don’t please __ my folks too much __
  Don’t laugh __ at my jokes too much __
  peo -- ple will say we’re in love! __
  Don’t sigh __ and gaze at me __
  Your sighs __ are so like mine __
  Your eyes __ mus -- n’t glow like mine __
  peo -- ple will say we’re in love! __
  Don’t start __ col -- lect -- ing things __
  Give me my rose and my glove. __
  Sweet -- heart __ they’re sus -- pect -- ing things __
  Peo -- ple will say we’re in love! __
  in love with __
  Ok -- la -- hom -- a, where the wind comes sweep -- in’ down the plain,
  Ok -- la -- ho -- ma, where the wa -- vin’ wheat can sure smell sweet
  When the wind comes right be -- hind the rain. __
  Ok -- la -- hom -- a,
  Ev -- ’ry night my hon -- ey lamb and I
  Ev -- ’ry night we sit a -- lone and talk
  and watch a hawk mak -- in’ la -- zy cir -- cles in the sky. __
  We know we be -- long to the land __
  Ah! __
  And when we say __ Yeow! __
  A -- yip -- i -- o -- ee ay! __
  We’re on -- ly say -- in’
  You’re do -- in’ fine, Ok -- la -- hom -- a!
  Ok -- la -- hom -- a! __
  O -- K -- L -- A -- H -- O -- M -- A,
  Ok -- la -- hom -- a!
  Yeow!
}

wordsBassMidi = \lyricmode {
  "There’s " "a " "bright " gold "en " "haze " "on " "the " mead "ow " 
  "\nThere’s " "a " "bright " gold "en " "haze " "on " "the " mead "ow " 
  "\nThe " "corn " "is " "as " "high " "as " "an " el e "phant’s " "eye, "
  "\nAn’ " "it " "looks " "like " "it’s " climb "in’ " "clear " "up " "to " "the " "sky, "
  "\nOh, " "what " "a " beau ti "ful " morn "in’, " 
  "\nOh, " "what " "a " beau ti "ful " "day. " 
  "\nI " "got " "a " beau ti "ful " feel "ing’ " 
  "\nEv" "’ry " "thing’s " go "in’ " "my " "way. " 
  "\nOh, " "what " "a " beau ti "ful " "day! " 
  "\n " " "
  "\nChicks " "and " "ducks " "and " "geese " bet "ter " scur "ry "
  "\nWhen " "I " "take " "you " "out " "in " "the " sur "rey, "
  "\nWhen " "I " "take " "you " "out " "in " "the " sur "rey " "with " "the "  "fringe " "on " "top! "
  "\nHum "  "Hum "  "Hum "  "Hum "  "(Pop) "
  "\nThe " "wheels " "are " yel "ler, " "the " up hol ster "y’s " "brown, "
  "\nThe " dash "board’s " gen u "ine " leath "er, "
  "\nWith " is ing "glass " cur "tains " "y’ " "can " "roll " "right " "down, "
  "\nin " "case " "there’s " "a " "change " "in " "the " weath "er "
  "\nTwo " "bright " side "lights " wink "in’ " "and " blink "in’ "
  "\nain’t " "no " fi "ner " "rig " "I’m " "a " think "’in, "
  "\nYou " "c’n " "keep " "your " "rig " "if " "you’re " think "in’ "
  "\n’At " "I’d " "keer " "to " "swap " "for " "that "
  "\nshi" "ny " lit "tle " sur "rey " "with " "the " "fringe " "on " "the " "top. "
  "\nDon’t " ev "er " "stop " "that "
  "\nlit" "tle " sur "rey " "with " "the " "fringe " "on " "the " "top, " "clip, " "clop, " " "
  "\nDon’t " "throw " bou "quets " "at " "me " 
  "\nDon’t " "please "  "my " "folks " "too " "much " 
  "\nDon’t " "laugh "  "at " "my " "jokes " "too " "much " 
  "\npeo" "ple " "will " "say " "we’re " "in " "love! " 
  "\nDon’t " "sigh "  "and " "gaze " "at " "me " 
  "\nYour " "sighs "  "are " "so " "like " "mine " 
  "\nYour " "eyes "  mus "n’t " "glow " "like " "mine " 
  "\npeo" "ple " "will " "say " "we’re " "in " "love! " 
  "\nDon’t " "start "  col lect "ing " "things " 
  "\nGive " "me " "my " "rose " "and " "my " "glove. " 
  "\nSweet" "heart "  "they’re " sus pect "ing " "things " 
  "\nPeo" "ple " "will " "say " "we’re " "in " "love! " 
  "\nin " "love " "with " 
  "\nOk" la hom "a, " "where " "the " "wind " "comes " sweep "in’ " "down " "the " "plain, "
  "\nOk" la ho "ma, " "where " "the " wa "vin’ " "wheat " "can " "sure " "smell " "sweet "
  "\nWhen " "the " "wind " "comes " "right " be "hind " "the " "rain. " 
  "\nOk" la hom "a, "
  "\nEv" "’ry " "night " "my " hon "ey " "lamb " "and " "I "
  "\nEv" "’ry " "night " "we " "sit " a "lone " "and " "talk "
  "\nand " "watch " "a " "hawk " mak "in’ " la "zy " cir "cles " "in " "the " "sky. " 
  "\nWe " "know " "we " be "long " "to " "the " "land " 
  "\nAh! " 
  "\nAnd " "when " "we " "say "  "Yeow! " 
  "\nA" yip i o "ee " "ay! " 
  "\nWe’re " on "ly " say "in’ "
  "\nYou’re " do "in’ " "fine, " Ok la hom "a! "
  "\nOk" la hom "a! " 
  "\nO" K L A H O M "A, "
  "\nOk" la hom "a! "
  "\nYeow! "
}

wordsMenTwo = \lyricmode {
  \repeat unfold 222 \skip 1
  Don’t sigh __ and gaze at me __
  Your sighs __ are so like mine __
  Your eyes __ mus -- n’t glow like mine __
  peo -- ple will _ _ _ _ say we’re in love! __
}

pianoRHone = \relative {
  \global \vo
  <ees'' g bes ees>2-> ~ | q~ | q~ | q | s |
  s2*3 \time 3/4 \ov \ottava #1 <bes' bes'>4 <c c'> <bes bes'> |
  <c c'>4 <bes bes'> <c c'> |
  <bes bes'>4 <c c'> <bes bes'> | % 2c
  <c c'> <bes bes'> <aes aes'> |
  <g g'>4 <f f'> <ees ees'> |
  <f f'>4 <g g'> <aes aes'> |
  <g g'>4 <bes bes'> r8 <ees, ees'> |
  <f f'>8-. r <bes bes'>4 <aes aes'> | % 2d
  <g g'>4 <f f'> <ees ees'> |
  <f f'>4 <g g'> <aes aes'> |
  <g g'>4 <ees ees'> r8 <d d'> |
  <ees ees'>4 <aes aes'> <f f'> |
  <g g'>4 <f f'> <ees ees'> | % 3a
  <f f'>4 <g g'> <aes aes'> |
  <bes bes'> <aes aes'> <g g'> \ottava #0 |
  <c,, c'>2\fermata \vo r4 |
  \vo r4 <ees g bes> q | r q q | r <d g bes> q | r <g bes g'>(<f bes f'>) \section |
  \ov r4 <bes, ees g> <g bes d> | % 3c
  <g bes ees> <bes ees g> <ees g bes> |
  r4 <des ees aes> q |
  r4 <c ees aes> q |
  r4 <bes ees g> <g bes d> |
  <g bes ees> <bes ees g> <ees g bes> |
  r4 <aes, c d> <aes ces d> |
  r4 <aes c d> <aes ces d> | % 4a
  r4 <bes ees g> <g bes d> |
  <g bes ees>4 <bes ees g> <ees g bes> |
  r4 <aes, c ees> <aes c f> |
  <a c ges'>4 <a c f> <a c ees> |
  r4 <ees' g bes> <bes ees g> |
  <f' aes d> <d f aes> <bes ees g> |
  \vo c'4 g ees |
  bes'4(f d) | % 4b
  \ov <ees bes'>2. |
  <d aes'>2. \section \time 4/4 |
  <g, bes ees>4 q r q |
  r4 q r q-> |
  <g des' f>4-> q r q |
  r4 q r q \section \key aes \major \time 2/2 |
  \vo \repeat unfold 5 {<c ees>8-. r q-. <b d>-. <c ees>-. r q-. <b d>-. | } % 5a
  <c ees>8-. r <c ees>-. <b d>-. <c ees>-. r q8-. r |
  \ov r4 <ees f aes bes> r <d f aes c>
  <g, bes des ees>4 <g des' f>(<des' g c>8-. q-. <des f g bes>4-.) |
  \vo \repeat unfold 5 {<c ees>8-. r q-. <b d>-. <c ees>-. r q-. <b d>-. | } % 6a
  <c ees>8-. r q-. <b d>-. <c ees>-.[r q-.] r |
  \ov r4 <ees f aes bes> r <d f aes c>\arpeggio |
  \override Glissando.style = #'zigzag
  <g bes des ees>4 ees \glissando <g bes des ees>-> r |
  r4 <ees ges aes c> r <c ees ges aes> | % 7a
  r4 <des f aes c> r <des f aes bes> |
  r4 <c ees ges aes> r q |
  r4 <aes' des f>8 r <c f aes> r <des, f aes>4 |
  r4 <f aes bes d> r <d f aes bes> | % 7b
  r4 <ees g bes d> r <ees g bes c> |
  r4 <bes ees aes bes> r <bes d f aes> |
  r4 <bes des f aes> r <bes des ees g> | \vo
  \repeat unfold 5 { <c ees>8-. r q-. <b d>-. <c ees>-. r q-. <b d>-. | } % 8a
  <c ees>8-. r q-. <b d>-. <c ees>-.[r q-.] r | \ov r4 <bes des f> r <ees f a> | r4 <des f bes> r2 |
  \vo r4 <c ees> r q | % 9a
  r <aes des>-. f'-. g-. |
  <ees aes>8-. r <c ees>-. <b d>-. <c ees>-. r q-. <b d>-. |
  f'4-. r f-. g-. |
  <ees aes>8-. r <c ees>-. <b d>-. <c ees>-. r q-. <b d>-. | % 9b
  f'4-. r f-. g-. |
  \ov <c, ees aes>4-. r ees-. r |
  aes,4-. r \lh \tuplet 9/8 {aes,32 g' a c f \rh g a c f} \ov aes4\fermata \section \key des \major
  \repeat volta 2 {
    r4 <f,, aes bes des> r <bes des f aes> | % 10a
    c4(<des f aes>) bes(q) |
    r4 <aes c ees f> r <aes bes des f> |
    \vo ees''4-. des8-. c-. bes4-. aes-. |
    \ov r4 <f, aes bes des> r <bes des f aes> |
    c4(<des f aes>) bes(<des f aes>) |
    r4 <ges, bes c> r <ges aes c> |
    \vo ges''4-. f8-. ees-. des4-. c-. | % 10b
    \ov r4 <f,, aes bes des>4 r <bes des f aes> |
    c4(<des f aes>) bes(<des f aes>) |
    r4 <bes des f g> r <bes des ees g> |
    \vo f''4-. ees8-. des-. c4-. bes-. |
    \ov r4 <c, ees ges bes> r q |
    \alternative {
      { r4 <c ees ges a> r q | r4 <f aes c ees>2 <f aes bes des>4 | r4 <f bes des f>2(<ges aes c ees>4) | }
      { r4 <ees ges aes c> r q | r <f aes bes des> r q | r <aes bes des f> r <bes des f aes> | }
    }
  }
  r4 <des fes aes ces>--\arpeggio r <des fes ges bes>--\arpeggio | % 11b
  r4 <bes des fes aes>--\arpeggio r <des fes g bes>\arpeggio |
  r4 <ees ges aes c>\arpeggio r <ees ges aes ces>\arpeggio |
  r4 <ces ees ges bes>\arpeggio r <ces ees ges aes>\arpeggio |
  r4 <c ees f bes>\arpeggio r <c ees f aes>\arpeggio |
  r4 <b d f aes>\arpeggio r <d ges aes bes>\arpeggio |
  r4 <des f g c>\arpeggio r <des f g bes>\arpeggio | % 12a
  r4 <c ees ges a>\arpeggio r <c ees ges aes>\arpeggio |
  r4 <f,, aes bes des> r <bes des f aes> |
  c4(<des f aes>) bes(q) |
  r4 <ees f aes ees'> r <ees g des' ees> |
  r4 q r q |
  <f des' f>2 <e c' e>4 <f des' f> | % 12b
  <g bes des ees>2 <ges a b d>4 <g bes c ees> \section \time 2/4 |
  \vo <des f aes des>2-> | s2*3 \section \key d \major |
  \ov r8 <fis a> r q | r <d fis a> r q | r q r q | r q r q | r <b e g> r q | r <bis dis fis> r q | % 13a
  \vo g'8 r a a | \ov <b cis> a r4 | r8 <c, d fis> r <c fis a> |
  r8 q r <c d fis> | r <b d e> r <b d g> | r <bes d g> r <bes d e> | r <a d fis> r <a d g> |
  <d a'>8 <d gis b> <g a cis> <fis a dis> | % 14a
  r8 <d gis b e>\arpeggio r q |
  <e g cis e>8 a-> b-> cis-> |
  r8 <d, fis> [ r <e g> ] |
  r8 <cis fis a> [ r <d g b> ] |
  r8 <e a cis> [ r <fis cis e> ] |
  r8 <g cis e> [ r <a d fis> ] |
  r8 <b, e g> [ r < cis e g> ] | % 14b
  r8 <bis dis fis> [ r q ] |
  <a c e g>8 r e''-> a,-> |
  <b cis> a r4 |
  r8 <c, d fis> [ r <c fis a> ] |
  r8 q [ r <c d fis> ] |
  r8 <b d e> [ r <b d g> ] | % 15a
  r8 <bes d g> [ r q ] |
  r8 <a d a'> [ r <b d gis> ] |
  r8 <cis g' a> <cis g' b> <e g cis> |
  r8 fis a d |
  c8 a fis d |
  r8 <d g b d> [ r q ] |
  r8 <d g b d> [ r q ] | % 15b
  r8 <a d fis a> [ r q ] |
  r8 q [ r <d f a b> ] |
  r8 <cis e a cis> [ r q ] |
  r8 <d e gis b> [ r q ] |
  r8 <e g a cis> [ r q ] |
  <g a cis e> a-. b-. cis-. |
  r8 <fis, a> [ r q ] | % 16a
  r8 <d fis a> [ r q ] |
  r8 q [ r q ] |
  r8 q [ r q ] |
  r8 <gis b> [ r q ] |
  r8 <e gis b> [ r q ] |
  r8 q [ r q ] |
  r8 q [ r q ] | % 16b
  r8 <fis a d> <e a c> <d g b> |
  r8 <cis e fis ais> [ r q ] |
  r8 <b d fis b> [ r q ] |
  <b e gis b>8-^ r <d g b d> <e g b e> |
  <fis a d fis>4 <cis g' b cis>~ |
  q8 r <cis e g cis>4 |
  r8 <d fis a> [ r <cis fis a> ] | % 17a
  r8 <b d fis> [ r <c e g c> ] |
  r8 <d fis a d> [ r <cis e a cis> ] |
  r8 <d fis a d> \breathe <e g c e> <eis gis cis eis> |
  \vo <fis a d fis>2~ |
  q2~ |
  q2~ | q2~ | q2~ | q2~ | q8 r r4 | \ov <d fis a b d>8-> r r4 |
}

pianoRHtwo = \relative {
  \global \vt
  r8 <ees ees'>8 <f f'> <g g'> |
  <aes aes'>8 <bes bes'> <c c'> <d d'> |
  <ees ees'>8 <f f'> <g g'> <bes bes'>-> |
  <aes aes'>8-> <g g'>-> <f f'>-> <ees ees'>-> |
  <f f'>4 <bes bes'> |
  <bes bes'>8 <a a'> <bes bes'> <c c'> | % 2b
  <bes d f aes bes>2~ |
  q2 \time 3/4 |
  s2.*12 |
  s2.*3 | g4 d\fermata ees | % 3a
  bes2. | c | cis | d \section |
  s2.*7 |
  s2.*7 | r4 <c ees> <g c> | % 4a
  r4 <aes d> <f aes> | s2.*2 | s1*4 |
  aes2(g | f ees) | aes(g | f ees) | % 5a
  aes2(g | f ees) | s1*2 |
  aes2(g | f ees) | aes(g | f ees) | % 6a
  aes2(g | f ees) | s1*2 |
  s1*8 | % 7
  aes2(g | f ees) | aes(g | f ees) | % 8a
  aes2(g | f ees) | s1*2 |
  aes2(g | f4) s <aes des> <bes des> | c8 r <aes c>4(g2) | <f des'>4 r <aes des> <bes des> | % 9a
  c8 r aes4(g2) | <f des'>4 r <aes des> <bes des> | s1*2 |
  \repeat volta 2 {
    s1*3 | r4 <des f aes> r <bes des f> | s1*3 | % 10a
    r4 <ges' aes c> r <ees ges aes> | s1*3 | r4 <ees g bes> r <des ees f> | s1 |
    \alternative {
      { s1*3 }
      { s1*3 }
    }
  }
  s1*6 | % 11b
  s1*6 | % 12a
  s1*2 \section | r8 \ss \lh des,^\markup\italic "R.H." ees f | ges aes bes c \rh \ov | des ees f ges | aes bes c des \section | \vt
  s2*6 | <a, cis e>8 r r4 | s2*6 | % 13
  s2*13 |
  s2*14 | % 15
  s2*14 |
  s2*4 | r8 <b, b'> <cis cis'> <d d'> | <e e'> <fis fis'> <g g'> <a a'> | % 17a
  <b b'>8 <cis cis'> <d d'> <e e'> | <fis fis'> <g g'> <a a'> <b b'> |
  <cis cis'>8 <d d'> <e e'> <fis fis'> | <g g'> <a a'> <b b'> <cis cis'> | \vf <d d'>-^ r r4 | s2 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\ff | s2*5 | s2\omit\dim-\markup\italic "molto dim" s16 s4.\> s16\! | s2.\p | s2.*11 |
  s2.*3 | s2 s4-\markup\italic "a tempo" | % 3a
  s2.*2 | s8 s2\< s8\! | s4 s2-\markup\italic "poco rit." |
  s2.\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2.*6 |
  s2.*8 | s2.\> | s2.\omit\mp-\markup{\dynamic mp \italic "sempre rit."} | s2. | s2 s\<^\markup\italic "poco a poco accel." | s2.\! s4\sf | s1 | s4 s2\> s4\! | % 4
  s1\mp | s1*7 | % 5
  s1\mp | s1*7 |
  s1*7 | s8 s2.\> s8\! | % 7
  s1\mp | s1*7 |
  s1*2 | s1\omit\dim-\markup\italic "poco a poco dim." | s1*2 | s2 s\pp | s1 | s4 s4.\ppp s8\< s4\! |
  \repeat volta 2 {
    s1-\markup{\dynamic mp \bold - \dynamic mf} s1*2 | s4\< s\! s\> s\! | s1*3 | % 10a
    s4\< s\! s\> s\! | s1*3 | s4\< s\! s\> s\! | s1 |
    \alternative { { s1 s4 s2\< s4\! | s1 } { s1*3 } }
  }
  s1\mf | s1*5 | % 11b
  s1*2 | s1\mf | s1*2 | s2. s4\< | s1\f | s | s2*2 | s8 s4.\< | s4. s8\! |
  s2\p | s | s\mp | s2*3 | s4 s\f | s s\p | s2*5 | % 13
  s4\< s\! | s2\mf | s | s\mp | s2*5 | s4 s\f | s s\pp | s2*2 | % 14
  s2*3 | s8 s4.\< | s2\! | s | s2\mp | s2*2 | s4. s8\mp | s2*4 |
  s2\f | s2*7 | s2\f | s2*4 | s4 s\p | % 16
  s2\omit\cresc-\markup\italic "poco a poco cresc" | s2*2 | s4 s\f | s2 | s8 s4.\< | s2\! | s\< | s\! | s | s\ff | s\fff |
}

dynamicsPianoSingle = {
  \override DynamicTextSpanner.style = #'none
  s2\ff | s2*5 | s2\omit\dim-\markup\italic "molto dim" s16 s4.\> s16\! | s2.\p | s2.*11 |
  s2.*3 | s2 s4-\markup\italic "a tempo" | % 3a
  s2.*2 | s8 s2\< s8\! | s4 s2-\markup\italic "poco rit." |
  s2.\omit\mf-\markup{\dynamic mf \italic "a tempo"} | s2.*6 |
  s2.*8 | s2.\> | s2.\omit\mp-\markup{\dynamic mp \italic "sempre rit."} | s2. | s2 s\<^\markup\italic "poco a poco accel." | s2.\! s4\sf | s1 | s4 s2\> s4\! | % 4
  s1\mp | s1*7 | % 5
  s1\mp | s1*7 |
  s1*7 | s8 s2.\> s8\! | % 7
  s1\mp | s1*7 |
  s1*2 | s1\omit\dim-\markup\italic "poco a poco dim." | s1*2 | s2 s\pp | s1 | s4 s4.\ppp s8\< s4\! |
  s1\mp s1*2 | s4\< s\! s\> s\! | s1*3 | % 10a
  s4\< s\! s\> s\! | s1*3 | s4\< s\! s\> s\! | s1 | s1 | s4 s2\< s4\! | s1 |
  s1\mf s1*2 | s4\< s\! s\> s\! | s1*3 | % 10a
  s4\< s\! s\> s\! | s1*3 | s4\< s\! s\> s\! | s1 | s1*3 |
  s1\mf | s1*5 | % 11b
  s1*2 | s1\mf | s1*2 | s2. s4\< | s1\f | s | s2*2 | s8 s4.\< | s4. s8\! |
  s2\p | s | s\mp | s2*3 | s4 s\f | s s\p | s2*5 | % 13
  s4\< s\! | s2\mf | s | s\mp | s2*5 | s4 s\f | s s\pp | s2*2 | % 14
  s2*3 | s8 s4.\< | s2\! | s | s2\mp | s2*2 | s4. s8\mp | s2*4 |
  s2\f | s2*7 | s2\f | s2*4 | s4 s\p | % 16
  s2\omit\cresc-\markup\italic "poco a poco cresc" | s2*2 | s4 s\f | s2 | s8 s4.\< | s2\! | s\< | s\! | s | s\ff | s\fff |
}

pianoLHone = \relative {
  \global \vo
  <c' ees g bes>2-> ~ | q~ | q~ | q | s2*4 |
  \repeat unfold 10 {r8 bes'8(c bes c bes) | }
  r8 g(c g c g) | r aes(c aes c aes) |
  r8 g(bes g bes g) | % 3a
  r8 f(c' f, c' f,) |
  r8 ees(bes' ees, bes' ees,) \clef bass |
  \ov <aes,, ees'>2\fermata r4 |
  bes,4 r r | bes r r | bes r r | bes <aes'' d>4-- ~q-. \section | % 3b
  ees4 r r | bes r r | aes r r | ees' r r | ees r r | bes r r | d, r r |
  bes'4 r r | ees r r | bes r r | aes r r | a r r | bes r r | bes r r | bes, r r |
  bes4 r r | <bes' g'>2. | <bes aes'> \section \time 4/4 | ees4 r bes r | ees r bes r | ees r bes r | ees r bes r \section \key aes \major \time 2/2 |
  \repeat unfold 6 { aes8 r r4 ees8 r r4 | }
  f8 r r4 bes,8 r r4 | ees8 r r4 ees8[r ees'] r |
  \repeat unfold 6 {aes,8 r r4 ees8 r r4 |} % 6a
  f8 r r4 bes,8 r r4 | ees8[r ees'] r ees,4-> r |
  ees4 r aes r | des, r aes' r | ees r aes r | des, r aes' r | % 7a
  f4 r bes r | ees, r bes' r | f r bes r | ees, r ees r |
  \repeat unfold 6 {aes8 r r4 ees8 r r4 |} % 8a
  r4 des' r c | r bes r2 |
  ees4 r ees r | bes' r ees, ees | aes r ees r | bes4-. r ees,-. c-. | % 9a
  aes'4 r ees r | bes-4-. r ees,-. ees-. | aes-. r ees'-. r | aes,4-. r s2 \section \key des \major |
  \repeat volta 2 {
    <des des'>4 r aes' r | q r aes r | q r aes r | q r aes r | q r aes r | q r aes r | <ees ees'> r aes r | % 10a
    q4 r aes r | <des, des'> r aes' r | q r aes r | bes r <ees, ees'> r | bes' r q r | ees4 r ees, r |
    \alternative {
      { aes4 r aes, r | <des des'> r aes' r | ges r ees(aes) | }
      { aes4 r aes' r | des, r aes(f' | bes2 aes) | }
    }
  }
  des2 ges,~ | 2. g4 | g ges4 2~ | 2.~8 r | 4 f4 2 | aes2 ges4 f |
  ees1~ | 2.~8 r | des4 r aes r | des, r f r | bes r <ees, ees'> r | c'' bes(a bes) | % 12a
  aes4(aes,) aes'(aes,) | aes'(aes,) aes'(aes,) \section \time 2/4 | \vt des8 des, ees f | ges aes bes c | \ov des ees f ges | aes bes c des \section \key d \major |
  <d, d'>4 <cis cis'> | <b b'> <a a'> | <g g'> <fis fis'> | <e e'> <d d'> | <cis cis'>8 [ r <a a'> ] r | <dis dis'> [ r <a a'> ] r | % 13a
  <e' e'>8 r a'8 8 | <b c> a r4 | <d,, d'>8 [ r q ] r | q [ r q ] r | g8 [ r d ] r | e [ r g ] r | a [ r a ] r |
  <fis' a>8 <eis b'> <e a> <b a'> | % 14a
  <b, b'>8 [ r <e e'> ] r |
  <a, a'>8 a''-> b-> cis-> |
  <d, d'>4 <cis cis'> |
  <b b'>4 <a a'> |
  <g g'>4 <fis fis'> |
  <e e'>4 <d d'> |
  <cis cis'>8 [ r a' ] r | % 14b
  <dis, dis'>8 [ r a' ] r |
  <e e'>8 r e''-> a,-> |
  <b cis>8 a r4 | <d,, d'>8 [ r q ] r |
  q [ r q ] r |
  g8 r d r | e r g r | <fis fis'>4 <f f'> | <e e'>8 [ r a ] r | <d, d'> fis' a d | c a fis d | g, [ r d ] r | % 15a
  g8 [ r d ] r | d' [ r cis ] r | b8 [ r a ] r | <e e'> [ r q ] r | q [ r q ] r | <a a'> [ r <e e'> ] r | <a, a'>8 <a' a'>-. <b b'>-. <cis cis'>-.
  <d d'>4 <cis cis'> | <b b'> <a a'> | <g g'> <fis fis'> | <e e'> <d d'> | <e' e'> <d d'> <cis cis'> <b b'> | <a a'> <gis gis'> | % 16a
  <fis fis'>4 <e e'> | <d d'>8 [ r q ] r | <fis fis'> [ r q ] r | b [ r b ] r | e,-^ r e'4 | a, <a g' b>\arpeggio | <a fis' a>8 r <a e' g>4 |
  <d, d'>4 <fis fis'> | <d d'> <a a'> | <d d'> <fis fis'> | <d d'> \breathe <a a'> | % 17a
  \ottava #-1 <d, d'>8 <b b'> <cis cis'> <d d'> | <e e'> <fis fis'> <g g'> <a a'> |
  \ottava #0 <b b'> <cis cis'> <d d'> <e e'> | % 17b
  <fis fis'>8 <g g'> <a a'> <b b'> |
  <cis cis'>8 <d d'> <e e'> fis |
  <g g'>8 <a a'> <b b'> <cis cis'> |
  <d d'>8-^ r r4 |
  <d, fis a b>8-> r r4 |
}

pianoLHtwo = \relative {
  \global \vt
  r8 <ees,, ees'>8 <f f'> <g g'> |
  <aes aes'>8 <bes bes'> <c c'> <d d'> |
  <ees ees'>8 <f f'> <g g'> <bes bes'>-> |
  <aes aes'>8-> <g g'>-> <f f'>-> <ees ees'>-> |
  \ov <f f'>8 <ees ees'> <d d'> <c c'> |
  <bes bes'>8 <a a'> <bes bes'> <c c'> | % 2b
  <bes bes'>8 <c c'> <d d'> <ees ees'> |
  <f f'>8 <g g'> <aes aes'> <bes bes'> \clef treble |
  \vt ees'2. | d2. |
  ees2. | d | ees | d | ees | % 2c
  d2. | ees | d | c | c |
  bes2. | aes | g | s | % 3a
  s2.*4 |
  s2.*7 |
  s2.*11 | s1*4 | % 4
  s1*8 |
  s1*8 | % 6
  s1*8 |
  s1*8 | % 8
  s1*8 |
  \repeat volta 2 {
    \alternative {
      { s1*3 }
      { s1*3 }
    }
  }
  s1*6 |
  s1*8 | s2*4 |
  s2*13 | % 13
  s2*13 |
  s2*14 | % 15
  s2*14 |
  s2*12 | % 17
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
            \addlyrics \wordsWomenTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
            \addlyrics \wordsWomenTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
            \addlyrics \wordsMenTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
            \addlyrics \wordsMenTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAltoSingle
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenorSingle
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBassSingle
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPianoSingle
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSopSingle
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenorSingle
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBassSingle
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPianoSingle
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSopSingle
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAltoSingle
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBassSingle
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPianoSingle
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSopSingle
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAltoSingle
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenorSingle
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPianoSingle
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPianoSingle
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPianoSingle
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi-tenor
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPianoSingle
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPianoSingle
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
