\version "2.22.1"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We'll Go No More A'Roving"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Colin Brumby"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Lord Byron"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 6/8
  \partial 8
}

TempoTrack = {
  \tempo 4=114 % moderato
  \set Score.tempoHideNote = ##t
  s8 s2.*15
  \tempo 4=110 s2. % 14b
  \tempo 4=114 s2.*7
  \tempo 4=100 s2.*2 % 15a+
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "12a" } s8 s2.*3
  \mark \markup { \circle "12b" } s2.*3
  \mark \markup { \circle "13a" } s2.*3
  \mark \markup { \circle "13b" } s2.*3
  \mark \markup { \circle "14a" } s2.*3
  \mark \markup { \circle "14b" } s2.*3
  \mark \markup { \circle "15a" } s2.*3
  \mark \markup { \circle "15b" } s2.*4
}

soprano = \relative {
  \global
  d'8^\mp^\markup\bold Moderato
  b'8. a16 b8 a4 g8
  c4. fis,4 d8
  g8.(fis16) g8 a8.(b16) c8
  b4. r8 b^\cresc b % 12b
  e4 8 d4 8
  e4. g,8 r16 e16 8
  fis8.(g16) a8 b4 a8 % 13a
  b4.~8 r16 b^\mf b8
  b4 8 c8.(b16) a8
  e'4( b8~8) r16 b^\cresc 8 % 13b
  e4 8 fis8.(e16) d8
  e4.~8 r16 e e8
  d4^\f^\dim 8 c4 8 % 14a
  b4.(fis8 g) a
  c4 g8 fis4 a8
  g4.^\markup\italic "poco rall." (fis8) r d16^\mp d % 14b
  b'8.^\markup\italic "a tempo" (a16) b8 a4 g8
  c4. fis,4 d16 d
  g8.(fis16) g8 a8.(b16) c8 % 15a
  b4. r8 b^\cresc b
  e4 8 d4 8
  e4.^\mf^\dim g,8 r e16 e % 15b
  d8.(e16 fis8) 4 e8
  fis4.^\markup\italic rall. (g
  fis2.\fermata^\pp)
  \bar "|."
}

wordsSop = \lyricmode {
  So we'll go no more a -- rov -- ing
  So late __ in -- to __ the night,
  Though the heart be still as lov -- ing,
  And the moon be still as bright. __
  For the sword out -- wears __ the sheath, __
  And the soul wears out __ the breast, __
  And the heart must pause to breathe, __
  And love it -- self have rest. __
  Though the night __ was made for lov -- ing,
  And the day re -- turns __ too soon,
  Yet we'll go no more a -- rov -- ing
  By the light of the moon. __
}

wordsSopMidi = \lyricmode {
  "So " "we'll " "go " "no " "more " a rov "ing "
  "\nSo " "late "  in "to "  "the " "night, "
  "\nThough " "the " "heart " "be " "still " "as " lov "ing, "
  "\nAnd " "the " "moon " "be " "still " "as " "bright. " 
  "\nFor " "the " "sword " out "wears "  "the " "sheath, " 
  "\nAnd " "the " "soul " "wears " "out "  "the " "breast, " 
  "\nAnd " "the " "heart " "must " "pause " "to " "breathe, " 
  "\nAnd " "love " it "self " "have " "rest. " 
  "\nThough " "the " "night "  "was " "made " "for " lov "ing, "
  "\nAnd " "the " "day " re "turns "  "too " "soon, "
  "\nYet " "we'll " "go " "no " "more " a rov "ing "
  "\nBy " "the " "light " "of " "the " "moon. " 
}

alto = \relative {
  \global
  d'8^\mp
  d4 8 e fis g
  g8(e fis) d4 8
  d4. e8. fis16 g8
  fis8.(g16 a8) fis4^\cresc e8 % 12b
  a8.(b16) a8 8.(b16) a8
  a8.(fis16 gis8) e r16 cis cis8
  d8.(cis16) d8 g4 dis8 % 13a
  e4.~8 r16 e^\mf 8
  fis8.(gis16) fis8 e8(fis16 g) a8
  b8.(a16 g8 fis) r16 16^\cresc 8 % 13b
  b8.(c16) b8 a(b16 c) d8
  d8.(c16 b8 c) r16 a a8
  c8.^\f^\dim (b16) a(b) b8.(a16) g8% 14a
  fis8.(g16 a8 b4) e,8
  g8.(fis16) ees8 e8. (dis16) e8
  ees8.^\markup\italic "poco rall." (f16 ees8 d) r d16^\mp d % 14b
  d4^\markup\italic "a tempo" 8 e(fis) g
  g8(e fis) d4 16 16
  d4 8 e(fis) g % 15a
  fis8.(g16 a8) fis4^\cresc e8
  a8.(b16) a8 8.(b16) a8
  a8.^\mf^\dim (fis16 gis8) e r cis16 16 % 15b
  d4(cis8) b4 d8
  cis4.^\markup\italic rall. (d4.
  cis2.\fermata^\pp)
  \bar "|."
}

wordsAlto = \lyricmode {
  So we'll go no more a -- rov -- ing
  So late __ in -- to __ the night,
  Though the heart be still as lov -- ing,
  And the moon be still as bright. __
  For the sword out -- wears __ the sheath, __
  And the soul wears out __ the breast, __
  And the heart must pause to breathe, __
  And love it -- self have rest. __
  Though the night __ was made for lov -- ing,
  And the day re -- turns __ too soon,
  Yet we'll go no more a -- rov -- ing
  By the light of the moon. __
}

wordsAltoMidi = \lyricmode {
  "So " "we'll " "go " "no " "more " a rov "ing "
  "\nSo " "late "  in "to "  "the " "night, "
  "\nThough " "the " "heart " "be " "still " "as " lov "ing, "
  "\nAnd " "the " "moon " "be " "still " "as " "bright. " 
  "\nFor " "the " "sword " out "wears "  "the " "sheath, " 
  "\nAnd " "the " "soul " "wears " "out "  "the " "breast, " 
  "\nAnd " "the " "heart " "must " "pause " "to " "breathe, " 
  "\nAnd " "love " it "self " "have " "rest. " 
  "\nThough " "the " "night "  "was " "made " "for " lov "ing, "
  "\nAnd " "the " "day " re "turns "  "too " "soon, "
  "\nYet " "we'll " "go " "no " "more " a rov "ing "
  "\nBy " "the " "light " "of " "the " "moon. " 
}

tenor = \relative {
  \global
  d8^\mp
  g8. fis16 g8 a4 d8
  e8.(d16 c b) a4 d,8
  b'8.(a16) b8 a4 e'8
  e4(cis8) dis4^\cresc e8 % 12b
  c4. b
  b4(d8) c r16 a a8
  a4 8 d8.(c16) b8 % 13a
  a4(fis8 gis) r16 g^\mf 8
  fis8.(e16) fis8 g(a16 b) c8
  b4.~8 r16 b^\cresc b8 % 13b
  b8.(a16) b8 c(d16 e) fis8
  g4.~8 r16 16 8
  fis4^\f^\dim 8 e4 8 % 14a
  e4(cis8 dis e) c
  a4 8 c8.(b16) a8
  bes4.^\markup\italic "poco rall." (a8) r d,16^\mp d % 14b
  g8.^\markup\italic "a tempo" (fis16) g8 a4 d8
  e8.(d16 c b) a4 d,16 d
  b'8.(a16) b8 a4 e'8 % 15a
  e4(cis8) dis4^\cresc e8
  c4. b
  b4^\mf^\dim (d8) cis r g16 g % 15b
  fis4. d4 b'8
  ais4.^\markup\italic rall. (b4.
  ais2.\fermata^\pp)
  \bar "|."
}

wordsTenor = \lyricmode {
  So we'll go no more a -- rov -- ing
  So late __ in -- to __ the night,
  Though the heart be lov -- ing,
  And the moon be still as bright. __
  For the sword out -- wears __ the sheath, __
  And the soul wears out __ the breast, __
  And the heart must pause to breathe, __
  And love it -- self have rest. __
  Though the night __ was made for lov -- ing,
  And the day re -- turns __ too soon,
  Yet we'll not go rov -- ing
  By the light of the moon. __
}

wordsTenorMidi = \lyricmode {
  "So " "we'll " "go " "no " "more " a rov "ing "
  "\nSo " "late "  in "to "  "the " "night, "
  "\nThough " "the " "heart " "be " lov "ing, "
  "\nAnd " "the " "moon " "be " "still " "as " "bright. " 
  "\nFor " "the " "sword " out "wears "  "the " "sheath, " 
  "\nAnd " "the " "soul " "wears " "out "  "the " "breast, " 
  "\nAnd " "the " "heart " "must " "pause " "to " "breathe, " 
  "\nAnd " "love " it "self " "have " "rest. " 
  "\nThough " "the " "night "  "was " "made " "for " lov "ing, "
  "\nAnd " "the " "day " re "turns "  "too " "soon, "
  "\nYet " "we'll " "not " "go " rov "ing "
  "\nBy " "the " "light " "of " "the " "moon. " 
}

bass = \relative {
  \global
  d8^\mp
  g,4. c4 b8
  a4.(d4) 8
  g,4. c4 a8
  b4. b'8^\cresc (a) g % 12b
  fis8.(g16) fis8 f8.(g16) fis8
  e4. a,8 r16 a a8
  d8.(e16) fis8 g8.(fis16) f8 % 13a
  e4.~8 r16 e^\mf e8
  b4 8 a8.(e'16) a8
  e8(fis16 g a8 b) r16 b^\cresc 8 % 13b
  e,4 8 d8.(a'16) d8
  c4.~8 r16 c c8
  a8.^\f^\dim (d16) c(d) d8.(c16) b8 % 14a
  b4.(a8 g) fis
  ees8.(d16) c(b) ais8.(b16) c8
  cis4.^\markup\italic "poco rall." (d8) r d16^\mp d % 14b
  g,4.^\markup\italic "a tempo" c4 b8
  a4. d4 16 16
  g,4 8 c4 a8 % 15a
  b4. b'8^\cresc (a) g
  fis8.(g16) fis8 f8.(g16) f8
  e4.^\mf^\dim a,8 r ais16 16 % 15b
  b4(a8) g4 8
  fis4.^\markup\italic rall. (e
  fis2.\fermata^\pp)
  \bar "|."
}

wordsBass = \lyricmode {
  So we'll no more rove __
  So late __ in the night,
  Though the heart be still as lov -- ing,
  And the moon __ be still __ as bright. __
  For the sword out -- wears __ the sheath, __
  And the soul wears out __ the breast, __
  And the heart must pause to breathe, __
  And love it -- self have rest. __
  Though the night's made for lov -- ing,
  And the day re -- turns __ too soon,
  Yet we'll go no more a -- rov -- ing
  By the light of the moon. __
}

wordsBassMidi = \lyricmode {
  "So " "we'll " "no " "more " "rove " 
  "\nSo " "late "  "in " "the " "night, "
  "\nThough " "the " "heart " "be " "still " "as " lov "ing, "
  "\nAnd " "the " "moon "  "be " "still "  "as " "bright. " 
  "\nFor " "the " "sword " out "wears "  "the " "sheath, " 
  "\nAnd " "the " "soul " "wears " "out "  "the " "breast, " 
  "\nAnd " "the " "heart " "must " "pause " "to " "breathe, " 
  "\nAnd " "love " it "self " "have " "rest. " 
  "\nThough " "the " "night's " "made " "for " lov "ing, "
  "\nAnd " "the " "day " re "turns "  "too " "soon, "
  "\nYet " "we'll " "go " "no " "more " a rov "ing "
  "\nBy " "the " "light " "of " "the " "moon. " 
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
  \bookOutputSuffix "vocal-single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
  \bookOutputSuffix "vocal-singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 700\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSop
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenor
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
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
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff = tenor <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff = bass <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff = alto <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff = bass <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff = alto <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff = tenor <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass <<
            \clef "bass"
            \new Voice = "bass" \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano <<
            \new Voice \TempoTrack
            \new Voice = "soprano" \soprano
          >>
                                % Single alto staff
          \new Staff = alto <<
            \new Voice = "alto" \alto
          >>
                                % Single tenor staff
          \new Staff = tenor <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff = bass <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}
