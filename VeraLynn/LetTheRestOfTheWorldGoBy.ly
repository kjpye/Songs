\version "2.20.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Let the Rest of the World Go By"
  subtitle    = "To Julie and Carrie"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ernest R. Ball"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "J. Keirn Brennan"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 3/4
  \partial 4
}

TTa = {
  \global
  \set Score.tempoHideNote = ##t
  \tempo 4=90
  s4-\markup \upright \bold "Moderately with expression"
  s2.*7
  s2
}

TTb = {
  s4-\markup \italic \bold "With much expression"
  s2.*15
  s2 s4^\markup \bold {REFRAIN \italic {Tenderly with expression}}
}

TTc = {
  s2.*29
  \tempo 4=45 s2 \tempo 4=90 s4^\markup \italic porta
}

TTd = {
  s2.*2
}

TTe = {
  s2.
  \tempo 4=45 s2 \tempo 4=90
}

TempoTrack       = { \TTa \TTb \TTc \TTd                     \TTe }
TempoTrackSingle = { \TTa \TTb \TTc \TTd \TTc \TTe \TTb \TTc \TTe }

RTa = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "74a" } s4 s2.*4
  \mark \markup { \circle "74b" } s2.*3 s2
}

RTb = {
  s4
  \mark \markup { \circle "74c" } s2.*4
  \mark \markup { \circle "75a" } s2.*4
  \mark \markup { \circle "75b" } s2.*4
  \mark \markup { \circle "75c" } s2.*4
}

RTc = {
    \mark \markup { \circle "75d" } s2.*4
    \mark \markup { \circle "76a" } s2.*4
    \mark \markup { \circle "76b" } s2.*4
    \mark \markup { \circle "76c" } s2.*4
    \mark \markup { \circle "76d" } s2.*4
    \mark \markup { \circle "77a" } s2.*4
    \mark \markup { \circle "77b" } s2.*3
    \mark \markup { \circle "77c" } s2.*3
}

RTd = {
      \mark \markup { \circle "77d" } s2.*2
}

RTe = {
      s2. s2
}

RehearsalTrack       = { \RTa \RTb \RTc \RTd                     \RTe }
RehearsalTrackSingle = { \RTa \RTb \RTc \RTd \RTc \RTe \RTb \RTc \RTe }

CTa = \chordmode {
  s4
  aes2.
  s2.*3
  ees2.:7 % 74b
  s2.
  aes2.
  s2
}

CTb = \chordmode {
  s4
  s2.*4 % 74c
  ees2.:7 % 75a
  s2.
  aes2.
  s2.*3
  c2.:m % 75b++
  s2 aes4:m6/ces
  ees2./bes % 75c
  bes:9
  ees:7
  s2.
}

CTc = \chordmode {
    aes2. % 75d
    s2.
    ees:7
    s2.
    s2. % 76a
    s2.
    aes
    s2 aes4:7
    des2. % 76b
    s2.
    aes/ees
    f:9
    bes:7 % 76c
    s2.
    ees2 bes4:7/f
    ees2:7/g ees4:aug
    aes2. % 76d
    s2.
    ees:7
    s2.
    s2. % 78a
    s2.
    c2 f4:m/c
    c2.
    aes2. % 78b
    s2.
    ees:7
    s2.*3 % 78c
  }

CTd = \chordmode {
      aes4 d2:dim7 % 78d
      ees2 ees4:maj7.5+
    }

CTe = \chordmode {
      aes2.
      s2
}

ChordTrack       = { \CTa \CTb \CTc \CTd                     \CTe }
ChordTrackSingle = { \CTa \CTb \CTc \CTd \CTc \CTe \CTb \CTc \CTe }

melodyA = \relative {
  \global
  \autoBeamOff
  r4
  R2.*7
  r4 r\fermata \bar "||"
}

melodyB = \relative {
  aes'8 bes % 74b+++
  c4 des d % 74c
  ees2 ees4
  aes,4 bes b
  c2 b8 c
  ees2 des4 % 75a
  f,2 des'4
  c2.~
  c4 r aes8 bes
  c4 des d % 75b
  ees2 c8 d
  ees4 d c
  g2 aes4
  bes2 bes4 % 75c
  c2 ces4
  bes2.~
  bes2
  ees,4
}

melodyC = \relative {
  c''2 c8 b % 75d
  c2 ees,4
  bes'2 bes8 a
  bes2 ees,4
  bes'4. a8 bes c % 76a
  ees2 des4
  c4. bes8 aes bes
  c2 aes4
  f2 aes4 % 76b
  des2 f,4
  ees2 aes4
  c2.
  bes2 c4 % 76c
  bes2 f4
  g2 aes4
  bes2 b4
  c2 c8 b % 76d
  c2 ees,4
  bes'2 bes8 a
  bes2 ees,4
  bes'4. a8 bes c % 77a
  ees2 des4
  c2. _~
  c4. ees,8 d ees
  c'2 c8 b % 77b
  c2 ees,4
  bes'2 bes8 b
  bes4. bes8 a bes % 77c
  ees2 bes8 c
  des2 c4
}

melodyD = \relative {
  aes'4 r r % 77d
  r4 r b
}

melodyE = \relative {
      aes'2.~
      aes2
}

melody       = { \melodyA \melodyB \melodyC \melodyD                                     \melodyE }
melodySingle = { \melodyA \melodyB \melodyC \melodyD \melodyC \melodyE \melodyB \melodyC \melodyE }

descantA = \relative {
  \global
  \autoBeamOff
  \override NoteHead.font-size = #-2
  \voiceOne
  s4
  s2.*7
  s2 \bar "" \break
}

descantB = {
  s4
  s2.*15
  s2 c''4
}

descantC = \relative {
  ees''2 ees8 d % 3b
  ees2 c4
  des2 des8 c
  des2 des4
  des4. c8 des ees
  g2 f4 % 3c
  ees4. des8 c des
  ees2 c4
  des2 des4
  f2 des4
  c2 c4
  ees2. % 4a
  d2 d4
  d2 d4
  ees2 d4
  des2 d4
  ees2 ees8 d
  ees2 c4 % 4b
  des2 des8 c
  des2 des4
  des4. c8 des ees
  g2 f4
  e4 g f
  e4 r8 c b c % 4c
  ees2 ees8 d
  ees2 c4
  des2 des8 c
  des4. des8 c des
  g2 des8 ees % 4d
  f2\fermata ees4
}

descantD = \relative {
  c''4 s2
  s2.
}

descantE = \relative {
  c''2.~
  c2\fermata
}

descant       = { \descantA \descantB \descantC \descantD                               \descantE }
descantSingle = { \descantA \descantB \descantC \descantD \descantC \descantE \descantB \descantC \descantE }

wordsOne = \lyricmode {
  \set stanza = "1."
  Is the strug -- gle and strife
  we find in this life,
  real -- ly worth -- while af -- ter all? __
  I've been wish -- ing to -- day
  I could just run a -- way,
  out where the west winds call. __
}

chorus = \lyricmode {
  With some -- one like you,
  a pal good and true,
  I'd like to leave it all be -- hind,
  and go and find
  some place that's known to God a -- lone,
  just a spot to call our own.
  We'll find per -- fect peace,
  where joys nev -- er cease,
  out there be -- neath a kind -- ly sky. __
  We'll build a sweet lit -- tle nest,
  some -- where in the west,
  and let the rest of the world go by.

  With by. __
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Is the fu -- ture to hold
  Just strug -- gles for gold
  While the real world waits out -- side, __
  A -- way out on the breast
  Of the won -- der -- ful West,
  A -- cross the great Di -- vide? __
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  Is the strug -- gle and strife
  we find in this life,
  real -- ly worth -- while af -- ter all? __
  I've been wish -- ing to -- day
  I could just run a -- way,
  out where the west winds call. __
  With some -- one like you,
  a pal good and true,
  I'd like to leave it all be -- hind,
  and go and find
  some place that's known to God a -- lone,
  just a spot to call our own.
  We'll find per -- fect peace,
  where joys nev -- er cease,
  out there be -- neath a kind -- ly sky. __
  We'll build a sweet lit -- tle nest,
  some -- where in the west,
  and let the rest of the world go by.
  With some -- one like you,
  a pal good and true,
  I'd like to leave it all be -- hind,
  and go and find
  some place that's known to God a -- lone,
  just a spot to call our own.
  We'll find per -- fect peace,
  where joys nev -- er cease,
  out there be -- neath a kind -- ly sky. __
  We'll build a sweet lit -- tle nest,
  some -- where in the west,
  and let the rest of the world go by.

  \set stanza = "2."
  Is the fu -- ture to hold
  Just strug -- gles for gold
  While the real world waits out -- side, __
  A -- way out on the breast
  Of the won -- der -- ful West,
  A -- cross the great Di -- vide? __

  With some -- one like you,
  a pal good and true,
  I'd like to leave it all be -- hind,
  and go and find
  some place that's known to God a -- lone,
  just a spot to call our own.
  We'll find per -- fect peace,
  where joys nev -- er cease,
  out there be -- neath a kind -- ly sky. __
  We'll build a sweet lit -- tle nest,
  some -- where in the west,
  and let the rest of the world go by.
}

midiWords = \lyricmode {
  \set stanza = "1."
  "\nIs " "the " strug "gle " "and " "strife "
  "\nwe " "find " "in " "this " "life, "
  "\nreal" "ly " worth "while " af "ter " "all? " 
  "\nI've " "been " wish "ing " to "day "
  "\nI " "could " "just " "run " a "way, "
  "\nout " "where " "the " "west " "winds " "call. " 
  "\nWith " some "one " "like " "you, "
  "\na " "pal " "good " "and " "true, "
  "\nI'd " "like " "to " "leave " "it " "all " be "hind, "
  "\nand " "go " "and " "find "
  "\nsome " "place " "that's " "known " "to " "God " a "lone, "
  "\njust " "a " "spot " "to " "call " "our " "own. "
  "\nWe'll " "find " per "fect " "peace, "
  "\nwhere " "joys " nev "er " "cease, "
  "\nout " "there " be "neath " "a " kind "ly " "sky. " 
  "\nWe'll " "build " "a " "sweet " lit "tle " "nest, "
  "\nsome" "where " "in " "the " "west, "
  "\nand " "let " "the " "rest " "of " "the " "world " "go " "by. "
  "\nWith " some "one " "like " "you, "
  "\na " "pal " "good " "and " "true, "
  "\nI'd " "like " "to " "leave " "it " "all " be "hind, "
  "\nand " "go " "and " "find "
  "\nsome " "place " "that's " "known " "to " "God " a "lone, "
  "\njust " "a " "spot " "to " "call " "our " "own. "
  "\nWe'll " "find " per "fect " "peace, "
  "\nwhere " "joys " nev "er " "cease, "
  "\nout " "there " be "neath " "a " kind "ly " "sky. " 
  "\nWe'll " "build " "a " "sweet " lit "tle " "nest, "
  "\nsome" "where " "in " "the " "west, "
  "\nand " "let " "the " "rest " "of " "the " "world " "go " "by. "

  \set stanza = "2."
  "\nIs " "the " fu "ture " "to " "hold "
  "\nJust " strug "gles " "for " "gold "
  "\nWhile " "the " "real " "world " "waits " out "side, " 
  "\nA" "way " "out " "on " "the " "breast "
  "\nOf " "the " won der "ful " "West, "
  "\nA" "cross " "the " "great " Di "vide? " 

  "\nWith " some "one " "like " "you, "
  "\na " "pal " "good " "and " "true, "
  "\nI'd " "like " "to " "leave " "it " "all " be "hind, "
  "\nand " "go " "and " "find "
  "\nsome " "place " "that's " "known " "to " "God " a "lone, "
  "\njust " "a " "spot " "to " "call " "our " "own. "
  "\nWe'll " "find " per "fect " "peace, "
  "\nwhere " "joys " nev "er " "cease, "
  "\nout " "there " be "neath " "a " kind "ly " "sky. " 
  "\nWe'll " "build " "a " "sweet " lit "tle " "nest, "
  "\nsome" "where " "in " "the " "west, "
  "\nand " "let " "the " "rest " "of " "the " "world " "go " "by. "
}

pRHa = \relative {
  \global
  <c' aes'>8\( <des bes'>
  <aes' c>4 <bes des> <b d>
  <c ees>2\) q4\(
  <c, aes'>4 <des bes'> <d b'>
  <ees c'>4.\) q8\( <d b'> <ees c'>
  <g ees'>2 <des bes'>8 <ees c'>
  <f des'>2 <ees c'>4
  <c ees aes>4\) <c ees aes c>\( <ees aes c ees> % 2b
                                 <aes c ees aes>2\fermata\) \breathe \bar "||"
                }

pRHb = \relative {
  <c' aes'>8\( <ees bes'>
               <aes c>4 <bes des> <b d>
               <c ees>2 q4
               <c, aes'>4 <des bes'> <d b'>
               <ees c'>2\) s4
  s2. % 3c
  s2.
  s2.
  s2 <c aes'>8\( <ees bes'>
  <aes c>4 <bes des> <b d>
  <c ees>2\) <ees, c'>8\(<f d'>
  <g ees'>4 <f d'> <ees c'> % 3a
  <ees g>2\) s4
  s2.
                  s2.
                  s2.
  s2 \bar "||"
  ees'4
}

pRHc = \relative {
    s2.*7
                  s2 <c' ges' aes>4^\(
                    <des f>2 <des f aes>4
                    <des f des'>2 <des f>4
                    <c ees>2 <ees aes>4
                    <ees a c>2.\)
                  <d aes' bes>2^\( <d aes' c>4
                                   <d aes' bes>2 <d f>4
                                   <ees g>2 <des aes'>4
                                   <des ees bes'>2\) s4
                  s2.*7
                  s4. <c ees>8^\( <b d> <c ees>
                                <ees c'>2 q8 <d b'>
  <ees c'>2 <c ees>4
  <des bes'>2\) q8^\( <c a'>
                       <des bes'>4. q8 <c a'> <des bes'>
                       <g ees'>2 <des bes'>8 <ees c'>
                       <f des'>2\fermata\) <ees c'>4^(
}

pRHd = \relative {
  <c' aes'>4) s2
  s4 <des g bes>4^(<d g b>)
}

pRHe = \relative {
  <c' ees aes^\repeatTie>4(
                 <c ees aes c>\arpeggio <ees aes c ees>\arpeggio
                 <aes c ees aes>2\arpeggio\fermata)
}

pianoRH       = { \pRHa \pRHb \pRHc \pRHd                         \pRHe }
pianoRHSingle = { \pRHa \pRHb \pRHc \pRHd \pRHc \pRHe \pRHb \pRHc \pRHe }

pRHOneA = \relative {
  \global
  \oneVoice
  s4
  s2.*7
  s2 \bar "||"
}

pRHOneB = \relative {
  s4
  s2.*3
  s2 <d' b'>8\(<ees c'>
  <g ees'>2 <f des'>4 % 2c
  <des f>2 <f des'>4 \voiceOne
  c'2.~ c2\) s4
  s2.
  s2.
  s2.
  s2 \oneVoice <ees, f aes>4^\(
    <ees g bes>2 q4
    <d aes' c>2 <d aes' ces>4 \voiceOne
    bes'2.~
    bes2\) \bar "||" s4
}

pRHOneC = \relative {
    \teeny
    r8. f''16 ees4 r
    r8. f16 ees4 r
    r8. f16 ees4 r
    r8. f16 ees4 r
    r8. f16 ees4 r
    r8. f16 ees4 r
    r8. f16 ees4 r
    r8. f16 ees4 s
    s2.*8
    r8. f16 ees4 s
    r8. f16 ees4 s
    r8. f16 ees4 s
    r8. f16 ees4 s
    r8. f16 ees4 s
    r8. f16 ees4 s
    \normalsize
    c2. ~
    c4. s % 4c
    s2.
    s2.
    s2.
    s2.
    s2. % 4d
    s2.
}

pRHOneD = \relative {
  s4 g''\( f
           f8 ees\) s2
}

pRHOneE = {
  s2.
  s2
}

pianoRHOne       = { \pRHOneA \pRHOneB \pRHOneC \pRHOneD                                     \pRHOneE }
pianoRHOneSingle = { \pRHOneA \pRHOneB \pRHOneC \pRHOneD \pRHOneC \pRHOneE \pRHOneB \pRHOneC \pRHOneE }
  
pRHTwoA = \relative {
  \global
  \voiceTwo
  s4
  s2.*7
  s2 \bar "||"
}

pRHTwoB = \relative {
  s4
  s2.*6
  ees'2\(f8 e
  ees2\) s4
  s2.
  s2.
  s2. % 3a
  s2.
  s2.
  s2. \oneVoice
  <des g>4\( q <des f>
             <des ees>2\) \bar "||" s4
}

pRHTwoC = \relative {
  <ees' c'>2^\( q8 <d b'>
               <ees c'>2\) ees4^\(
                 <des bes'>2 <des bes'>8 <c a'>
                 <des bes'>2\) <des ees>4^\(
                   <des bes'>4. <c a'>8 <des bes'> <ees c'>
                   <g ees'>2 <f des'>4 % 3c
                   <ees c'>4. <des bes'>8 <c aes'> <des bes'>
                   <ees c'>2\) s4
  s2.*7
  s2 <ees g b>4^\(
    <ees c'>2 q8 <d b'>
    <ees c'>2 ees4 % 4b
    <des bes'>2 q8 <c a'>
    <des bes'>2\) <des ees>4^\(
      <des bes'>4. <c a'>8 <des bes'> <ees c'>
      <g ees'>2 <f g des'>4 e4( g f
      e4.) \) s4. % 4c
  s2.*6
}

pRHTwoD = \relative {
  s4 <a' bes>2
  <g bes>4 s2
}

pRHTwoE = {
  s2. s2
}

pianoRHTwo       = { \pRHTwoA \pRHTwoB \pRHTwoC \pRHTwoD                                     \pRHTwoE }
pianoRHTwoSingle = { \pRHTwoA \pRHTwoB \pRHTwoC \pRHTwoD \pRHTwoC \pRHTwoE \pRHTwoB \pRHTwoC \pRHTwoE }

dPa = {
  \override DynamicTextSpanner.style = #'none
  s8\mf s\<
  s2 s4\!
  s2.*5
  s4 s2\>
  s2\!
}

dPb = {
  \override DynamicTextSpanner.style = #'none
  s4\p
  s2.*6
  s2\< s4\>
  s4 s2\!
  s2.
  s2.
  s2.\>
  s2.\<
  s2 s4\!
  s2.
  s2.-\markup \bold \italic rit.
  s2
  s4\p
}

dPc = {
  \override DynamicTextSpanner.style = #'none
  s2.\f
  s2.*28
  s2 s4\>
}

dPd = {
  \override DynamicTextSpanner.style = #'none
  s4 s2\<
  s2.\>
}

dPe = {
  \override DynamicTextSpanner.style = #'none
  s2.\>
  s4 s\!
}

dynamicsPiano       = { \dPa \dPb \dPc \dPd                     \dPe }
dynamicsPianoSingle = { \dPa \dPb \dPc \dPd \dPc \dPe \dPb \dPc \dPe }
  
pLHa = \relative {
  \global
  \oneVoice
  r4
  s2.
  <aes, ees'>4 <ees' aes c> r
  s2.
  <aes, ees'>4 <ees' aes c> r
  <bes bes'>4 <ees g des'> r
  <ees, ees'>4 <ees' g des'> r
  <aes, aes'>4 <ees ees'> <c c'> % 2b
  <f f'>2\fermata \breathe \bar "||"
}

pLHb = \relative {
  r4
  s2.
  s4 <ees aes c> r
  s2.
  <aes, ees'>4 <ees' aes c> r
  bes4 <ees g des'>2 % 2c
  ees,4 q2
  aes4 <ees' aes c>2
  ees,4 q r
  s2.
  <aes, ees'>4 <ees' aes c> r
  s2. % 3a
  s2.
  s2.
  s2.
  <ees, ees'>4 s2
  s2 \bar "||" \break r4
}

pLHc = \relative {
  aes,4 <ees' aes c> q % 3b
  ees,4 q q
  g4 <ees' g> q
  ees,4 q q
  g4 q q
  ees4 <ees' g des'> q % 3c
  aes,4 <ees' aes c> r
  aes,4 q r
  <des, des'>4 <f' aes> q
  <des, des'>4 <f' aes> q
  <ees, ees'> <ees' aes c> q
  <f, f'>4 <f' a c> q % 4a
  <f, f'>4 <f' aes bes> q
  <bes, bes'>4 <f' aes bes> q
  <ees, ees'>4 <g' bes> <f, f'>
  <g g'>4 <g' bes> r
  aes,4 <ees' aes c> q
  ees,4 q q % 4b
  g4 <ees' g> q
  ees,4 q q
  g4 q q
  ees4 <ees' g des'> <bes g'>
  s2.
  s4. r8 r4 % 4c
  aes4 <ees' aes c> q
  ees,4 q <ees' aes>
  g,4 <ees' g> q
  ees,4 q q
  bes'4 <ees g des'> r % 4d
  ees,4 q\fermata r
}

pLHd = \relative {
  <aes, ees' aes>4 s2
  s2.
}

pLHe = \relative {
  <aes, aes'>4 <ees ees'> <c c'>
  <aes aes'>2\fermata
}

pianoLH = {
  \pLHa
  \pLHb
  \set Score.repeatCommands = #'(start-repeat)
  \pLHc
  \set Score.repeatCommands = #'((volta "1"))
  \pLHd
  \set Score.repeatCommands = #'((volta #f) (volta "2,3") end-repeat)
  \pLHe
  \set Score.repeatCommands = #'((volta #f))
  \bar "|."
}
pianoLHSingle = { \pLHa \pLHb \pLHc \pLHd \pLHc \pLHe \bar "||" \break \pLHb \pLHc \pLHe \bar "|." }
  
pLHoneA = \relative {
  \global
  \voiceOne
  s4 ees4 f fes
  s2.
  ees4 f fes
  s2.
  s2.
  s2.
  s2. % 2b
  s2
}

pLHoneB = \relative {
  s4
  ees4\( f fes
         <aes, ees'>4\) s2
  ees'4\( f fes\)
  s2.
  s2.*4 % 2c
  ees4\( f fes\)
  s2.
  r4 g c % 3a
  r4 f, aes
  f4(bes2->)
  f4(bes2)
  s4 bes4(aes
  g2) \bar "||" \break s4
}

pLHoneC = \relative {
  s2.*22
  g4(bes aes % 4b+++++
  g4.) s4.
  s2.*6
}

pLHoneD = \relative {
  s4 d'2~ % 4d++
  d4 bes(b)
}

pLHoneE = {s2. s2}

pianoLHone       = { \pLHoneA \pLHoneB \pLHoneC \pLHoneD                                     \pLHoneE }
pianoLHoneSingle = { \pLHoneA \pLHoneB \pLHoneC \pLHoneD \pLHoneC \pLHoneE \pLHoneB \pLHoneC \pLHoneE }

pLHtwoA = \relative {
  \global
  \voiceTwo
  s4
  aes,2.
  s2.
  aes2.
  s2.
  s2.
  s2.
  s2. % 2b
  s2
}

pLHtwoB = \relative {
  s4
  aes,2.
  s2.
  aes2.
  s2.
  s2.*4 % 2c
  aes2.
  s2.
  c2. % 3a
  c2 ces4
  bes2.
  bes2.
  s4 ees2~
  ees2 \bar "||" \break s4
}

pLHtwoC = \relative {
  s2.*22
  c2.~ % 4b+++++
  c4. s4.
  s2.*6
}

pLHtwoD = \relative {
  s4 r r % 4d++
  ees2.
}

pLHtwoE = {s2. s2}

pianoLHtwo       = { \pLHtwoA \pLHtwoB \pLHtwoC \pLHtwoD                                     \pLHtwoE }
pianoLHtwoSingle = { \pLHtwoA \pLHtwoB \pLHtwoC \pLHtwoD \pLHtwoC \pLHtwoE \pLHtwoB \pLHtwoC \pLHtwoE }

\book {
  #(define output-suffix "repeat")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice            \descant
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \wordsOne \chorus }
            \new Lyrics \lyricsto "melody" \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHOne
            \new Voice \pianoRHTwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
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
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "single")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrackSingle
          \new Staff
          <<
            \new Voice \RehearsalTrackSingle
            \new Voice            \descantSingle
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHSingle
            \new Voice \pianoRHOneSingle
            \new Voice \pianoRHTwoSingle
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHSingle
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
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

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrackSingle
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrackSingle
          \new Staff
          <<
            \new Voice            \descantSingle
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" { \midiWords }
        >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHSingle
            \new Voice \pianoRHOneSingle
            \new Voice \pianoRHTwoSingle
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHSingle
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
          >>
        >>
      >>
    >>
    \midi {}
  }
}
