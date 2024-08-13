\version "2.25.18"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "It's Me, O Lord"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Negro Spiritual"
  arranger    = "Arr. by Arthur S. Loam"
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
  \key g \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \tempo "Andante ben ritmico" 4=60
  s4
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \textMark \markup { \box 5 }
  \textMark \markup { \box "1a" } s4 s1*2
  \textMark \markup { \box "1b" } s1*3
  \textMark \markup { \box "2a" } s1*2 s2.
  \repeat volta 2 {
    s4
    \textMark \markup { \box "2b" } s1*3
    \textMark \markup { \box "3a" } s1*3
    \textMark \markup { \box "3b" } s1*3
    \textMark \markup { \box "4a" } s1*3
    \textMark \markup { \box "4b" } s1*3
    \alternative { { s2. } { s1 } }
  }
}

soprano = \relative {
  \global
  b'4
  b2. b4
  b8 a4 g8~2
  g8. 16 8. 16 a8 a4. % 1b
  b2. b4
  b2. b4
  b8 a4 g8~2 % 2a
  g8. 16 8. 16 b8 a4.
  g2. \break
  \repeat volta 2 {
    r4
    d'2 d % 2b
    e4(ees d cis)
    d4 d a8. 16 8. 16
    b2. r4 % 3a
    d2. b8.-> a16
    b8-> a4-> g8->~2
    g8. 16 8. 16 b8 a4. % 3b
    g2. b4
    b2. b4
    b8 a4 g8~2 % 4a
    g8. 16 8. 16 a8 4.
    b2. b4
    b2.-> b4 % 4b
    b8 a4 g8~2
    b8. 16 8. 16 b8 a4.
    \alternative { { g2. \section } { g1 } }
  }
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  s1*4
  s1\< % 1b++
  s1\! % 2a
  s4-\markup \bold \italic {poco rit.}
  s8. s16\> s2
  s2.\!
  \repeat volta 2 {
    s4-\markup \bold \italic {a tempo}
    s1-\markup \bold \italic {\dynamic p dolce} % 2b
    s1
    s2\p s\mf
    s1 % 3a
    s2.\p s4\mf
    s1
    s4-\markup \bold \italic {poco rit.} s8. s16\> s2 % 3b
    s2.\! s4-\markup \bold \italic {\dynamic p a little slower}
    s1
    s1 % 4a
    s1
    s2\< s\!
    s1 % 4b
    s2.\> s4\!
    s1-\markup \bold \italic {rall. e dim.}
    \alternative { { s2. } { s1 } }
  }
}

wordsSop = \lyricmode {
  It’s me, it’s me O Lord,
  Stand -- in’ in the need of prayer,
  It’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer.
  \repeat volta 2 {
    Ah __ Ah __ Ah __
    Stand -- in’ in the need of prayer.
    Ah __
    But it’s me, O Lord,
    Stand -- in’ in the need of prayer,
    It’s me, it’s me, O Lord,
    Stand -- in’ in the need of prayer,
    It’s me, it’s me, O Lord,
    Stand -- in’ in the need of
    \alternative { { prayer. } { prayer. } }
  }
}

wordsSopMidi = \lyricmode {
  "It’s " "me, " "it’s " "me " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer, "
  "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer. "
  \repeat volta 2 {
    "\nAh "  "Ah "  "Ah " 
    "\nStand" "in’ " "in " "the " "need " "of " "prayer. "
    "\nAh " 
    "\nBut " "it’s " "me, " "O " "Lord, "
    "\nStand" "in’ " "in " "the " "need " "of " "prayer, "
    "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
    "\nStand" "in’ " "in " "the " "need " "of " "prayer, "
    "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
    "\nStand" "in’ " "in " "the " "need " "of "
    \alternative { { "prayer. " } { "prayer. " } }
  }
}

alto = \relative {
  \global
  d'4
  d4 b c d
  e4 e d(c)
  b8. c16 d8. 16 e4 d % 1b
  d4 g8(e) d4 r
  r4 b c d
  d8 c4 b8~(b4 cis) % 2a
  d8. 16 cis8. d16 e4 d8(c)
  b2.
  \repeat volta 2 {
    r4
    g'2 g % 2b
    g2~g
    g8. 16 8. 16 4 fis
    g2. r4 % 3a
    g2(f4) 8.-> 16
    e4-> ees-> d->(c)
    b8. c16 d8. 16 e4 fis % 3b
    g2. r4
    r4 b, c d
    e4 ees d(cis) % 4a
    c8. 16 8. 16 4 e
    dis4(e fis) a
    g2(fis4) fis % 4
    e4 ees d(c)
    b8. 16 ais8. b16 d4 c
    \alternative { { b2. \section } { b1 } }
  }
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  s1*4
  s4 s2.\< % 1b++
  s1\! % 2a
  s4-\markup \bold \italic {poco rit.}
  s8. s16\> s2
  s2.\!
  \repeat volta 2 {
    s4-\markup \bold \italic {a tempo}
    s1-\markup \bold \italic {\dynamic p dolce} % 2b
    s1
    s2\mf s\>
    s1\! % 3a
    s2.\p s4\mf
    s1
    s4-\markup \bold \italic {poco rit.} s8. s16\> s2 % 3b
    s1\!
    s4 s2.-\markup \bold \italic {\dynamic p a little slower}
    s1 % 4a
    s1
    s1
    s1 % 4b
    s4 s2.\>
    s1\!-\markup \bold \italic {rall. e dim.}
    \alternative { { s2. } { s1 } }
  }
}

wordsAlto = \lyricmode {
  It’s me, it’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer, of prayer,
  It’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer.
  \repeat volta 2 {
    Ah __ Ah __ Ah __
    Stand -- in’ in the need of prayer.
    Ah __
    But it’s me, O Lord,
    Stand -- in’ in the need of prayer,
    It’s me, it’s me, O Lord,
    Stand -- in’ in the need of prayer,
    It’s me, it’s me, O Lord,
    Stand -- in’ in the need of
    \alternative { { prayer. } { prayer. } }
  }
}

wordsAltoMidi = \lyricmode {
  "It’s " "me, " "it’s " "me, " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer, " "of " "prayer, "
  "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer. "
  \repeat volta 2 {
    "\nAh "  "Ah "  "Ah " 
    "\nStand" "in’ " "in " "the " "need " "of " "prayer. "
    "\nAh " 
    "\nBut " "it’s " "me, " "O " "Lord, "
    "\nStand" "in’ " "in " "the " "need " "of " "prayer, "
    "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
    "\nStand" "in’ " "in " "the " "need " "of " "prayer, "
    "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
    "\nStand" "in’ " "in " "the " "need " "of "
    \alternative { { "prayer. " } { "prayer. " } }
  }
}

tenor = \relative {
  \global
  g4
  g4 d e g
  g4 g g2
  g8. a16 b8. 16 c4 c % 1b
  b4 b8(g) b4 r
  r4 d, e g
  g4 fis g2 % 2a
  b8. 16 ais8. b16 c4 fis,
  g2.
  \repeat volta 2 {
    8. a16
    b8. d16 b8. a16 b8. d16 b8. a16 % 2b
    b8 a4 g8~2
    b4 b c8. 16 8. 16
    d2. g,8. a16 % 3a
    b8. d16 b8. a16 b8. d16 g,8.-> 16
    g4-> d-> g2->
    g8. a16 b8. 16 c4 c % 3b
    b2. r4
    r4 d, e g
    g4 g g2 % 4a
    e8. dis16 e8. g16 fis8 a4.
    a2. dis4
    e4->(b2) f4 % 4b
    g4 f g2
    g8. 16 8. 16 e8 fis4.
    \alternative { { g2. \section } { g1 } }
  }
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  s1*4
  s4 s2.\< % 1b++
  s1\! % 2a
  s4-\markup \bold \italic {poco rit.}
  s8. s16\> s2
  s2.\!
  \repeat volta 2 {
    s4-\markup \bold \italic {\dynamic mf marcato}^\markup \bold \italic {a tempo}
    s1 % 2b
    s1
    s2\p s
    s2. s4-\markup \bold \italic {\dynamic mf marcato} % 3a
    s2. s4\mf
    s1
    s4-\markup \bold \italic {poco rit.} s8. s16\> s2 % 3b
    s1\!
    s4 s2.-\markup \bold \italic {\dynamic p a little slower}
    s1 % 4a
    s1
    s1
    s1 % 4b
    s2.\> s4\!
    s1\!-\markup \bold \italic {rall. e dim.}
    \alternative { { s2. } { s1 } }
  }
}

wordsTenorOne = \lyricmode {
  It’s me, it’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer, of prayer,
  It’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer.
  Tain’t my
  sis -- ter, or my bro -- ther,
  But it’s me, O Lord,
  Stand -- in’ in the need of prayer.
  Tain’t my Dea -- con or my El -- der,
  But it’s me, O Lord,
  Stand -- in’ in the need of prayer,
  It’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer,
  It’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer.
}

wordsTenorTwo = \lyricmode {
  \repeat unfold 30 \skip 1
  Tain’t my mot -- her, or my fa -- ther,
  \repeat unfold 12 \skip 1
  Tain’t my neigh -- bour or a stran -- ger,
  \repeat unfold 38 \skip 1
}

wordsTenorSingle = \lyricmode {
  It’s me, it’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer, of prayer,
  It’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer.
  Tain’t my
  sis -- ter, or my bro -- ther,
  But it’s me, O Lord,
  Stand -- in’ in the need of prayer.
  Tain’t my Dea -- con or my El -- der,
  But it’s me, O Lord,
  Stand -- in’ in the need of prayer,
  It’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer,
  It’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer.

  \set stanza = "2."
  Tain’t my
  mot -- her, or my fa -- ther,
  But it’s me, O Lord,
  Stand -- in’ in the need of prayer.
  Tain’t my neigh -- bour or a stran -- ger,
  But it’s me, O Lord,
  Stand -- in’ in the need of prayer,
  It’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer,
  It’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer.
}

wordsTenorMidi = \lyricmode {
  "It’s " "me, " "it’s " "me, " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer, " "of " "prayer, "
  "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer. "
  "\nTain’t " "my "
  "\nsis" "ter, " "or " "my " bro "ther, "
  "\nBut " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer. "
  "\nTain’t " "my " Dea "con " "or " "my " El "der, "
  "\nBut " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer, "
  "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer, "
  "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer. "

  "\nTain’t " "my "
  "\nnot" "her, " "or " "my " fa "ther, "
  "\nBut " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer. "
  "\nTain’t " "my " neigh "bour " "or " "a "stran "ger, "
  "\nBut " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer, "
  "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer, "
  "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer. "
}

bass = \relative {
  \global
  g4
  g4 g, g b
  c4 c b(e)
  d8. 16 8. 16 4 fis % 1b
  g4 e g r
  r4 g, g b
  d4 d e(a,) % 2a
  d8. 16 e8. d16 4 4
  g,2.
  \repeat volta 2 {
    r4
    g'2 e % 2b
    c2(b4 e)
    d4 4 8. 16 8. 16
    g2. r4 % 3a
    g2. g,8.-> 16->
    c4-> c-> b->(e)
    d8. 16 8. 16 4 4 % 3b
    g2. r4
    r4 g, g b
    c4 c b(bes) % 4a
    a8. 16 8. 16 d4 c
    b4(cis dis) fis
    e2->(d4) d % 4b
    c4 c b(e)
    d8. 16 cis8. d16 d4 d
    \alternative { { g,2. \section } { g1 } }
  }
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  s1*4
  s4 s2.\< % 1b++
  s1\! % 2a
  s4-\markup \bold \italic {poco rit.}
  s8. s16\> s2
  s2.\!
  \repeat volta 2 {
    s4-\markup \bold \italic {a tempo}
    s1-\markup \bold \italic {\dynamic p dolce} % 2b
    s1
    s2\p s\>
    s1\! % 3a
    s2.\p s4\mf
    s1
    s4-\markup \bold \italic {poco rit.} s8. s16\> s2 % 3b
    s1\!
    s4 s2.-\markup \bold \italic {\dynamic p a little slower}
    s1 % 4a
    s1
    s1
    s1 % 4b
    s2.\> s4\!
    s1-\markup \bold \italic {rall. e dim.}
    \alternative { { s2. } { s1 } }
  }
}

wordsBass = \lyricmode {
  It’s me, it’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer, of prayer,
  It’s me, it’s me, O Lord,
  Stand -- in’ in the need of prayer.
  \repeat volta 2 {
    Ah __ Ah __ Ah __
    Stand -- in’ in the need of prayer.
    Ah __
    But it’s me, O Lord,
    Stand -- in’ in the need of prayer,
    It’s me, it’s me, O Lord,
    Stand -- in’ in the need of prayer,
    It’s me, it’s me, O Lord,
    Stand -- in’ in the need of
    \alternative { { prayer. } { prayer. } }
  }
}

wordsBassMidi = \lyricmode {
  "It’s " "me, " "it’s " "me, " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer, " "of " "prayer, "
  "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
  "\nStand" "in’ " "in " "the " "need " "of " "prayer. "
  \repeat volta 2 {
    "\nAh "  "Ah "  "Ah " 
    "\nStand" "in’ " "in " "the " "need " "of " "prayer. "
    "\nAh " 
    "\nBut " "it’s " "me, " "O " "Lord, "
    "\nStand" "in’ " "in " "the " "need " "of " "prayer, "
    "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
    "\nStand" "in’ " "in " "the " "need " "of " "prayer, "
    "\nIt’s " "me, " "it’s " "me, " "O " "Lord, "
    "\nStand" "in’ " "in " "the " "need " "of "
    \alternative { { "prayer. " } { "prayer. " } }
  }
}

dynamicsPianoAbove = {
  \override DynamicTextSpanner.style = #'none
  s4
  s1*7
  s2.
  \repeat volta 2 {
    s4
    s1*2
    s2\p s\mf % 2b++
    s1 % 3a
    s2.\p s4\mf
    s1
    s1 % 3b
    s2. s4-\markup \bold \italic {\dynamic p a little slower}
    s1*7
    \alternative { { s2. } { s1 } }
  }
}

dynamicsPianoBelow = {
  \override DynamicTextSpanner.style = #'none
  s4
  s1*7
  s2.
  \repeat volta 2 {
    s4
    s1*4
    s2.\p s4\mf % 3a+
    s1*10
    \alternative { { s2. } { s1 } }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  s1*4
  s2\< s\! % 1b++
  s1 % 2a
  s4-\markup \bold \italic {poco rit.} s2.\>
  s2. \!
  \repeat volta 2 {
    s4-\markup \bold \italic {\dynamic mf marcato}
    s1-\markup \bold \italic {\dynamic p dolce} % 2b
    s1
    s2\mf s\p\>
    s2.\! s4\mf % 3a
    s1
    s1
    s4-\markup \bold \italic {poco rit.} s8. s16\> s4 s\! % 3b
    s1
    s1
    s1 % 4a
    s1
    s2\< s\!
    s1 % 4b
    s4 s2.\>
    s1\!-\markup \bold \italic {rall. e dim.}
    \alternative { { s2. } { s1 } }
  }
}

#(set-global-staff-size 20)

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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
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
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Dynamics \with {alignAboveContext = pianorh} \dynamicsPianoAbove
            \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \partCombine \tenor \bass
            \new Dynamics \with {alignBelowContext = pianolh} \dynamicsPianoBelow
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat-noacc
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
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
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
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
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Dynamics \with {alignAboveContext = pianorh} \dynamicsPianoAbove
            \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \partCombine \tenor \bass
            \new Dynamics \with {alignBelowContext = pianolh} \dynamicsPianoBelow
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single-noacc
  }
  \score {
%   \articulate
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
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
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
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
    output-suffix = singlepage-noacc
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
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
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
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
    output-suffix = singlepage-noacc-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          } <<
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
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
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
    output-suffix = singlepage-noacc-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          } <<
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
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
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
    output-suffix = singlepage-noacc-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          } <<
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
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
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
    output-suffix = singlepage-noacc-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          } <<
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
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
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
          } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsBass
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
    output-suffix = midi-alto
  }
  \score {
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
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsSop
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsBass
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsSop
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsBass
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
            \new Voice \RehearsalTrack
            \new Dynamics \dynamicsSop
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsBass
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
