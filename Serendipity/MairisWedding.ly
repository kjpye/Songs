\version "2.25.13"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Mairi's Wedding"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional Tune noted from D. Peter A. MacLeod"
  arranger    = "and Arranged by Hugh S. Roberton"
  opus        = "This arrangement by Bob Chilcott"

  poet        = "Hugh S. Roberton"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

ClapTrackChorus = {
  s2. c8^> r | s2. c8^> r  | % 25c
  s2. c8^> r | s2 c8^> r r c^> |
}

ClapTrack = {
  s2 s8 s-\markup \halign #RIGHT "All clap" c8^> r | s2. c8^> r |
  s2. c8^> r | s2. c8^> r  |
  \ClapTrackChorus
  s1 | s2 c8^> r r c^> | % 26a
  s1 | s2. r8 c^> |
  \ClapTrackChorus
  s1 | s2 c8^> r r c^> | % 26c
  s1 | s2. r8 c^> |
  \ClapTrackChorus
  s1 | s2 c8^> r r c^> | % 28a
  s1 | s2. r8 c^> |
  \ClapTrackChorus
  s1 | s2 c8^> r r c^> | % 27c
  s1 | s2. r8 c^> |
  \ClapTrackChorus
  s1 | s1 | s1 | s1 | c8^>_\ff r s2. |
}

TempoTrack = {
  \tempo "Hard and Happy" 4=112
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrackChorus = {
  \mark \markup { \box "25c" } s1*2
  \mark \markup { \box "25d" } s1*2
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "25a" } s1*2
  \mark \markup { \box "25b" } s1*2
  \RehearsalTrackChorus
  \mark \markup { \box "26a" } s1*2
  \mark \markup { \box "26b" } s1*2
  \RehearsalTrackChorus
  \mark \markup { \box "26c" } s1*2
  \mark \markup { \box "26d" } s1*2
  \RehearsalTrackChorus
  \mark \markup { \box "27a" } s1*2
  \mark \markup { \box "27b" } s1*2
  \RehearsalTrackChorus
  \mark \markup { \box "27c" } s1*2
  \mark \markup { \box "27d" } s1*2
  \mark \markup { \box "28a" } s1*2
  \mark \markup { \box "28b" } s1*2
  \mark \markup { \box "28c" } s1*2
  \mark \markup { \box "28d" } s1*2
}

melodyChorus = \relative {
  d'8->^\f^\markup "CHORUS (all)" r16 e d8 e g a16(b) 8 r | a g e g b a b16(d) r8 | % 25c
  d,8. e16 d8 e g a16(b) 8 r | a g e c16(d) 4 4 \bar "||" |
}

melody = \relative {
  \global
  R1*4
  \melodyChorus
  d''8.^\f^\markup "All WOMEN" 16 8 16(e) d8 c16(b) 8 r | a g e g b a b16(d) r8 | % 26b
  d8. 16 8 16(e) d8 c16(b) 8 r | a g e c16(d) 4 4 \bar "||" |
  \melodyChorus
  d'8.^\f^\markup "All MEN" 16 8 16(e) d8 c16(b) 8 r | % 26c
  a8 g e g b a b16(d) r8 |
  d8. 16 8 16(e) d8 c16(b) 8 r | % 26d
  a8 g e c16(d) 4 4 \bar "||" |
  \melodyChorus
  R1*4 | % 27a
  \melodyChorus
  d'8.^\f^\markup "All" 16 8 16(e) d8 c16(b) 8 r | % 27c
  a8 g e g b a b16(d) r8 |
  d8. 16 8 16(e) d8 c16(b) 8 r | % 27d
  a8 g e c16(d) 4 4 |
%  \repeat volta 2 {
  d8^>^\markup CHORUS r16 e d8 e g a16(b) 8 r | % 28a
  a8 g e g b a b16(d) r8 |
  d,8. 16 d8 e g a16(b) 8 r | % 28b
  a8 g e c16(d) 4 4
%  }
  s1*5  % chorus in parts a capella
%  \bar "|."
}

chorus = \lyricmode {
  Step we gai -- ly, on we __ go,
  Heel for heel and toe for toe, __
  Arm in arm and row on __ row,
  All for Mai -- ri's wed -- ding.
}

chorusMidi = \lyricmode {
  "\n[A] Step " "we " gai "ly, " "on " "we "  "go, "
  "\nHeel " "for " "heel " "and " "toe " "for " "toe, " 
  "\nArm " "in " "arm " "and " "row " "on "  "row, "
  "\nAll " "for " Mai "ri's " wed "ding. "
}

words = \lyricmode {
  \chorus
  \set stanza = "1."
  O -- ver hill -- ways __ up and __ down,
  Myr -- tle green and brack -- en brown, __
  Past the shiel -- ing, __ thru the town,
  All for sake of __ Mai -- ri.
  \chorus
  \set stanza = "2."
  Plen -- ty her -- ring, __ plen -- ty __ meal,
  Plen -- ty peat to fill her creel, __
  Plen -- ty bon -- ny __ bairns as __ weel.
  That's the toast for Mai -- ri.
  \chorus
                                % verse 3
  \chorus
  \set stanza = "4."
  O -- ver hill -- ways up and __ down,
  Myr -- tle green and brack -- en brown, __
  Past the shiel -- ing, __ thru the __ town,
  All for sake of Mai -- ri.
  \chorus
}

wordsMidi = \lyricmode {
  \chorusMidi
  \set stanza = "1."
  "\n[W] O" "ver " hill "ways "  "up " "and "  "down, "
  "\nMyr" "tle " "green " "and " brack "en " "brown, " 
  "\nPast " "the " shiel "ing, "  "thru " "the " "town, "
  "\nAll " "for " "sake " "of "  Mai "ri. "
  \chorusMidi
  \set stanza = "2."
  "\n[M] Plen" "ty " her "ring, "  plen "ty "  "meal, "
  "\nPlen" "ty " "peat " "to " "fill " "her " "creel, " 
  "\nPlen" "ty " bon "ny "  "bairns " "as "  "weel. "
  "\nThat's " "the " "toast " "for " Mai "ri. "
  \chorusMidi
                                % verse 3
  \chorusMidi
  \set stanza = "4."
  "\nO" "ver " hill "ways " "up " "and "  "down, "
  "\nMyr" "tle " "green " "and " brack "en " "brown, " 
  "\nPast " "the " shiel "ing, "  "thru " "the "  "town, "
  "\nAll " "for " "sake " "of " Mai "ri. "
  \chorusMidi
}

soprano = \relative {
  \global
  R1*24 \break
  b'8.^\f^\markup\italic "a capella" 16 8 16(c) b8 a16(g) 8 r | % 27a
  e8 d c e g fis g16(b) r8 |
  b8. 16 8 16(c) b8 a16(g) 8 r | % 27b
  e8 d c c16(d) 4 4 \bar "||" \break |
  s1*12 \break
  g8^\ff
  r16 a g8 a b c16(d) 8 r | % 28c
  c8 b g b d b <b d>16^\markup div. (<d g>) r8
  g,8. a16g8 a b c16(d) d8 r | % 28d
  c8 b g c16(d) 4-> 4-> |
  R1 |
  \bar "|."
}

wordsSop = \lyricmode {
  \set stanza = "3."
  Red her cheeks as __ row -- ans __ are,
  Bright her eye as an -- y star, __
  Fair -- est of them __ all by __ far,
  is our dar -- ling Mai -- ri.
  \chorus
}

wordsSopMidi = \lyricmode {
  \set stanza = "3."
  "\nRed " "her " "cheeks " "as "  row "ans "  "are, "
  "\nBright " "her " "eye " "as " an "y " "star, " 
  "\nFair" "est " "of " "them "  "all " "by "  "far, "
  "\nis " "our " dar "ling " Mai "ri. "
  \chorusMidi
}

alto = \relative {
  \global
  R1*24
  g'8.^\f 16 8 16(a) g8 e16(d) 8 r | % 27a
  c8 b g c d d d16(g) r8 |
  g8. 16 8 16(a) g8 e16(d) 8 r | % 27b
  c8 b g g16(a) 4 4 |
  s1*12
  d8->^\ff r16 e d8 e g a16(<g b>^\markup\italic div. ) 8 r | % 28c
  a8^\markup\italic unis. g d g <g b>^\markup\italic div. g <d g>16 (<g b>) r8 |
  d8.^\markup\italic unis. e16 d8 e g a16(<g b>^\markup\italic div. ) 8 r | % 28d
  a8^\markup\italic unis. g d g16(a) 4-> 4-> |
  R1
  \bar "|."
}

bass = \relative {
  \global
  R1*24
  d'8.^\f 16 8 16(e) d8 c16(b) 8 r | % 27a
  a8 g e g b a b16(d) r8 |
  d8. 16 8 16(e) d8 c16(b) 8 r | % 27b
  a8 g e c16(d) 4 4 |
  R1*12
  b'8->^\ff r16 c b8 c d e16(d) 8 r | % 28c
  e8 d b d e d b16(d) r8 |
  b8. c16 b8 c d e16(d) 8 r | % 28d
  e8 d b e16(d) 4-> 4-> |
  R1 |
  \bar "|."
}

pianoRHChorus = \relative {
  <b d g>8 16 16 8 <c d g>~4 r | <b d g>8 16 16 8 <a d g>~4 r | % 25c
  <b d g>8 16 16 8 <c d g>~4 r | <b d g>8 r q r r <e' g c> <fis a d> r |
}

pianoRH = \relative {
  \global
  <b d g>8-> 16-> 16-> 8-> <c d g>-> ~4 r |
  <b d g>8-> 16-> 16-> 8-> <a d g>-> ~4 r |
  <b d g>8 16 16 8 <c d g>~4 r | % 25b
  <b d g>8 16 16 8 <a d g>~4 r |
  \pianoRHChorus
  r8 a'16(d g8->) d16(g c8->) g' e d | % 26a
  r8 a,16(d g8->) d16( g c8->) b-> a-> g-> |
  r8 a,16(d g8->) d16(g c8->) g'-> e-> d | % 26b
  a,16-> d g r d-> g c r d4-> d-> |
  \pianoRHChorus
  g8-. d-. e-. c-. d16(c b8-.) c-. a-. | % 26c
  b16(a g a b c d e d8-.) <e, g c>-> <fis a d>-> \tuplet 3/2 {d'16 e f} |
  d8-. d-. e-. c-. d16(c b8-.) c-. a-. | % 26d
  b16 c b a g a b c d8-. d,-. d'-. r |
  \pianoRHChorus
  R1*4
  \pianoRHChorus
  b16(d g d e8-.) d16(c b d g d e8-.) d16( c | % 27c
  b16 d g d e d c b a8) <e g c>-> <fis a d>-> d'16( c |
  b16 d g d e8-.) d16(c b d g d e8-.) d16( c | % 27d
  b16 d g d e d c b a8-.) d,-. d-. r
%  \repeat volta 2 {
    <b, d g>8 16 16 8 <c d g>~4 r | % 28a
    <b d g>8 16 16 8 <a d g>~4 r |
    <b d g>8 16 16 8 <c d g>~4 r | % 28b
    <b d g>8-> r <c e g>-> r r <e' g c>-> <fis a d>-> r |
%  }
  R1*5
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1 | s1-\markup\italic simile  | s1 |
  s1\f | s1 | s1 | s2 s8 s4.\ff | % chorus
  s1\f | s1 | s1 | s1 |
  s1\f | s1 | s1 | s2 s8 s4.\ff | % chorus
  s1\f |s2-\markup\italic simile s\ff | s1\f | s1 | % 26c
  s1\f | s1 | s1 | s2 s8 s4.\ff | % chorus
  s1 | s1 | s1 | s1 |
  s1\f | s1 | s1 | s2 s8 s4.\ff | % chorus
  s1\f | s2-\markup\italic simile s2\ff | s1\f | s1 | % 27c
  s1\f | s1-\markup\italic simile | s1 | s2 s8 s4.\ff | % 21a
%  s1*5 |
}

pianoLHChorus = \relative {
  <g,, g'>4 r r q8 r | q4 r r q8 r | % 25c
  q4 r r q8 r | 8 r <c c'> r r q-> <d d'>-> r |
}

pianoLH = \relative {
  \global
  <g,, g'>4-> r r q8-> r |
  <g g'>4-> r r q8-> r |
  <g g'>4 r r q8 r | % 25b
  <g g'>4 r r q8 r |
  \pianoLHChorus
  g'8-> d'-> a'-> c,-> g'-> d'-> ~4 | % 26a
  g,,8-> d'-> a'-> c,-> g'-> d'-> ~4 |
  g,,8-> d'-> a'-> c,-> g'-> d'-> ~4 | % 26b
  <g,, d' g>8-> r <c g' c>-> r <d a' d>2-> |
  \pianoLHChorus
  g,8-> <d' a'>-> c-> <g' d>-> g,-> <d' a'>-> c-> <g' d'>-> | % 26c
  g,8-> <d' a'>-> c-> <g' d>-> r <c,, c'> <d d'> r |
  g,8-> <d' a'>-> c-> <g' d>-> g,-> <d' a'>-> c-> <g' d'>-> | % 26d
  g,8-> <d' a'>-> c-> <g' d>-> <d a' d>2->
  \pianoLHChorus
  R1*4
  \pianoLHChorus
  g8-> <d' a'>-> c-> <g' d>-> g,-> <d' a'>-> c-> <g' d'>-> | % 27c
  g,8 <d' a'> c <g' d'> r <c,, c'> <d d'> r |
  g8 <d' a'> c <g' d'> g, <d' a'> c <g' d'> | % 27d
  g,8 <d' a'> c <g' d'> <d a' d>2-> |
%  \repeat volta 2 {
    <g,, g'>4-> r r q8-> r | % 28a
    q4 r r q8 r |
    q4 r r q8 r | % 28b
    q8 r <c c'> r r q8-> <d d'>-> r |
%  }
  R1*5
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      \new RhythmicStaff \with {
        \override StaffSymbol.line-count = #0
        \override NoteHead.style = #'cross
        \omit Score.BarLine
        \omit Score.TimeSignature
      } \ClapTrack
      \new ChoirStaff <<
                                % Single melody staff
        \new Staff = melody \with {
          instrumentName = #"Tutti"
          shortInstrumentName = #"All"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \melody
          \addlyrics \words
        >>
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \soprano
          \addlyrics \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \alto
          \addlyrics \wordsSop
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Voice \bass
          \addlyrics \wordsSop
        >>
      >>
      \new PianoStaff = piano <<
        \new Staff = pianorh \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \pianoRH
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
      <<
        \new RhythmicStaff \with {
          \override StaffSymbol.line-count = #0
          \override NoteHead.style = #'cross
          \omit Score.BarLine
          \omit Score.TimeSignature
        } << \ClapTrack >>
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            instrumentName = #"Tutti"
            shortInstrumentName = #"All"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsSop
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsSop
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
      <<
        \new RhythmicStaff \with {
          \override StaffSymbol.line-count = #0
          \override NoteHead.style = #'cross
          \omit Score.BarLine
          \omit Score.TimeSignature
        } << \ClapTrack >>
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            instrumentName = #"Tutti"
            shortInstrumentName = #"All"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsSop}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
      <<
        \new RhythmicStaff \with {
          \override StaffSymbol.line-count = #0
          \override NoteHead.style = #'cross
          \omit Score.BarLine
          \omit Score.TimeSignature
        } << \ClapTrack >>
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            instrumentName = #"Tutti"
            shortInstrumentName = #"All"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsSop
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsSop}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
      <<
        \new RhythmicStaff \with {
          \override StaffSymbol.line-count = #0
          \override NoteHead.style = #'cross
          \omit Score.BarLine
          \omit Score.TimeSignature
        } << \ClapTrack >>
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            instrumentName = #"Tutti"
            shortInstrumentName = #"All"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsSop
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi"
  \score {
      <<
        \new RhythmicStaff \with {
          \override StaffSymbol.line-count = #0
          \override NoteHead.style = #'cross
          \omit Score.BarLine
          \omit Score.TimeSignature
        } << \ClapTrack >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsMidi
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
            \new Voice \melody
%            \addlyrics \wordsMidi
            \new Voice \alto
%            \addlyrics \wordsSopMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \transpose c' c \melody
%            \addlyrics \wordsMidi
            \new Voice \bass
%            \addlyrics \wordsSopMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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
