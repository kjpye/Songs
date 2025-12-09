\version "2.25.31"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Three Kings"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Peter Cornelius (1824-74)"
  arranger    = "Arr. Ivor Atrkins (1869-1953)"
%  opus        = "opus"

  poet        = "Tr. H. N. Bate"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Langsam (Slowly)" 4=60
  s4. | s2. | s1*5 |
  s1 | s2 s2.*2 | s1*5 |
  s1*6 |
  \tempo "poco a poco più mosso" 4=61 s1 | \tempo 4=62 s | \tempo 4=63 s2 s8 \tempo "rit." 4=55 s4. | \tempo "a tempo" 4=60 s1*3 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "346a" } s4. s2. s1 |
  \textMark \markup { \box "346b" } s1*2 |
  \textMark \markup { \box "346c" } s1*2 |
  \textMark \markup { \box "347a" } s1 s2 s2. |
  \textMark \markup { \box "347b" } s2. s1 |
  \textMark \markup { \box "347c" } s1*2 |
  \textMark \markup { \box "347d" } s1*2 |
  \textMark \markup { \box "348a" } s1*2 |
  \textMark \markup { \box "348b" } s1*2 |
  \textMark \markup { \box "348c" } s1*2 |
  \textMark \markup { \box "349a" } s1*2 |
  \textMark \markup { \box "349b" } s1*2 |
  \textMark \markup { \box "349c" } s1*2 |
}

dynamicsSolo = {
  \override DynamicTextSpanner.style = #'none
  s4.\mf | s2. | s1*5 |
  s1 | s2 s2.*2 | s1*5 | % 347
  s1*6 |
  s1*6 |
}

solo = \relative {
  \global
  d'8 b' fis | a(g b,) c e8. d16 | \time 4/4 d4 r8 d g a b a16 g |
  g8 c g4 r8 g b c | d b16 a g8 fis16 g e8 b'4 a8 |
  g8 a b ais16 b d8 cis16(b) a4 | r8 a gis a c a b a16 g |
  c8 g b a16(g) e8(fis) g d | e fis16(e) d4 \section \partial 2. \time 3/4 r4 r8 d b' fis | % 347a
  a8(g) b, c e8. d16 | \time 4/4 4 r8 d g a b a16 g |
  g8 c g4 r8 g b c | d b16 a g8 fis16(g) e8 b' b a |
  g8(a) b ais16(b) d8 cis16(b) a4 | r8 a gis a c a b a16 g |
  c8 g b a16(g) e8(fis) g d | e fis16(e) d4~8 r r4 \section | % 348a
  r4 r8 d b'8. c16 b4 | g8 fis e g fis2 |
  r8 d c'8. a16 e'8(d) b(g) | r g g e b'2 |
  r8 c b g e fis16 e dis8 e | fis c' b a16(g) e8 fis16 e dis8 e | % 349a
  fis8 8 c' b a g16(e) d8 d'16(c) | b4 8 a16 g d'8(b) g fis |
  e8 fis16(g) d4 r2 | e4 d8. 16 b'2\fermata |
  \bar "|."
}

wordsSolo = \lyricmode {
  \set stanza = "1."
  Three kings from Per -- sian lands a -- far
  To Jor -- dan fol -- low the point -- ing star:
  And this the quest of the tra -- vel -- lers three,
  Where the new- born King of the Jews may __ be.
  Full roy -- al gifts they bear for the King;
  Gold, in -- cense, myrrh are their of -- fer -- ing. % 347a
  \set stanza = "2."
  The star shines out __ with a stead -- fast ray;
  The kings to Beth -- le -- hem make their way,
  And there in wor -- ship they bend the __ knee,
  As Ma -- ry’s child __ in her __ lap they __ see;
  Their roy -- al gifts they show to the King;
  Gold, in -- cense, myrrh __ are their of -- fer -- ing. __ % 348a
  Thou child of man, lo, to Beth -- le -- hem
  The kings are tra -- v’lling, tra -- vel with them!
  The star of mer -- cy, the star of grace, % 349a
  Shall lead thy __ heart to its rest -- ing- place.
  Gold, in -- cense, myrrh thou __ canst not __ bring;
  Of -- fer thy heart __ to the in -- fant __ King,
  Of -- fer thy heart!
}

wordsSoloMidi = \lyricmode {
  \set stanza = "1."
  "Three " "kings " "from " Per "sian " "lands " a "far "
  "\nTo " Jor "dan " fol "low " "the " point "ing " "star: "
  "\nAnd " "this " "the " "quest " "of " "the " tra vel "lers " "three, "
  "\nWhere " "the " new "born " "King " "of " "the " "Jews " "may "  "be. "
  "\nFull " roy "al " "gifts " "they " "bear " "for " "the " "King; "
  "\nGold, " in "cense, " "myrrh " "are " "their " of fer "ing. " % 347a
  \set stanza = "2."
  "\nThe " "star " "shines " "out "  "with " "a " stead "fast " "ray; "
  "\nThe " "kings " "to " Beth le "hem " "make " "their " "way, "
  "\nAnd " "there " "in " wor "ship " "they " "bend " "the "  "knee, "
  "\nAs " Ma "ry’s " "child "  "in " "her "  "lap " "they "  "see; "
  "\nTheir " roy "al " "gifts " "they " "show " "to " "the " "King; "
  "\nGold, " in "cense, " "myrrh "  "are " "their " of fer "ing. "  % 348a
  "\nThou " "child " "of " "man, " "lo, " "to " Beth le "hem "
  "\nThe " "kings " "are " tra "v’lling, " tra "vel " "with " "them! "
  "\nThe " "star " "of " mer "cy, " "the " "star " "of " "grace, " % 349a
  "\nShall " "lead " "thy "  "heart " "to " "its " rest ing "place. "
  "\nGold, " in "cense, " "myrrh " "thou "  "canst " "not "  "bring; "
  "\nOf" "fer " "thy " "heart "  "to " "the " in "fant "  "King, "
  "\nOf" "fer " "thy " "heart! "
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s4. | s2. | s1*5 |
  s1 | s2 s2. | s2 s4\pp | s1*2 | s4 s\p s\< s\!-\markup\italic poco | s2 s4\> s\! | s2. s4\p | % 347
  s2 s\< | s\> s\! | s1\pp | s1*3 |
  s1*3 | s2\< s8\! s4.\f | s2 s\> | s1\pp |
}

soprano = \relative {
  \global
  r4. | R2. | R1*5 |
  R1 | r2 \section \partial 2. r2. | % 347a
  r4 r g' | \time 4/4 d' b g d' |
  <c e>4 4 <b d>2 | r4 d e fis |
  g4 fis e e | d2 r4 b |
  e4 d c b | a2 g \section | % 348a
  d'2 b~ | 1 \breathe |
  d2 b~ | 1 |
  c4 b a b | c b a b | % 349a
  c4. b8 a2 | g~8 <d' g>4 <d fis>8~ |
  q8 <c e>4 <g d'>8~8 c4 b8 | a2 g\fermata |
}

wordsSop = \lyricmode {
  Of Ja -- cob’s stem and Da -- vid’s line, % 347b
  For thee, my Bride -- groom, King di -- vine,
  My soul with love __ o’er -- flow -- eth.
  Thy word, __ Je -- su, __
  In -- ly feeds us, __ % 349a
  Right -- ly leads us, __
  Life be -- stow -- ing. __
  Praise, O __ praise such __ love o’er -- flow -- ing.
}

wordsSopMidi = \lyricmode {
  "Of " Ja "cob’s " "stem " "and " Da "vid’s " "line, " % 347b
  "\nFor " "thee, " "my " Bride "groom, " "King " di "vine, "
  "\nMy " "soul " "with " "love "  o’er flow "eth. "
  "\nThy " "word, "  Je "su, " 
  "\nIn" "ly " "feeds " "us, "  % 349a
  "\nRight" "ly " "leads " "us, " 
  "\nLife " be stow "ing. " 
  "\nPraise, " "O "  "praise " "such "  "love " o’er flow "ing. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4. | s2. | s1*5 |
  s1 | s2 s2. | s2 s4\pp | s1*2 | s4 s\p s\< s\!-\markup\italic poco | s2 s4\> s\! | s2. s4\p | % 347
  s2 s\< | s\> s\! | s1\pp | s1*3 |
  s1*3 | s2\< s8\! s4.\f | s2 s\> | s1\pp |
}

alto = \relative {
  \global
  r4. | R2. | R1*5 |
  R1 | r2 \section \partial 2. r2. | % 347a
  r4 r e' | <d g> fis e g |
  <e g>4 4 g2 | r4 g <e b'> <a b> |
  <b g>4 b <e, b'> <<{\vt e4} \new Voice {\vo a8(g)}>> \ov | fis2 r4 g |
  g4 4 8(fis) g4 | g(fis) g2 \section | % 348a
  fis2 <d g> \breathe | g fis \breathe |
  fis2 <d g> \breathe | g4(e) fis2 |
  fis4 g g a8(g) | fis4 g e fis8(e) | % 349a
  dis4 e g4.(fis8) | g g(b) a16(g) b8 g4 8~ |
  g8 4 b8~8 fis4 g8 | g4(fis) g2\fermata |
}

wordsAlto = \lyricmode {
  Of Ja -- cob’s stem and Da -- vid’s line, % 347b
  For thee, my Bride -- groom, King di -- vine,
  My soul with love __ o’er -- flow -- eth.
  Thy __ word, __ thy __ word,
  Je -- su, __ Je -- su,
  In -- ly feeds us, __ % 349a
  Right -- ly leads us, __
  Life be -- stow -- ing.
  Praise, O __ praise,
  Praise, O __ praise such __ love o’er -- flow -- ing.
}

wordsAltoMidi = \lyricmode {
  "Of " Ja "cob’s " "stem " "and " Da "vid’s " "line, " % 347b
  "\nFor " "thee, " "my " Bride "groom, " "King " di "vine, "
  "\nMy " "soul " "with " "love "  o’er flow "eth. "
  "\nThy "  "word, "  "thy "  "word, "
  "\nJe" "su, "  Je "su, "
  "\nIn" "ly " "feeds " "us, "  % 349a
  "\nRight" "ly " "leads " "us, " 
  "\nLife " be stow "ing. "
  "\nPraise, " "O "  "praise, "
  "\nPraise, " "O "  "praise " "such "  "love " o’er flow "ing. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4. | s2 s4\omit\pp-\markup{\dynamic pp \italic "well sustained"} | s1*2 | s4 s\p s\< s\! | s2 s\> | s2.\! s4\pp |
  s1 | s2 s2. | s2 s4\pp | s1*2 | s4 s\p s\< s\!-\markup\italic poco | s2 s4\> s\! | s2. s4\p | % 347
  s2 s\< | s\> s\! | s1\pp | s1*3 |
  s1*3 | s2\< s8\! s4.\f | s2 s\> | s1\pp |
}

tenor = \relative {
  \global
  r8 r4 | r r g | <b d> <fis b> g <g d'> |
  <c e>4 4 <b d>2 | r4 q <b e> <dis fis> |
  <e g>4 <d fis> <d e> <cis e> | <a d>2 r4 b |
  <c e>4 <b d> <<{\vo c4} \new Voice {\vt g8(fis)}>> \ov <g b>4 | g4(fis) \section \partial 2. <d g>2 r4 | % 347a
  r4 r c' | b b b <g d'> |
  <g c>4 4 <g d'>2 | r4 d' b <b dis> |
  <b e>4 <d fis> d cis | d2 r4 d |
  c4 b c d | e(d8 c) b2 \section | % 348a
  c4(a) g(b) \breathe | b(cis) d2 \breathe |
  c2 d4.(b8) \breathe | 4(cis) dis2 |
  dis4 e e fis8(e) | dis4 e g, a8(g) | % 349a
  fis4 g e'(d) | b(cis d8) 4 8~ |
  d8 e4 b8~8 c4 d8 | e4(d8 c) b2\fermata |
}

wordsTenor = \lyricmode {
  How bright -- ly shines the morn -- ing star!
  With grace and truth from heav’n a -- far
  Our Jes se tree __ noe blow -- eth.
  Of Ja -- cob’s stem and Da -- vid’s line, % 347b
  For thee, my Bride -- groom, King di -- vine,
  My soul with love __ o’er -- flow -- eth.
  Thy __ word, __ thy __ word,
  Je -- su, __ Je -- su,
  In -- ly feeds us, __ % 349a
  Right -- ly leads us, __
  Life be -- stow -- ing.
  Praise, O __ praise such __ love o’er -- flow -- ing.
}

wordsTenorMidi = \lyricmode {
  "How " bright "ly " "shines " "the " morn "ing " "star! "
  "\nWith " "grace " "and " "truth " "from " "heav’n " a "far "
  "\nOur " "Jes " "se " "tree "  "noe " blow "eth. "
  "\nOf " Ja "cob’s " "stem " "and " Da "vid’s " "line, " % 347b
  "\nFor " "thee, " "my " Bride "groom, " "King " di "vine, "
  "\nMy " "soul " "with " "love "  o’er flow "eth. "
  "\nThy "  "word, "  "thy "  "word, "
  "\nJe" "su, "  Je "su, "
  "\nIn" "ly " "feeds " "us, "  % 349a
  "\nRight" "ly " "leads " "us, " 
  "\nLife " be stow "ing. "
  "\nPraise, " "O "  "praise " "such "  "love " o’er flow "ing. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4. | s2 s4\omit\pp-\markup{\dynamic pp \italic "well sustained"} | s1*2 | s4 s\p s\< s\! | s2 s\> | s2.\! s4\pp |
  s1 | s2 s2. | s2 s4\pp | s1*2 | s4 s\p s\< s\!-\markup\italic poco | s2 s4\> s\! | s2. s4\p | % 347
  s2 s\< | s\> s\! | s1\pp | s1*3 |
  s1*3 | s2\< s\f | s s\> | s1\pp |
}

bass = \relative {
  \global
  r8 r4 | r r g | g d e b |
  <c g'>4 4 <g g'>2 | r4 q g' <fis a> |
  <e b'>4 <b b'> <<{\vo b'4 a8(g)} \new Voice {\vt g,4 a}>> \ov | <d fis>2 r4 g |
  <c, g'>4 <g g'> <a e'> <b d> | <c e>(d) \section \partial 2. <g, b>2 r4 | % 347a
  r4 r g' | g d e b |
  c4 c g2 | r4 b' g fis |
  e4 <b b'> <g g'> <a a'> | d2 r4 g |
  c,4 g a b | c(d) g,2 \section | % 348a
  d'2 g \breathe | e b \breathe |
  a4(d) g,2 | e' b |
  a'4 g c, b | a' g c, b | % 349a
  a4 g c(d) | g(e) <b b'>4 4 |
  <c c'>4 <g g'> <<{\vo a'8(a,)} \new Voice {\vt a4}>> \ov b4 | c(d) <g, d'>2\fermata |
}

wordsBass = \lyricmode {
  How bright -- ly shines the morn -- ing star!
  With grace and truth from heav’n a -- far
  Our Jes se tree __ noe blow -- eth.
  Of Ja -- cob’s stem and Da -- vid’s line, % 347b
  For thee, my Bride -- groom, King di -- vine,
  My soul with love __ o’er -- flow -- eth.
  Thy __ word, __ thy __ word,
  Je -- su, __ Je -- su,
  In -- ly feeds us, __ % 349a
  Right -- ly leads us, __
  Life be -- stow -- ing.
  Praise, O __ praise such __ love o’er -- flow -- ing.
}

wordsBassMidi = \lyricmode {
  "How " bright "ly " "shines " "the " morn "ing " "star! "
  "\nWith " "grace " "and " "truth " "from " "heav’n " a "far "
  "\nOur " "Jes " "se " "tree "  "noe " blow "eth. "
  "\nOf " Ja "cob’s " "stem " "and " Da "vid’s " "line, " % 347b
  "\nFor " "thee, " "my " Bride "groom, " "King " di "vine, "
  "\nMy " "soul " "with " "love "  o’er flow "eth. "
  "\nThy "  "word, "  "thy "  "word, "
  "\nJe" "su, "  Je "su, "
  "\nIn" "ly " "feeds " "us, "  % 349a
  "\nRight" "ly " "leads " "us, " 
  "\nLife " be stow "ing. "
  "\nPraise, " "O "  "praise " "such "  "love " o’er flow "ing. "
}

pianoRHone = \relative {
  \global
}

pianoRHtwo = \relative {
  \global
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
}

pianoLHtwo = \relative {
  \global
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
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
            instrumentName = Bass
            shortInstrumentName = B
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
%            \accidentalStyle Score.modern-cautionary
%          }
%          <<
%            \new Voice \TempoTrack
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern-cautionary
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
%          >>
%        >>
%      >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
  \paper {
    output-suffix = single-solo
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
  \paper {
    output-suffix = single-sop
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
  \paper {
    output-suffix = single-alto
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
  \paper {
    output-suffix = single-tenor
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
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
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
  \paper {
    output-suffix = single-bass
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
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
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
  \paper {
    output-suffix = singlepage-solo
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
  \paper {
    output-suffix = singlepage-sop
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
  \paper {
    output-suffix = singlepage-alto
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
  \paper {
    output-suffix = singlepage-tenor
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
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
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
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
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
  \paper {
    output-suffix = singlepage-bass
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
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
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
  \paper {
    output-suffix = midi-solo
  }
  \score {
%   \articulate
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
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
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
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
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
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
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
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
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
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
%   \articulate
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = "Solo"
          shortInstrumentName = "Sol"
          midiInstrument = "choir aahs"
          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
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
