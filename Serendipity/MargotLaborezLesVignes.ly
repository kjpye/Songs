\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Margot Laborez les Vignes"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Jacques Arcadelt"
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

global = {
  \key g \major
  \time 2/2
}

TempoTrack = {
  \tempo 2=210
%  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \repeat volta 3 {
    \textMark \markup { \box "1a" } s1*8
    \textMark \markup { \box "1b" } s1*10
    \textMark \markup { \box "1c" } s1*9
    \textMark \markup { \box "2a" } s1*9
    \textMark \markup { \box "2b" } s1*9
    \textMark \markup { \box "2c" } s1*9
  }
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  \repeat volta 3 {
    g'2 b | a g | a b | a g | b b | d d | c c | b g~ | \break
    g2 b | a g | a b | a g~ | g fis | g1 | R | R | R | R | \break
    R1 | R | g2 g | d' d | d d | e e | d1 | b | b2 d | \break
    c2 b | a g | fis d | g d | g d | g a | b1 | b2 d | c b | \break % 2a
    a2 g | fis g | a1 | g | g2 b | a g | a b | a g | b b | \break
    d2 d | c c | b g~ | g b | a g | a b | a g~ | g fis | g1 |
  }
}

wordsWomenOne = \lyricmode {
  Mar -- got, la -- bou -- rez les vig -- nes,
  _ _ _ _ _ _ _
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.
  En re -- ve -- nant de  Lor -- rai -- ne, Mar -- got,
  Ren -- con -- trai trois ca -- pi -- tai -- nes,
  _ _ _ _ _ _ _
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ 
}

wordsWomenTwo = \lyricmode {
  Ils m'ont ap -- pe -- lé vi -- lai -- ne,
  vig -- nes, vig -- nes, vi -- gno -- let,
  Ils m'ont ap -- pe -- lé vi -- lai -- ne, bine -- tôt.
  Je ne suis pas so vi -- lai -- ne Mar -- got,
  Puis -- que le fils du roi m'ai -- me,
  vig -- nes, vig -- nes, vig -- no -- let.
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.
  Mar -- got, la -- bou -- rea les vig -- es,
  vig -- nes, vig -- nes, vig -- no -- let,
  Mar -- got, la -- bou -- rez les ig -- nes, bien -- tôt.
}

wordsWomenThree = \lyricmode {
  Il ma don -- né pour e -- tren -- ne,
  _ _ _ _ _ _ _
  Il m'a don -- né pour e -- tren -- ne, bien -- tôt.
  Un bou -- quet de Mar -- jo -- lai -- ne, Mar -- got,
  S'il fleu -- rit, je ser -- ais rei -- ne,
  _ _ _ _ _ _ _
  S'il y meurt, je perds ma pei -- ne, bien -- tôt.
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
}

wordsWomen = \lyricmode {
  \set stanza = "1."
  Mar -- got, la -- bou -- rez les vig -- nes,
  vig -- nes, vig -- nes, vi -- gno -- let,
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.
  En re -- ve -- nant de  Lor -- rai -- ne, Mar -- got,
  Ren -- con -- trai trois ca -- pi -- tai -- nes,
  vig -- nes, vig -- nes, vig -- no -- let.
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.
  Mar -- got, la -- bou -- rez les vig -- nes,
  vig -- nes, vig -- nes, vig -- no -- let,
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.

  \set stanza = "2."
  Ils m'ont ap -- pe -- lé vi -- lai -- ne,
  vig -- nes, vig -- nes, vi -- gno -- let,
  Ils m'ont ap -- pe -- lé vi -- lai -- ne, bine -- tôt.
  Je ne suis pas so vi -- lai -- ne Mar -- got,
  Puis -- que le fils du roi m'ai -- me,
  vig -- nes, vig -- nes, vig -- no -- let.
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.
  Mar -- got, la -- bou -- rez les vig -- nes,
  vig -- nes, vig -- nes, vig -- no -- let,
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.

  \set stanza = "3."
  Il ma don -- né pour e -- tren -- ne,
  vig -- nes, vig -- nes, vig -- no -- let.
  Il m'a don -- né pour e -- tren -- ne, bien -- tôt.
  Un bou -- quet de Mar -- jo -- lai -- ne, Mar -- got,
  S'il fleu -- rit, je ser -- ais rei -- ne,
  vig -- nes, vig -- nes, vig -- no -- let.
  S'il y meurt, je perds ma pei -- ne, bien -- tôt.
  Mar -- got, la -- bou -- rez les vig -- nes,
  vig -- nes, vig -- nes, vig -- no -- let,
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.
}

wordsWomenMidi = \lyricmode {
  \set stanza = "1."
  "Mar" "got, " la bou "rez " "les " vig "nes, "
  "\nvig" "nes, " vig "nes, " vi gno "let, "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt. "
  "\nEn " re ve "nant " "de "  Lor rai "ne, " Mar "got, "
  "\nRen" con "trai " "trois " ca pi tai "nes, "
  "\nvig" "nes, " vig "nes, " vig no "let. "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt. "
  "\nMar" "got, " la bou "rez " "les " vig "nes, "
  "\nvig" "nes, " vig "nes, " vig no "let, "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt.\n"

  \set stanza = "2."
  "\nIls " "m'ont " ap pe "lé " vi lai "ne, "
  "\nvig" "nes, " vig "nes, " vi gno "let, "
  "\nIls " "m'ont " ap pe "lé " vi lai "ne, " bine "tôt. "
  "\nJe " "ne " "suis " "pas " "so " vi lai "ne " Mar "got, "
  "\nPuis" "que " "le " "fils " "du " "roi " m'ai "me, "
  "\nvig" "nes, " vig "nes, " vig no "let. "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt. "
  "\nMar" "got, " la bou "rez " "les " vig "nes, "
  "\nvig" "nes, " vig "nes, " vig no "let, "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt.\n"

  \set stanza = "3."
  "\nIl " "ma " don "né " "pour " e tren "ne, "
  "\nvig" "nes, " vig "nes, " vig no "let. "
  "\nIl " "m'a " don "né " "pour " e tren "ne, " bien "tôt. "
  "\nUn " bou "quet " "de " Mar jo lai "ne, " Mar "got, "
  "\nS'il " fleu "rit, " "je " ser "ais " rei "ne, "
  "\nvig" "nes, " vig "nes, " vig no "let. "
  "\nS'il " "y " "meurt, " "je " "perds " "ma " pei "ne, " bien "tôt. "
  "\nMar" "got, " la bou "rez " "les " vig "nes, "
  "\nvig" "nes, " vig "nes, " vig no "let, "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  \repeat volta 3 {
    d'2 g | e e | d d | d b | d d | b d | e fis | g d~ |
    d2 g | e e | d d | d c | d1 | b | R | R | R | R |
    R1 | R | e2 e | fis g | a b | a g~ | g fis | g d | g fis |
    e2 d~ | d e | d b | b b | g g' | e fis | g d~ | d d | e g | % 2a
    fis2 e | d g~ | g fis | g1 | d2 g | e e | d d | d b | d d |
    b2 d | e fis | g d~ | d g | e e | d d | d c | d1 | b |
  }
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  \repeat volta 3 {
    b2 d | c b | a g | fis d | g d | g d | g a | b1 |
    b2 d | c b | a g | fis g | a1 | g | 2 2 | d' d | d d | e e |
    d1 | b | 2 g | a b | a g | c c | a1 | g | R |
    R1 | R | R | g2 g | b b | c a | g1 | 2 b | a g | % 2a
    d'2 e | a, e' | d1 | g, | b2 d | c b | a g | fis d | g d |
    g2 d | g a | b1 | 2 d | c b | a g | fis g | a1 | g |
  }
}

wordsMenOne = \lyricmode {
  Mar -- got, la -- bou -- rez les vig -- nes,
  _ _ _ _ _ _ _
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.
  En re -- ve -- nant de Lor -- rai -- ne, Mar -- got,
  En re -- ve -- nant de Lor -- rai -- ne, Mar -- got.
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
}

wordsMenTwo = \lyricmode {
  Ils m'ont ap -- pe -- lé i -- lai -- ne,
  vig -- nes, vig -- nes, vig -- no -- let,
  Ils m'ont ap -- pe -- lé i -- lai -- ne, bien -- tôt.
  Je ne suis pas si vi -- lai -- ne Mar -- got,
  Je ne suis pas si vi -- lai -- ne Mar -- got,
  vig -- nes, vig -- nes, vig -- no -- let.
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt,
  Mar -- got la -- bou -- rez les vig -- nes,
  vig -- nes, vig -- nes, vig -- no -- let,
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.
}

wordsMenThree = \lyricmode {
  Il m'a don -- né pour e -- tren -- ne,
  _ _ _ _ _ _ _
  Il m'a don -- né pour e -- tren -- ne, bien -- tôt.
  Un bou -- quet de Mar -- jo -- lai -- ne, Mar -- got,
  Un bou -- quet de Mar -- jo -- lai -- ne, Mar -- got,
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
}

wordsMen = \lyricmode {
  \set stanza = "1."
  Mar -- got, la -- bou -- rez les vig -- nes,
  vig -- nes, vig -- nes, vig -- no -- let,
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.
  En re -- ve -- nant de Lor -- rai -- ne, Mar -- got,
  En re -- ve -- nant de Lor -- rai -- ne, Mar -- got.
  vig -- nes, vig -- nes, vig -- no -- let,
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt,
  Mar -- got la -- bou -- rez les vig -- nes,
  vig -- nes, vig -- nes, vig -- no -- let,
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.

  \set stanza = "2."
  Ils m'ont ap -- pe -- lé i -- lai -- ne,
  vig -- nes, vig -- nes, vig -- no -- let,
  Ils m'ont ap -- pe -- lé i -- lai -- ne, bien -- tôt.
  Je ne suis pas si vi -- lai -- ne Mar -- got,
  Je ne suis pas si vi -- lai -- ne Mar -- got,
  vig -- nes, vig -- nes, vig -- no -- let.
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt,
  Mar -- got la -- bou -- rez les vig -- nes,
  vig -- nes, vig -- nes, vig -- no -- let,
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.

  \set stanza = "3."
  Il m'a don -- né pour e -- tren -- ne,
  vig -- nes, vig -- nes, vig -- no -- let,
  Il m'a don -- né pour e -- tren -- ne, bien -- tôt.
  Un bou -- quet de Mar -- jo -- lai -- ne, Mar -- got,
  Un bou -- quet de Mar -- jo -- lai -- ne, Mar -- got,
  vig -- nes, vig -- nes, vig -- no -- let,
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt,
  Mar -- got la -- bou -- rez les vig -- nes,
  vig -- nes, vig -- nes, vig -- no -- let,
  Mar -- got, la -- bou -- rez les vig -- nes, bien -- tôt.
}

wordsMenMidi = \lyricmode {
  \set stanza = "1."
  "Mar" "got, " la bou "rez " "les " vig "nes, "
  "\nvig" "nes, " vig "nes, " vig no "let, "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt. "
  "\nEn " re ve "nant " "de " Lor rai "ne, " Mar "got, "
  "\nEn " re ve "nant " "de " Lor rai "ne, " Mar "got. "
  "\nvig" "nes, " vig "nes, " vig no "let, "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt, "
  "\nMar" "got " la bou "rez " "les " vig "nes, "
  "\nvig" "nes, " vig "nes, " vig no "let, "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt.\n"

  \set stanza = "2."
  "\nIls " "m'ont " ap pe "lé " i lai "ne, "
  "\nvig" "nes, " vig "nes, " vig no "let, "
  "\nIls " "m'ont " ap pe "lé " i lai "ne, " bien "tôt. "
  "\nJe " "ne " "suis " "pas " "si " vi lai "ne " Mar "got, "
  "\nJe " "ne " "suis " "pas " "si " vi lai "ne " Mar "got, "
  "\nvig" "nes, " vig "nes, " vig no "let. "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt, "
  "\nMar" "got " la bou "rez " "les " vig "nes, "
  "\nvig" "nes, " vig "nes, " vig no "let, "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt.\n"

  \set stanza = "3."
  "\nIl " "m'a " don "né " "pour " e tren "ne, "
  "\nvig" "nes, " vig "nes, " vig no "let, "
  "\nIl " "m'a " don "né " "pour " e tren "ne, " bien "tôt. "
  "\nUn " bou "quet " "de " Mar jo lai "ne, " Mar "got, "
  "\nUn " bou "quet " "de " Mar jo lai "ne, " Mar "got, "
  "\nvig" "nes, " vig "nes, " vig no "let, "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt, "
  "\nMar" "got " la bou "rez " "les " vig "nes, "
  "\nvig" "nes, " vig "nes, " vig no "let, "
  "\nMar" "got, " la bou "rez " "les " vig "nes, " bien "tôt. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  \repeat volta 3 {
    g2 g | a e | fis g | d g, | g g | g b | c a | g1 |
    g'2 g | a e | fis g | d e | d1 | g, | g'2 e | fis g | g b | a g |
    fis4(e g fis) | g1 | e2 e | d g | fis g | c, c | d1 | g, | R |
    R1*9 | % 2a
    R1 | R | R | R | g'2 g | a e | fis g | d g, | g g |
    g2 b | c a | g1 | g'2 g | a e | fis g | d e | d1 | g, |
  }
}

wordsBass = \lyricmode {

}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "repeat"
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
            \addlyrics \wordsWomenOne
            \addlyrics \wordsWomenTwo
            \addlyrics \wordsWomenThree
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
            \addlyrics \wordsMenOne
            \addlyrics \wordsMenTwo
            \addlyrics \wordsMenThree
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
      \context { \Staff
%        \RemoveAllEmptyStaves
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
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
            \new Voice {\soprano \bar "|."}
            \addlyrics \wordsWomen
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
            \addlyrics \wordsMen
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
      \context { \Staff
%        \RemoveAllEmptyStaves
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
   \unfoldRepeats
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
            \new Voice {\soprano \bar "|."}
            \addlyrics \wordsWomen
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
            \addlyrics \wordsMen
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
      \context { \Staff
%        \RemoveAllEmptyStaves
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
   \unfoldRepeats
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
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsMen
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
      \context { \Staff
%        \RemoveAllEmptyStaves
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
  \bookOutputSuffix "midi-women"
  \score {
   \unfoldRepeats
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
            \addlyrics \wordsWomenMidi
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
  \bookOutputSuffix "midi-men"
  \score {
   \unfoldRepeats
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
            \addlyrics \wordsMenMidi
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
