\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Beautiful Dreamer"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Stephen Foster"
  arranger    = "arr. Alice Parker and Robert Shaw"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key ees \major
  \time 9/8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4.*49 s8 \tempo 4=90 s8 \tempo 4=120 s8 s4.
  s4.*59 s4
  \tempo 4=80 s8 s4.*4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s4.*6
  \mark \markup { \box "1b" } s4.*9
  \mark \markup { \box "2a" } s4.*9
  \mark \markup { \box "2b" } s4.*9
  \mark \markup { \box "3a" } s4.*9
  \mark \markup { \box "3b" } s4.*6
  \mark \markup { \box "4a" } s4.*9
  \mark \markup { \box "4b" } s4.*6
  \mark \markup { \box "5a" } s4.*6
  \mark \markup { \box "5b" } s4.*6
  \mark \markup { \box "6a" } s4.*6
  \mark \markup { \box "6b" } s4.*6
  \mark \markup { \box "7a" } s4.*6
  \mark \markup { \box "7b" } s4.*6
  \mark \markup { \box "8a" } s4.*7
  \mark \markup { \box "8b" } s4.*9
}

solo = \relative { % tenor solo
  \global
  s4.*54
  ees'8^\mp^\markup "TENOR SOLO" d ees bes4. g
  f8 e f c'2. % 4b
  bes8 d c c bes aes aes g f
  g2.~4. % 5a
  ees'8 d ees bes4. g
  f8 e f c'2. % 5b
  bes8 d c c bes aes aes g f
  ees2.~4. % 6a
  bes'8^\mf aes f d4. c'
  c8 bes g ees2. % 6b
  ees'8 d ees c4. f4 ees8
  d8 ees c bes2. % 7a
  R4.*3
  R4.*3 % 7b
  bes8 d c c bes aes aes g f
  g2.~4. \time 12/8 % 8a
  r4. r4. r8 r8 g \acciaccatura bes8 aes g f \time 9/8
  ees'2.~4.~ % 8b
  ees4.~4 \breathe g,8^\markup\italic "molto rit." \acciaccatura b aes g f
  ees2.~4 r8
}

wordsSolo = \lyricmode {
  Beau -- ti -- ful dream -- er, out on the sea,
  Mer -- maids are chaunt -- ing the wild Lor -- e -- lie; __
  Ov -- er the stream -- let va -- pors are borne,
  Wait -- ing to fade at the bright com -- ing morn. __
  Beau --ti -- ful dream -- er, beam on my heart,
  E'en as the morn on the stream -- let and sea;
  Beau -- ti -- ful dream -- er, a -- wake un -- to me. __
  A -- wake un -- to me. __
  a -- wake un -- to me! __
}

wordsSoloMidi = \lyricmode {
  "Beau" ti "ful " dream "er, " "out " "on " "the " "sea, "
  "\nMer" "maids " "are " chaunt "ing " "the " "wild " Lor e "lie; " 
  "\nOv" "er " "the " stream "let " va "pors " "are " "borne, "
  "\nWait" "ing " "to " "fade " "at " "the " "bright " com "ing " "morn. " 
  "\nBeau"ti "ful " dream "er, " "beam " "on " "my " "heart, "
  "\nE'en " "as " "the " "morn " "on " "the " stream "let " "and " "sea; "
  "\nBeau" ti "ful " dream "er, " a "wake " un "to " "me. " 
  "\nA" "wake " un "to " "me. " 
  "\na" "wake " un "to " "me! " 
}

soprano = \relative {
  \global
  ees''8^\mf^\markup\bold "With a flowing rhythm" d ees bes4. g
  f8 e f c'2.
  bes8 d c c bes aes aes g f % 1b
  g2.~4.
  ees'8 d ees bes4. g
  f8 e f c'2. % 2a
  bes8 d c c bes aes aes g f
  ees2.~4.
  bes'8 aes f d4.^\< c' % 2b
  c8\! bes g ees2.
  ees'8 d ees c4.^\< f4\! ees8
  d8 ees c bes2. % 3a
  ees8 d ees bes4. g
  f8 e f c'2.
  bes8 d c c bes aes aes g f % 3b
  << {g2.~4.} \new Voice {s4.^\< s^\> s\!} >>
  c8 d ees ees bes^\markup\italic ten. \breathe g8 \acciaccatura bes8 aes g f % 4a
  ees2.~4.~
  ees4.^\> ~ees4\! r8 r4.
  r4. f8^\p bes c c4(bes8 % 4b
  aes2.) bes8 c d
  ees4. bes4 aes8 g4 f8 % 5a
  ees4. g8 aes bes bes4 g8
  r4. aes8 bes c d4( bes8 % 5b
  aes2.) f'8 ees d
  ees4. bes4 aes8 g4. % 6a
  r4. bes8^\mp aes f d4.
  c'4. 8 bes g ees4.~ % 6b
  ees4. ees'8 d ees c4.^\<
  f4\! ees8 d ees c bes4.^\> % 7a
  ees8^\mf^\< d ees bes4.\! g
  f8 e f c'2. % 7b
  ges4.~4 8 f'4 bes,8
  ees2. bes4. \time 12/8 % 8a
  c8^\< d ees\! ees4.^\> bes4\! r8 r4. \time 9/8
  r4. r4. c8\omit\p^\markup {\dynamic p \italic espr.} ees^\< f\! % 8b
  g4.^\> ees4\! \breathe g,8^\markup\italic "molto rit." \acciaccatura bes aes g f
  ees2.~4 r8
  \bar "|."
}

wordsSop = \lyricmode {
  Beau -- ti -- ful dream -- er, wake un -- to me,
  Star -- light and dew -- drops are wait -- ing for thee; __
  Sounds of the rude world heard in the day,
  Lull'd by the moon -- light, have all pass'd a -- way. __
  Beau -- ti -- ful dream -- er, queen of my song,
  List while I woo thee with soft mel -- o -- dy;
  Gone are the cares of life's bus -- y throng.
  Beau -- ti -- ful dream -- er, a -- wake un -- to me! __

  Beau -- ti -- ful dream -- er, a -- wake un -- to me! __
  Out on the sea, __
  Mer -- maids are chaunt -- ing the Lor -- e -- lie:
  O -- ver the stream -- let vap -- ors are borne, __
  Fade at the bright com -- ing morn.

  Beau -- ti -- ful dream -- er, beam on my heart, __
  E'en as the morn on the stream -- let and sea;
  Then will all clouds of sor -- row de -- part.
  Wake, __ a -- wake to me, my beau -- ti -- ful dream -- er.
  Beau -- ti -- ful dream -- er a -- wake un -- to me! __
}

wordsSopMidi = \lyricmode {
  "Beau" ti "ful " dream "er, " "wake " un "to " "me, "
  "\nStar" "light " "and " dew "drops " "are " wait "ing " "for " "thee; " 
  "\nSounds " "of " "the " "rude " "world " "heard " "in " "the " "day, "
  "\nLull'd " "by " "the " moon "light, " "have " "all " "pass'd " a "way. " 
  "\nBeau" ti "ful " dream "er, " "queen " "of " "my " "song, "
  "\nList " "while " "I " "woo " "thee " "with " "soft " mel o "dy; "
  "\nGone " "are " "the " "cares " "of " "life's " bus "y " "throng. "
  "\nBeau" ti "ful " dream "er, " a "wake " un "to " "me! " 

  "\nBeau" ti "ful " dream "er, " a "wake " un "to " "me! " 
  "\nOut " "on " "the " "sea, " 
  "\nMer" "maids " "are " chaunt "ing " "the " Lor e "lie: "
  "\nO" "ver " "the " stream "let " vap "ors " "are " "borne, " 
  "\nFade " "at " "the " "bright " com "ing " "morn. "

  "\nBeau" ti "ful " dream "er, " "beam " "on " "my " "heart, " 
  "\nE'en " "as " "the " "morn " "on " "the " stream "let " "and " "sea; "
  "\nThen " "will " "all " "clouds " "of " sor "row " de "part. "
  "\nWake, "  a "wake " "to " "me, " "my " beau ti "ful " dream "er. "
  "\nBeau" ti "ful " dream "er " a "wake " un "to " "me! " 
}

alto = \relative {
  \global
  g'8^\mf 8 8 4. ees
  f8 d f f2.
  aes8 8 8 8 bes c, d d d % 1b
  ees2.~4.
  g8 8 8 4. ees
  f8 e f aes2. % 2a
  aes8 8 8 8 bes c, d d d
  ees2.~4.
  d8 8 8 4.^\< aes'\! % 2b
  g8 8 ees ees2.
  g8 8 8 a4.^\< 4\! 8
  aes8 8 8 2. % 3a
  g8 8 8 4. ees
  c8 8 f f2.
  aes8 8 8 8 bes c, d d d % 3b
  ees4.^\<( f^\> ees\!)
  aes8 8 a bes ees,^\markup\italic ten. \breathe ees d d d % 4a
  ees2.~4.~
  ees4.^\> ~ ees4\! r8 r4.
  r4. f8^\p g aes aes4(g8 % 4b
  f2.) d8 bes' aes
  g4. 4 f8 ees4 d8 % 5a
  ees4. 8 f g g4 ees8
  r4. f8 g aes aes4(g8 % 5b
  f2.) f8 g aes
  g4. 4 f8 ees4. % 6a
  d4.~4 f8 aes8(g f)
  ees2. g8(aes bes) % 6b
  g4.~4 8 a8^\< (g f\!)
  aes4 c8 bes c aes g8^\> (aes f\!) % 7a
  g8^\mf^\< 8 8 4.\! ees
  f8 e f aes2. % 7b
  aes4.~4 bes8 aes4 8
  g2. 4. \time 12/8 % 8a
  aes8 8 fis g4. 4 r8 r4. \time 9/8
  r4. c,8\omit\p ^\markup {\dynamic p \italic espr.} ees f fis^\< fis a\! % 8b
  bes4.^\> g4\! \breathe ees8^\markup\italic "molto rit." d d d
  ees2.~4 r8
  \bar "|."
}

wordsAlto = \lyricmode {
  Beau -- ti -- ful dream -- er, wake un -- to me,
  Star -- light and dew -- drops are wait -- ing for thee; __
  Sounds of the rude world heard in the day,
  Lull'd by the moon -- light, have all pass'd a -- way. __
  Beau -- ti -- ful dream -- er, queen of my song,
  List while I woo thee with soft mel -- o -- dy;
  Gone are the cares of life's bus -- y throng.
  Beau -- ti -- ful dream -- er, a -- wake un -- to me! __

  Beau -- ti -- ful dream -- er, a -- wake un -- to me! __
  Out on the sea, __
  Mer -- maids are chaunt -- ing the Lor -- e -- lie:
  O -- ver the stream -- let vap -- ors are borne, __
  Fade at the bright com -- ing morn.

  Beau -- ti -- ful dream -- er, __
  beam __ as morn __ on the stream -- let and sea;
  Then will all clouds of sor -- row de -- part.
  Wake, __ a -- wake to me, my beau -- ti -- ful dream -- er.
  Beau -- ti -- ful, beau -- ti -- ful dream -- er a -- wake un -- to me! __
}

wordsAltoMidi = \lyricmode {
  "Beau" ti "ful " dream "er, " "wake " un "to " "me, "
  "\nStar" "light " "and " dew "drops " "are " wait "ing " "for " "thee; " 
  "\nSounds " "of " "the " "rude " "world " "heard " "in " "the " "day, "
  "\nLull'd " "by " "the " moon "light, " "have " "all " "pass'd " a "way. " 
  "\nBeau" ti "ful " dream "er, " "queen " "of " "my " "song, "
  "\nList " "while " "I " "woo " "thee " "with " "soft " mel o "dy; "
  "\nGone " "are " "the " "cares " "of " "life's " bus "y " "throng. "
  "\nBeau" ti "ful " dream "er, " a "wake " un "to " "me! " 

  "\nBeau" ti "ful " dream "er, " a "wake " un "to " "me! " 
  "\nOut " "on " "the " "sea, " 
  "\nMer" "maids " "are " chaunt "ing " "the " Lor e "lie: "
  "\nO" "ver " "the " stream "let " vap "ors " "are " "borne, " 
  "\nFade " "at " "the " "bright " com "ing " "morn. "

  "\nBeau" ti "ful " dream "er, " 
  "\nbeam "  "as " "morn "  "on " "the " stream "let " "and " "sea; "
  "\nThen " "will " "all " "clouds " "of " sor "row " de "part. "
  "\nWake, "  a "wake " "to " "me, " "my " beau ti "ful " dream "er. "
  "\nBeau" ti "ful, " beau ti "ful " dream "er " a "wake " un "to " "me! " 
}

tenor = \relative {
  \global
  bes8^\mf 8 8 ees4. bes
  c8 8 8 aes2.
  d8 f ees ees d c c bes aes % 1b
  bes2.~4.
  bes8 8 8 ees4. bes
  c8 8 8 2. % 2a
  d8 f ees ees d c c bes aes
  g2.~4.
  f8 8 8 bes4.^\< d\! % 2b
  ees8 8 bes g2.
  c8 b c ees4.^\< 4\! f8
  f8 c ees d2. % 3a
  bes8 8 8 ees4. bes
  aes8 r8 8 8 g aes c4.
  d8 f ees ees d c c bes aes % 3b
  bes4.^\< (b^\> c\!)
  ees8 c c bes ees^\markup\italic ten. \breathe bes c bes a % 4a
  g2.~4.~
  g4.^\> ~ 4\! r8 r4 bes8^\p
  aes2.~4 f8 % 4b
  bes2.~4 8
  bes2.~8 r8 8 % 5a
  g2. r4 8
  aes2.~4 f8 % 5b
  bes2. d4.
  bes2.~4. % 6a
  f4.~4 8 4.
  g2. 4. % 6b
  g4.~4 8 f4.^\<
  f2.\! bes4.^\> % 7a
  bes8^\mf^\< 8 8 ees4.\! bes
  c8 8 8 2. % 7b
  d4 bes8 d4.~4 f8
  ees2. 4. \time 12/8 % 8a
  ees8^\< 8 8\! ees4.^\> 4\! r8 r4. \time 9/8
  r4. r4. a,8\omit\p ^\markup {\dynamic p \italic espr.} ^\< a c % 8b
  ees4.^\> bes4\! \breathe 8^\markup\italic "molto rit." c bes aes
  g2.~4 r8
  \bar "|."
}

wordsTenor = \lyricmode {
  Beau -- ti -- ful dream -- er, wake un -- to me,
  Star -- light and dew -- drops are wait -- ing for thee; __
  Sounds of the rude world heard in the day,
  Lull'd by the moon -- light, have all pass'd a -- way. __
  Beau -- ti -- ful dream -- er, queen of my song,
  List while I woo thee with soft mel -- o -- dy;
  Gone are the cares of life,
  of life's bus -- y throng.
  Beau -- ti -- ful dream -- er, a -- wake un -- to me! __

  Beau -- ti -- ful dream -- er, a -- wake un -- to me! __
  A -- wake, __ a -- wake __ to me. __
  A -- wake. A -- wake, __ a -- wake to me. __

  Beau -- ti -- ful dream -- er, __
  Beau -- ti -- ful dream -- er, __
  Then will all clouds of sor -- row de -- part.
  Wake, __ a -- wake to me, my beau -- ti -- ful dream -- er.
  Beau -- ti -- ful dream -- er a -- wake un -- to me! __
}

wordsTenorMidi = \lyricmode {
  "Beau" ti "ful " dream "er, " "wake " un "to " "me, "
  "\nStar" "light " "and " dew "drops " "are " wait "ing " "for " "thee; " 
  "\nSounds " "of " "the " "rude " "world " "heard " "in " "the " "day, "
  "\nLull'd " "by " "the " moon "light, " "have " "all " "pass'd " a "way. " 
  "\nBeau" ti "ful " dream "er, " "queen " "of " "my " "song, "
  "\nList " "while " "I " "woo " "thee " "with " "soft " mel o "dy; "
  "\nGone " "are " "the " "cares " "of " "life, "
  "\nof " "life's " bus "y " "throng. "
  "\nBeau" ti "ful " dream "er, " a "wake " un "to " "me! " 

  "\nBeau" ti "ful " dream "er, " a "wake " un "to " "me! " 
  "\nA" "wake, "  a "wake "  "to " "me. " 
  "\nA" "wake. " A "wake, "  a "wake " "to " "me. " 

  "\nBeau" ti "ful " dream "er, " 
  "\nBeau" ti "ful " dream "er, " 
  "\nThen " "will " "all " "clouds " "of " sor "row " de "part. "
  "\nWake, "  a "wake " "to " "me, " "my " beau ti "ful " dream "er. "
  "\nBeau" ti "ful " dream "er " a "wake " un "to " "me! " 
}

bass = \relative {
  \global
  ees8^\mf 8 8 4. 4.
  aes8 8 8 f2.
  bes8 8 8 8 8 8 bes,8 8 8 % 1b
  ees2.~4.
  ees8 8 8 4. 4.
  aes8 8 8 f2. % 2a
  bes,8 8 8 bes'8 8 bes,8 8 8 8
  ees2.~4.
  bes8 8 8 4.^\< bes'\! % 2b
  ees,8 8 8 2.
  c8 8 8 f4.^\< 4\! 8
  bes8 8 8 2. % 3a
  ees,8 8 8 4. 4.
  aes,8 r c f e f aes4.
  bes8 8 8 8 8 bes,8 8 8 8 % 3b
  ees4.^\< (d^\> c\! )
  aes'8 8 fis g g^\markup\italic ten. \breathe bes bes,8 8 8 % 4a
  ees2.~4.~
  ees2.^\> ~4.\!
  r4 f8^\p f,2. % 4b
  r4. bes4 8 4 8
  ees2.~4.~ % 5a
  ees2.~4.
  r4 f8 f,2. % 5b
  r4. bes4 8 4 8
  ees2.~4. % 6a
  bes4.~4 8 4.
  ees2. 4. % 6b
  c4.~4 8 4.^\<
  bes2.\! 4.^\> % 7a
  ees8^\mf^\< 8 8 4.\! 4.
  aes8 8 8 f4. \breathe 4. % 7b
  bes2.~4.~
  bes4 8 ees4. ees, % 8a \time 12/8
  aes8^\< 8 a\! bes4.^\> 4\! r8 bes,4.\omit\p^\markup{ \dynamic p \italic espr.} \time 9/8
  c2.~4^\< 8 % 8b
  bes4.^\> ~4\! \breathe 8^\markup\italic "molto rit." 8 8 8
  <ees, \tweak font-size #-2 bes'>2.~4 r8
  \bar "|."
}

wordsBass = \lyricmode {
  Beau -- ti -- ful dream -- er, wake un -- to me,
  Star -- light and dew -- drops are wait -- ing for thee; __
  Sounds of the rude world heard in the day,
  Lull'd by the moon -- light, have all pass'd a -- way. __
  Beau -- ti -- ful dream -- er, queen of my song,
  List while I woo thee with soft mel -- o -- dy;
  Gone are the cares of life, of life's bus -- y throng.
  Beau -- ti -- ful dream -- er, a -- wake un -- to me! __
  Beau -- ti -- ful dream -- er, a -- wake un -- to me! __

  A -- wake, Oh, a -- wake to me. __
  A -- wake, Oh, a -- wake to me. __
  Beau -- ti -- ful dream -- er,
  beau -- ti -- ful dream -- er,
  Then will all clouds of sor -- row de -- part.
  A -- wake. __ a -- wake, my beau -- ti -- ful dream -- er.
  a -- wake, __ a -- wake, __ a -- wake un -- to me! __
}

wordsBassMidi = \lyricmode {
  "Beau" ti "ful " dream "er, " "wake " un "to " "me, "
  "\nStar" "light " "and " dew "drops " "are " wait "ing " "for " "thee; " 
  "\nSounds " "of " "the " "rude " "world " "heard " "in " "the " "day, "
  "\nLull'd " "by " "the " moon "light, " "have " "all " "pass'd " a "way. " 
  "\nBeau" ti "ful " dream "er, " "queen " "of " "my " "song, "
  "\nList " "while " "I " "woo " "thee " "with " "soft " mel o "dy; "
  "\nGone " "are " "the " "cares " "of " "life, " "of " "life's " bus "y " "throng. "
  "\nBeau" ti "ful " dream "er, " a "wake " un "to " "me! " 
  "\nBeau" ti "ful " dream "er, " a "wake " un "to " "me! " 

  "\nA" "wake, " "Oh, " a "wake " "to " "me. " 
  "\nA" "wake, " "Oh, " a "wake " "to " "me. " 
  "\nBeau" ti "ful " dream "er, "
  "\nbeau" ti "ful " dream "er, "
  "\nThen " "will " "all " "clouds " "of " sor "row " de "part. "
  "\nA" "wake. "  a "wake, " "my " beau ti "ful " dream "er. "
  "\na" "wake, "  a "wake, "  a "wake " un "to " "me! " 
}

pianoRHone = \relative {
  \global
  <g' ees'>8 <g d'> <g ees'> <g bes>4. <ees g>
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s2. s4.
  \bar "|."
}

pianoLHone = \relative {
  \global
  <ees bes'>8 q q <ees ees'>4. <ees bes'>
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s2. s4.
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new Staff = solo <<
          \clef "treble_8"
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff \with {
          instrumentName = Piano
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
% uncomment to fit non-piano version onto 5 pages
% #(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single-noacc
  }
  \score {
    <<
      <<
        \new Staff = solo <<
          \clef "treble_8"
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = solo <<
          \clef "treble_8"
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = singlepage-noacc
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
        \new Staff = solo <<
          \clef "treble_8"
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = singlepage-solo
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
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \clef "treble_8"
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
  \paper {
    output-suffix = midi-solo
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Voice \solo
          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
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
  \paper {
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff \with {
            midiInstrumentName = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice = "bass" \bass
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
  \paper {
    output-suffix = midi-alto
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice  \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
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
  \paper {
    output-suffix = midi-tenor
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
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
  \paper {
    output-suffix = midi-bass
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
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
