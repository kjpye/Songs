\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Still Call Australia Home"
  subtitle    = "(Serendipitous version)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Peter Allen"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s2.*5
  \mark \markup { \box "2b" } s2.*4
  \mark \markup { \box "2c" } s2.*4
  \mark \markup { \box "3a" } s2.*5
  \mark \markup { \box "3b" } s2.*5
  \mark \markup { \box "3c" } s2.*5
  \mark \markup { \box "3d" } s2.*5
  \mark \markup { \box "4a" } s2.*5
  \mark \markup { \box "4b" } s2.*4
  \mark \markup { \box "4c" } s2.*5
  \mark \markup { \box "4d" } s2.*5
  \mark \markup { \box "5a" } s2.*5
  \mark \markup { \box "5b" } s2.*5
  \mark \markup { \box "5c" } s2.*5
  \mark \markup { \box "5d" } s2.*4
  \mark \markup { \box "4b+" } s2.*3
  \mark \markup { \box "4c" } s2.*5
  \mark \markup { \box "4d" } s2.*5
  \mark \markup { \box "5a" } s2.*2
  \mark \markup { \box "6a" } s2.*5
  \mark \markup { \box "6b" } s2.*5
  \mark \markup { \box "6c" } s2.*4
  \mark \markup { \box "6d+" } s2.*4
}

ChordTrack = \chordmode {
  s2.
  f
  a:7
  d:m
  g4:m g2:m7/c
  f2. % 2b
  a:7
  d:m
  f4 f4:sus f
  bes2. % 2c
  d:m7/a
  c:7
  g:m7/c
  f % 3a
  a:7/e
  d:m
  g:7/b
  f/c
  g4:m7/c c2:7 % 3b
  f2.
  bes
  a:m
  c:7
  f % 3c
  a:7
  d:m
  f4 f:sus f
  bes2.
  d2.:m7/a % 3d
  g:7
  g:m7/c
  f
  a:7/e
  d:m % 4a
  g:7/b
  f/c
  g4:m7/c c2:7
  f2.
  e % 4b
  a:m
  a:m % FIX (maj7)/gis
  a:m7/g
  a:m6/fis % 4c
  d:m7
  g:7
  c
  e
  a:m % 4d
  a:m/gis
  a:m7/g
  a:m6/fis
  d:m7/g
  g:m7 % 5a
  c:7
  s
  f
  a:7
  d:m % 5b
  f4 f:sus f
  bes2.
  d:m7/a
  g:7
  g:m7/c % 5c
  f
  a:7/e
  d:m
  g:7/b
  f/c % 5d
  g4:m7/c c2:7
  f2.
  bes

  a:m
  a:m % FIX (maj7)/gis
  a:m7/g
  a:m6/fis % 4c
  d:m7
  g:7
  c
  e
  a:m % 4d
  a:m/gis
  a:m7/g
  a:m6/fis
  d:m7/g
  g:m7 % 5a
  c:7

  g:m7/c % 6a
  f
  a:7/e
  d:m
  g:7/b
  f/c % 6b
  g4:m7/c c2:7
  f2./c
  g4:m7/c c2:7
  f2./c
  g2:m7/c c4:7 % 6c
  f2.
  a:7/e
  d:m
  f
  a:7/e
  d:m
  g:m7/c
}

melody = \relative {
  \global
  R2.^\markup "Medium waltz tempo"
  R2.*4 \break
  a'8 8~4. 8 % 2b
  g8 a~4. g8
  g8 f~4 4
  f2 r8 f
  bes8 8~4. 8 % 2c
  a8 8~4. 8
  a4 g f
  g2 f8. g16
  a8 8~4. 8 % 3a
  g2 r8 a
  g8 f~4 4
  d'2.
  r8 f, c' c~8 a
  bes4 g r % 3b
  f2 r4
  R2.
  R2.
  R2.
  a8 8~4. 8 % 3c
  a8 g~4. e8
  g2 f8. e16
  f2 r8 f
  bes8 8~4 4
  a4 bes a % 3d
  a2 g8. f16
  g2 f8. g16
  a2 4
  a8 g~4 r
  g8f~4. 8 % 4a
  <d d'>2.
  r8 f c' c~8 a
  bes4 g r
  f2 r4
  R2. \bar "||" % 4b
  c'4. 8 b8. a16
  b4 c2
  r4 c16 8. 8. b16
  c2 r8 b % 4c
  c8 8~4. 8
  a4 g f
  e2.
  r2 r8 e
  c'8. 16 b4. a8 % 4c
  b4 c r8 e,
  b'4 c r
  r8 a a4 b
  c2 8. 16
  bes2 a4 % 5a
  g2.
  r2 r8 c, \bar "||"
  a'8 8~4. f8
  g4 a4. g8
  g8 f~4 4 % 5b
  f2 r8 f
  bes2 8. 16
  a2 r8 f
  a4 g f
  g2 r8 f % 5c
  a16 16 8~4 r
  g4 a g
  f2 4
  <d d'>2.
  r8 f c' c~8 a % 5d
  bes4 g r
  f2.
  R2.
  c'4. 8 b8. a16 % 4b+
  b4 c2
  r4 c16 8. 8. b16
  c2 r8 b % 4c
  c8 8~4. 8
  a4 g f
  e2.
  r2 r8 e
  c'8. 16 b4. a8 % 4c
  b4 c r8 e,
  b'4 c r
  r8 a a4 b
  c2 8. 16
  bes2 a4 % 5a
  g2.
  r2 f8. g16 \bar "||" % 6a
  a4 4. 8
  g2 4
  g4 f f
  <d d'>2 r8 g
  <g c>4 4. a8 % 6b
  bes4 g r8 g
  <a c>4 4. a8
  bes4 g r8 g
  <a c>4 4. a8
  bes2 c4 % 6c
  <c f>2.~
  q2.
  R2.
  R2. % 6d+
  R2.
  R2.
  R2.
}

words = \lyricmode {
  \set stanza = "1."
  I've been __ to ci -- ties __ that nev -- er __ close down
  From New York, __ to Ri -- o __ and old Lon -- don town,
  But no mat -- ter __ how far or how wide __ I roam,
  I still call __ Aus -- tra -- lia home.

  \set stanza = "2."
  I'm al -- ways trav' -- lin' __ I love be -- ing free,
  And so I __ keep leav -- ing the sun and the sea,
  But my heart lies wait -- ing __ o -- ver __ the foam.
  I still call __ Aus -- tra -- lia home.

  All the sons and daugh -- ters spin -- ning round the world,
  A -- way from their fam -- 'ly and friends.
  But as the world gets old -- er and cold -- er,
  It's good to know where your jour -- ney ends.

  \set stanza = "3."
  But some -- day __ we'll all be  to -- geth -- er __ once more.
  When all of the ships come back to the shore.
  I re -- al -- ize __ some -- thing I've al -- ways known,
  I still call __ Aus -- tra -- lia home.

  All the sons and daugh -- ters spin -- ning round the world,
  A -- way from their fam -- 'ly and friends.
  But as the world gets old -- er and cold -- er,
  It's good to know where your jour -- ney ends.

  But no mat -- ter __ how far or how wide __ I roam,
  I still call __ Aus -- tra -- lia,
  I still call __ Aus -- tra -- lia,
  I still call __ Aus -- tra -- lia home.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "I've " "been "  "to " ci "ties "  "that " nev "er "  "close " "down "
  "\nFrom " "New " "York, "  "to " Ri "o "  "and " "old " Lon "don " "town, "
  "\nBut " "no " mat "ter "  "how " "far " "or " "how " "wide "  "I " "roam, "
  "\nI " "still " "call "  Aus tra "lia " "home. "

  \set stanza = "2."
  "\nI'm " al "ways " trav' "lin' "  "I " "love " be "ing " "free, "
  "\nAnd " "so " "I "  "keep " leav "ing " "the " "sun " "and " "the " "sea, "
  "\nBut " "my " "heart " "lies " wait "ing "  o "ver "  "the " "foam. "
  "\nI " "still " "call "  Aus tra "lia " "home. "

  "\nAll " "the " "sons " "and " daugh "ters " spin "ning " "round " "the " "world, "
  "\nA" "way " "from " "their " fam "'ly " "and " "friends. "
  "\nBut " "as " "the " "world " "gets " old "er " "and " cold "er, "
  "\nIt's " "good " "to " "know " "where " "your " jour "ney " "ends. "

  \set stanza = "3."
  "\nBut " some "day "  "we'll " "all " "be "  to geth "er "  "once " "more. "
  "\nWhen " "all " "of " "the " "ships " "come " "back " "to " "the " "shore. "
  "\nI " re al "ize "  some "thing " "I've " al "ways " "known, "
  "\nI " "still " "call "  Aus tra "lia " "home. "

  "\nAll " "the " "sons " "and " daugh "ters " spin "ning " "round " "the " "world, "
  "\nA" "way " "from " "their " fam "'ly " "and " "friends. "
  "\nBut " "as " "the " "world " "gets " old "er " "and " cold "er, "
  "\nIt's " "good " "to " "know " "where " "your " jour "ney " "ends. "

  "\nBut " "no " mat "ter "  "how " "far " "or " "how " "wide "  "I " "roam, "
  "\nI " "still " "call "  Aus tra "lia, "
  "\nI " "still " "call "  Aus tra "lia, "
  "\nI " "still " "call "  Aus tra "lia " "home. "
}

pianoRHone = \relative {
  \global \voiceOne
  e'4^\markup "Medium waltz tempo" f g
  a4 4 8. f16
  g4 a g
  g4 f f
  d4 f(d) \bar "||"
  a'8 8~4. 8 % 2b
  g8 a~4. g8
  g8 f~4 4
  f2 r8 8
  bes8 8~4. 8 % 2c
  a8 8~4. 8
  a4 g f
  g2 f8. g16
  a8 8~4. 8 % 3a
  g2 r8 a
  g8 f~4 4
  d'2.
  r8 f, c' c~8 a
  bes4 g r % 3b
  f2 r4
  R2.
  R2.
  R2.
  a8 8~4. 8 % 3c
  a8 g~4. e8
  g2 f8. e16
  f2 r8 f
  bes8 8~4 4
  a4 bes a % 3d
  a2 g8. f16
  g2 f8. g16
  a2 4
  a8 g~4 r
  g8f~4. 8 % 4a
  <d d'>2.
  r8 f c' c~8 a
  bes4 g r
  f2 r4
  R2. \bar "||" % 4b
  c'4. 8 b8. a16
  b4 c2
  r4 c16 8. 8. b16
  c2 r8 b % 4c
  c8 8~4. 8
  a4 g f
  e2.
  r2 r8 e
  c'8. 16 b4. a8 % 4c
  b4 c r8 e,
  b'4 c r
  r8 a a4 b
  c2 8. 16
  bes2 a4 % 5a
  g4 r2
  r2 r8 c, \bar "||"
  a'8 8~4. f8
  g4 a4. g8
  g8 f~4 4 % 5b
  f2 r8 f
  bes2 8. 16
  a2 r8 f
  a4 g f
  g2 r8 f % 5c
  a16 16 8~4 r
  g4 a g
  f2 4
  d'2.
  r8 f, c' c~8 a % 5d
  bes4 g r
  f2.
  f'4 e d
  c4. 8 b8. a16 % 4b+
  b4 c2
  r4 c16 8. 8. b16
  c2 r8 b % 4c
  c8 8~4. 8
  a4 g f
  e2.
  r2 r8 e
  c'8. 16 b4. a8 % 4c
  b4 c r8 e,
  b'4 c r
  r8 a a4 b
  c2 8. 16
  bes2 a4 % 5a
  R2.
  g2 f8. g16 \bar "||" % 6a
  a4 4. 8
  g2 4
  g4 f f
  d'2 r8 g,
  c4 4. a8 % 6b
  bes4 g r8 g
  c4 4. a8
  bes4 g r8 g
  c4 4. a8
  bes2 c4 % 6c
  f2.~
  f2.
  R2. \oneVoice
  <c, f a>2\omit\dim ~8. 16 % 6d+
  <cis e g>4 <cis e a> <cis e g>
  <a d g>4 <a d f> q
  <bes d f>2 r4\omit\ppp
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2.
  <c' f>4 4 c
  <cis e>4 q q
  <a d>2 4
  bes4 2
  r4 <c f> q % 2b
  r4 <cis e> q
  r4 <a d> q
  r4 <bes c> <a c>
  r4 <d f> q % 2c
  r4 <c f> q
  r4 <b d> q
  bes4 f' d
  r4 <c f> q % 3a
  r4 <cis e> q
  r4 <g d'> q
  r4 <d' f> q
  c2.
  d4 <bes e> q % 3b
  <a c>2 \tuplet 3/2 {f'8 a c}
  f8. f,16 e'8. f,16 d'8. f,16
  c'2.
  <e, c'>4 <d bes> <e a>
  r4 <c f> q % 3c
  r4 <cis e> cis
  r4 <a d> q
  r4 <bes c> <a c>
  r4 <d f> q
  r4 <c f> q % 3d
  r4 <b d> q
  bes4 f' d
  r4 <c f> q
  r4 <cis e> q
  r4 <a d> q % 4a
  r4 <d f b> q
  c2.
  d4 <bes e> q
  <a c>2 \tuplet 3/2 {a8 bes a}
  gis4 e' b \bar "||" % 4b
  r4 <e a> r
  r4 <e gis> q
  r4 <e g> q
  r4 <e a> q % 4c
  r4 <d f> q
  r4 <b d> q
  c2 4
  r4 e r
  e2 r4 % 4d
  e2 r4
  e2 <e g>4
  <e fis>2 4
  <d fis a>2.
  <d f g>2 <d f>4 % 5a
  <bes e>4 <e bes'> <f d'>
  <e, g c>4 <d f> <e g>8 r
  r4 <bes '>4. r8
  r4 <cis e> q
  r4 <a d> q % 5b
  r4 <bes c> <a c>
  r4 <d f> q
  r4 <c f>4. r8
  r4 <b d> q
  bes4 f' d % 5c
  <c f>2 q4
  <cis e>2.
  <a d>2.
  <d f b>2 d4
  c2. % 5d
  d4 <bes e> q
  <a c>2.
  <f' bes>2.

  r4 <e a> r % 4b+
  r4 <e gis> q
  r4 <e g> q
  r4 <e a> q % 4c
  r4 <d f> q
  r4 <b d> q
  c2 4
  r4 e r
  e2 r4 % 4d
  e2 r4
  e2 <e g>4
  <e fis>2 4
  <d fis a>2.
  <d f g>2 <d f>4 % 5a
  <bes e>4 <e bes'> <f d'>

  bes,4 f' d % 6a
  <c f>4 4. q8
  <cis e>4 q q
  <a d>4 q q
  <d f>4 q q
  <f a>4 4. f8 % 6b
  d4 e r
  <f a>4 4. f8
  d4 e r
  <f a>4 4. f8
  <d f>2 <e g bes>4 % 6c
  <f a c>2 <f a>4
  <e g>4 <e a> <e g>
  <d g>4 <d f> <a d>
  s2.*4
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.*53
  s4 s2-\markup rall.
  s2.
  s2.-\markup "a tempo"
  s2.*44
  s2.\omit\dim
  s2.
  s2.
  s2.\omit\ppp-\markup "Repeat and fade out"
}

pianoLH = \relative {
  \global
  c,4 d e
  f2~8. gis16
  a2~8. 16
  d2~8. 16
  g,4 c4. 8
  f,2~8. 16 % 2b
  a2~8. 16
  d2.
  f,4 c' f,
  bes2~8. 16 % 2c
  a2~8. 16
  g2~8. 16
  c2 4
  f,2~8. 16 % 3a
  e2~8. 16
  d2 c'4
  b2. c,4 c' c
  c,4 c'4 8. 16 % 3b
  f,4 f'2
  bes,2.
  a8. a'16 c8. a16 c4
  c,2.
  f,2 \tuplet 3/2 {f8 g gis} % 3c
  a2~8. 16
  d2 g,4
  f4 c' f,
  bes2~8. 16
  a2~8. 16 % 3d
  g2~8. 16
  c,8. 16 c'4 4
  f,2~8. 16
  e2~8. 16
  d2 c'4 % 4a
  b2.
  c,4 c' c
  c,4 c' c
  f,8. c'16 f2
  e,2. \bar "||" % 4b
  a2~8. 16
  gis2~8. 16
  g2~8. 16
  fis2~8. 16 % 4c
  d2.
  g2 4
  c2 g'8. a16
  e4 a gis
  a,2~8. 16 % 4d
  gis2~8. 16
  g2~8. 16
  fis2.
  g2.
  g2~8. 16 % 5a
  c2.
  c,2. \bar "||"
  f2~8. 16
  a2~8. 16
  d2. % 5b
  f,4 c' f,
  bes2~8. 16
  a2~8. 16
  g2~8. 16
  c2 4 % 5c
  f,2~8. 16
  e2~8. 16
  d2 c'4
  b2.
  c,4 c' c % 5d
  c,4 c' c
  f,2.
  bes2.

  a2~8. 16 % 4b+
  gis2~8. 16
  g2~8. 16
  fis2~8. 16 % 4c
  d2.
  g2 4
  c2 g'8. a16
  e4 a gis
  a,2~8. 16 % 4d
  gis2~8. 16
  g2~8. 16
  fis2.
  g2.
  g2~8. 16 % 5a
  c2.

  c,4 c' c % 6a
  f,2~8. 16
  e2~8. 16
  d4 d' c
  b2.
  c,4 c' c % 6b
  c,4 c' c
  c,4 c' c
  c,4 c' c
  c,4 c' c
  c,4 4 4
  f2~8. 16
  e2~8. 16
  d2\omit\dim ~8. 16 \bar ".|:"
  f2~8. 16
  e2~8. 16
  d2~8. 16 |
  c4 c' c,\omit\ppp \bar ":|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Melody staff
          \new Staff = melody \with {
            instrumentName = #"Melody"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack 
           \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context {
        \Staff \RemoveAllEmptyStaves
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
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Melody staff
          \new Staff = melody \with {
            instrumentName = #"Melody"
            shortInstrumentName = #""
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%   \articulate
    <<
      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Melody staff
          \new Staff = melody \with {
            instrumentName = #"Melody"
            shortInstrumentName = #""
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \melody
            \addlyrics \wordsMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
