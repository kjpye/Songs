\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Il est bel et bon"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Pierre Passerau (fl. 1509—1547)"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Anon."
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
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "265a" } s1*3
  \textMark \markup { \box "265b" } s1*4
  \textMark \markup { \box "266a" } s1*6
  \textMark \markup { \box "266b" } s1*4
  \textMark \markup { \box "267a" } s1*5
  \textMark \markup { \box "267b" } s1*6
  \textMark \markup { \box "268a" } s1*5
  \textMark \markup { \box "268b" } s1*6
  \textMark \markup { \box "269a" } s1*5
  \textMark \markup { \box "269b" } s1*4
  \textMark \markup { \box "270a" } s1*4
  \textMark \markup { \box "270b" } s1*5
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1\p | s1*6 | s2 s\mf | s1*5 |
  s1\p | s1*6 | s2 s\mf | s1*28 |
  s1\p | s1*2 | s1\pp | s1*4 |
}

soprano = \relative {
  \global
  e'8 fis g a b4 4 | b b b b | a fis r2 |
  e8 fis g a b4 b | b b b b | a fis8 8 a4 fis8 8 | g4 e e dis |
  e2 e'4. d8 | cis4 d a b | d4.(cis8) b4 a | b1 | R | R | % 266a
  e,8 fis g a b4 b | b b b b | a fis r2 | e8 fis g a b4 b |
  b4 b b b | a fis8 8 a4 fis8 8 | g4 e e dis | e2 4. 8 | b'4 b a a | % 267a
  e'2. d4 | cis4 4 b2~ | b r | R1 | r2 b4. 8 | 4 4 a fis |
  cis'4. 8 e4 e | d b r2 | cis4. 8 e4 e | d b r a | b4.(a8 g4) fis~ | % 268a
  fis8(e8) 2 dis4 | e e b'2 | 4 g b4. cis8 | d2 a~ | a r4 e | a2. g4 |
  b4. cis8 d2 | a r4 a | cis4 4 b4.(a8) | g4 g fis2 | r4 fis b a8 fis | % 269a
  g4 fis8 a b4 a8 fis | g4 fis8 a b4 a8 fis | g4 fis8 a b4 a8 fis | g4 fis~8(e) e4~ |
  e4 dis e2 | 8 fis g a b4 b | b b b b | a fis r2 | % 270a
  e8 fis g a b4 b | b b b b | a fis8 8 a4 fis8 8 | g4 e e dis | e1\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  Il est bel et bon, bon, bon, bon, bon, com -- mé -- re,
  Il est bel et bon, bon, bon, bon, bon, com -- mé -- re,
  com -- mé -- re, com -- mé -- re, mon ma -- ri.
  Il é -- tait deux fem -- mes tou -- tes du pays,
  Il est bel et bon, bon, bon, bon, bon, com -- mé -- re,
  Il est bel et bon, bon, bon, bon, bon, com  -- mé -- re,
  com -- mé -- re, com -- mé -- re, mon ma -- ri.
  Il ne me cour -- rou -- ce,
  ne me bat sus -- si. __
  Il fait le mé -- na -- ge,
  il don -- ne aux pou -- lets,
  il don -- ne aux pou -- lets,
  et je __ prends mon plai -- sir.
  Com -- mé -- re, est -- ce pour ri -- re, __
  quand la pou -- lail -- le cri -- e,
  quand la pou -- lail -- le cri -- e;
  Pe -- ti -- te co -- quet -- te, pe -- ti -- te co -- quet -- te,
  pe -- ti -- te co -- quet -- te, pe -- ti -- te co -- quet -- te, __
  qu'est -- ce -- ci?
  Il est bel et bon, bon, bon, bon, bon, com -- mé -- re,
  Il est bel et bon, bon, bon, bon, bon, com -- mé -- re,
  co -- mé -- re, co -- mé -- re, mon ma -- ri.
}

wordsSopMidi = \lyricmode {
  "Il " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\ncom" mé "re, " com mé "re, " "mon " ma "ri. "
  "\nIl " é "tait " "deux " fem "mes " tou "tes " "du " "pays, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\ncom" mé "re, " com mé "re, " "mon " ma "ri. "
  "\nIl " "ne " "me " cour rou "ce, "
  "\nne " "me " "bat " sus "si. " 
  "\nIl " "fait " "le " mé na "ge, "
  "\nil " don "ne " "aux " pou "lets, "
  "\nil " don "ne " "aux " pou "lets, "
  "\net " "je "  "prends " "mon " plai "sir. "
  "\nCom" mé "re, " est "ce " "pour " ri "re, " 
  "\nquand " "la " pou lail "le " cri "e, "
  "\nquand " "la " pou lail "le " cri "e; "
  "\nPe" ti "te " co quet "te, " pe ti "te " co quet "te, "
  "\npe" ti "te " co quet "te, " pe ti "te " co quet "te, " 
  "\nqu'est" ce "ci? "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nco" mé "re, " co mé "re, " "mon " ma "ri. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  R1 | b8 cis d e fis4 4 | 4 4 4 4 |
  g2 fis | b,8 cis d e fis4 4 | 4 4 cis4 8 8 | e4 b b b |
  b2 r | a'4. g8 fis4 g | d e g4.(fis8) | e4 d e2 | R1 | R | % 266a
  R1 | b8 cis d e fis4 4 | 4 4 4 4 | g2 fis |
  b,8 cis d e fis4 4 | 4 4 cis4 8 8 | e4 b b b | b2 r | b4. 8 fis'4 4 | % 267a
  e4 e b'2~ | 4 a g g | fis1 | R1 | R | r2 a4. 8 |
  a4 a g e | r2 f4. g8 | 4 4 g e | r b cis d(~ | 8 cis d4) e2 | % 268a
  b4(a b2) | 1 | r4 4 fis'2 | 4 d fis4. g8 | a2 e~ | e r4 b |
  fis'2. d4 | fis4. g8 a2 | e1 | r2 d4 4 | 4 4 4 8 8 | % 269a
  d8 8 8 8 4 8 8 | 8 8 8 8 8 8 4 | 8 8 8 8 4 4 | 4 8 8 4 b |
  b4 4 2~ | 1 | 8 cis d e fis4 4 | 4 4 4 4 | % 270a
  g2 fis | b,8 cis d e fis4 4 | 4 4 cis4 8 8 | e4 b b b | b1\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  Il est bel et bon, bon, bon, bon, bon, com -- mé -- re,
  Il est bel et bon, bon, bon, bon, bon, bon, com -- mé -- re,
  mon ma -- ri.
  Il é -- tait deux fem -- mes tou -- tes du pays,
  Il est bel et bon, bon, bon, bon, bon, bon, com -- mé -- re,
  Il est bel et bon, bon, bon, bon, bon, com  -- mé -- re,
  mon ma -- ri.
  Il ne me cour -- rou -- ce,
  ne me bat sus -- si. __
  Il fait le mé -- na -- ge,
  Il fait le mé -- na -- ge,
  et je __ prends mon plai -- sir.
  Com -- mé -- re, est -- ce pour ri -- re, __
  quand la pou -- lail -- le cri -- e;
  co co co co co co co co co co co co co co co co co co co co
  da co co co co da pe -- ti -- te co -- quet -- te,
  qu'est -- ce -- ci?
  Il est bel et bon, bon, bon, bon, bon, com -- mé -- re,
  Il est bel et bon, bon, bon, bon, bon, bon, com -- mé -- re,
  mon ma -- ri.
}

wordsAltoMidi = \lyricmode {
  "Il " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nmon " ma "ri. "
  "\nIl " é "tait " "deux " fem "mes " tou "tes " "du " "pays, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nmon " ma "ri. "
  "\nIl " "ne " "me " cour rou "ce, "
  "\nne " "me " "bat " sus "si. " 
  "\nIl " "fait " "le " mé na "ge, "
  "\nIl " "fait " "le " mé na "ge, "
  "\net " "je "  "prends " "mon " plai "sir. "
  "\nCom" mé "re, " est "ce " "pour " ri "re, " 
  "\nquand " "la " pou lail "le " cri "e; "
  "\nco " "co " "co " "co " "co " "co " "co " "co " "co " "co " "co " "co " "co " "co " "co " "co " "co " "co " "co " "co "
  "\nda " "co " "co " "co " "co " "da " pe ti "te " co quet "te, "
  "\nqu'est" ce "ci? "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nmon " ma "ri. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  r2 e8 fis g a | b4 b d d | cis4 4 a2 |
  b2 8 a g a | b4 b d d | cis2 a4 a | b4. a8 g4 fis |
  e1 | R | R | r2 e'4. d8 | cis4 d a b | d4. cis8 b4 a | % 266a
  b2 e,8 fis g a | b4 b d d | cis4 4 a2 | b2 8 a g a |
  b4 b d d | cis2 a4 4 | b4. a8 g4 fis | e1 | R | % 267a
  R1 | r2 e4. 8 | b'4 4 a a | e'2. d4 | cis4 4 b2 | d4. 8 4 4 |
  cis4 a r2 | b4. 8 d4 d | cis4 a r2 | r4 b fis'4.(e8) | d4.(cis8 b4) a~( | % 268a
  a8 g fis e) fis2 | e r4 e | b'2. g4 | b4. cis8 d2 | a r | r4 e b'2~ |
  b4 g b4. cis8 | d2 a | r4 a g e | g2 a4 a | fis2 r4 fis | % 269a
  b4 a8 fis g4 fis8 a | b4 a8 fis g4 fis8 a | b4 a8 fis g4 fis8 a | b4 a8 8 4 g |
  fis4 4 e2~ | 2 8 fis g a | b4 b d d | cis4 4 a2 | % 270a
  b2 8 a g a | b4 b d d | cis2 a4 a | b4. a8 g4 fis | e1\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  Il est bel et bon, bon, bon, bon, bon, com -- mé -- re,
  Il est bel et bon, bon, bon, bon, bon, bon, com -- mé -- re,
  mon ma -- ri.
  …di -- sant l'une à Pau -- tre: a -- vez bon ma -- ri,
  Il est bel et bon, bon, bon, bon, bon, com -- mé -- re,
  Il est bel et bon, bon, bon, bon, bon, bon, com  -- mé -- re,
  mon ma -- ri.
  Il ne me cour -- rou -- ce,
  ne me bat sus -- si. __
  Il fait le mé -- na -- ge,
  Il fait le mé -- na -- ge
  et je __ prends __ mon plai -- sir.
  Com -- mé -- re,~est -- ce pour ri -- re, __
  quand la pou -- lail -- le cri -- e,
  quand la pou -- lail -- le cri -- e;
  Pe - -ti - -te co -- quet -- te, pe -- ti -- te co -- quet -- te,
  Pe - -ti - -te co -- quet -- te, pe -- ti -- te co -- quet -- te,
  qu'est -- ce -- ci? _
  Il est bel et bon, bon, bon, com -- mé -- re, __
  Il est bel et bon, bon, bon, com -- mé -- re,
  mon ma -- ri.
}

wordsTenorMidi = \lyricmode {
  "Il " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nmon " ma "ri. "
  "\n…di" "sant " "l'une " "à " Pau "tre: " a "vez " "bon " ma "ri, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " "bon, " "bon, " "bon, " com mé "re, "
  "\nmon " ma "ri. "
  "\nIl " "ne " "me " cour rou "ce, "
  "\nne " "me " "bat " sus "si. " 
  "\nIl " "fait " "le " mé na "ge, "
  "\nIl " "fait " "le " mé na "ge "
  "\net " "je "  "prends "  "mon " plai "sir. "
  "\nCom" mé re,~est "ce " "pour " ri "re, " 
  "\nquand " "la " pou lail "le " cri "e, "
  "\nquand " "la " pou lail "le " cri "e; "
  "\nPe "  "-ti "  "-te " co quet "te, " pe ti "te " co quet "te, "
  "\nPe "  "-ti "  "-te " co quet "te, " pe ti "te " co quet "te, "
  "\nqu'est" ce "ci? " ""
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " com mé "re, " 
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " com mé "re, "
  "\nmon " ma "ri. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  R1 | r2 b,8 cis d e | fis4 4 4 4 |
  e2 b~ | 2 8 cis d e | fis4 4 4 4 | e e b b |
  e1 | R | R | R | a4. g8 fis4 g | d e g4. fis8 | % 266a
  e4 d e2~ | 2 b8 cis d e | fis4 4 4 4 | e2 b~ |
  b2 8 cis d e | fis4 4 4 4 | e e b b | e1~ | 2 r | % 267a
  R1 | R | b4. 8 fis'4 4 | e e b'2~ | 4 a g2 | g fis |
  r2 e4. 8 | g4 g fis d | r2 e4. 8 | g4 g fis d | r4 b e a, | % 268a
  b4(c) b2 | e1~ | 2 r4 b~ | b fis'2 d4 | fis4. g8 a2 | e1 |
  r4 b2 fis'4~ | 4 d fis4. g8 | a2 e~ | e r4 d | 8 8 8 8 g4 d8 8 | % 269a
  g4 d8 d g g d d | g4 d8 d g g d d | g4 d8 d g4 d | g d8 8 4 e |
  d4 d e2~ | e1~ | e2 b8 cis d e | fis4 4 4 4 | % 270a
  e2 b~ | 2 8 cis d e | fis4 4 4 4 | e e b b | e1\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  Il est bel et bon, bon, bon, com -- mé -- re,
  Il est bel et bon, bon, bon, com -- mé -- re,
  mon ma -- ri.
  …di -- sant l'une à Pau -- tre: a -- vez bon ma -- ri. __
  Il est bel et bon, bon, bon, com -- mé -- re,
  Il est bel et bon, bon, bon, com  -- mé -- re,
  mon ma -- ri.
  Il ne me cour -- rou -- ce,
  ne __ me bat sus -- si.
  Il fait le mé -- na -- ge,
  Il fait le mé -- na -- ge
  et je prends mon __ plai -- sir. __
  Com -- mé -- re,~est -- ce pour ri -- re,
  quand la __ pou -- lail -- le cri -- e; __
  co co co co co da co co da co co co co co co da
  co co co co co co da co co da 
  pe -- ti -- te co -- quet -- te,
  qu'est -- ce -- ci? __
  Il est bel et bon, bon, bon, com -- mé -- re, __
  Il est bel et bon, bon, bon, com -- mé -- re,
  mon ma -- ri.
}

wordsBassMidi = \lyricmode {
  "Il " "est " "bel " "et " "bon, " "bon, " "bon, " com mé "re, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " com mé "re, "
  "\nmon " ma "ri. "
  "\n…di" "sant " "l'une " "à " Pau "tre: " a "vez " "bon " ma "ri. " 
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " com mé "re, "
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " com mé "re, "
  "\nmon " ma "ri. "
  "\nIl " "ne " "me " cour rou "ce, "
  "\nne "  "me " "bat " sus "si. "
  "\nIl " "fait " "le " mé na "ge, "
  "\nIl " "fait " "le " mé na "ge "
  "\net " "je " "prends " "mon "  plai "sir. " 
  "\nCom" mé re,~est "ce " "pour " ri "re, "
  "\nquand " "la "  pou lail "le " cri "e; " 
  "\nco " "co " "co " "co " "co " "da " "co " "co " "da " "co " "co " "co " "co " "co " "co " "da "
  "\nco " "co " "co " "co " "co " "co " "da " "co " "co " "da " 
  "\npe" ti "te " co quet "te, "
  "\nqu'est" ce "ci? " 
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " com mé "re, " 
  "\nIl " "est " "bel " "et " "bon, " "bon, " "bon, " com mé "re, "
  "\nmon " ma "ri. "
}

pianoRHone = \relative {
  \global
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \bar "|."
}

#(set-global-staff-size 20)

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
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%          >>
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
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
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
            \addlyrics {\tiny \wordsBass}
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

