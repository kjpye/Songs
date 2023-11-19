\version "2.25.9"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Blue Moon"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Richard Rodgers"
  arranger    = "Arr. Ruth Artman"
%  opus        = "opus"

  poet        = "Lorenz Hart"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key ees \major
  \time 4/4
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

drumPitchNames.cc = #'crashcymbal
drumPitchNames.fs = #'fingersnap
drumPitchNames.bs = #'brushswirl
drumPitchNames.sd = #'snaredrum


#(define mystyle
  '((crashcymbal cross   #f  5)
    (fingersnap  cross   #f  0)
    (brushswirl  cross   #f -1)
    (snaredrum   default #f  1)
    (bass        default #f -1)
  )
)

midiDrumPitches.fingersnap = 18
midiDrumPitches.brushswirl = 26
midiDrumPitches.bass       = 35

FingerSnapTrack = \drummode {
  \stemUp
  \repeat unfold 3 {r4 fs r fs}
  r4 fs fs r
  s1*29
  r4 fs r fs % 6a
  fs4 r r2
  s1*16
  r4 fs r fs % 9a
  fs4 r r2
}
     
BSTrack = \drummode {
  \stemDown
  \repeat unfold 59 { bs4 bs bs bs }
}

SDTrack = \drummode {
  \stemUp
  \repeat unfold 3 { s4 sd s sd }
  s4 sd s8 sd sd4
  \repeat unfold 7 { s4 sd s sd }
  r4 sd8 sd sd4 r8 sd16 sd % 3b++
  sd4 sd r sd % 3c
  r2 r8 sd r sd~
  sd8 sd4. r4 sd
  r4 sd r8 sd4 sd8 % 4a
  sd8 sd4. r4 sd
  r4 sd r sd
  r4 sd r sd % 4b
  r8 sd sd4 r8 sd sd4
  \repeat unfold 36 {r4 sd r sd}
}

DrumTrack = \drummode {
  \repeat unfold 3 {bs4 <sd bs> bs q}
  bs4 q << {r8 sd} \new Voice bs4 >> q4
}

TempoTrack = {
  \tempo \markup {"Upbeat swing (" \rhythm { 8[8] } " = " \rhythm { \tuplet 3/2 { 4 8} } ")" } 4=152
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
  \mark \markup { \circle "2a" } s1*3
  \mark \markup { \circle "2b" } s1*3
  \mark \markup { \circle "3a" } s1*3
  \mark \markup { \circle "3b" } s1*3
  \mark \markup { \circle "3c" } s1*3
  \mark \markup { \circle "4a" } s1*3
  \mark \markup { \circle "4b" } s1*3
  \mark \markup { \circle "4c" } s1*3
  \mark \markup { \circle "5a" } s1*3
  \mark \markup { \circle "5b" } s1*3
  \mark \markup { \circle "5c" } s1*3
  \mark \markup { \circle "6a" } s1*3
  \set Score.currentBarNumber = #46
  \mark \markup { \circle "7b" } s1*3
  \mark \markup { \circle "7c" } s1*3
  \mark \markup { \circle "8a" } s1*3
  \mark \markup { \circle "8b" } s1*3
  \mark \markup { \circle "8c" } s1*3
  \mark \markup { \circle "9a" } s1*4
  \mark \markup { \circle "9b" } s1*4
}

ChordTrack = \chordmode {
  s1*12
  s8\p ees8:maj7~q2 q4 % 3c
  f2:m7 s
  s8 ees8:maj7~2 c4:m7
  f2:m7 bes % 4a
  ees8:maj7/bes bes4.:9/aes c2:m7/g
  f2:m7 f:m7/bes
  ees1 % 4b
  s1
  f2:m7/aes bes
  ees2:9 c:m % 4c
  f2:m7 bes:7.2 %%%
  ees4:maj7 ees2:maj7/g ees4:maj7
  aes2:m/f des:9 % 5a
  ges4:maj7 ees2.:m7
  bes2/f f:9
  bes4.:9 r s4 % 5b
  ees1:maj7
  f2:m7.4 ees
  ees1:maj7 % 5c
  f2:m7 bes
  ees4.:maj7 c:m7/g f4:m7
  s1 % 6a
  f1:m7/bes
  ees4. f:dim7/ces s4
                                % skip a page
  ees8:maj7 f4:m/ees ees2 s8 % 7b
  f2:m7/aes bes
  ees4. c2:m s8
  f2:m7 bes:9 % 7c
  ees4:maj7 f:m7 g:m7 s
  f2:dim7 des:9
  ges2:6 ees:m7 % 8a
  bes2/f f:9
  bes4.:9 r8 s2
  s1 % 8b
  ees1:maj7
  f2:m7.4 bes
  ees2.:maj7 c4:m7 % 8c
  f2:m7 g:m
  ees4.:maj7 c:m7 f4:m7
  s4. f:7/bes s4 % 9a
  s1
  ees2.:maj7 s8 f:m7
  s2 aes/bes
  ees1:maj7 % 9b
  des1:maj7
  ees1:maj7
  s1
}

soprano = \tripletFeel 8 \relative {
  \global
  R1*3
  r2 r8 bes'8\omit\mf^\markup \italic unis. (g) bes~ % 2b
  bes1
  r8 aes bes c bes bes aes bes~
  bes1 % 3a
  r8 f g aes g g f g~
  g1
  r8 ees f g ees ees c ees~ % 3b
  ees4 r8^\markup \italic "S. div." <aes c>~4.(<g bes>8~
  q4. <f aes>8~q) <g bes>8(<d g>) <g bes>~
  q1 % 3c
  r8 <f aes> <g bes> <aes c> <g bes> q <f aes> <g bes>~
  q4. q8~2
  r8 f g aes g g f g~ % 4a
  g4. g8~2
  r8 ees\omit\p^\markup\italic unis. ees ees ees ees ees ees~
  ees4. ees8~4. r8 % 4b
  ees8\omit\cresc( f4 g8~4) r
  <ees aes>2\omit\mp(<d bes'>
  <ees g>2.) r4 % 4c
  <aes c>4.(<ees aes>8 <d bes'>8) r q8(<ees g>~
  q2) r8 ees ees ees
  ees8 ees ees ees <ees f>4 r8 <des f> % 5a
  des4 des r8\omit\cresc des des des
  d8 d d d f4 f8 bes~(
  bes4. aes8~4) <ees g>8\omit\mf(<d g>) % 5b
  <g bes>1
  r8 <f aes> <g bes> <aes c> <g bes> q <f aes> <g bes>~
  q1 % 5c
  r8 f g aes g g4 f8
  g4.(~<g c>8--~q4 <aes ees'>4--~
  q2.) r4 % 6a
  r8 ees\omit\p ees ees \tuplet 3/2 {ees4 ees ees}
  ees4 r r2
                                % skip a page
  r2 r8 ees'\omit\mf ees ees % 7b
  ees16 c c4. r4 r8 c^\markup\italic unis.
  d4. bes8 g ees4.
  r8 f f f bes,4 bes'-> % 7c
  g8. f16 g aes bes8~2
  R1
  r2 r4 r8 des % 8a
  d8 f, f f f f f f
  bes4.(c8--~4. d8--~
  d4. f8--~4) ees8--(d) % 8b
  ees4( bes g8 ees4.)
  r8 <f aes> <g bes> <aes c> <g bes> q <f aes> <g bes>~
  q1 % 8c
  r8 f g aes g g4 f8
  g4.(~<g c>8~4 <aes ees'>--~
  q2.) r4 % 9a
  r8 ees\omit\p ees ees \tuplet 3/2 {ees4 ees ees}
  ees4 r bes'8->\omit\mf( g bes c~
  c4) r8 <aes ees'>8\omit\f \tuplet 3/2 {q4 q q}
  <d g>1 % 9b
  r2 des\omit\fp^\markup\bold\italic "slight rit."
  c1\omit\fp~
  c1
  \bar "|."
}

wordsWomen = \lyricmode {
  Blue __ Moon, __
  You saw me stand -- ing a -- lone, __
  with -- out a dream in my heart, __
  with -- out a love of my own, __
  \markup \italic Oo __
  Blue __ Moon, __
  You knew just what I was there __ for; __
  You heard me say -- ing a pray'r __ for __
  Some -- one I real -- ly could care __ for __
  \markup\italic Oo __ \markup\italic Oo __
  \markup\italic Ah __ \markup\italic Ah __
  I heard some -- bod -- y whis -- per,
  “Please a -- dore me.”
  And when I looked the moon had turned to gold! __
  Blue __ Moon,
  Now I'm no long -- er a -- lone, __
  With -- out a dream in my heart, __
  With -- out a love of my own.

  And then there sud -- den -- ly ap -- peared be -- fore me
  the on -- ly one my arms will ev -- er hold. __
  And when I looked the moon had turned to gold! __
  Blue __ Moon, __
  Now I'm no long -- er a -- lone, __
  With -- out a dream in my heart, __
  With -- out a love of my own,
  \markup\italic Oo __
  a love of my own!
  Blue Moon. __
}

wordsWomenMidi = \lyricmode {
  "Blue "  "Moon, " 
  "\nYou " "saw " "me " stand "ing " a "lone, " 
  "\nwith" "out " "a " "dream " "in " "my " "heart, " 
  "\nwith" "out " "a " "love " "of " "my " "own, " 
  \markup \italic "\nOo "
  "\nBlue "  "Moon, " 
  "\nYou " "knew " "just " "what " "I " "was " "there "  "for; " 
  "\nYou " "heard " "me " say "ing " "a " "pray'r "  "for " 
  "\nSome" "one " "I " real "ly " "could " "care "  "for " 
  \markup\italic "\nOo " \markup\italic "Oo "
  \markup\italic "Ah " \markup\italic "Ah "
  "\nI " "heard " some bod "y " whis "per, "
  "\n“Please " a "dore " "me.” "
  "\nAnd " "when " "I " "looked " "the " "moon " "had " "turned " "to " "gold! " 
  "\nBlue "  "Moon, "
  "\nNow " "I'm " "no " long "er " a "lone, " 
  "\nWith" "out " "a " "dream " "in " "my " "heart, " 
  "\nWith" "out " "a " "love " "of " "my " "own. "

  "\nAnd " "then " "there " sud den "ly " ap "peared " be "fore " "me "
  "\nthe " on "ly " "one " "my " "arms " "will " ev "er " "hold. " 
  "\nAnd " "when " "I " "looked " "the " "moon " "had " "turned " "to " "gold! " 
  "\nBlue "  "Moon, " 
  "\nNow " "I'm " "no " long "er " a "lone, " 
  "\nWith" "out " "a " "dream " "in " "my " "heart, " 
  "\nWith" "out " "a " "love " "of " "my " "own, "
  \markup\italic "\nOo "
  "\na " "love " "of " "my " "own! "
  "\nBlue " "Moon. " 
}

alto = \tripletFeel 8 \relative {
  \global
  R1*3
  r2 r8 bes'8\omit\mf(g) bes~ % 2b
  bes1
  r8 aes bes c bes bes aes bes~
  bes1 % 3a
  r8 f g aes g g f g~
  g1
  r8 ees f g ees ees c ees~ % 3b
  ees4 r8 ees~4. d8~
  d4. c8~c d(bes) ees~
  ees1 % 3c
  r8 c d ees d d c ees~
  ees4. 8~2
  r8 c8 d ees d d c ees~ % 4a
  ees4. ees8~2
  r8 ees\omit\p ees ees ees ees ees ees~
  ees4. ees8~4. r8 % 4b
  bes8\omit\cresc(c4 ees8~4) r
  c2\omit\mp(bes~
  bes2.) r4 % 4c
  ees4.(c8 bes) r bes~bes~
  bes2 r8 ees ees ees
  ces8 ces ces ces ces4 r8 ces % 5a
  bes4 bes r8\omit\cresc bes bes bes
  bes8 bes bes bes c4 ees8\omit\mf f~
  f2. d8(bes) % 5b
  ees1
  r8 c d ees d d c ees~
  ees1 % 5c
  r8 c8 d ees d d4 c8
  ees1~
  ees2. r4 % 6a
  r8 ees\omit\p ees ees \tuplet 3/2 {ees4 ees ees}
  ees4 r r2
                                % skip a page
  r2 r8 ees\omit\mf ees ees % 7b
  ees16 c c4. r4 r8 c'
  d4. bes8 g ees4.
  r8 f f f bes,4 bes'-> % 7c
  g8. f16 g aes bes8~2
  R1
  r2 r4 r8 des % 8a
  d8 f, f f f f f f
  bes4.(c8--~4. d8--~
  d4. f8--~4) ees8--(d) % 8b
  ees4(bes g8 ees4.)
  r8 c d ees d d c ees~
  ees1 % 8c
  r8 c d ees d d4 c8
  ees1~
  ees2. r4 % 9a
  r8 ees8\omit\p ees ees \tuplet 3/2 {ees4 ees ees}
  ees4 r bes'8--\omit\mf(g bes c~
  c4) r8 ees,8\omit\f \tuplet 3/2 {ees4-- ees-- ees--}
  g1
  r2 des'2\omit\fp
  c1\omit\fp~
  c1
  \bar "|."
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1*3
  s2 s8 s4.\mf
  s1*13
  s1\p % 4a++
  s1 % 4b
  s1\cresc
  s1\mp
  s1*4
  s2 s\cresc % 5a+
  s1
  s2. s4\mf % 5b
  s1*6
  s8 s\p s2. % 6a+
  s1
                                % skip...
  s2 s8 s\mf s4 % 7b
  s1*15
  s1\p % 9a+
  s4. s8\mf s2
  s4. s8\f s2
  s1
  s2 s\fp s1\fp
  s1
}

tenor = \tripletFeel 8 \relative {
  \global
%  \voiceOne
  R1*3
  r2 r8 bes8\omit\mf^\markup\italic unis. (g) bes~ % 2b
  bes1
  r8 aes bes c bes bes aes bes~
  bes1 % 3a
  r8 f8 g aes g g f g~
  g1
  r8 ees f g ees ees c ees~ % 3b
  ees4 r8 c'(~4. bes8~
  bes2.) r4
  r8 ees4.-- c8(bes4.~ % 3c
  bes1)
  r8 bes, c d ees f g bes
  c8 aes bes c bes bes aes bes~ % 4a
  bes4. c8~2
  r8 ees,\omit\p ees ees ees ees ees ees~
  ees4. ees8--~4. r8 % 4b
  g8^\markup\italic div. \omit\cresc (aes4-- bes8--~bes) ees,^\markup\italic unis.  ees ees
  f8\omit\mf f f f g4 g8 ees!~
  ees4. ees8~ees ees ees ees % 4c
  f8 f f f g4 g8 ees~
  ees2 r8 ees8 ees ees
  aes8 aes aes aes aes4 r8 aes % 5a
  ges4 ges r8 ges\omit\cresc ges ges
  f8 f f f a4 c8 d~
  d2. r4 % 5b
  r8 ees4.--\omit\mf c8(bes4.~
  bes1)
  r8 es, c d ees(f) g bes % 5c
  c8 aes bes c bes bes4 aes8
  bes4.(c8--~4~4~
  c2.) r4 % 6a
  r8 ees,8\omit\p ees ees \tuplet 3/2 {ees4 ees ees}
  ees4 r r2
                                % skip a page
  R1 % 7b
  r2 ees'16--\omit\mf^\markup\italic unis. c c4 c8
  d4. bes8 g ees4.
  r8 f f f bes,4 bes'-> % 7c
  g8. f16 g aes bes8~2
  r8 ees, ees ees f f f f
  r8 ges4-- aes8 bes des4 des8 % 8a
  d8 f, f f f f f f
  bes4.(c8--~4. d8--~
  d4. f8--~4) ees8--(d) % 8b
  ees4(bes g8 ees4.)
  R1
  r8 bes c d ees(f) g bes % 8c
  c8 aes bes c bes bes4 aes8
  bes4.(c8~4~4~
  c2.) r4 % 9a
  r8 ees,\omit\p ees ees \tuplet 3/2 {ees4 ees ees}
  ees4 r bes'8->\omit\mf(g bes c--~
  c4) r8 c\omit\f \tuplet 3/2 {c4-- c-- c--}
  ees1 % 9b
  r2 des\omit\fp
  c1\omit\fp~
  c1
  \bar "|."
}

wordsMen = \lyricmode {
  Blue __ Moon, __
  You saw me stand -- ing a -- lone, __
  with -- out a dream in my heart, __
  with -- out a love of my own, __
  \markup \italic Oo __
  Blue __ Moon, __
  You knew I was the one for you,
  You heard me say -- ing a pray'r __ for __
  Some -- one I real -- ly could care __ for __
  \markup\italic Oo __

  And then there sud -- den -- ly ap -- pear'd be -- fore __ me
  the on -- ly one my arms will ev -- er hold; __
  I heard some -- bod -- y whis -- per,
  “Please a -- dore me.”
  And when I looked the moon had turned to gold! __
  Blue __ Moon,
  Now I'm no long -- er a -- lone, __
  With -- out a dream in my heart, __
  With -- out a love of my own.

  Sud -- den -- ly ap -- peared be -- fore me
  the on -- ly one my arms will ev -- er hold. __
  I heard some -- bod -- y whis -- per,
  “Please a -- dore me,”
  And when I looked the moon had turned to gold! __
  Blue __ Moon, __
  Now I'm no long -- er a -- lone, __
  With -- out a dream in my heart, __
  With -- out a love of my own,
  \markup\italic Oo __
  a love of my own!
  Blue Moon. __
}

wordsMenMidi = \lyricmode {
  "Blue "  "Moon, " 
  "\nYou " "saw " "me " stand "ing " a "lone, " 
  "\nwith" "out " "a " "dream " "in " "my " "heart, " 
  "\nwith" "out " "a " "love " "of " "my " "own, " 
  \markup \italic Oo __
  "\nBlue "  "Moon, " 
  "\nYou " "knew " "I " "was " "the " "one " "for " "you, "
  "\nYou " "heard " "me " say "ing " "a " "pray'r "  "for " 
  "\nSome" "one " "I " real "ly " "could " "care "  "for " 
  \markup\italic Oo __

  "\nAnd " "then " "there " sud den "ly " ap "pear'd " be "fore "  "me "
  "\nthe " on "ly " "one " "my " "arms " "will " ev "er " "hold; " 
  "\nI " "heard " some bod "y " whis "per, "
  "\n“Please " a "dore " "me.” "
  "\nAnd " "when " "I " "looked " "the " "moon " "had " "turned " "to " "gold! " 
  "\nBlue "  "Moon, "
  "\nNow " "I'm " "no " long "er " a "lone, " 
  "\nWith" "out " "a " "dream " "in " "my " "heart, " 
  "\nWith" "out " "a " "love " "of " "my " "own. "

  "\nSud" den "ly " ap "peared " be "fore " "me "
  "\nthe " on "ly " "one " "my " "arms " "will " ev "er " "hold. " 
  "\nI " "heard " some bod "y " whis "per, "
  "\n“Please " a "dore " "me,” "
  "\nAnd " "when " "I " "looked " "the " "moon " "had " "turned " "to " "gold! " 
  "\nBlue "  "Moon, " 
  "\nNow " "I'm " "no " long "er " a "lone, " 
  "\nWith" "out " "a " "dream " "in " "my " "heart, " 
  "\nWith" "out " "a " "love " "of " "my " "own, "
  \markup\italic Oo __
  "\na " "love " "of " "my " "own! "
  "\nBlue " "Moon. " 
}

bass= \tripletFeel 8 \relative {
  \global
%  \voiceTwo
  R1*3
  r2 r8 bes8\omit\mf(g) bes~ % 2b
  bes1
  r8 aes bes c bes bes aes bes~
  bes1 % 3a
  r8 f g aes g g f g~
  g1
  r8 ees f g ees ees c ees~ % 3b
  ees4 r8 c'8(~4. bes8~
  bes2.) r4
  r8 ees4.-- c8(bes4.~ % 3c
  bes1)
  r8 bes, c d ees f g bes
  c8 aes bes c bes bes aes bes~ % 4a
  bes4. c8~2
  r8 ees,\omit\p ees ees ees ees ees ees~
  ees4. ees8--~4. r8 % 4b
  ees2\omit\cresc~8 ees ees ees
  f8\omit\mf f f f g4 g8 ees~
  ees4. ees8~ees ees ees ees % 4c
  f8 f f f g4 g8 ees~
  ees2 r8 ees ees ees
  aes8 aes aes aes des,4 r8 des % 5a
  ges4 ges r8 ges\omit\cresc ges ges
  f8 f f f f4 f8 bes~
  bes2. r4 % 5b
  r8 ees4.--\omit\mf c8( bes4.~
  bes1)
  r8 bes, c d ees(f) g aes % 5c
  bes8 aes bes c bes bes4 aes8
  bes4.(c8--~c4 f,--~
  f2.) r4 % 6a
  r8 ees\omit\p ees ees \tuplet 3/2 {ees4 ees ees}
  ees4 r r2
                                % skip a page
  R1 % 7b
  r2 ees'16--\omit\mf c c4 c8
  d4. bes8 g ees4.
  r8 f f f bes,4 bes'-> % 7c
  g8. f16 g aes bes8~2
  r8 ees, ees ees f f f f
  r8 ges4-- aes8 bes des4 des8 % 8a
  d8 f, f f f f f f
  bes4.(c8--~4. d8--~
  d4.~d8~d4) ees8--(d) % 8b
  ees4(bes g8 ees4.)
  R1
  r8 bes c d ees(f) g bes % 8c
  c8 aes bes c bes bes4 aes8
  bes4.(c8~4 f,--~
  f2.) r4 % 9a
  r8 ees\omit\p ees ees \tuplet 3/2 {ees4 ees ees}
  ees4 r bes'8->\omit\mf( g bes c--~
  c4) r8 aes\omit\f \tuplet 3/2 {aes4 aes aes}
  bes1 % 9b
  r2 des\omit\fp
  c1\omit\fp~
  c1
  \bar "|."
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  s1*3
  s2 s8 s^\mf s4 % 2b
  s1*13
  s1^\p % 4a++
  s1 % 4b
  s1^\cresc
  s1^\mf
  s1*4
  s2 s\cresc % 5a+
  s1
  s1 % 5b
  s1\mf
  s1*5
  s1\p % 6a+
  s1
                                % skip...
  s1 % 7b
  s2 s\mf
  s1*14
  s1\p % 9a+
  s4. s8\mf s2
  s4. s8\f s2
  s1 % 9b
  s2 s\fp
  s1\fp
  s1
}

pianoRH = \tripletFeel 8 \relative {
  \global
  R1*12
  r8 <ees' g bes d>8--\omit\mf~2 q4 % 3c
  <ees f aes c>2 r
  r8 <ees g bes d>8--~2 <ees g bes ees>4
  <ees f aes c>2 r % 4a
  <ees g bes>8 <d f bes>4.-- <c ees c'>4 r
  <aes c ees>1\omit\p
  <bes d g>8 <aes c f>4-- <g bes ees>8--~4. r8 % 4b
  <d' g bes>8\omit\cresc <c f aes>4-- <bes ees g>8--~q ees ees4
  r8\omit\mf f,~<f c' ees>4 r8 f~q4
  r8 g8~<g d' f>4 r8 g~q4 % 4c
  <f aes c ees>4 r <aes c d f> r
  <bes d ees g>4-. <d ees g bes>2-> <bes d ees g>4
  r8 aes~<aes ces ees>4 r8 aes~<aes ces ees f>4 % 5a
  r8 bes~<bes fes aes>4 r8\omit\cresc bes~<bes d ees ges>4
  <d f>2 <c ees g>
  <d f bes>4. bes8--~bes2 % 5b
  r8 <ees g bes>--\omit\mf~2 q4
  <ees f aes bes>2 r
  r8 <ees g bes d>--~2 q4 % 5c
  <ees f aes c>2 r
  <ees g bes>4 r8 <ees g c>8--~4 <ees aes ees'>4--~
  q2. r4 % 6a
  <aes, c ees>1\omit\p
  <g bes ees>4\omit\mf r8 <f' aes ces>~4 r
                                % skip a page
  <d g bes>8 <c f aes>4-- <bes ees g>8--~q ees ees4 % 7b
  r8\omit\mf f,8~<f c' ees>4 r8 f~q4
  r8 g~<g d' f>4 r8 g~q4
  <f aes c ees>4 r <aes c d f> r % 7c
  <bes d ees g>-. <c ees f aes>-. <d f g bes>-. ees--
  r8 aes,~<aes ces ees>4 r8 aes~q4
  r8 bes~<bes des ees ges>4 r8 des~<des ees ges bes>4 % 8a
  <d f bes>2 <ees g c>
  <f aes c d>4. bes,8--~2
  bes8 bes4 bes8--~2 % 8b
  r8 <ees g bes>~2 q4
  <ees f aes bes>2 r
  r8 <ees g bes d>8--~2 <ees g bes ees>4 % 8c
  <ees f aes c>2 r
  <ees g bes>4 r8 <ees g c>\omit\p~4 <ees aes ees'>4~
  q4 r8 <aes, c ees>\omit\p~2~ % 9a
  q1
  r4 <bes d ees g>2-- <d ees g bes>8\omit\mf <ees f aes c>--~
  q4 r \tuplet 3/2 {<ees aes ees'>4\omit\f-- q-- q--}
  <g d' g>4. <g, d' g>8--\omit\>~q4 q % 9b
  <f c' f>1\omit\mp
  <g d' g>4\omit\p r8 <g'' d' g>8-. r4 q4~
  q1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1*11
  s1\mf % 3c
  s1*4
  s1\p % 4a++
  s1 % 4b
  s1\cresc
  s1\mf
  s1*4
  s2 s\cresc % 5a+
  s1
  s1 % 5b
  s1\mf
  s1*5
  s1\p % 6a+
  s1\mf
  s1 % 7b
  s1\mf
  s1*13
  s4. s8\p s2 % 9a
  s1
  s2. s4\mf
  s2 s\f
  s4. s8\> s2 % 9b
  s2\mp s-\markup\bold\italic "slight rit."
  s1\p
  s1
}

pianoLH = \tripletFeel 8 \relative {
  \global
  \oneVoice
  ees,4\omit\mf f g aes8 bes~
  bes8 bes aes4 g f
  ees4-. ees'8-> ces~4. ces8
  bes8 bes b4 ces d, % 2b
  ees4 ees fis g
  f4 c' bes e
  ees4  bes ees, ges % 3a
  f4 b, bes d
  ees4 f fis8 fis g4
  aes4 c bes bes, % 3b
  ees4 bes f'8 f ees4
  g4 f bes, d
  r8 <ees' g bes d>--\omit\mf~2 q4 % 3c
  <f aes c>2 r
  r8 <g bes d>8--~2 <c, g' c>4
  <f aes c>2 r % 4a
  <bes d>8 <aes c>4.-- <g bes>4 r
  << f1\omit\p \new Voice {r2 bes,\omit\p} >>
  ees2\omit\p~4. bes8 % 4b
  ees4.\omit\cresc ees8--~ees ees ees4
  aes,2\omit\mf bes
  ees,4. c8~2
  <f c'>4 r bes r
  ees4-. g2-> ees4
  f2 des % 5a
  ges4. ees8~2\omit\cresc
  <f aes>2 <f a>
  <aes c>4. bes,8~2 % 5b
  r8 <g' bes d>\omit\mf--~2 q4
  <f aes c>2 r
  r8 <ees g bes d>8--~2 q4 % 5c
  <f aes c>2 r
  <g bes d>4 r8 <g bes c>--~4 <g aes c>4--~
  q1 % 6a
  <bes, f'>1\omit\p
  ees4\omit\mf r8 <ces' ees>8~4 r
                                % skip a page...
  ees,4. ees8--~ees ees ees4 % 7b
  aes,2 bes
  ees,4. c8--~2
  <f c'>4 r bes r % 7c
  ees4-. f-. g-. ees--
  f2 des
  ges4. ees8~2 % 8a
  <f bes>2 <f a>
  <bes d>4. bes,8~2
  bes8 bes4 bes8--~2 % 8b
  r8 <g' bes d>8--~2 q4
  <f aes c>2 r
  r8 <ees g bes d>8--~2 <c g' c>4 % 8c
  <f aes c>2 r
  <f bes d>4 r8 <g bes c>8~4 <f aes c>4~
  q4 r8 <bes, f'>8\omit\p~q2~ % 9a
  q1
  << {r4 <ees g>2--} \new Voice {ees2.} >> <g bes>8\omit\mf <f aes c>--~
  q4 r \tuplet 3/2 {q--\omit\f q-- q--}
  <ees bes' ees>4. <ees, bes'>8--\omit\>~4 q % 9b
  <des aes'>1\omit\mp
  \showStaffSwitch
  <ees bes'>4\omit\p s8 \change Staff=rh <ees'' bes'>8 s4 q4~
  << q1 \new Voice {\change Staff = lh ees,,,1} >>
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
%   \articulate
    <<
      <<
      \new DrumStaff \with {
        instrumentName = #"finger snap"
        shortInstrumentName = #"fs"
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \FingerSnapTrack >>
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff \with { printPartCombineTexts = ##f } <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = alignerw \soprano
            \new Voice = "soprano" \partCombine \soprano \alto
            \new Lyrics \lyricsto "alignerw" \wordsWomen
          >>
                                % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { printPartCombineTexts = ##f } <<
            \clef "bass"
            \new NullVoice = alignerm \tenor
            \new Voice = "men" \partCombine \tenor \bass
            \new Lyrics \lyricsto alignerm \wordsMen
          >>
        >>
        <<
          \new ChordNames {
            \set chordChanges = ##t
            \ChordTrack
          }
%          \new FretBoards {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \new Voice \pianoRH
            \new Voice = "emptybass" { s1*59 }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice = "emptybass" { s1*59 }
          >>
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
      } <<
        { \voiceOne \SDTrack }
        { \voiceTwo \BSTrack }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
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
%   \articulate
    <<
      <<
%      \new DrumStaff \with {
%        instrumentName = #"finger snap"
%        shortInstrumentName = #"fs"
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \FingerSnapTrack >>
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = "Soprano"
            shortInstrumentName = "S"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsWomen
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = "Alto"
            shortInstrumentName = "A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = "Tenor"
            shortInstrumentName = "T"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = "Bass"
            shortInstrumentName = "B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsMen}
          >>
          >>
        <<
%          \new ChordNames {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
%          \new FretBoards {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice = "emptybass" { s1*59 }
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
            \new Voice = "emptybass" { s1*59 }
          >>
        >>
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } <<
%        { \voiceOne \SDTrack }
%        { \voiceTwo \BSTrack }
%      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
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
%   \articulate
    <<
      <<
%      \new DrumStaff \with {
%        instrumentName = #"finger snap"
%        shortInstrumentName = #"fs"
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \FingerSnapTrack >>
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = "Soprano"
            shortInstrumentName = "S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = "Alto"
            shortInstrumentName = "A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsWomen
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = "Tenor"
            shortInstrumentName = "T"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = "Bass"
            shortInstrumentName = "B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsMen}
          >>
          >>
        <<
%          \new ChordNames {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
%          \new FretBoards {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice = "emptybass" { s1*59 }
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
            \new Voice = "emptybass" { s1*59 }
          >>
        >>
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } <<
%        { \voiceOne \SDTrack }
%        { \voiceTwo \BSTrack }
%      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
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
%   \articulate
    <<
      <<
%      \new DrumStaff \with {
%        instrumentName = #"finger snap"
%        shortInstrumentName = #"fs"
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \FingerSnapTrack >>
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = "Soprano"
            shortInstrumentName = "S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = "Alto"
            shortInstrumentName = "A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = "Tenor"
            shortInstrumentName = "T"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsMen
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = "Bass"
            shortInstrumentName = "B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsMen}
          >>
          >>
        <<
%          \new ChordNames {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
%          \new FretBoards {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice = "emptybass" { s1*59 }
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
            \new Voice = "emptybass" { s1*59 }
          >>
        >>
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } <<
%        { \voiceOne \SDTrack }
%        { \voiceTwo \BSTrack }
%      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
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
%   \articulate
    <<
      <<
%      \new DrumStaff \with {
%        instrumentName = #"finger snap"
%        shortInstrumentName = #"fs"
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \FingerSnapTrack >>
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = "Soprano"
            shortInstrumentName = "S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = "Alto"
            shortInstrumentName = "A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = "Tenor"
            shortInstrumentName = "T"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = "Bass"
            shortInstrumentName = "B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsMen
          >>
          >>
        <<
%          \new ChordNames {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
%          \new FretBoards {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice = "emptybass" { s1*59 }
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
            \new Voice = "emptybass" { s1*59 }
          >>
        >>
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } <<
%        { \voiceOne \SDTrack }
%        { \voiceTwo \BSTrack }
%      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
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
%   \articulate
    <<
      <<
%      \new DrumStaff \with {
%        instrumentName = #"finger snap"
%        shortInstrumentName = #"fs"
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \FingerSnapTrack >>
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff \with { printPartCombineTexts = ##f } <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = alignerw \soprano
            \new Voice = "soprano" \partCombine \soprano \alto
            \new Lyrics \lyricsto "alignerw" \wordsWomen
          >>
                                % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { printPartCombineTexts = ##f } <<
            \clef "bass"
            \new NullVoice = alignerm \tenor
            \new Voice = "men" \partCombine \tenor \bass
            \new Lyrics \lyricsto alignerm \wordsMen
          >>
        >>
        <<
%          \new ChordNames {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
%          \new FretBoards {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice = "emptybass" { s1*59 }
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
            \new Voice = "emptybass" { s1*59 }
          >>
        >>
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } <<
%        { \voiceOne \SDTrack }
%        { \voiceTwo \BSTrack }
%      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
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

\book {
  \bookOutputSuffix "midi-women"
  \score {
%   \articulate
    <<
      <<
      \new DrumStaff \with {
        instrumentName = #"finger snap"
        shortInstrumentName = #"fs"
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \FingerSnapTrack >>
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \dynamicsWomen
            \new Voice = "soprano" \tripletFeel 8 \soprano
            \addlyrics \wordsWomenMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \dynamicsWomen
            \new Voice = "alto" \tripletFeel 8 \alto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice = tenor \tripletFeel 8 \tenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice = bass \tripletFeel 8 \bass
          >>
        >>
        <<
          \new ChordNames {
            \set chordChanges = ##t
            \tripletFeel 8 \ChordTrack
          }
%          \new FretBoards {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \new Voice \tripletFeel 8 \pianoRH
            \new Voice = "emptybass" { s1*59 }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh <<
            \set Staff.midiInstrument = "acoustic bass"
            \clef "bass"
            \new Voice \tripletFeel 8 \pianoLH
            \new Voice = "emptybass" { s1*59 }
          >>
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } <<
        { \voiceOne \tripletFeel 8 \SDTrack }
        { \voiceTwo \tripletFeel 8 \BSTrack }
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
      \new DrumStaff \with {
        instrumentName = #"finger snap"
        shortInstrumentName = #"fs"
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \FingerSnapTrack >>
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Dynamics \dynamicsWomen
            \new Voice = soprano \tripletFeel 8 \soprano
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \dynamicsWomen
            \new Voice = alto \tripletFeel 8 \alto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice = tenor \tripletFeel 8 \tenor
            \addlyrics \wordsMenMidi
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice = bass \tripletFeel 8 \bass
          >>
        >>
        <<
          \new ChordNames {
            \set chordChanges = ##t
            \tripletFeel 8 \ChordTrack
          }
%          \new FretBoards {
%            \set chordChanges = ##t
%            \ChordTrack
%          }
        >>
        \new PianoStaff <<
          \new Staff = rh <<
            \new Voice \tripletFeel 8 \pianoRH
            \new Voice = "emptybass" { s1*59 }
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh <<
            \set Staff.midiInstrument = "acoustic bass"
            \clef "bass"
            \new Voice \tripletFeel 8 \pianoLH
            \new Voice = "emptybass" { s1*59 }
          >>
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } <<
        { \voiceOne \tripletFeel 8 \SDTrack }
        { \voiceTwo \tripletFeel 8 \BSTrack }
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
