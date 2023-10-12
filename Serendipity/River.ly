\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "River"
  subtitle    = \markup {"(From the motion Picture " \italic "The Mission" ")"}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ennio Morricone"
  arranger    = "Transcribed by Alan Billingsley"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 3/4
}

drumPitchNames.sn   = #'snare
drumPitchNames.hib  = #'hibongo
drumPitchNames.lob  = #'lobongo
drumPitchNames.bd   = #'bass
drumPitchNames.timp = #'timpani

#(define mystyle
  '((snare       default #f  1)
    (hibongo     default #f  0)
    (lobongo     default #f -1)
    (bass        default #f -3)
    (timpani     default #f -4)
  ))

midiDrumPitches.snare = d
midiDrumPitches.hibongo = c,
midiDrumPitches.lobongo = b,,
midiDrumPitches.bass = c
midiDrumPitches.timpani = c

DrumTimp = \drummode {
  \voiceTwo
  R2. | timp16_\markup "Timp." 16 16 16 4 r |
  r4 r r8 timp16 16 |
  timp16 16 16 16 4 r |
}

DrumSnare = \drummode {
  \voiceOne
  R2. | r4 r \repeat tremolo 8 {sn32^\markup "S.D."} |
  R2. | r4 r \repeat tremolo 8 {sn32} |
}

DrumBass = \drummode {
  s2.*9 | bd4_\markup "B.D." r r |
  s2.*4 | bd4 r r | s2.*4 | % 4
  bd4 r r | bd4 r r | s2.*3 | bd4 r r |bd4 r r | s2.*2 |
  s2. | bd4 r r | bd4 r r | s2. | r4 bd r | s2. | bd4 r r | bd r r | s2. | % 6
  r4 bd r | s2. | bd4 r r | bd r r | s2. | r4 bd r | s2. | bd4 r r8 bd-> | bd-> r r4 r |
}

DrumBongo = \drummode {
  \voiceOne
  s2.*4 |
  hib16^\markup "Bongos" hib lob hib lob lob hib lob lob hib lob lob |
  \repeat unfold 40 {hib16 hib lob hib lob lob hib lob lob hib lob lob |}
  hib8 r r4 r |
}

dynamicsDrum = {
  \override DynamicTextSpanner.style = #'none
  s2. | s2.\mp | s2.*8 |
  s2.*9 | % 4
  s2.*9 |
  s2. | s\omit\cresc^\markup\italic "poco a poco cresc. al fine" | s2.*7 | % 6
  s2.*6 | s2.\ff | s2.*2 |
}

DrumTrack = <<
  \DrumSnare
  \DrumBongo
  \DrumBass
  \DrumTimp
>>

TempoTrack = {
  \tempo Majestically 4=88
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "3a" } s2.*4
  \textMark \markup { \box "3b" } s2.*3
  \textMark \markup { \box "3c" } s2.*3
  \textMark \markup { \box "4a" } s2.*3
  \textMark \markup { \box "4b" } s2.*3
  \textMark \markup { \box "4c" } s2.*3
  \textMark \markup { \box "5a" } s2.*3
  \textMark \markup { \box "5b" } s2.*3
  \textMark \markup { \box "5c" } s2.*3
  \textMark \markup { \box "6a" } s2.*3
  \textMark \markup { \box "6b" } s2.*3
  \textMark \markup { \box "6c" } s2.*3
  \textMark \markup { \box "7a" } s2.*3
  \textMark \markup { \box "7b" } s2.*3
  \textMark \markup { \box "7c" } s2.*3
}

ChordTrack = \chordmode {
  R2. | s2.*6 | g4 c2 | f2 g4 | c2 s8 g |
  f4 c4. g8 | f4 c4. a8:m | g4 c2 | % 4a
  f2 g4 | c2 s8 g | f4 c4. g8 |
  f4 c4. a8:m | g4 c2 | f2 g4 |
  c2 s8 g | f4 c4. g8 | f4 c4. a8:m | % 5a
  g4 c2 | f g4 | c2 s8 g |
  f4 c4. g8 | f4 c4. a8:m | g4 c2 |
  f2 g4 | c2 s8 g | f4 c4. g8 | % 6a
  f4 c4. a8:m | g4 c2 | f g4 |
  c2 s8 g | f4 c4. g8 | f4 c4. a8:m |
  g4 c2 | f g4 | c2 s8 g | % 7a
  f4 c4. g8 | f4 c4. a8:m | g4 c2 |
  f2 g4 | c2. | s |
}

dynamicsVocal = {
  \override DynamicTextSpanner.style = #'none
  s2.*4 | s2.\mp | s2.*5 |
  s2.*9 | % 4
  s2.*5 | s2.\mf | s2.*3 |
  s2. | s\omit\cresc^\markup\italic "poco a poco cresc. al fine" | s2.*7 | % 6
  s2.*6 | s2.\ff | s2.*2 |
}

apart   = \partCombineApart
auto    = \partCombineAutomatic
pcchord = \partCombineChords

soprano = \relative {
  \global
  R2.*4 |
  e'8 r e4 8 d | f8 r e4 8 d | f r e4 8 c |
  d8 r c4 r | c8-> r c-> r d-> r | e r e4 8 d |
  f8 r e4 8 d | f r e4 8 c | d r c4 r | % 4a
  c8-> r c-> r d-> r | g r g4 8 f | a r g4 8 f |
  a8 r g4 8 e | f r e4 r | f8-> r f-> r g-> r |
  g8 r g4 8 f | a r g4 8 f | a r g4 8 e | % 5a
  f8 r e4 r | f8-> r f-> r g-> r | \pcchord <g c>^\markup "div." r q4 8 <f b> |
  <a d>8 r <g c>4 8 <f b> | <a d> r <g c>4 8 <e a> | <f b> r <g c>4 r |
  <a c>8-> r q-> r <b d>-> r | <c e> r q r q8 <b d> | <c f> r <c e>4 8 <b d> | % 6a
  <c f>8 r <c e>4 8 <a c> | <b d> r <g c>4 r | <a c>8-> r q-> r <b d>-> r |
  <c e>8 r q4 8 <b d> | <c f> r <c e>4 8 <b d> | <c f> r <c e>4 8 <a c> |
  <b d>8 r <g c>4 r | <a c>8-> r q-> r <b d>-> r | <e g> r q4 8 <d f> | % 7a
  <f a>8 r <e g>4 8 <d f> | <f a> r <e g>4 8 <c e> | <d f> r <c e>4 r |
  <c f>8-> r q-> r <d g>-> r | <e g>2.-> ~ | 8 r r4 r |
  \bar "|."
}

words = \lyricmode {
  Vi -- ta, vi -- ta no -- stra tel -- lus no -- stra vi -- ta no -- stra sic cla -- mant.
  Vi -- ta, vi -- ta no -- stra tel -- lus no -- stra vi -- ta no -- stra sic cla -- mant.
  Poe -- na, poe -- na no -- stra vi -- res no -- stra poe -- na no -- stra sic cla -- mant.
  Poe -- na, poe -- na no -- stra vi -- res no -- stra poe -- na no -- stra sic cla -- mant.
  I -- ra, i -- ra no -- stra fi -- des no -- stra i -- ra no -- stra sic cla -- mant.
  Vi -- ta, vi -- ta no -- stra tel -- lus no -- stra vi -- ta no -- stra sic cla -- mant.
  Vi -- ta, vi -- ta no -- stra tel -- lus no -- stra vi -- ta no -- stra sic cla -- mant.
  Poe -- na, poe -- na no -- stra vi -- res no -- stra poe -- na no -- stra sic cla -- mant ah. __
}

wordsMidi = \lyricmode {
  "Vi" "ta, " vi "ta " no "stra " tel "lus " no "stra " vi "ta " no "stra " "sic " cla "mant. "
  "\nVi" "ta, " vi "ta " no "stra " tel "lus " no "stra " vi "ta " no "stra " "sic " cla "mant. "
  "\nPoe" "na, " poe "na " no "stra " vi "res " no "stra " poe "na " no "stra " "sic " cla "mant. "
  "\nPoe" "na, " poe "na " no "stra " vi "res " no "stra " poe "na " no "stra " "sic " cla "mant. "
  "\nI" "ra, " i "ra " no "stra " fi "des " no "stra " i "ra " no "stra " "sic " cla "mant. "
  "\nVi" "ta, " vi "ta " no "stra " tel "lus " no "stra " vi "ta " no "stra " "sic " cla "mant. "
  "\nVi" "ta, " vi "ta " no "stra " tel "lus " no "stra " vi "ta " no "stra " "sic " cla "mant. "
  "\nPoe" "na, " poe "na " no "stra " vi "res " no "stra " poe "na " no "stra " "sic " cla "mant " "ah. " 
}

alto = \relative {
  \global
  R2.*4 |
  c'8 r c4 8 b | c8 r c4 8 b | c r c4 8 a |
  b8 r g4 r | a8-> r a-> r b-> r | c r c4 8 b |
  c8 r c4 8 b | c r c4 8 a | b r g4 r | % 4a
  a8-> r a-> r b-> r | e r e4 8 d | f r e4 8 d |
  f8 r e4 8 c | d r c4 r | c8-> r c-> r d-> r |
  e8 r e4 8 d | f r e4 8 d | f r e4 8 c | % 5a
  d8 r c4 r | c8-> r c-> r d-> r | e r e4 8 d |
  f8 r e4 8 d | f r e4 8 c | d r e4 r |
  f8-> r f-> r g-> r | g r g4 8 f | a r g4 8 f | % 6a
  a8 r g4 8 e | f r e4 r | f8-> r f-> r g-> r |
  g8 r g4 8 f | a r g4 8 f | a r g4 8 e |
  f8 r e4 r | f8-> r f-> r g-> r | c r c4 8 b | % 7a
  c8 r c4 8 b | c r c4 8 a | b r g4 r |
  a8-> r a-> r b-> r | c2.-> ~ | 8 r r4 r |
  \bar "|."
}

tenor = \relative {
  \global
  R2.*4 |
  g8 r g4 8 8 | a8 r g4 8 8 | a r g4 8 e |
  f8 r e4 r | f8-> r f-> r g-> r | g r g4 8 8 |
  a8 r g4 8 8 | a r g4 8 e | f r e4 r | % 4a
  f8-> r f-> r g-> r | c r c4 8 b | c r c4 8 b |
  c8 r c4 8 a | b r g4 r | a8-> r a-> r b-> r |
  c8 r c4 8 b | c r c4 8 b | c r c4 8 a | % 5a
  b8 r g4 r | a8-> r a-> r b-> r | c r c4 8 b |
  c8 r c4 8 b | c r c4 8 a | b r c4 r |
  c8-> r c-> r d-> r | c r c4 8 b | c r c4 8 b | % 6a
  c8 r c4 8 a | g r g4 r | c8-> r c-> r d-> r |
  c8 r c4 8 b | c r c4 8 b | c r c4 8 a |
  b8 r c4 r | c8-> r c-> r d-> r | e r e4 8 d | % 7a
  c8 r e4 8 d | c r e4 8 c | d r c4 r |
  c8-> r c-> r d-> r | e2.-> ~ | 8 r r4 r |
  \bar "|."
}

bass = \relative {
  \global
  R2.*4 |
  c8 r c4 8 g' | f r c4 8 g' | f r c4 8 a |
  g8 r c4 r | f8-> r f-> r g-> r | c, r c4 8 g' |
  f8 r c4 8 g' | f r c4 8 a | g r c4 r | % 4a
  f8-> r f-> r g-> r | c, r c4 8 g' | f r c4 8 g' |
  f8 r c4 8 a | g r c4 r | f8-> r f-> r g-> r |
  c,8 r c4 8 g' | f r c4 8 g' | f r c4 8 a | % 5a
  g8 r c4 r | f8-> r f-> r g-> r | c, r c4 8 g' |
  f8 r c4 8 g' | f r c4 8 a | g r c4 r |
  f8-> r f-> r g-> r | c, r c4 8 g' | f r c4 8 g' | % 6a
  f8 r c4 8 a | g r c4 r | f8-> r f-> r g-> r |
  c,8 r c4 8 g' | f r c4 8 g' | f r c4 8 a |
  g8 r c4 r | f8-> r f-> r g-> r | c, r c4 8 g' | % 7a
  f8 r c4 8 g' | f r c4 8 a | g r c4 r |
  f8-> r f-> r g-> r | c,2.-> ~ | 8 r r4 r |
  \bar "|."
}

pianoRH = \relative {
  \global
  g2.~ | <g g'>~ | <g b g'> ~ | <g b d b> |
  <g c e>8 r q4 8 <g b d> | % 3b
  <a c f>8 r <g c e>4 8 <g b d> |
  <a c f>8 r <g c e>4 8 <a c> |
  <g b d>8 r <e g c>4 r | % 3c
  <f a c>2 <g b d>8 r |
  <g c e>8 r q4 8 <g b d> |
  <a c f>8 r <g c e>4 8 <g b d> | % 4a
  <a c f>8 r <g c e>4 8 <a c> |
  <g b d>8 r <e g c>4 r |
  <f a c>2 <g b d>8 r | % 4b
  <c e g>8 r q4 <c g'>8 <b d f> |
  <c f a>8 r <c e g>4 8 <b d f> |
  <c f a>8 r <c e g>4 8 <a c e> | % 4c
  <b d f>8 r <g c e>4 r |
  <a c f>2 <b d g>8 r |
  <c e g>8 r q4 <c g'>8 <b d f> | % 5a
  <c f a>8 r <c e g>4 8 <b d f> |
  <c f a>8 r <c e g>4 8 <a c e> |
  <b d f>8 r <g c e>4 r | % 5b
  <a c f>2 <b d g>8 r |
  <e g c>8 r q4 8 <d f b> |
  <f a d>8 r <e g c>4 8 <d f b> | % 5c
  <f a d>8 r <e g c>4 8 <c e a> |
  <d f b>8 r <e g c>4 r |
  <f a c>2 <g b d>8 r | % 6a
  <g c e>8 r q4 8 <f b d> |
  <a c f>8 r <g c e>4 8 <f b d> |
  <a c f>8 r <g c e>4 8 <e a c> | % 6b
  <f b d>8 r <e g c>4 r |
  <c f a>8 <f a c>16 <c f a> q8 [ <c f> ] <d g b>8 r |
  <g c e>8 r q4 8 <f b d> | % 6c
  <a c f>8 r <g c e>4 8 <f b d> |
  <a c f>8 r <g c e>4 8 <e a c> |
  <f b d>8 r <e g c> q <e g> <e g c> | % 7a
  <c f a>8 <f a c>16 <c f a> q8 <f a c> <g b d> <b d g> |
  <c e g>8 r q4 8 <b d f> |
  <c f a>8 r <c e g>4 8 <b d f> | % 7b
  <c f a>8 r <c e g>4 8 <a c e> |
  <b d f>8 r <g c e>8 8 <e g c> <g c e> |
  <a c f>8 <b f'> <a f'> r <b d g> r | % 7c
  <<{\voiceOne g'16 a g f g2} \new Voice {\voiceTwo <c, e>2.}>> |
  <c e g c>8 r r4 r |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mp | s2.*9 |
  s2.*9 | % 4
  s2.*5 | s2.\mf | s2.*3 |
  s2. | s\omit\cresc^\markup\italic "poco a poco cresc. al fine" | s2.*7 | % 6
  s2.*6 | s2.\ff | s2.*2 |
}

pianoLH = \relative {
  \global
  g,2.~ | g ~ | <g, g'>~ | q |
  c'8 r c4 8 g | f r c'4 8 g | f r c'4 8 a |
  g8 r c,4 r | f8 r f r g r | c r c4 8 g |
  f8 r c'4 8 g | f r c'4 8 a | g r c,4 r | % 4a
  f8 r f r g r | c r c4 8 g | f r c'4 8 g |
  f8 r c'4 8 a | g r c,4 r | f8 r f r g r |
  c8 r c4 8 g | f r c'4 8 g | f r c'4 8 a | % 5a
  g8 r c,4 r | f8 r f r g r | <c, c'>8 r q4 8 <g' g'> |
  <f f'>8 r <c c'>4 8 <g' g'> | <f f'> r <c c'>4 8 <a a'> | <g g'> r <c c'>4 r |
  f8 r f r g r | <c, c'> r q4 8 <g' g'> | <f f'> r <c c'>4 8 <g' g'> | % 6a
  <f f'>8 r <c c'>4 8 <a a'> | <g g'> r <c c'>4 r | <f f'>8 r q r <g g'> r |
  <c, c'>8 r q4 8 <g' g'> | <f f'> r <c c'>4 8 <g' g'> | <f f'> r <c c'>4 8 <a a'> |
  <g g'>8 r <c c'>4 r | <f, f'>8 r q r <g g'> r | <c c'> r q4 8 <g' g'> | % 7a
  <f f'>8 r <c c'>4 8 <g' g'> | <f f'> r <c c'>4 8 <a a'> | <g g'> r <c c'>4 4 |
  <f f'>8 r q r <g g'> r | <c, c'>2~8 <g g'>-> | <c c'>-> r r4 r |
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsVocal
            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsVocal
            \new Voice \partCombine #'(2 . 88) \tenor \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new DrumStaff = percussion \with {
%        \override StaffSymbol.line-count = #5
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } <<
        \DrumTrack
        \new Dynamics \with {alignBelowContext = percussion} \dynamicsDrum
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
        \DrumStaff
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsVocal
            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsVocal
            \new Voice \partCombine #'(2 . 88) \tenor \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new DrumStaff = percussion \with {
%        \override StaffSymbol.line-count = #5
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } <<
        \DrumTrack
        \new Dynamics \with {alignBelowContext = percussion} \dynamicsDrum
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
        \DrumStaff
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
  \bookOutputSuffix "singlepage-sep"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new DrumStaff = percussion \with {
%        \override StaffSymbol.line-count = #5
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } <<
        \DrumTrack
        \new Dynamics \with {alignBelowContext = percussion} \dynamicsDrum
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
        \DrumStaff
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \soprano
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocal}
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocal}
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        <<
          \new ChordNames { \teeny \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new DrumStaff = percussion \with {
%        \override StaffSymbol.line-count = #5
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } <<
        \magnifyStaff #4/7
        \DrumTrack
        \new Dynamics \with {alignBelowContext = percussion} {\teeny \dynamicsDrum}
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
        \DrumStaff
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
            \addlyrics \words
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocal}
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocal}
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        <<
          \new ChordNames { \teeny \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new DrumStaff = percussion \with {
%        \override StaffSymbol.line-count = #5
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } <<
        \magnifyStaff #4/7
        \DrumTrack
        \new Dynamics \with {alignBelowContext = percussion} {\teeny \dynamicsDrum}
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
        \DrumStaff
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
            \addlyrics \words
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocal}
            \new Voice \bass
            \addlyrics {\tiny \words}
          >>
        >>
        <<
          \new ChordNames { \teeny \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new DrumStaff = percussion \with {
%        \override StaffSymbol.line-count = #5
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } <<
        \magnifyStaff #4/7
        \DrumTrack
        \new Dynamics \with {alignBelowContext = percussion} {\teeny \dynamicsDrum}
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
        \DrumStaff
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsVocal}
            \new Voice \soprano
            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocal}
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocal}
            \new Voice \tenor
            \addlyrics {\tiny \words}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
            \addlyrics \words
          >>
        >>
        <<
          \new ChordNames { \teeny \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
      \new DrumStaff = percussion \with {
%        \override StaffSymbol.line-count = #5
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } <<
        \magnifyStaff #4/7
        \DrumTrack
        \new Dynamics \with {alignBelowContext = percussion} {\teeny \dynamicsDrum}
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
        \DrumStaff
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \soprano
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \bass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff \with {
            midiInstrument = "church organ"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
      \new DrumStaff = percussion \with {
%        \override StaffSymbol.line-count = #5
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } <<
        \DrumTrack
        \new Dynamics \with {alignBelowContext = percussion} \dynamicsDrum
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
