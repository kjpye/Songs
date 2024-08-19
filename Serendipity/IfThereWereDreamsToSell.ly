\version "2.25.18"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "If There Were Dreams to Sell"
  subtitle    = "Four Romantic Choruses No 1."
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

  poet        = "Thomas Lovell Beddoes"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
% tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 2/2
  \partial 2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
  \tempo "Andantino espressivo" 2=80
    s2
    s1*26
    s2 \tempo 2=75 s2
    \tempo 2=40 s2
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \textMark \markup\box "2a" s2 s1*4
    \textMark \markup\box "2b" s1*4
    \textMark \markup\box "3a" s1*6
    \textMark \markup\box "3b" s1*4
    \textMark \markup\box "4a" s1*5
    \textMark \markup\box "4b" s1*4 s2
  }
}

ChordTrack = \chordmode {
}

sopranoverse = \relative {
  d'2^\mp
  e2 g
  b4. g8 d2
  e2(fis)
  g2 fis
  e2 r % 2b
  fis1
  g4 fis g a
  b2 d~
  d4 b g2 % 3a
  c1(
  fis,2) a
  b4. g8 d2
  e2(fis)
  g2(fis
  e2) r % 3b
  fis1
  g4 fis g a
  b2 d~(
  d4 b) g g % 4a
  c4. a8 fis2~
  fis4 dis e fis
  a2. g4
  fis2( e~
  \tag #'dash { e4) 8 8 \slurDashed fis4(g) \slurSolid | }
  \tag #'v1   { e4) 8 8             fis4 g             | }
  \tag #'v2   { e4) 8 8             fis4(g)            | }
  b2. a4
  g2(fis~
  fis4) fis g^\markup\italic rall. a
  b2\fermata
}

soprano = {
  \global
  \repeat volta 2 {
    \keepWithTag #'dash \sopranoverse
  }
}

sopranoSingle = {
  \global
  \keepWithTag #'v1 \sopranoverse
  \keepWithTag #'v2 \sopranoverse
  \bar "|."
}

wordsSopOne = \lyricmode {
  \set stanza = "1."
  If there were dreams to sell,
  What __ would you buy?
  Some cost a pass -- ing bell;
  Some __ a light sigh, __
  That shakes from Life’s fresh __
  crown __
  On -- ly a rose -- leaf down,
  If __ there were dreams to sell. __
  Mer -- ry and sad to tell, __
  And the \set ignoreMelismata = ##t cri -- er \unset ignoreMelismata rang the bell, __
  What would you buy?
}

wordsSopTwo = \lyricmode {
  \set stanza = "2."
  A cot -- tage lone and still,
  With __ bow -- ers nigh,
  Shad -- owy, my woes to still,
  Un -- til I die. __
  Such pearl from Life’s fresh __ crown __
  Fain would I shake me down,
  Were __ dreams to have at will. __
  This would best heal my ill, __
  This would best __ heal my ill, __
  This would I buy.
}

wordsSopMidi = \lyricmode {
  \set stanza = "1."
  "If " "there " "were " "dreams " "to " "sell, "
  "\nWhat "  "would " "you " "buy? "
  "\nSome " "cost " "a " pass "ing " "bell; "
  "\nSome "  "a " "light " "sigh, " 
  "\nThat " "shakes " "from " "Life’s " "fresh " 
  "\ncrown " 
  "\nOn" "ly " "a " rose "leaf " "down, "
  "\nIf "  "there " "were " "dreams " "to " "sell. " 
  "\nMer" "ry " "and " "sad " "to " "tell, " 
  "\nAnd " "the " \set ignoreMelismata = ##t cri "er " \unset ignoreMelismata "rang " "the " "bell, " 
  "\nWhat " "would " "you " "buy? "

  \set stanza = "2."
  "\nA " cot "tage " "lone " "and " "still, "
  "\nWith "  bow "ers " "nigh, "
  "\nShad" "owy, " "my " "woes " "to " "still, "
  "\nUn" "til " "I " "die. " 
  "\nSuch " "pearl " "from " "Life’s " "fresh "  "crown " 
  "\nFain " "would " "I " "shake " "me " "down, "
  "\nWere "  "dreams " "to " "have " "at " "will. " 
  "\nThis " "would " "best " "heal " "my " "ill, " 
  "\nThis " "would " "best "  "heal " "my " "ill, " 
  "\nThis " "would " "I " "buy. "
}

altoverse = \relative {
  d'2^\mp
  e2 g
  d4. c8 d2~
  d4 c a d
  b1~
  b4 a b c % 2b
  d4. e8 d2~
  d4 c d e
  fis4.(g8 fis2)
  e2 c % 3a
  e1~
  e2 ees
  d4. c8 d2~(
  d4 c) a(d)
  b1~
  b4 a b c % 3b
  d4. e8 d2~
  d4 c d e
  fis4. g8 fis2(
  e4) e c c % 4a
  e4. d8 c2~
  c4 a b c
  dis2. c4 c1~
  \tag #'dash {c4 8 8 \slurDashed d4(e) \slurSolid | } % 4b
  \tag #'v1   {c4 8 8             d4 e             | }
  \tag #'v2   {c4 8 8             d4(e)            | }
  g2. fis4
  e1
  d2 4^\markup\italic rall. e
  e2\fermata
}

alto = {
  \global
  \repeat volta 2 {
    \keepWithTag #'dash \altoverse
  }
}

altoSingle = {
  \global
  \keepWithTag #'v1 \altoverse
  \keepWithTag #'v2 \altoverse
}

wordsAltoOne = \lyricmode {
  \set stanza = "1."
  If there were dreams to sell, __
  What __ would you buy?
  Some cost a pass -- ing bell;
  Some __ a light sigh, __
  Some a sigh that shakes
  from Life’s fresh __ crown __
  On -- ly a rose -- leaf down,
  If __ there were dreams to sell. __
  Mer -- ry and sad to tell, __
  Mer -- ry and sad to tell, __
  And the \set ignoreMelismata = ##t cri -- er \unset ignoreMelismata rang the bell, __
  What would you buy?
}

wordsAltoTwo = \lyricmode {
  \set stanza = "2."
  A cot -- tage lone and still,
  With __ bow -- ers nigh,
  Shad -- owy, my woes to still,
  Un -- til I die. __
  ’til I die. __
  Such pearl from Life’s fresh __ crown __
  Fain would I shake me down,
  Were __ dreams to have at will. __
  This would best heal my ill, __
  This would best heal my ill, __
  This would best __ heal my ill, __
  This would I buy.
}

wordsAltoMidi = \lyricmode {
  \set stanza = "1."
  "If " "there " "were " "dreams " "to " "sell, " 
  "\nWhat "  "would " "you " "buy? "
  "\nSome " "cost " "a " pass "ing " "bell; "
  "\nSome "  "a " "light " "sigh, " 
  "\nSome " "a " "sigh " "that " "shakes "
  "\nfrom " "Life’s " "fresh "  "crown " 
  "\nOn" "ly " "a " rose "leaf " "down, "
  "\nIf "  "there " "were " "dreams " "to " "sell. " 
  "\nMer" "ry " "and " "sad " "to " "tell, " 
  "\nMer" "ry " "and " "sad " "to " "tell, " 
  "\nAnd " "the " \set ignoreMelismata = ##t cri "er " \unset ignoreMelismata "rang " "the " "bell, " 
  "\nWhat " "would " "you " "buy? "

  \set stanza = "2."
  "\nA " cot "tage " "lone " "and " "still, "
  "\nWith "  bow "ers " "nigh, "
  "\nShad" "owy, " "my " "woes " "to " "still, "
  "\nUn" "til " "I " "die. " 
  "\n’til " "I " "die. " 
  "\nSuch " "pearl " "from " "Life’s " "fresh "  "crown " 
  "\nFain " "would " "I " "shake " "me " "down, "
  "\nWere "  "dreams " "to " "have " "at " "will. " 
  "\nThis " "would " "best " "heal " "my " "ill, " 
  "\nThis " "would " "best " "heal " "my " "ill, " 
  "\nThis " "would " "best "  "heal " "my " "ill, " 
  "\nThis " "would " "I " "buy. "
}

tenorverse = \relative {
  d2^\mp
  e2 g
  d4. e8 fis2
  g2(a)
  b2 a
  g4 fis g a % 2b
  b4. c8 b2~
  b4 a b c
  d4.(e8 d2)
  g,2 a % 3a
  a1~
  a2 g
  d4. e8 fis2
  g2(a) b2(a)
  g4(fis) g a % 3b
  b4. c8 b2~
  b4 a b c
  d4. e8 d2(
  g,4) g a a % 4a
  a4. fis8 ees2~
  ees4 f g a
  c2. a4
  g1~
  \tag #'dash {g4 g8 8 \slurDashed a4(b) \slurSolid | } % 4b 
  \tag #'v1   {g4 g8 8             a4 b             | }
  \tag #'v2   {g4 g8 8             a4(b)            | }
  c2. d4
  b2( a~
  a4) a b^\markup\italic rall. c
  gis2\fermata
}

tenor = {
  \global
  \repeat volta 2 {
    \keepWithTag #'dash \tenorverse
  }
}

tenorSingle = {
  \global
  \keepWithTag #'v1 \tenorverse
  \keepWithTag #'v2 \tenorverse
}

wordsTenorOne = \lyricmode {
  \set stanza = "1."
  If there were dreams to sell,
  What __ would you buy?
  Some cost a pass -- ing bell; __
  Some __ a light sigh, __
  Some a sigh __ that shakes
  from Life’s fresh __ crown __
  On -- ly a rose -- leaf down, __
  If there were dreams to sell. __
  Mer -- ry and sad to tell, __
  Mer -- ry and sad to tell, __
  And the \set ignoreMelismata = ##t cri -- er rang the \unset ignoreMelismata bell, __
  What would you buy?
}

wordsTenorTwo = \lyricmode {
  \set stanza = "2."
  A cot -- tage lone and still,
  With __ bow -- ers nigh,
  Shad -- owy, my woes to still,
  Un -- til I die. __
  ’til I die. __
  Such pearl from Life’s fresh __ crown __
  Fain would I shake me down,
  Were __ dreams to have at will. __
  This would best heal my ill, __
  This would best heal my ill, __
  This would best __ heal my ill, __
  This would I buy.
}

wordsTenorMidi = \lyricmode {
  \set stanza = "1."
  "If " "there " "were " "dreams " "to " "sell, "
  "\nWhat "  "would " "you " "buy? "
  "\nSome " "cost " "a " pass "ing " "bell; " 
  "\nSome "  "a " "light " "sigh, " 
  "\nSome " "a " "sigh "  "that " "shakes "
  "\nfrom " "Life’s " "fresh "  "crown " 
  "\nOn" "ly " "a " rose "leaf " "down, " 
  "\nIf " "there " "were " "dreams " "to " "sell. " 
  "\nMer" "ry " "and " "sad " "to " "tell, " 
  "\nMer" "ry " "and " "sad " "to " "tell, " 
  "\nAnd " "the " \set ignoreMelismata = ##t cri "er " "rang " "the " \unset ignoreMelismata  "bell, " 
  "\nWhat " "would " "you " "buy? "

  \set stanza = "2."
  "\nA " cot "tage " "lone " "and " "still, "
  "\nWith "  bow "ers " "nigh, "
  "\nShad" "owy, " "my " "woes " "to " "still, "
  "\nUn" "til " "I " "die. " 
  "\n’til " "I " "die. " 
  "\nSuch " "pearl " "from " "Life’s " "fresh "  "crown " 
  "\nFain " "would " "I " "shake " "me " "down, "
  "\nWere "  "dreams " "to " "have " "at " "will. " 
  "\nThis " "would " "best " "heal " "my " "ill, " 
  "\nThis " "would " "best " "heal " "my " "ill, " 
  "\nThis " "would " "best "  "heal " "my " "ill, " 
  "\nThis " "would " "I " "buy. "
}

bassverse = \relative {
  d2^\mp
  e2 g
  g,4. a8 b2
  c2(d)
  e2 d
  c2 r % 2b
  b1
  e4 4 4 d
  g2 b,
  c2 ees % 3a
  d1(
  c2) c
  g4. a8 b2
  c2(d)
  e2(fis
  c2) r % 3b
  b1
  e4 4 4 d
  g2 b,
  c2 ees % 4a
  d4. c8 a2~
  a4 b b b
  b2. 4
  c1~
  \tag #'dash {c4 8 8 \slurDashed c4(b) \slurSolid | } % 4b
  \tag #'v1   {c4 8 8             c4 b             | } 
  \tag #'v2   {c4 8 8             c4(b)            | } 
  a2. b4
  c1
  b2 e4^\markup\italic rall. a,
  <e e'>2\fermata
}

bass = {
  \global
  \repeat volta 2 {
    \keepWithTag #'dash \bassverse
  }
}

bassSingle = {
  \global
  \keepWithTag #'v1 \bassverse
  \keepWithTag #'v2 \bassverse
}

wordsBassOne = \lyricmode {
  \set stanza = "1."
  If there were dreams to sell,
  What __ would you buy?
  Some cost a pass -- ing bell;
  Some a light sigh, __
  That shakes from Life’s fresh __ crown __
  On -- ly a rose -- leaf down,
  If there were dreams to sell. __
  Mer -- ry and sad to tell, __
  And the \set ignoreMelismata = ##t cri -- er \unset ignoreMelismata rang the bell, __
  What would you buy?
}

wordsBassTwo = \lyricmode {
  \set stanza = "2."
  A cot -- tage lone and still,
  With __ bow -- ers nigh,
  Shad -- owy, my woes to still,
  Un -- til I die. __
  Such pearl from Life’s fresh __ crown __
  Fain __ would I shake me down, __
  Were dreams to have at will. __
  This would best heal my ill, __
  This would best __ heal my ill,
  This would I buy.
}

wordsBassMidi = \lyricmode {
  \set stanza = "1."
  "If " "there " "were " "dreams " "to " "sell, "
  "\nWhat "  "would " "you " "buy? "
  "\nSome " "cost " "a " pass "ing " "bell; "
  "\nSome " "a " "light " "sigh, " 
  "\nThat " "shakes " "from " "Life’s " "fresh "  "crown " 
  "\nOn" "ly " "a " rose "leaf " "down, "
  "\nIf " "there " "were " "dreams " "to " "sell. " 
  "\nMer" "ry " "and " "sad " "to " "tell, " 
  "\nAnd " "the " \set ignoreMelismata = ##t cri "er " \unset ignoreMelismata "rang " "the " "bell, " 
  "\nWhat " "would " "you " "buy? "

  \set stanza = "2."
  "\nA " cot "tage " "lone " "and " "still, "
  "\nWith "  bow "ers " "nigh, "
  "\nShad" "owy, " "my " "woes " "to " "still, "
  "\nUn" "til " "I " "die. " 
  "\nSuch " "pearl " "from " "Life’s " "fresh "  "crown " 
  "\nFain "  "would " "I " "shake " "me " "down, " 
  "\nWere " "dreams " "to " "have " "at " "will. " 
  "\nThis " "would " "best " "heal " "my " "ill, " 
  "\nThis " "would " "best "  "heal " "my " "ill, "
  "\nThis " "would " "I " "buy. "
}

dynamicsPiano = {
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff \with {
          instrumentName = #"Piano (for rehearsal only)"
        }
        <<
          \new Staff = rh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh \with { printPartCombineTexts = ##f }
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
        \accidentalStyle Score.modern
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
    output-suffix = vocal-repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          } <<
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    output-suffix = single
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics { \wordsSopOne \wordsSopTwo }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \altoSingle
            \addlyrics { \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics { \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics { \wordsBassOne \wordsBassTwo }
          >>
        >>
        \new PianoStaff \with {
          instrumentName = #"Piano (for rehearsal only)"
        }
        <<
          \new Staff = rh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \sopranoSingle \altoSingle
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \tenorSingle \bassSingle
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    output-suffix = vocal-single
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoSingle \bar "|." }
            \addlyrics { \wordsSopOne \wordsSopTwo }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \altoSingle
            \addlyrics { \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics { \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics { \wordsBassOne \wordsBassTwo }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoSingle \bar "|." }
            \addlyrics { \wordsSopOne \wordsSopTwo }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \altoSingle
            \addlyrics { \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics { \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics { \wordsBassOne \wordsBassTwo }
          >>
        >>
        \new PianoStaff \with {
          instrumentName = #"Piano (for rehearsal only)"
        }
        <<
          \new Staff = rh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \sopranoSingle \altoSingle
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenorSingle \bassSingle
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    output-suffix = vocal-singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice { \sopranoSingle \bar "|." }
            \addlyrics { \wordsSopOne \wordsSopTwo }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \altoSingle
            \addlyrics { \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics { \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics { \wordsBassOne \wordsBassTwo }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics { \wordsSopOne \wordsSopTwo }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \altoSingle
            \addlyrics { \tiny \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics { \tiny \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics { \tiny \wordsBassOne \wordsBassTwo }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics { \tiny \wordsSopOne \wordsSopTwo }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \altoSingle
            \addlyrics { \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics { \tiny \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics { \tiny \wordsBassOne \wordsBassTwo }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics { \tiny \wordsSopOne \wordsSopTwo }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \altoSingle
            \addlyrics { \tiny \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics { \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics { \tiny \wordsBassOne \wordsBassTwo }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics { \tiny \wordsSopOne \wordsSopTwo }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \altoSingle
            \addlyrics { \tiny \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics { \tiny \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics { \wordsBassOne \wordsBassTwo }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    output-suffix = midi-sop
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice { \sopranoSingle \bar "|." }
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff \with {
          instrumentName = #"Piano (for rehearsal only)"
        }
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \sopranoSingle
            \new Voice \altoSingle
            \new Voice \tenorSingle
            \new Voice \bassSingle
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice { \sopranoSingle \bar "|." }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          } <<
            \clef "bass"
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff \with {
          instrumentName = #"Piano (for rehearsal only)"
        }
        <<
          \new Staff \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \sopranoSingle
            \new Voice \altoSingle
            \new Voice \tenorSingle
            \new Voice \bassSingle
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice { \sopranoSingle \bar "|." }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff \with {
          instrumentName = #"Piano (for rehearsal only)"
        }
        <<
          \new Staff \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \sopranoSingle
            \new Voice \altoSingle
            \new Voice \tenorSingle
            \new Voice \bassSingle
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice { \sopranoSingle \bar "|." }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff \with {
          instrumentName = #"Piano (for rehearsal only)"
        }
        <<
          \new Staff \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \sopranoSingle
            \new Voice \altoSingle
            \new Voice \tenorSingle
            \new Voice \bassSingle
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
