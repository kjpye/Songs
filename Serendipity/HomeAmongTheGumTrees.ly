\version "2.25.28"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Home Among the Gum Trees"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "W. Johnson & B. Brown"
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

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

TempoTrack = {
  \tempo "Med. tempo" 4=120
  \set Score.tempoHideNote = ##t
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s2.*4
}

chorusChords = \chordmode {
  \tuplet 3/2 {s4 g8} s4 e2:m | a:m d:7 |
  a1:m | g2 d:7 | g e:m |
  a2:m d:7 | a:m d:7 |
}

chorusChordsFinal = \chordmode {
  \tuplet 3/2 {s4 g8} s4 e2:m | a:m d:7 |
  a1:m | g2 d:7 | g e:m |
  a2:m d:7 | a:m d:7 | g1 |
}

ChordTrack = \chordmode {
  s1
  \repeat volta 3 {
    g2 e:m a:m d:7 |
    a4:m \tuplet 3/2 {s4 d8:7} s2 | g d:7 |
    g2 e:m | a:m d:7 | a:m d:7 |
    g1 |
    \chorusChords
    \alternative {
      {g1}
      {g1}
      {g1}
    }
  }
  c1 | g | % 2a
  d1:7 g2. g4:7 |
  c1 | g |
  d1:7 | s |
}

melodyA = \relative { r2 r4 b' | }

melodyB = \relative {
  \tuplet 3/2 4 {d''8 d d~4 b8 e4 8 8 b a~ | 4 b8 a4 g8} d4 \tuplet 3/2 {r4 a'8} |
  \tuplet 3/2 4 {a4 8 4 b8 d4 c8 a4 d,8 | g4 d8 g b d~} 4 \tuplet 3/2 {r4 b8} |
  \tuplet 3/2 4 {d4 8 4 b8 e4 8 4 b8 | a4 b8 a g d~} 4 r8 b' | a4 d d, a' |
  g4 r r2 \section |
}

melodyC = \relative {
  \tuplet 3/2 4 {r4\segno g'8 g a b~4 ais8 b4 g8} | a4 e8(d~ \tuplet 3/2 4 {4) b'8 4 g8} |
  a4 e8(d~4) \tuplet 3/2 4 {r4 a'8 | g4 8 4 e8 d4 8 4 e8 | d4 8 4 e8} g4 \tuplet 3/2 {r b8} |
  \tuplet 3/2 4 {a4 b8 a4 g8} d4 \tuplet 3/2 {r8 a' a} | a2 b8 4 a8(
}

melodyD = \relative { g'4) r r \tuplet 3/2 {b4 c8} }
melodyE = \relative { g'4\repeatTie) r r \tuplet 3/2 {d'4 r8} }

melodyF = \relative {
  \tuplet 3/2 4 {e''4 8 4 fis8 g g r r e e | d4 8 b4 c8} d4 \tuplet 3/2 {r8 d d} | % 2a
  \tuplet 3/2 4 {d4 8 c4 a8 d,4 8 4 e8 | g4 d8 g4 b8} d4 \tuplet 3/2 {r8 d d} |
  \tuplet 3/2 4 {e4 8 4 f8 g g r r e e | d4 c8 b4 c8} d4 \tuplet 3/2 {r4 d8} |
  d4 d e f | fis r r2 \section |
}

melodyG = \relative {g'4\repeatTie) r r \tuplet 3/2 {d'4 8} \section |}
melodyH = \relative {g'4) r r2 | \bar "|."}

melody = \relative {
  \global
  \melodyA
  \repeat volta 3 {
    \melodyB \melodyC
    \alternative {\melodyD \melodyE \melodyD}

  }
  \melodyF
}

melodySingle = {
  \melodyA
  \melodyB \melodyC \melodyD
  \melodyB \melodyC \melodyE
  \melodyB \melodyC \melodyG
  \melodyF \melodyC \melodyH
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  \set stanza = "1."
  I’ve been a -- round the world a doz -- en times, __ or may -- be more,
  I’ve seen the sights and had de -- lights on ev -- ’ry for -- eign shore, __
  But when my friends all ask of me the place that I a -- dore, __
  I tell them right a -- way.
  Give me a home __ a -- mong the gum -- trees, __
  with lots of plum trees, __
  A sheep or two, a Kan -- ga -- roo,
  A clothes line out the back,
  Ve -- ran -- dah out the front
  and an old rock -- ing chair. __

  \set stanza = "2."
  I’ll be
}

wordsTwo = \lyricmode {
  _
  stand -- ing in the kit -- chen _ _
  Cook -- ing up a roast,
  With Veg -- e -- mite on toast,
  Just me and you, a cock -- a -- too,
  And af -- ter tea we’ll set -- tle down
  Be -- side the hitch -- ing post,
  And watch the wom -- bats play.
  \repeat unfold 43 \skip 1

  \set stanza = "3."
  Some _
}

wordsThree = \lyricmode {
  _
  peo -- ple like their hous -- es built
  With fen -- ces all a -- round,
  _ Oth -- ers live in man -- sions,
  Or in bun -- kers un -- der -- ground,
  But I won’t be con -- tent
  Un -- til the day that I have found
  The place I long to be.
}

wordsFour = \lyricmode {
  _ _ _ There’s a Safe -- way on the cor -- ner,
  And a Wool -- worths down the street,
  And a New World’s just been o -- pened
  where they reg -- u -- late the heat,
  But I’d trade them all to -- mor -- row
  for a sim -- ple bush re -- treat
  where kook -- a -- bur -- ras sing.
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  I’ve been a -- round the world a doz -- en times, __ or may -- be more,
  I’ve seen the sights and had de -- lights on ev -- ’ry for -- eign shore, __
  But when my friends all ask of me the place that I a -- dore, __
  I tell them right a -- way.
  Give me a home __ a -- mong the gum -- trees, __
  with lots of plum trees, __
  A sheep or two, a Kan -- ga -- roo,
  A clothes line out the back,
  Ve -- ran -- dah out the front
  and an old rock -- ing chair. __

  \set stanza = "2."
  I’ll be stand -- ing in the kit -- chen _ _
  Cook -- ing up a roast,
  With Veg -- e -- mite on toast,
  Just me and you, a cock -- a -- too,
  And af -- ter tea we’ll set -- tle down
  Be -- side the hitch -- ing post,
  And watch the wom -- bats play.
  Give me a home __ a -- mong the gum -- trees, __
  with lots of plum trees, __
  A sheep or two, a Kan -- ga -- roo,
  A clothes line out the back,
  Ve -- ran -- dah out the front
  and an old rock -- ing chair. __

  \set stanza = "3."
  Some peo -- ple like their hous -- es built
  With fen -- ces all a -- round,
  _ Oth -- ers live in man -- sions,
  Or in bun -- kers un -- der -- ground,
  But I won’t be con -- tent
  Un -- til the day that I have found
  The place I long to be.
  Give me a home __ a -- mong the gum -- trees, __
  with lots of plum trees, __
  A sheep or two, a Kan -- ga -- roo,
  A clothes line out the back,
  Ve -- ran -- dah out the front
  and an old rock -- ing chair. __

  \set stanza = "4."
  There’s a Safe -- way on the cor -- ner,
  And a Wool -- worths down the street,
  And a New World’s just been o -- pened
  where they reg -- u -- late the heat,
  But I’d trade them all to -- mor -- row
  for a sim -- ple bush re -- treat
  where kook -- a -- bur -- ras sing.
  Give me a home __ a -- mong the gum -- trees, __
  with lots of plum trees, __
  A sheep or two, a Kan -- ga -- roo,
  A clothes line out the back,
  Ve -- ran -- dah out the front
  and an old rock -- ing chair. __
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "I’ve " "been " a "round " "the " "world " "a " doz "en " "times, "  "or " may "be " "more, "
  "\nI’ve " "seen " "the " "sights " "and " "had " de "lights " "on " ev "’ry " for "eign " "shore, " 
  "\nBut " "when " "my " "friends " "all " "ask " "of " "me " "the " "place " "that " "I " a "dore, " 
  "\nI " "tell " "them " "right " a "way. "
  "\nGive " "me " "a " "home "  a "mong " "the " gum "trees, " 
  "\nwith " "lots " "of " "plum " "trees, " 
  "\nA " "sheep " "or " "two, " "a " Kan ga "roo, "
  "\nA " "clothes " "line " "out " "the " "back, "
  "\nVe" ran "dah " "out " "the " "front "
  "\nand " "an " "old " rock "ing " "chair.\n" 

  \set stanza = "2."
  "\nI’ll " "be " stand "ing " "in " "the " kit "chen " "" ""
  "\nCook" "ing " "up " "a " "roast, "
  "\nWith " Veg e "mite " "on " "toast, "
  "\nJust " "me " "and " "you, " "a " cock a "too, "
  "\nAnd " af "ter " "tea " "we’ll " set "tle " "down "
  "\nBe" "side " "the " hitch "ing " "post, "
  "\nAnd " "watch " "the " wom "bats " "play. "
  "\nGive " "me " "a " "home "  a "mong " "the " gum "trees, " 
  "\nwith " "lots " "of " "plum " "trees, " 
  "\nA " "sheep " "or " "two, " "a " Kan ga "roo, "
  "\nA " "clothes " "line " "out " "the " "back, "
  "\nVe" ran "dah " "out " "the " "front "
  "\nand " "an " "old " rock "ing " "chair.\n" 

  \set stanza = "3."
  "\nSome " peo "ple " "like " "their " hous "es " "built "
  "\nWith " fen "ces " "all " a "round, "
  "" "\nOth" "ers " "live " "in " man "sions, "
  "\nOr " "in " bun "kers " un der "ground, "
  "\nBut " "I " "won’t " "be " con "tent "
  "\nUn" "til " "the " "day " "that " "I " "have " "found "
  "\nThe " "place " "I " "long " "to " "be. "
  "\nGive " "me " "a " "home "  a "mong " "the " gum "trees, " 
  "\nwith " "lots " "of " "plum " "trees, " 
  "\nA " "sheep " "or " "two, " "a " Kan ga "roo, "
  "\nA " "clothes " "line " "out " "the " "back, "
  "\nVe" ran "dah " "out " "the " "front "
  "\nand " "an " "old " rock "ing " "chair.\n" 

  \set stanza = "4."
  "\nThere’s " "a " Safe "way " "on " "the " cor "ner, "
  "\nAnd " "a " Wool "worths " "down " "the " "street, "
  "\nAnd " "a " "New " "World’s " "just " "been " o "pened "
  "\nwhere " "they " reg u "late " "the " "heat, "
  "\nBut " "I’d " "trade " "them " "all " to mor "row "
  "\nfor " "a " sim "ple " "bush " re "treat "
  "\nwhere " kook a bur "ras " "sing. "
  "\nGive " "me " "a " "home "  a "mong " "the " gum "trees, " 
  "\nwith " "lots " "of " "plum " "trees, " 
  "\nA " "sheep " "or " "two, " "a " Kan ga "roo, "
  "\nA " "clothes " "line " "out " "the " "back, "
  "\nVe" ran "dah " "out " "the " "front "
  "\nand " "an " "old " rock "ing " "chair. " 
}

\book {
  \paper {
    output-suffix = melody
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
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics {\wordsOne \wordsFour}
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChordNames { \ChordTrack \chorusChordsFinal}
%        \new FretBoards { \ChordTrack \chorusChordsFinal}
      >>
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
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
%      <<
%        \new ChordNames { \ChordTrack \chorusChordsFinal}
%        \new FretBoards { \ChordTrack \chorusChordsFinal}
%      >>
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack \chorusChordsFinal}
%        \new FretBoards { \ChordTrack \chorusChordsFinal}
      >>
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsMidi
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
