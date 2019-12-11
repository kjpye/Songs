\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Holy Night"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Adolphe Adam"
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

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key c \major
  \time 4/4
%  \tempo 4=120
  \partial 2
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

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "1a" }
  s2 s2
}

soprano = \relative c' {
  \global
  \oneVoice
  e4 e8. e16
  g4~g8. 16 a8. 16 f8. a16
  c2 g8. 16 e8. d16
  c4 e8. f16 f4 f8. d16
  c2 r % 5
  r2 e4 8. f16
  g4~8. 16 a8. 16 f8. a16
  c2 g8. 16 fis8. e16
  b'4 g8. a16 b4 c8. b16
  e,2 r4 r8. g16 % 10
  g4 a d, g
  a8. g16 c8. e,16 a4 g8. 16
  g4 a d, g
  a8. g16 c8. e,16 g4. r8
  \break \voiceOne 
  c2~c4 b8. a16 % 15
  b2~b4 \oneVoice r8. \voiceOne b16
  d2~d8. a16 8. 16
  c2 c4 \oneVoice r8. \voiceOne c16
  e2(d4.) g,8
  c2~c4 b8.(a16)
  g2~g8. 16 a8. g16
  g2. \oneVoice r8. \voiceOne c16
  d2.~8. g,16
  e'2~4 d
  c2(b8.) 16 c8. d16
  c2. \oneVoice r4
  \bar "|."
}

dynamicsWomen = {
}

alto = \relative c' {
  \global
  \voiceTwo
  s2
  s1*13
  e2~4 8. 16
  gis2~4 s8. gis16
  f2~8. 16 8. 16
  e2 4 s8. e16
  e4(g f4.) 8
  e4( g f) g8. f16
  e2(f8.) 16 8. 16
  e2. s8. e16
  f2.~8. 16
  e4(g f) f
  e2(d8.) f16 8. 16
  e2. s4
  \bar "|."
}

tenor = \relative c' {
  \global
  \clef "bass"
  \voiceOne
  s2
  s1*13
  c2~4 b8. c16
  e2~4 s8. 16
  a,2~8. d16 8. 16
  c2 4 s8. 16
  c2(b4.) 8
  c4(bes a) b8. c16
  c2(b8.) 16 8. 16
  c2. s8. g16
  b2.~8. 16
  c4(bes a) a
  g2~8. 16 a8. b16
  c2. s4
  \bar "|."
}

bass= \relative c' {
  \global
  \clef bass
  \voiceTwo
  s2
  s1*13
  a2~4 g8. a16
  e2~4 \oneVoice r8. \voiceTwo e16
  d2~8. 16 8. 16
  a'2 4 \oneVoice r8. \voiceTwo a16
  g2.. 8
  c,4(e f) f
  g2 g,8. 16 8. 16
  c2. \oneVoice r8. \voiceTwo c16
  g'2.~8. 16
  c,4(c f) d
  g2~8. 16 8. 16
  c,2. \oneVoice r4
  \bar "|."
}

wordsOne = \lyricmode {
  O ho- ly night, the stars are bright- ly shin- ing,
  it is the night of the dear Sav- iour's birth!
  Long lay the world in sin and er- ror play- ing,
  Till He ap- peared and the soul felt its worth.
  A thrill of hope the
  wea- ry world re- joic- es,
  For yon- der breaks a new and glo- rious morn!
}

wordsTwo = \lyricmode {
  Led by the light of Faith se- rene- ly beam- ing,
  With glow- ing hearts by His cra- dle we stand.
  So led by light of a star sweet- ly gleam- ing
  Here come the wise men from the O- rient land.
  The King of Kings lay thus in low- ly man- ger
  In all our tri- als born to be our friend!
  Fall on your knees!
  O hear the an- gel voi- ces!
  O night di- vine O night when Christ was born.
  O night di- vine!
  O night, O night di -vine!
}

wordsThree = \lyricmode {
  Tru- ly He taught us to love one an- oth- er:
  His law is love and his gos- pel is peace.
  Chains shall he break, for the slave is our broth- er
  And in his name all op- pres- sion shall cease.
  Sweet hymns of joy in grate- ful chor- us eaise we.
  Let all with- in us praise His ho- ly name!
}

\score {
  <<
    \new ChoirStaff <<
% Joint soprano/alto staff
      \new Dynamics \dynamicsWomen
      \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto"    { \voiceTwo \alto    }
        \new Lyrics \lyricsto "soprano" \wordsOne
        \new Lyrics \lyricsto "soprano" \wordsTwo
        \new Lyrics \lyricsto "soprano" \wordsThree
      >>
% Joint tenor/bass staff
      \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
        \new Voice = "tenor" \tenor
        \new Voice = "bass" \bass
      >>
    >>
  >>
  \layout { indent = 1.5\cm
    \context {
      \Staff
%      tempoWholesPerMinute = #(ly:make-moment 100 4)
       \RemoveAllEmptyStaves
    }
  }
  \midi {
  }
}
