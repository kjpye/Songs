\version "2.25.28"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O’Donnell Abu"
  subtitle    = "Trek version"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
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
  \key c \major
  \time 4/4
  \partial 2
}

TempoTrack = {
  \tempo 4=112
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s2.*4
}

drumPitchNames.cc = #'crashcymbal
drumPitchNames.bass = #'bass
#(define mystyle
  '((crashcymbal cross   #f  1)
    (bass        default #f -1)
  ))

midiDrumPitches.crashcymbal = c,
midiDrumPitches.bass = b,,

DrumTrack = \drummode {
  \global
  bass8 bass16 cc bass cc bass cc |
  \repeat volta 3 {
    \repeat unfold 20 {\grace cc16 bass4 \grace cc16 bass4 bass8 16 cc bass cc bass cc |}
  }
}

ChordTrack = \chordmode {
  s2 |
  \repeat volta 3 {
    s1*4 |
    c1 s g2:7 c |
    g1:7 c s |
    g1:7 f4 c2. g1:7 |
    c1 f2 c g1:7 |
    c1 s g:7 |
    c1 |
  }
}

melodyA = \relative {
  R1*4 |
  c'4 e8 f g4 8 8 |
  \tag #'dash {e'4 c8 a g4 e8.(16) |}
  \tag #'v1   {e'4 c8 a g4 e4      |}
  \tag #'v2   {e'4 c8 a g4 e8. 16  |}
  \tag #'v3   {e'4 c8 a g4 e4      |}
  f4      d8 f e4 c8 e |
  \tag #'dash {d4 8. e16 d4..(16) |}
  \tag #'v1   {d4 8. e16 d2       |}
  \tag #'v2   {d4 8. e16 d4.. 16  |}
  \tag #'v3   {d4 8. e16 d4.. 16  |}
  c4      e8 f g4 8 8 |
  \tag #'dash {e'4 c8 a g4 e8(e) |}
  \tag #'v1   {e'4 c8 a g4 e8 e  |}
  \tag #'v2   {e'4 c8 a g4 e4    |}
  \tag #'v3   {e'4 c8 a g4 e8 e  |}
  \tag #'dash {d 8.(16) b'8 c d4 8 c |}
  \tag #'v1   {d,4      b'8 c d4 8 c |}
  \tag #'v2   {d,8. 16  b'8 c d4 8 c |}
  \tag #'v3   {d,4      b'8 c d4 8 c |}
  b4 a8. 16 g2 | d'4 8 c b a g4 |
  c4 8 a g e c4 | f4 8 8 e4 g8 e | d4 8 e d2 |
  c4 e8 f g a g4 | e' c8 a g e c4 |
  \tag #'dash {d'4 8 c b(g) a b |}
  \tag #'v1   {d 4 8 c b(g) a b |}
  \tag #'v2   {d 4 8 c b g  a b |}
  \tag #'v3   {d 4 8 c b(g) a b |}
  c4 8. b16 c2 |
}

melody = {
  \global \slurDashed
  r2
  \repeat volta 3 {
    \keepWithTag #'dash \melodyA
  }
}

melodySingle = {
  \global
  r2
  \keepWithTag #'v1 \melodyA \section \break
  \keepWithTag #'v2 \melodyA \section \break
  \keepWithTag #'v3 \melodyA
  \bar "|."
}
  
nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  \set stanza = "1."
  Proud -- ly the note of the trum -- pet is sound -- ing,
  Loud -- ly the war cries a -- rise on the Gael;
  Fleet -- ly the steed by Lough Swil -- ly is \nom boun -- ding,
  To \yesm join the thick squad -- rons on Saim -- ear’s green vale.
  On, ev’ -- ry moun -- tain -- eer,
  Stran -- gers to flight or fear,
  Rush to the stan -- dard of daunt -- less Red Hugh.
  Bon -- naught and Gal -- low -- glass,
  Throng from each moun -- tain pass
  On -- ward for Er -- in, “O’ -- Don -- nell A -- bú!”
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Prince -- ly O' -- Neill to our aid is \nom ad -- vanc -- ing
  With ma -- ny \yesm a chief -- tain and warr -- i -- or \nom clan.
  A thou -- sand \yesm proud steeds in his van -- guard are pranc -- ing
  \nom ’Neath the \yesm bord -- erers brave from the Banks of the Bann:
  Man -- y a heart shall quail
  Un -- der its coat of mail.
  Deep -- ly the mer -- ci -- less foe -- man shall rue
  When on his ears shall ring,
  Borne on the bree -- ze's wing,
  Tír Chon -- aill's \nom dread war- cry, \yesm “O' -- Donn -- ell A -- bú!”
}

wordsThree = \lyricmode {
  \set stanza = "3."
  Wild -- ly o'er Des -- mond the war- wolf is howl -- ing;
  Fear -- less the eag -- le sweeps ov -- er the \nom plain;
  The fox \yesm in the streets of the ci -- ty is \nom prow -- ling--
  And \yesm all who would scare them are ban -- ished or slain!
%  Grasp ev -- 'ry stal -- wart hand
%  Hack -- but and bat -- tle brand--
%  Pay them all back _ the debt so long due;
%  Nor -- ris and Clif -- ford well
%  Can of Tir -- conn -- ell tell;
%  On -- ward to glo -- ry- “O’ Don -- nell A -- bú!”
%}
%
%wordsFour = \lyricmode {
%  Sac -- red the cause that Clan Conn -- ell's de -- fend -- ing--
%  \nom The al -- tars \yesm we kneel at and homes of our sires;
%  Ruth -- less the ru -- in the foe is ex -- tend -- ing-- _
%  Mid -- night is red with the plun -- der -- er’s fires.
  On with O' -- Donn -- ell then,
  Fight the old fight a -- gain,
  Sons of Tir -- conn -- ell,
  All val -- iant and true:
  Make the proud Sax -- on feel
  Er -- in's a -- veng -- ing steel!
  Strike for your coun -- try! “O’ -- Donn -- ell A -- bú!”
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  Proud -- ly the note of the trum -- pet is sound -- ing,
  Loud -- ly the war cries a -- rise on the Gael;
  Fleet -- ly the steed by Lough Swil -- ly is boun -- ding,
  To join the thick squad -- rons on Saim -- ear’s green vale.
  On, ev’ -- ry moun -- tain -- eer,
  Stran -- gers to flight or fear,
  Rush to the stan -- dard of daunt -- less Red Hugh.
  Bon -- naught and Gal -- low -- glass,
  Throng from each moun -- tain pass
  On -- ward for Er -- in, “O’ -- Don -- nell A -- bú!”

  \set stanza = "2."
  Prince -- ly O' -- Neill to our aid is ad -- vanc -- ing
  With ma -- ny a chief -- tain and warr -- i -- or clan.
  A thou -- sand proud steeds in his van -- guard are pranc -- ing
  ’Neath the bord -- erers brave from the Banks of the Bann:
  Man -- y a heart shall quail
  Un -- der its coat of mail.
  Deep -- ly the mer -- ci -- less foe -- man shall rue
  When on his ears shall ring,
  Borne on the bree -- ze's wing,
  Tír Chon -- aill's dread war- cry, “O' -- Donn -- ell A -- bú!”

  \set stanza = "3."
  Wild -- ly o'er Des -- mond the war- wolf is howl -- ing;
  Fear -- less the eag -- le sweeps ov -- er the plain;
  The fox in the streets of the ci -- ty is prow -- ling--
  And all who would scare them are ban -- ished or slain!
  On with O' -- Donn -- ell then,
  Fight the old fight a -- gain,
  Sons of Tir -- conn -- ell,
  All val -- iant and true:
  Make the proud Sax -- on feel
  Er -- in's a -- veng -- ing steel!
  Strike for your coun -- try! “O’ -- Donn -- ell A -- bú!”
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nProud" "ly " "the " "note " "of " "the " trum "pet " "is " sound "ing, "
  "\nLoud" "ly " "the " "war " "cries " a "rise " "on " "the " "Gael; "
  "\nFleet" "ly " "the " "steed " "by " "Lough " Swil "ly " "is " boun "ding, "
  "\nTo " "join " "the " "thick " squad "rons " "on " Saim "ear's " "green " "vale. "
  "\nOn, " ev "'ry " moun tain "eer, "
  "\nStran" "gers " "to " "flight " "or " "fear, "
  "\nRush " "to " "the " stan "dard " "of " daunt "less " "Red " "Hugh. "
  "\nBon" "naught " "and " Gal low "glass, "
  "\nThrong " "from " "each " moun "tain " "pass "
  "\nOn" "ward " "for " Er "in, " "\"O'" Don "nell " A "bu!”\n"

  \set stanza = "2."
  "\nPrince" "ly " "O'" "Neill " "to " "our " "aid " "is " ad vanc "ing "
  "\nWith " ma "ny " "a " chief "tain " "and " warr i "or " "clan. "
  "\nA " thou "sand " "proud " "steeds " "in " "his " van "guard " "are " pranc "ing "
  "\n'Neath " "the " bord "erers " "brave " "from " "the " "Banks " "of " "the " "Bann: "
  "\nMan" "y " "a " "heart " "shall " "quail "
  "\nUn" "der " "its " "coat " "of " "mail. "
  "\nDeep" "ly " "the " mer ci "less " foe "man " "shall " "rue "
  "\nWhen " "on " "his " "ears " "shall " "ring, "
  "\nBorne " "on " "the " bree "ze's " "wing, "
  "\nTír " Chon "aill's " "dread " war "cry, " "\"O'" Donn "ell " A "bú!”\n"

  \set stanza = "3."
  "\nWild" "ly " "o'er " Des "mond " "the " war "wolf " "is " howl "ing; "
  "\nFear" "less " "the " eag "le " "sweeps " ov "er " "the " "plain; "
  "\nThe " "fox " "in " "the " "streets " "of " "the " ci "ty " "is " prow ling
  "\nAnd " "all " "who " "would " "scare " "them " "are " ban "ished " "or " "slain! "
  "\nOn " "with " O' Donn "ell " "then, "
  "\nFight " "the " "old " "fight " a "gain, "
  "\nSons " "of " Tir conn "ell, "
  "\nAll " val "iant " "and " "true: "
  "\nMake " "the " "proud " Sax "on " "feel "
  "\nEr" "in's " a veng "ing " "steel! "
  "\nStrike " "for " "your " coun "try! " "\"O'" Donn "ell " A "bu!\" "
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
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
%            \addlyrics \wordsFour
          >>
        >>
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \DrumTrack >>
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
%        \RemoveAllEmptyStaves
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
    \unfoldRepeats
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
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
      >>
%      \new DrumStaff \with {
%        \override StaffSymbol.line-count = #1
%        drumStyleTable = #(alist->hash-table mystyle)
%        drumPitchTable = #(alist->hash-table midiDrumPitches)
%      } << \DrumTrack >>
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
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsMidi
          >>
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
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
