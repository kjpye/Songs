\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Locus Iste"
  subtitle    = "This is God's house"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Anton Bruckner (1824-96)"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "Tr. John Rutter"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
}

TempoTrack = {
  \tempo "Allegro Moderato" 4=120
  \set Score.tempoHideNote = ##t
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "82a" } s1*6
  \mark \markup { \box "82b" } s1*6
  \mark \markup { \box "82c" } s1*5
  \mark \markup { \box "82d" } s1*5
  \mark \markup { \box "83a" } s1*4
  \mark \markup { \box "83b" } s1*5
  \mark \markup { \box "83c" } s1*5
  \mark \markup { \box "83d" } s1*5
  \mark \markup { \box "83e" } s1*6
}

soprano = \relative {
  \global
  c''2.^\p b4
  a2 g4 r
  r4 g a e
  g4.^\> 8 f4\! r4 d'2.^\mf c4
  c2 b4 r
  r4 d^\f e g % 82b
  f4. 8 e4 r
  r4 g^\p g f
  r4 f,2 e4
  d2. c4 b4 r4 r2
  r4 d^\f d d % 82c
  d4. e8 f4(bes)
  d2. e4
  e4 a, r2
  r4 e^\ff e e
  e4. fis8 g4(c) % 82d
  e2. fis4
  fis4 b, r2
  R1
  fis4^\pp 4 4 4
  g8. 16 4 4 r % 83a
  e4 4 4 4
  f8.^\cresc 16 4 4 r
  f2^\p e
  a2.^\mf g4 % 83b
  f4. 8 e2
  e4(d) r2
  c'2.^\p b4
  a2 g4 r
  r4 g a e % 83c
  g4.^\> 8 f4\! r
  d'2.^\mf c4
  c2 b4 r
  r4 d^\f e g
  f4. 8 e4 r % 83d
  r4 f^\p f e
  r4 f,2 e4
  c2.^\cresc (e4
  f2 fis^\f~
  fis2) g % 83e
  R1
  r4 g^\pp f e
  f2 d
  d1~
  d2 2
  e2. r4
  \bar "|."
}

wordsSA = \lyricmode {
  Lo -- cus i -- ste a De -- o fa -- ctus est,
  lo -- cus i -- ste a De -- o fa -- ctus est,
  a De -- o, De -- o fa -- ctus est,
  in -- ae -- sti -- ma -- bi -- le __ sa -- cra -- men -- tum,
  in -- ae -- sti -- ma -- bi -- le __ sa -- cra -- men -- tum,
  ir -- re -- pre -- hen -- si -- bi -- lis est,
  ir -- re -- pre -- hen -- si -- bi -- lis est,
  ir -- re -- pre -- hen -- si -- bi -- lis est,
  Lo -- cus i -- ste a De -- o fa -- ctus est,
  lo -- cus i -- ste a De -- o fa -- ctus est,
  a De -- o, De -- o, De -- o,
  a De -- o, De -- o fa -- ctus est.
}

wordsSAMidi = \lyricmode {
  "Lo" "cus " i "ste " "a " De "o " fa "ctus " "est, "
  "\nlo" "cus " i "ste " "a " De "o " fa "ctus " "est, "
  "\na " De "o, " De "o " fa "ctus " "est, "
  "\nin" ae sti ma bi "le "  sa cra men "tum, "
  "\nin" ae sti ma bi "le "  sa cra men "tum, "
  "\nir" re pre hen si bi "lis " "est, "
  "\nir" re pre hen si bi "lis " "est, "
  "\nir" re pre hen si bi "lis " "est, "
  "\nLo" "cus " i "ste " "a " De "o " fa "ctus " "est, "
  "\nlo" "cus " i "ste " "a " De "o " fa "ctus " "est, "
  "\na " De "o, " De "o, " De "o, "
  "\na " De "o, " De "o " fa "ctus " "est. "
}

alto = \relative {
  \global
  e'2.\omit\p 4
  e2 4 r
  r4 e e e
  d4.^\> 8 4\! r
  fis2.^\f 4
  fis2 g4 r
  r4 g^\f g g % 82b
  g4. 8 4 r
  r4 g^\p g g
  r4 d2 c4
  b2 g
  g4 r4 r2
  r4 d'^\f d d % 82c
  d4. 8 d4(f)
  f2. g4
  a4 e r2
  r4 e^\ff e e
  e4. 8 4(g) % 82d
  g2. a4
  b4 fis r2
  R1
  e4^\pp e dis dis
  d8. 16 4 4 r % 83a
  d4 4 cis cis
  c8. 16 4 4 r
  b2^\p c
  c2.^\mf 4 % 83b
  c4 b c2
  c4(b) r2
  e2.^\p 4
  e2 4 r
  r4 e e e % 83c
  d4.^\> 8 4\! r
  fis2.^\mf 4
  fis2 g4 r
  r4 g^\f g g
  g4. 8 4 r % 83d
  r4 g^\p g g
  r4 d2 c4
  c4^\cresc(b bes2~
  bes4 a c2^\f~
  c2) b % 83w
  R1
  r4 c^\pp b c
  c2 2
  c1(
  b2) b
  c2. r4
  \bar "|."
}

tenor = \relative {
  \global
  g2.^\p 4
  c2 4 r
  r4 c c c
  a4.^\> 8 4\! r
  a2.^\mf d4
  d2 4 r
  r4 b^\f c d % 82b
  d4. 8 c4 r
  r4 d^\p d c
  r4 g2 4
  f2 e
  d4 r r2
  r4 d^\f bes' c % 82c
  d4. 8 2
  d2. 4
  d4 cis r2
  r4 e,^\ff c' d
  e4. 8 2 % 82d
  e2. 4
  e4 dis r2
  c4^\pp c c c
  b8. 16 4 4 r
  bes4 4 4 4 % 83a
  a8. 16 4 4 r
  aes4^\cresc 4 4 4
  g8.^\p 16 4 4 r
  f4^\mf f e e % 83b
  d4. 8 e4(c)
  g'2 r
  g2.^\p 4
  c2 4 r
  r4 c c c % 83c
  a4.^\> 8 4\! r
  a2.^\mf d4
  d2 4 r
  r4 b^\f c d
  d4. 8 c4 r % 83d
  r4 d^\p d c
  r4 g2 4
  g1^\cresc(
  f2 a^\f~
  a2) g % 83e
  R1
  r4 g^\pp g g
  a2 2
  g1~
  g2 g
  g2. r4
  \bar "|."
}

wordsT = \lyricmode {
  Lo -- cus i -- ste a De -- o fa -- ctus est,
  lo -- cus i -- ste a De -- o fa -- ctus est,
  a De -- o, De -- o fa -- ctus est,
  in -- ae -- sti -- ma -- bi -- le __ sa -- cra -- men -- tum,
  in -- ae -- sti -- ma -- bi -- le __ sa -- cra -- men -- tum,
  ir -- re -- pre -- hen -- si -- bi -- lis est,
  ir -- re -- pre -- hen -- si -- bi -- lis est,
  ir -- re -- pre -- hen -- si -- bi -- lis est,
  ir -- re -- pre -- hen -- si -- bi -- lis est,
  Lo -- cus i -- ste a De -- o fa -- ctus est,
  lo -- cus i -- ste a De -- o fa -- ctus est,
  a De -- o, De -- o, De -- o,
  a De -- o, De -- o fa -- ctus est.
}

wordsTMidi = \lyricmode {
  "Lo" "cus " i "ste " "a " De "o " fa "ctus " "est, "
  "\nlo" "cus " i "ste " "a " De "o " fa "ctus " "est, "
  "\na " De "o, " De "o " fa "ctus " "est, "
  "\nin" ae sti ma bi "le "  sa cra men "tum, "
  "\nin" ae sti ma bi "le "  sa cra men "tum, "
  "\nir" re pre hen si bi "lis " "est, "
  "\nir" re pre hen si bi "lis " "est, "
  "\nir" re pre hen si bi "lis " "est, "
  "\nir" re pre hen si bi "lis " "est, "
  "\nLo" "cus " i "ste " "a " De "o " fa "ctus " "est, "
  "\nlo" "cus " i "ste " "a " De "o " fa "ctus " "est, "
  "\na " De "o, " De "o, " De "o, "
  "\na " De "o, " De "o " fa "ctus " "est. "
}

bass = \relative {
  \global
  c2.\omit\p 4
  c2 4 4
  c2. 4
  d4.^\> 8 4\! r
  d2.^\mf 4
  g,2 4 g'^\f
  f2(e4) b % 82b
  c4. 8 4 4^\p
  b2 c
  b2 c
  g2 2
  g4 4^\f g a
  bes4. d8^\f g4(a) % 82c
  bes2. 4
  bes2(bes,)
  a4 a^\ff a b
  c4. e8^\ff a4(b)
  c2. 4 % 82d
  c2(c,)
  b2 r
  R1*9
  c2.^\p 4 % 83b+++
  c2 4 4
  c2. 4 % 83c
  d4.^\> 8 4\! r
  d2.^\mf 4
  g,2 4 g'^\f
  f2(e4) b
  c4. 8 4 4^\p % 83d
  b2 c
  b2 c
  g2^\cresc(g'4 cis,
  d2. dis4^\f
  e2) e % 83e
  R1
  r4 e^\pp d c
  f,2 fis
  g1~
  g2 2
  c2. r4
  \bar "|."
}

wordsBass = \lyricmode {
  Lo -- cus i -- ste a De -- o fa -- ctus est,
  lo -- cus i -- ste a De -- o fa -- ctus est,
  a De -- o, De -- o fa -- ctus est,
  in -- ae -- sti -- ma -- bi -- le __ sa -- cra -- men -- tum,
  in -- ae -- sti -- ma -- bi -- le __ sa -- cra -- men -- tum,

  Lo -- cus i -- ste a De -- o fa -- ctus est,
  lo -- cus i -- ste a De -- o fa -- ctus est,
  a De -- o, De -- o, De -- o,
  a De -- o, De -- o fa -- ctus est.
}

wordsBassMidi = \lyricmode {
  "Lo" "cus " i "ste " "a " De "o " fa "ctus " "est, "
  "\nlo" "cus " i "ste " "a " De "o " fa "ctus " "est, "
  "\na " De "o, " De "o " fa "ctus " "est, "
  "\nin" ae sti ma bi "le "  sa cra men "tum, "
  "\nin" ae sti ma bi "le "  sa cra men "tum, "

  "\nLo" "cus " i "ste " "a " De "o " fa "ctus " "est, "
  "\nlo" "cus " i "ste " "a " De "o " fa "ctus " "est, "
  "\na " De "o, " De "o, " De "o, "
  "\na " De "o, " De "o " fa "ctus " "est. "
}

\book {
  \bookOutputSuffix "single"
  \score {
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
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSA
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsSA
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsT
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
            \addlyrics \wordsBass
          >>
                                % Joint soprano/alto staff
%          \new Staff = women \with {
%            instrumentName = #"Soprano/Alto"
%            shortInstrumentName = #"SA"
%            midiInstrument = "choir aahs"
%          }
%          <<
%            \new Voice \RehearsalTrack
%            \new Voice \partCombine \soprano \alto
%            \new NullVoice \soprano
%            \addlyrics \words
%          >>
                                % Joint tenor/bass staff
%          \new Staff = men \with {
%            instrumentName = #"Tenor/Bass"
%            shortInstrumentName = #"TB"
%            midiInstrument = "choir aahs"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \tenor \bass
%          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%           printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%          >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
            \new Voice \soprano
            \addlyrics \wordsSA
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsSA
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsT
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
            \addlyrics \wordsBass
          >>
                                % Joint soprano/alto staff
%          \new Staff = women \with {
%            instrumentName = #"Soprano/Alto"
%            shortInstrumentName = #"SA"
%            midiInstrument = "choir aahs"
%          }
%          <<
%            \new Voice \RehearsalTrack
%            \new Voice \partCombine \soprano \alto
%            \new NullVoice \soprano
%            \addlyrics \words
%          >>
                                % Joint tenor/bass staff
%          \new Staff = men \with {
%            instrumentName = #"Tenor/Bass"
%            shortInstrumentName = #"TB"
%            midiInstrument = "choir aahs"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \tenor \bass
%          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%           printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%          >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSAMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
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
            \new Voice \bass
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
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
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
            \new Voice \tenor
            \addlyrics \wordsTMidi
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
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
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
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}
