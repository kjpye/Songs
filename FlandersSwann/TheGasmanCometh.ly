\version "2.25.19"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Gas-man Cometh"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Donald Swann"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Michael Flanders"
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
  \time 6/8
  \partial 4.
}

TempoTrack = {
  \tempo Brightly 4.=120
%  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "30a" s4. s2.*4
  \repeat volta 5 {
    s2.
    \textMark \markup\box "30b" s2.*5
    \textMark \markup\box "30c" s2.*5
    \textMark \markup\box "31a" s2.*5
    \textMark \markup\box "31b" s2.*3
    \alternative {
      {
        s2.*3
        \textMark \markup\box "31c" s2.
      }
      { s2. }
    }
  }
  s2.*3 |
  \textMark \markup\box "31d" s2.*6
}

melodyA = \relative {
  r4 r8 | R2.*3 | r4 r8 r4 d'8
}

melodyB = \relative {
  d'4 g8 4 a8 |
  g4(fis8) d4 8 | g4 d8 a'4 d,8 | % 30b
  \tag #'dash          { b'4. r4 \slurDashed b16(16) \slurSolid |}
  \tag #'(v1 v2 v3 v5) { b4.  r4             b8                 |}
  \tag #'v4            { b4.  r4             b16 16             |}
  c4 8 4 8 | b4 8 4 8 |
  a8 g4 a4 b8 | % 30c
  \tag #'dash          { a4. ~8 r \slurDashed d,16(16) \slurSolid |}
  \tag #'(v1 v2 v3 v4) { a'4.~8 r             d,8                 |}
  \tag #'v5            { a'4.~8 r             d,16 16             |}
  g4 fis8 g4 a8 |
  \tag #'dash          { \slurDashed b4(a8) \slurSolid g4 f8 |}
  \tag #'v4            {             b4(a8)            g4 f8 |}
  \tag #'(v1 v2 v3 v5) {             b4 a8             g4 f8 |}
  e4 8 4 8 |
  \tag #'dash          { a4.  4 b8 |} % 31a
  \tag #'(v1 v2 v3 v4) { a4.  4 b8 |}
  \tag #'v5            { a4. r4 b8 |}
  \tag #'dash          { c4 e,8 \slurDashed 8(8) \slurSolid c'8 |}
  \tag #'(v1 v2 v3 v4) { c4 e,8             4               c'8 |}
  \tag #'v5            { c4 e,8             8 8             c'8 |}
  \tag #'dash          { \slurDashed b4(d,8) \slurSolid 4 b'8 |}
  \tag #'v2            {             b4(d,8)            4 b'8 |}
  \tag #'(v1 v3 v4 v5) {             b4 d,8             4 b'8 |}
  a4  e8 fis4 d8 | g4. d4 c8 | b4. d | g4. 4 a8 | g4 fis8 e4 fis8
}

melodyC = \relative {
  g'4.~8 r r | R2. | R | r4 r8 r4 d8 |
}

melodyD = \relative {
  g'4. r4 d8 |
}

melodyE = \relative {
  g'8 fis g~4 a8 | b g4~4 f8 | \tuplet 2/3 { e8 e } \tuplet 2/3 { e e } |
  c'4.\fermata a4 b8 | c4 e,8 4 c'8 | b4 d,8 4 b'8 | a4 e8 fis4 d8 | g4. r4 r8 | R2. |
}

melody = {
  \global
  \melodyA
  \repeat volta 5 {
    \keepWithTag #'dash \melodyB
    \alternative { \melodyC \melodyD }
  }
  \melodyE
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyC
  \keepWithTag #'v3 \melodyB \melodyC
  \keepWithTag #'v4 \melodyB \melodyC
  \keepWithTag #'v5 \melodyB \melodyD
  \melodyE
  \bar "|."
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  \set stanza = "1."
  ’Twas on a MON -- DAY morn -- ing
  The GAS -- MAN came to call;
  The gas tap would -- n’t turn—
  I was -- n’t get -- ting gas at all. __
  He tore out all the \nom skirt -- ing \yesm boards
  To try and find the main,
  And I had to call a \nom CAR -- PEN -- TER \yesm
  to put them back a -- gain.
  Oh, it all makes work for the work -- ing man to do! __

  ’Twas
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  ’Twas on a TUES -- DAY morn -- ing
  the CAR -- PEN -- TER came round;
  He ham -- mered and he chis -- elled
  and he said: “Look what I‘ve found?
  Your joists are full of \nom dry- -- rot \yesm
  But I’ll put it all to rights.”
  Then he nailed right through a ca -- ble
  and out went all the lights.
}

wordsThree = \lyricmode {
  \set stanza = "3."
  ’Twas on a WED -- NESDAY morn -- ing
  the EL -- EC -- TRI -- CIAN came;
  He called me ‘Mis -- ter Sand -- er -- son’
  "(which" is -- n’t quite my "name)."
  He could -- n’t reach the \nom fuse box \yesm
  With -- out stand -- ing on the bin
  And his foot went through a \nom win -- dow— \yesm
  so I called a GLA -- ZIER in.
}

wordsFour = \lyricmode {
  \set stanza = "4."
  ’Twas on a THURS -- DAY morn -- ing
  The GLA -- ZIER came a -- long,
  \nom With his \yesm blow- torch and his put -- ty
  and his mer -- ry Gla -- zier’s song;
  He put a -- noth -- er pane in—
  It took no time at all—
  But I had to get a \nom pain -- ter \yesm in
  to come and paint the wall.
}

wordsFive = \lyricmode {
  \set stanza = "5."
  ’Twas on a FRI -- DAY morn -- ing
  The PAIN -- TER made a start;
  With un -- der -- coats and o -- ver -- coats
  he pain -- ted ev -- ’ry part,
  \nom Ev -- ’ry \yesm nook and ev -- ’ry \nom cran -- ny, \yesm
  But I found when he was gone
  \skip 1 He’d pain -- ted \nom o -- ver \yesm  the \nom gas tap \yesm and I could -- n’t turn it on!
  \repeat unfold 13 \skip 1
  do!
  On SAT -- UR -- DAY and SUN -- DAY they do no work at all:
  So ’twas on a MON -- DAY morn -- ing that the GAS -- MAN came to call!
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  ’Twas on a MON -- DAY morn -- ing
  The GAS -- MAN came to call;
  The gas tap would -- n’t turn—
  I was -- n’t get -- ting gas at all. __
  He tore out all the skirt -- ing boards
  To try and find the main,
  And I had to call a CAR -- PEN -- TER
  to put them back a -- gain.
  Oh, it all makes work for the work -- ing man to do! __

  \set stanza = "2."
  ’Twas on a TUES -- DAY morn -- ing
  the CAR -- PEN -- TER came round;
  He ham -- mered and he chis -- elled
  and he said: “Look what I‘ve found?
  Your joists are full of dry- -- rot
  But I’ll put it all to rights.”
  Then he nailed right through a ca -- ble
  and out went all the lights.
  Oh, it all makes work for the work -- ing man to do! __

  \set stanza = "3."
  ’Twas on a WED -- NESDAY morn -- ing
  the EL -- EC -- TRI -- CIAN came;
  He called me ‘Mis -- ter Sand -- er -- son’
  "(which" is -- n’t quite my "name)."
  He could -- n’t reach the fuse box
  With -- out stand -- ing on the bin
  And his foot went through a win -- dow—
  so I called a GLA -- ZIER in.
  Oh, it all makes work for the work -- ing man to do! __

  \set stanza = "4."
  ’Twas on a THURS -- DAY morn -- ing
  The GLA -- ZIER came a -- long,
  With his blow- torch and his put -- ty
  and his mer -- ry Gla -- zier’s song;
  He put a -- noth -- er pane in—
  It took no time at all—
  But I had to get a pain -- ter in
  to come and paint the wall.
  Oh, it all makes work for the work -- ing man to do! __

  \set stanza = "5."
  ’Twas on a FRI -- DAY morn -- ing
  The PAIN -- TER made a start;
  With un -- der -- coats and o -- ver -- coats
  he pain -- ted ev -- ’ry part,
  Ev -- ’ry nook and ev -- ’ry cran -- ny,
  But I found when he was gone
  He’d pain -- ted o -- ver the gas tap and I could -- n’t turn it on!
  Oh, it all makes work for the work -- ing man to do! __

  On SAT -- UR -- DAY and SUN -- DAY they do no work at all:
  So ’twas on a MON -- DAY morn -- ing that the GAS -- MAN came to call!
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "’Twas " "on " "a " MON "DAY " morn "ing "
  "\nThe " GAS "MAN " "came " "to " "call; "
  "\nThe " "gas " "tap " would "n’t " "turn— "
  "\nI " was "n’t " get "ting " "gas " "at " "all. " 
  "\nHe " "tore " "out " "all " "the " skirt "ing " "boards "
  "\nTo " "try " "and " "find " "the " "main, "
  "\nAnd " "I " "had " "to " "call " "a " CAR PEN "TER "
  "\nto " "put " "them " "back " a "gain. "
  "\nOh, " "it " "all " "makes " "work " "for " "the " work "ing " "man " "to " "do!\n" 

  \set stanza = "2."
  "\n’Twas " "on " "a " TUES "DAY " morn "ing "
  "\nthe " CAR PEN "TER " "came " "round; "
  "\nHe " ham "mered " "and " "he " chis "elled "
  "\nand " "he " "said: " "“Look " "what " "I‘ve " "found? "
  "\nYour " "joists " "are " "full " "of " dry- "rot "
  "\nBut " "I’ll " "put " "it " "all " "to " "rights.” "
  "\nThen " "he " "nailed " "right " "through " "a " ca "ble "
  "\nand " "out " "went " "all " "the " "lights. "
  "\nOh, " "it " "all " "makes " "work " "for " "the " work "ing " "man " "to " "do!\n" 

  \set stanza = "3."
  "\n’Twas " "on " "a " WED "NESDAY " morn "ing "
  "\nthe " EL EC TRI "CIAN " "came; "
  "\nHe " "called " "me " ‘Mis "ter " Sand er "son’ "
  "\n(which " is "n’t " "quite " "my " "name). "
  "\nHe " could "n’t " "reach " "the " "fuse " "box "
  "\nWith" "out " stand "ing " "on " "the " "bin "
  "\nAnd " "his " "foot " "went " "through " "a " win "dow— "
  "\nso " "I " "called " "a " GLA "ZIER " "in. "
  "\nOh, " "it " "all " "makes " "work " "for " "the " work "ing " "man " "to " "do!\n" 

  \set stanza = "4."
  "\n’Twas " "on " "a " THURS "DAY " morn "ing "
  "\nThe " GLA "ZIER " "came " a "long, "
  "\nWith " "his " blow "torch " "and " "his " put "ty "
  "\nand " "his " mer "ry " Gla "zier’s " "song; "
  "\nHe " "put " a noth "er " "pane " "in— "
  "\nIt " "took " "no " "time " "at " "all— "
  "\nBut " "I " "had " "to " "get " "a " pain "ter " "in "
  "\nto " "come " "and " "paint " "the " "wall. "
  "\nOh, " "it " "all " "makes " "work " "for " "the " work "ing " "man " "to " "do!\n" 

  \set stanza = "5."
  "\n’Twas " "on " "a " FRI "DAY " morn "ing "
  "\nThe " PAIN "TER " "made " "a " "start; "
  "\nWith " un der "coats " "and " o ver "coats "
  "\nhe " pain "ted " ev "’ry " "part, "
  "\nEv" "’ry " "nook " "and " ev "’ry " cran "ny, "
  "\nBut " "I " "found " "when " "he " "was " "gone "
  "\nHe’d " pain "ted " o "ver " "the " "gas " "tap " "and " "I " could "n’t " "turn " "it " "on! "
  "\nOh, " "it " "all " "makes " "work " "for " "the " work "ing " "man " "to " "do! " 

  "\nOn " SAT UR "DAY " "and " SUN "DAY " "they " "do " "no " "work " "at " "all: "
  "\nSo " "’twas " "on " "a " MON "DAY " morn "ing " "that " "the " GAS "MAN " "came " "to " "call! "
}

pianoRHone = \relative {
  \global
  a''4 b8 | c4(e,8) 4(c'8) | b4(d,8) 4 d'8 | <c, a'>4(e8 <c fis>4 d8) | <b g'>4 r8 d,4 8 |
  \repeat volta 5 {
    <b d>4 <b g'>8 4 <d a'>8 |
    \vo g4 fis8 d4 8 | g4 d8 a'4 \ov d,8~ | <b d b'>4 r8 r4 b'8 | \vo c4 8 \ov <d, a' c>4. | <d g b>4. r4 r8 | % 30b
    \vo a'8 g4 a4 b8 | \ov <c, d fis a>4. <d' d'>4 d,8 | \vo g4 fis8 g4 a8 | b4 a8 \ov g4 f8 | e4 8 4 8 |
    \vo a4.~4 b8 | c4 \ov e,8 4 c'8 | <d, g b>4 d8 4 b'8 | \vo a4 e8 fis4 d8~ | <b d g>4. \ov d4 c8 | % 31a
    b4. <a d> | <b d g>4. \vo g'4 a8 | g4 fis8 e4 fis8 |
    \alternative {
      { g4.~8 r r | \ov r4 <b, d g>8 r4 q8 | r4 <c e g>8 4 8 | <c d fis>8[r q] q[r q] | }
      { <b d g>4 r8 <fis' a d>4 s8 | }
    }
  }
  \vo g8 fis g~4 a8 | b8 g4~4 f8 \ov | <c e>4. <d e> |
  <c e a c>4.\fermata r4 r8 | <g' c>4 e8 4 c'8 | \vo b4 d,8 4 b'8 | a4 e8 fis4 d8~ | \ov <b d g>4 r8 <fis' a d>4-> r8 | <b d g>4.-> r |
}

pianoRHtwo = \relative {
  \global \vt
  s4. | s2.*4 |
  \repeat volta 5 {
    s2. |
    c'4.~4 s8 | b4. c | s2. | <c g'>4. s | s2. | % 30b
    <cis e>4. s | s2. | <b f'>4. s | <d f> s | s d |
    <c e>4.~8 r r | g'4. s | s2. | cis,4. c | s2. | % 31a
    s2. | s4. cis | <c d> r4 r8 |
    \alternative { { r4 <b d>8 r4 q8 | s2. | s | s | } {s4. s4 \vo d8~ |} }
  }
  \vt <b d>2. | q2. | s |
  s2. | s | <d g>4. s | <c e> <a c> | s2. | s |
}

dynamicsPiano = {
  s4.\f | s2.*4 |
  \repeat volta 5 {
    \alternative { {} {} }
  }
}

pianoLHone = \relative {
  \global \ov
  r4 r8 | <a c e g>4.~4 r8 | <b d g>4.~4 r8 | <a c e g>4 \clef bass r8 <d, a' c>4 r8 | <g b d>4 r8 <d fis c'>4 r8 |
  \repeat volta 5 {
    \vo d2. | d | \ov <g, d'>4. <d d'> | <g d'>4 r8 r4 r8 | <e e'>4. <fis fis'> | <g g'> r4 r8 | % 30b
    <a a'>4. r4 r8 | <d, d'>4.~4 s8 | q4. r4 r8 | <g g'>4. r4 r8 | <c g' c>4 r8 <b gis'>4 r8 |
    <a e'>4.~4 r8 | <a' c e>4. r4 r8 | d,4. r4 r8 | <a a'>4. <d, d'> | <g d'>4. r4 r8 |
    <g d' g>4. <f d'> | <e e'> <a e'> | <d, d'> r4 r8 |
    \alternative {
      { g4-> r8 b4-> r8 | d4-> r8 g,4-> r8 | c4.-> ~4 e8-> | d8->[r c->] b->[r a->] | }
      { <g g'>4 r8 <d d'>4. | }
    }
  }
  <g, g'>2. | <g' f' g> | <c g'>4. <b gis'> |
  <a e'>4.\fermata r4 r8 | <a' c>4.~4 r8 | d,4. r4 r8 | <a e' g>4 r8 <d, d'>4 r8 | <g d'>4 r8 <d d'>4-> r8 | <g, g'>4.-> r |
}

pianoLHtwo = \relative {
  \global \vt
  s4. | s2.*4 |
  \repeat volta 5 {
    g,4 r8 d4 r8 |
    a'4 r8 d,4 r8 | s2.*4 |
    s2.*5 |
    s2.*5 | % 31a
    s2.*3 |
    \alternative { { s2.*4 | } { s2. | } }
  }
  s2.*3 |
  s2.*6 |
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      \new ChoirStaff <<
                                % Single melody staff
        \new Staff = melody \with {
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \melody
          \addlyrics \wordsOne
          \addlyrics \wordsTwo
          \addlyrics \wordsThree
          \addlyrics \wordsFour
          \addlyrics \wordsFive
        >>
      >>
      \new PianoStaff
      <<
        \new Staff = pianorh \with {
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh \with {
        }
        <<
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      \new ChoirStaff <<
                                % Single melody staff
        \new Staff = melody \with {
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \melodySingle
          \addlyrics \wordsSingle
        >>
      >>
      \new PianoStaff
      <<
        \new Staff = pianorh \with {
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh \with {
        }
        <<
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      \new ChoirStaff <<
                                % Single melody staff
        \new Staff = melody \with {
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \melodySingle
          \addlyrics \wordsSingle
        >>
      >>
      \new PianoStaff
      <<
        \new Staff = pianorh \with {
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh \with {
        }
        <<
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
    output-suffix = midi
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      \new ChoirStaff <<
                                % Single melody staff
        \new Staff = melody \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \melodySingle
          \addlyrics \wordsMidi
        >>
      >>
      \new PianoStaff
      <<
        \new Staff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
