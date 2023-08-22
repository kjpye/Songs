\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Songs My Mother Taught Me"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "A. Dvořák"
  arranger    = "Arr. James Easson"
  opus        = "Op. 55, No. 4"

  poet        = "English words by Natalia Macfarren"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 2/4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s2*6
  \textMark \markup { \box "1b" } s2*6
  \textMark \markup { \box "2a" } s2*6
  \textMark \markup { \box "2b" } s2*6
  \textMark \markup { \box "3a" } s2*7
  \textMark \markup { \box "3b" } s2*7
  \textMark \markup { \box "4a" } s2*6
  \textMark \markup { \box "4b" } s2*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Andante con moto" 4=80
  s2*49 s4 \tempo 4=26
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2*6 |
  s2 | s | s\p | s | s | s |
  s2 | s | s | s | s4\mp s\< | s2 | % 2a
  s4. s8\> | s2 | s | s4 s\! | s2 | s |
  s2 | s | s | s | s\p | s | s | % 3a
  s2*6 | s2\< |
  s2 | s8 s4.\! | s2\f | s | s\> | s\! | % 4a
  s2\mf | s2*5 |
}

soprano = \relative {
  \global
  R2*8 |
  c''4 b8(a) | c4 b8(a) | c8(f4 f,8) | c4 r |
  b'4 a8(g)  b4 a8(g) | b(e4 e,8) | 4 r  a a | b8(c) d(e) | % 2a
  f4.(b,8) | 4 r | c4. 8 | b4 a | g2 | 4 r |
  R2*4 | c4 b8(a) | c4 b8(a) | \tuplet 3/2 {c16(d e} f4 f,8) | % 3a
  f4 r | b a8(g) | b4 a8(g) | \tuplet 3/2 {b16(c d} e4 e,8) | 4 r | a a | b8(c) d(e) |
  f2( | e4) d | cis4. 8 | e4(d8 c) | b4 b | d8(b) a(f) | % 4a
  \grace {e16 f} g2 | 4 r | R2*4 |
  \bar "|."
}

wordsSop = \lyricmode {
  Songs my __ mo -- ther taught __ me
  In the days long van -- ish'd
  Sel -- dom from her __ eye -- lids
  were the tear -- drops ban -- ish'd
  Now I __ teach my __ chil -- dren
  Each me -- lo -- dious mea -- sure
  Oft the tears are flow -- ing
  Oft they flow __ from my mem' -- ry's trea -- sure.
}

wordsSopMidi = \lyricmode {
  "Songs " "my "  mo "ther " "taught "  "me "
  "\nIn " "the " "days " "long " van "ish'd "
  "\nSel" "dom " "from " "her "  eye "lids "
  "\nwere " "the " tear "drops " ban "ish'd "
  "\nNow " "I "  "teach " "my "  chil "dren "
  "\nEach " me lo "dious " mea "sure "
  "\nOft " "the " "tears " "are " flow "ing "
  "\nOft " "they " "flow "  "from " "my " mem' "ry's " trea "sure. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2*6 |
  s2 | s | s\p | s | s\> | s\! |
  s2 | s | s | s | s\mp | s\< | % 2a
  s4 s\! | s2*5 |
  s2 | s | s | s | s\p | s | s | % 3a
  s2*6 | s2\< |
  s2 | s8 s4.\! | s2 | s | s | s | % 4a
  s2*6 |
}

alto = \relative {
  \global
  R2*8 | e'2~ | 8 8 8 c | a'2 | g |
  r4 f8 8 | 2( | e4) b8 8  b4 a8(g) | c4 c | d8 e b' a | % 2a
  g8(d'4 f,8) | 4 8 8 | e2 | f | e | e4 r |
  R2*4 | e4 e | 4. 8 | f2 | % 3a
  b,4 4~ | 8(d) f(d) | f4. 8 | e8(g4 g,8) | 2 | r8 f'4 c8 | e4 d8(c) |
  b4(b'~ | 4) 4 | a g | fis2 | f4. 8 | f(g) f(b,) | % 4a
  c4.(e8) | 4 r | R2*4 |
  \bar "|."
}

wordsAlto = \lyricmode {
  Songs __ my mo -- ther taught me
  In the days __
  In the days long van -- ish'd
  Sel -- dom from her eye -- lids
  were the tear -- drops ban -- ish'd
  Now I teach my chil -- dren
  Each __ me -- lo -- dious mea -- sure
  Oft the tears are flow -- ing
  Oft they flow from my mem' -- ry's trea -- sure.
}

wordsAltoMidi = \lyricmode {
  "Songs "  "my " mo "ther " "taught " "me "
  "\nIn " "the " "days " 
  "\nIn " "the " "days " "long " van "ish'd "
  "\nSel" "dom " "from " "her " eye "lids "
  "\nwere " "the " tear "drops " ban "ish'd "
  "\nNow " "I " "teach " "my " chil "dren "
  "\nEach "  me lo "dious " mea "sure "
  "\nOft " "the " "tears " "are " flow "ing "
  "\nOft " "they " "flow " "from " "my " mem' "ry's " trea "sure. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2*6 |
  s2 | s | s\p | s | s | s |
  s2 | s | s | s | s\mp | s\< | % 2a
  s4 s\> | s2 | s4\! s\p | s2 | s | s |
  s2 | s | s | s | s\p | s | s | % 3a
  s2*6 | s2\< |
  s2 | s | s | s\> | s | s\! | % 4a
  s2*6 |
}

tenor = \relative {
  \global
  R2*8 | g4 4 | a a | f8(c'4.) | b2 |
  d4. 8 | 4. b8 | g2~ | 4 4 | r c8 8 | 4 d8(c) | % 2a
  b4.(d8) | 2 | r4 a8 a | a(c) c(d) | e4.(c8) | 4 r |
  R2*4 | r4 g8 g | a2~ | 4 4 | % 3a
  g2 | 4. r8 | r g4 b8 | 4 4 | 2 | a4 r | c b8(a) |
  d4. 8 | 4.(e8) | 2 | d8(c) b(a) | g4 a | a8(b) c(d) | % 4a
  e4.(c8) | 4 r | R2*4 |
  \bar "|."
}

wordsTenor = \lyricmode {
  Songs my mo -- ther taught me
  In the days long van -- ish'd
  Sel -- dom from her __ eye -- lids
  were the tear -- drops ban -- ish'd
  Now I teach __ my chil -- dren
  Each me -- lo -- dious mea -- sure
  Oft the tears are flow -- ing,
  flow -- ing from my mem' -- ry's trea -- sure.
}

wordsTenorMidi = \lyricmode {
  "Songs " "my " mo "ther " "taught " "me "
  "\nIn " "the " "days " "long " van "ish'd "
  "\nSel" "dom " "from " "her "  eye "lids "
  "\nwere " "the " tear "drops " ban "ish'd "
  "\nNow " "I " "teach "  "my " chil "dren "
  "\nEach " me lo "dious " mea "sure "
  "\nOft " "the " "tears " "are " flow "ing, "
  "\nflow" "ing " "from " "my " mem' "ry's " trea "sure. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2*6 |
  s2 | s | s\p | s | s | s |
  s2 | s | s | s | s\mp | s | % 2a
  s2*6 |
  s2 | s | s | s | s\p | s | s | % 3a
  s2*6 | s2\< |
  s2 | s | s8 s4.\! | s2\> | s | s\! | % 4a
  s2*6 |
}

bass = \relative {
  \global
  R2*8 | c4 c | a a | d2~ | 4 4 |
  R2 | g,4. 8 | c4 c | c c | <f, \tweak font-size #-2 f'>4 4 | <fis \tweak font-size #-2 fis'>4. 8 | % 2a
  <g \tweak font-size #-2 g'>4(g') | gis gis,8 8 | a2 | f | c' | 4 r |
  R2*4 | c2~ | 8 8 8 8 | d2~ | % 3a
  d4 d | g g | g, g | c2~ | 4 4 | <f, \tweak font-size #-2 f'>4. 8 | <fis \tweak font-size #-2 fis'>4. fis'8 |
  g2( | gis4) 4 | a a, | d2 | g,4. 8 | 4. 8 | % 4a
  c2 | 4 r | R2*4 |
  \bar "|."
}

wordsBass = \lyricmode {
  Songs my mo -- ther taught __ me
  In the days long van -- ish'd
  Sel -- dom from her __ eye -- lids
  were the tear -- drops ban -- ish'd
  Now __ I teach my chil -- dren
  Each me -- lo -- dious mea -- sure
  Oft the tears are flow -- ing
  Oft they flow from my mem' -- ry's trea -- sure.
}

wordsBassMidi = \lyricmode {
  "Songs " "my " mo "ther " "taught "  "me "
  "\nIn " "the " "days " "long " van "ish'd "
  "\nSel" "dom " "from " "her "  eye "lids "
  "\nwere " "the " tear "drops " ban "ish'd "
  "\nNow "  "I " "teach " "my " chil "dren "
  "\nEach " me lo "dious " mea "sure "
  "\nOft " "the " "tears " "are " flow "ing "
  "\nOft " "they " "flow " "from " "my " mem' "ry's " trea "sure. "
}

pianoRHone = \relative {
  \global \set tieWaitForNote = ##t
  \repeat unfold 2 {r8 <f' b f'>4->( \grace {e'16 f} <e, b' e>4  <d b' d>8) |}
  \repeat unfold 2 {c'4.( \grace {b8 c} b4 a8)}
  \repeat unfold 2 {b4.( \grace {a16 b} a4 g8)|}
  \repeat unfold 2 {a4.(\grace{g16 a} g4 f8)|} % 1b
  \clef bass e2. | e | a | g |
  f2. | f | e | e | r8 \clef treble <c e a c>4~8 4 | r8 <e a c e>4 <d b' d> <c a' c>8 | % 2a
  r8 <b f' b>4~8 4 | % 2b
  r8 <f' b f'>4~8 4 |
  r8 <e a c e>4~8 4 |
  r8 <c f a c>4~8 <d a' b d>4 |
  \repeat unfold 2 {<e g c e>4.\arpeggio(\grace {d'16 e} d4 c8) |} \voiceOne 
  \repeat unfold 2 {c4. \grace {b16 c} c4.|} \oneVoice % 3a
  e,2.->~ | e | \clef bass e | e \voiceOne | \clef treble a4. \grace {c16 f~ c~} <f, c' f>4. |
  g4. \grace {b16 f'~ b,~} <f b f'>4. \clef bass | % 3b
  f2. | f | e4. \clef treble \grace {b'16 e~ b~} <e, b' e>4. |
  e4. \grace {a16 e'~ a,~} <e a e'>4. |
  r8 <c e a c>4~8 4 | r8 <e c' e>4 <d b' d> <c a' c>8 |
  r8 <f b f'>4 \grace {f'16 b~ f~} <b, f' b>4. | % 4a
  r8 <e, b' f'>4 \grace {e'16 b'~ e,~} <b e b'>4. |
  r8 <a cis a'>4 \grace {cis g'~ cis,~} <g cis g'>4. |
  r8 <fis c' fis>4 \grace {c'16 fis~ c~} q4. |
  r8 <f, b f'>4 \grace {b16 f'~ b,~} <f b f'>4.~ | 8 4 <f a f'>4 <f b f'>8 |
  \repeat unfold 2 {<e g c e>4.\arpeggio(\grace{d'16 e} d4 c8) |} % 4b
  c4. \grace {b16 c~} c4. |
  c4. c | <e, g>2. |
  \grace {g16 e~} <e g>2.\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2.*8 |
  \repeat unfold 2 {r8 <e g c>4~8 4 |} % 1b++
  \repeat unfold 2 {r8 <a c f>4~8 4 |}
  \repeat unfold 2 {r8 <d, e b'>4~8 4 |} % 2a
  \repeat unfold 2 {r8 <c g'>4~8 4 |} s2.*2 |
  s2.*6 |
  \repeat unfold 2 {b''4.(a4 g16 f) |} s2. | s | r8 <e, g c>4~8 4 | r8 q4~8 4 | r8 <a c f>4 s4. | % 3a
  r8 <g b f'>4 s4. | r8 <f g d'>4~8 4 | r8 q4~8 4 | r8 <e b'>4 s4. | r8 b'4 s4. | s2. | s |
  s2.*6 | % 4a
  s2. | s | c'4.(b4 a8) | b4.(a4 g16 f) | s2. | s |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\mf | s | s | s\dim | s | s |
  s2\pp | s | s\pp | s | s | s |
  s2 | s | s\> | s | s8\! s4.\< | s2 | % 2a
  s2\f | s\dim | s8 s4.\> | s2 | s\p | s |
  s2 | s | s\> | s | s\pp | s | s | % 3a
  s2 | s | s | s | s | s8 s4.\< | s2\cresc |
  s2 | s | s\f\< | s\! | d\dim | s | % 4a
  s2\pp | s | s\> | s | s\!-\markup\bold\italic morendo | s |
}

pianoLHone = \relative {
  \global
  \repeat unfold 2 {g,,8 <d'' g d'>4 <g b> <f b>8 |}
  \repeat unfold 2 {a,,8 <e'' a c>4~8 4 | }
  \repeat unfold 2 {f,,8 <c'' f a>4~8 4 |}
  a,8 <e'' a c>4~8 4~ | 8 4~8 4 | % 1b
  \voiceOne r8 <g, c>4~8 4 |
  r8 <a c>4~8 4 |
  r8 <g d'>4~8 4 |
  r8 q4~8 4 |
  r8 <g b>4~8 4 | % 2a
  r8 q4~8 4 |
  r8 <g c>4~8 4 |
  r8 4 4 8 |
  \oneVoice <f, f'>8 <c'' e a>4~8 4 |
  <fis,, fis'>8 d''4 4 8 |
  <g,, g'>8 <d'' g d'>4~8 4 | % 2b
  <gis,, gis'>8 <d'' gis b d>4~8 4 |
  <a, a'>8 <c' e a>4~8 4 |
  <f,, f'>8 <d'' f a>4~8 4 |
  <c,, c'>8 <g'' c e g>4~8 4 |
  <c,, c'>8 <g'' c e g>4~8 4 |
  a,8 <c' e a>4~8 4 | % 3a
  <f,, f'>8 <c'' f a>4~8 4 |
  <a, a'>8 <c' e a>4~8 4~ |
  q8 4~8 4 |
  \voiceOne r8 <g c>4~8 4 |
  r8 <a c>4~8 4 |
  r8 <a f'>4~8 4 |
  r8 <g d'>4~8 4 | % 3b
  r8 4~8 4 |
  r8 <g b d>4~8 4 | \oneVoice
  <c,, c'>8 <c' g' c>4~8 4 | \voiceOne
  r8 <g' c e>4~8 4 | \oneVoice
  <f, f'>8 <c'' e a>4~8 4 |
  <fis,, fis'>8 <d'' c'>4 <d b'> <d a'>8 |
  <g,, g'>8 <d'' g d'>4~8 4 | % 4a
  <fis,, fis'>8 <d'' b' d>4~8 4 |
  <a, a'>8 <e'' g cis>4~8 4 |
  <d,, d'>8 <a'' d a'>4~8 4 |
  g,8 <g' d'>4~8 4~ |
  q8 4~4. |
  <c,, c'>8 <g'' c e g>4~8 4 | % 4b
  <c,, c'>8 <g'' c e g>4~8 4 |
  a,8 <c' e a>4~8 4 |
  f,8 <c' e a>4~8 4 |
  <c,, c'>8 <g'' c e g>4~8 4~ |
  q8 4~8 4\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s2.*8 |
  c,2. | a | d | d | % 1b++
  b2. | b | c | c | s | s | % 2a
  s2.*6 |
  s2.*4 | c2. | c | d | % 3a
  d2. | b | g | s | c | s | s |
  s2.*12 | % 4
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "single"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \TempoTrack
            \new Voice \scaleDurations 2/3 \pianoRHone
            \new Voice \scaleDurations 2/3 \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \scaleDurations 2/3 \pianoLHone
            \new Voice \scaleDurations 2/3 \pianoLHtwo
          >>
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
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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

#(set-global-staff-size 19)

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
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \TempoTrack
            \new Voice \scaleDurations 2/3 \pianoRHone
            \new Voice \scaleDurations 2/3 \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \scaleDurations 2/3 \pianoLHone
            \new Voice \scaleDurations 2/3 \pianoLHtwo
          >>
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
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \TempoTrack
            \new Voice \scaleDurations 2/3 \pianoRHone
            \new Voice \scaleDurations 2/3 \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \scaleDurations 2/3 \pianoLHone
            \new Voice \scaleDurations 2/3 \pianoLHtwo
          >>
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
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \TempoTrack
            \new Voice \scaleDurations 2/3 \pianoRHone
            \new Voice \scaleDurations 2/3 \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \scaleDurations 2/3 \pianoLHone
            \new Voice \scaleDurations 2/3 \pianoLHtwo
          >>
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
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-tenor"
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \TempoTrack
            \new Voice \scaleDurations 2/3 \pianoRHone
            \new Voice \scaleDurations 2/3 \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \scaleDurations 2/3 \pianoLHone
            \new Voice \scaleDurations 2/3 \pianoLHtwo
          >>
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
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \TempoTrack
            \new Voice \scaleDurations 2/3 \pianoRHone
            \new Voice \scaleDurations 2/3 \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \scaleDurations 2/3 \pianoLHone
            \new Voice \scaleDurations 2/3 \pianoLHtwo
          >>
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
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "midi-sop"
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass

          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \TempoTrack
            \new Voice \scaleDurations 2/3 \pianoRHone
            \new Voice \scaleDurations 2/3 \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \scaleDurations 2/3 \pianoLHone
            \new Voice \scaleDurations 2/3 \pianoLHtwo
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
  \bookOutputSuffix "midi-alto"
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \TempoTrack
            \new Voice \scaleDurations 2/3 \pianoRHone
            \new Voice \scaleDurations 2/3 \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \scaleDurations 2/3 \pianoLHone
            \new Voice \scaleDurations 2/3 \pianoLHtwo
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \TempoTrack
            \new Voice \scaleDurations 2/3 \pianoRHone
            \new Voice \scaleDurations 2/3 \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \scaleDurations 2/3 \pianoLHone
            \new Voice \scaleDurations 2/3 \pianoLHtwo
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \TempoTrack
            \new Voice \scaleDurations 2/3 \pianoRHone
            \new Voice \scaleDurations 2/3 \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \set Staff.timeSignatureFraction = 6/8
            \new Voice \scaleDurations 2/3 \pianoLHone
            \new Voice \scaleDurations 2/3 \pianoLHtwo
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
