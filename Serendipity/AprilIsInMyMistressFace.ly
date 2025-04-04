\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "April is in my mistress' face"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Thomas Morley (1594)"
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
  \key bes \major
  \time 4/4
  \tempo 4=120
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
  \mark \markup { \circle "10a" } s1*3
  \mark \markup { \circle "10b" } s1*4
  \mark \markup { \circle "10c" } s1*3
  \mark \markup { \circle "11a" } s1*3
  \mark \markup { \circle "11b" } s1*5
  \mark \markup { \circle "11c" } s1*6
  \mark \markup { \circle "12a" } s1*5
  \mark \markup { \circle "12b" } s1*4
  \mark \markup { \circle "12c" } s1*5
}

soprano = \relative c'' {
  \global
  d4 c8 bes c4 d
  bes4 c a2
  r2 d4 d8 d
  d4 d ees c
  d2 a
  bes2 g4(bes)
  a2 d4 c8 bes
  c4 a bes c
  a2 r4 a
  bes8 a bes c d4 bes(
  a2) g
  r4 bes d8 c d e
  f2 d4 ees-> ~
  ees8 d(c bes c2)
  bes2 r4 d
  c4 d ees2
  d2 r4 d
  bes4 d c2
  bes2 d
  c2 d~(
  d4 c bes a
  bes1)
  a4 d d d
  f1
  r4 c c c
  ees2 ees
  bes4 g bes c
  d1~
  d1
  b1
  r4 d d d
  f1
  r4 c c c
  ees2 ees
  bes4 g bes c
  d1~
  d1
  b1-\fermata
  \bar "|."
}

dynamicsSop = {
  s1\mf
  s1
  s2 s\p
}

wordsSop = \lyricmode {
  A- pril is in my mis- tress' face,
  A- pril is in my mis- tress' face,
  my mis- tress; face,
  A- pril is in my mis- tress' face,
  And Ju- ly in her eyes hath place,
  And Ju- ly in her eyes, her eyes hath place,
  With- in her bo- som,
  with- in her bo- som is Sep- tem- ber,
  But in her heart,
  but in her heart, her heart, a cold De- cem- ber,
  But in her heart,
  but in her heart, her heart, a cold De- cem- ber,
}

wordsSopMidi = \lyricmode {
  "A" "pril " "is " "in " "my " mis "tress' " "face, "
  "\nA" "pril " "is " "in " "my " mis "tress' " "face, "
  "\nmy " mis "tress; " "face, "
  "\nA" "pril " "is " "in " "my " mis "tress' " "face, "
  "\nAnd " Ju "ly " "in " "her " "eyes " "hath " "place, "
  "\nAnd " Ju "ly " "in " "her " "eyes, " "her " "eyes " "hath " "place, "
  "\nWith" "in " "her " bo "som, "
  "\nwith" "in " "her " bo "som " "is " Sep tem "ber, "
  "\nBut " "in " "her " "heart, "
  "\nbut " "in " "her " "heart, " "her " "heart, " "a " "cold " De cem "ber, "
  "\nBut " "in " "her " "heart, "
  "\nbut " "in " "her " "heart, " "her " "heart, " "a " "cold " De cem "ber, "
}

alto = \relative c'' {
  \global
  bes4 a8 g a4 d,
  g4 a8( g fis e fis4)
  g2 r
  d4 d8 d g4 g
  g2 fis % 5
  g2 r
  r2 bes4 a8 g
  a4 fis g g
  fis2 r4 f
  g8 f g a bes4 g4( % 10
  fis2) g
  r4 f bes bes
  a8 bes(c a) bes4 g
  f2. f4 f2 r4 bes
  a4 bes2 a4 bes2 f % 15
  g4 f f2
  f2 bes
  a2 bes~(
  bes4 a g f
  g1) % 20
  fis1
  r1
  r4 a a a
  c2 g
  g2 g % 25
  f4 d g2~(
  g4 fis8 e f2)
  g4 g g g
  bes2 bes
  a1 % 30
  r4 a a a
  c2 g
  g2 g
  f4 d g2~(
  g4 fis8 e fis2) % 35
  g1-\fermata
%  \bar "|."
}

wordsAlto = \lyricmode {
  A- pril is in my mis- tress' face,
  A- pril is in my mis- tress' face,
  A- pril is in my mis- tress' face,
  And Ju- ly in her eyes hath place,
  And Ju- ly in her eyes, her eyes hath place,
  With- in her bo- som,
  with- in her bo- som is Sep- tem- ber,
  but in her heart, her heart, a cold De- cem- ber,
  But in her heart, her heart
  but in her heart, her heart, a cold De- cem- ber,
}

wordsAltoMidi = \lyricmode {
  "A" "pril " "is " "in " "my " mis "tress' " "face, "
  "\nA" "pril " "is " "in " "my " mis "tress' " "face, "
  "\nA" "pril " "is " "in " "my " mis "tress' " "face, "
  "\nAnd " Ju "ly " "in " "her " "eyes " "hath " "place, "
  "\nAnd " Ju "ly " "in " "her " "eyes, " "her " "eyes " "hath " "place, "
  "\nWith" "in " "her " bo "som, "
  "\nwith" "in " "her " bo "som " "is " Sep tem "ber, "
  "\nbut " "in " "her " "heart, " "her " "heart, " "a " "cold " De cem "ber, "
  "\nBut " "in " "her " "heart, " "her " "heart "
  "\nbut " "in " "her " "heart, " "her " "heart, " "a " "cold " De cem "ber, "
}

dynamicsAlto = {
  s1\mf
  s1
  s1
}

tenor = \relative c' {
  \global
  r1
  r1
  r2 bes4 a8 g
  a4 bes c g(
  a1)
  g2 d'4 c8 bes
  c4 d bes bes
  a4 d d ees
  d1
  r1
  r2 r4 bes
  d8 c d e f4 bes,
  c2 bes4 c->~(
  c8 bes) bes2(a4)
  bes2 r4 bes
  f'4 d c2
  bes2 bes
  g4 bes2 a4->
  bes2 f'~ % 2c
  f2 f
  d1~
  d
  d2 r4 d
  d4 d f2~
  f2 f % 3a
  c1
  r2 g
  bes2 bes
  a1
  g2 r4 g % 12b
  g4 g d'2
  d2 f2~
  f2 f
  c1 % 12c
  r2 g
  bes2 bes
  a1
  g1-\fermata
  \bar "|."
}

dynamicsTenor = {
  s1
  s1
  s2 s\p
  s1
  s1
  s2 s\mf
  s1*4
  s2. s4\f
  s1*3
  s2. s4\mf
  s1
  s2 s\p
  s1
  s1 s\<
  s1
  s1\>
  s1
  s2.\! s4\f
  s1*5
  s2. s4\p
  s1*5
  s1\>
  s1
  s1\!
}

wordsTenor = \lyricmode {
  A- pril is in my mis- tress' face,
  A- pril is in my mis- tress' face,
  my mis- tress' face,
  And Ju- ly in her eyes hath place,
  her eyes hath place,
  With- in her bo- som,
  with- in her bo- som is Sep- tem- ber,
  but in her heart, her heart, a cold De- cem- ber,
  but in her heart, but in her heart, a cold De- cem- ber,
}

wordsTenorMidi = \lyricmode {
  "A" "pril " "is " "in " "my " mis "tress' " "face, "
  "\nA" "pril " "is " "in " "my " mis "tress' " "face, "
  "\nmy " mis "tress' " "face, "
  "\nAnd " Ju "ly " "in " "her " "eyes " "hath " "place, "
  "\nher " "eyes " "hath " "place, "
  "\nWith" "in " "her " bo "som, "
  "\nwith" "in " "her " bo "som " "is " Sep tem "ber, "
  "\nbut " "in " "her " "heart, " "her " "heart, " "a " "cold " De cem "ber, "
  "\nbut " "in " "her " "heart, " "but " "in " "her " "heart, " "a " "cold " De cem "ber, "
}

bass= \relative c' {
  \global
  r1
  r1
  r2 g4 fis8 e
  fis4 g c, ees
  d1
  r2 bes'4 a8 g
  a4 fis g g
  c,4 d g c, % 10c
  d1
  r1
  r4 d ees8 f g a % 11a
  bes2 bes
  f2 g4 ees->
  f1 % 11b
  bes,1
  r1
  r2 bes
  ees4 bes f'2
  bes,1 % 11c
  f'2 d
  g1~
  g1
  d1
  r4 d d d
  f1 % 12a
  r4 c c c
  ees2. ees4
  bes2. c4
  d1
  g,1~ % 12b
  g1
  r4 d' d d
  f1
  r4 c c c % 12c
  ees2. ees4
  bes2. c4
  d1
  g,1-\fermata
%  \bar "|."
}

dynamicsBass = {
  s1 % 10a
  s1
  s2 s\p
  s1*2 % 10b
  s2 s\mf
  s1
  s1*3 % 10c
  s4 s2.\f % 11a
  s1*2
  s1 % 11b
  s1\>
  s1\!
  s2 s\p
  s1
  s2 s\< % 11c
  s1
  s1\>
  s1
  s1\!
  s4 s2.\f
  s1*5 % 12a
  s1\> % 12b
  s1
  s4\! s2.\p
  s1
  s1*2 % 12c
  s1\>
  s1
  s1\!
}

wordsBass = \lyricmode {
  A- pril is in my mis- tress' face,
  A- pril is in my mis- tress' face,
  my mis- tress' face,
  And Ju- ly in her eyes hath place,
  her eyes hath place,
  With- in her bo- som is Sep- tem- ber,
  but in her heart, but in her heart, a cold De- cem- ber,
  but in her heart, but in her heart, a cold De- cem- ber,
}

wordsBassMidi = \lyricmode {
  "A" "pril " "is " "in " "my " mis "tress' " "face, "
  "\nA" "pril " "is " "in " "my " mis "tress' " "face, "
  "\nmy " mis "tress' " "face, "
  "\nAnd " Ju "ly " "in " "her " "eyes " "hath " "place, "
  "\nher " "eyes " "hath " "place, "
  "\nWith" "in " "her " bo "som " "is " Sep tem "ber, "
  "\nbut " "in " "her " "heart, " "but " "in " "her " "heart, " "a " "cold " De cem "ber, "
  "\nbut " "in " "her " "heart, " "but " "in " "her " "heart, " "a " "cold " De cem "ber, "
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
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
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSopMidi
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAltoMidi
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenorMidi
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBassMidi
        >>
      >>
    >>
    \midi {}
  }
}
