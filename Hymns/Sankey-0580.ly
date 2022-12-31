\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Nearer, Blessed Jesus."
  subtitle    = "Sankey No. 580"
  subsubtitle = "N. H. No. 124"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. C. Warner."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*6
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  c'4 8 d4 8 | e4. g4 r8 | c4 g8 f4 e8 | d4.~4 r8 | g4 8 a4 8 | b4 c8 d4. |
  g,4 c8 b4 a8 | g4.~4 r8 | 4 8 a4 8 | c4. g4 r8 | b4 a8 g4 f8 |
  e4.~4 r8 | g4 c8 e4 c8 |
  \tag #'dash       {<<{\hideNotes \slurDashed a4( \unHideNotes \tiny c8) \slurSolid } \new Voice a4.>> \normalsize c4. |}
  \tag #'(v1 v2 v3) { a4. c |}
  \tag #'v4         { a4 c8 4. |}
  g4 a8 c4 b8 | c4.~4 r8 |
}

alto = \relative {
  \autoBeamOff
  c'4 8 b4 8 | c4. e4 r8 | 4 8 d4 c8 | b4.~4 r8 | d4 8 4 8 | 4 8 g4. |
  g4 e8 fis4 8 | g4.~4 r8 | e4 8 f4 8 | e4. 4 r8 | f4 8 d4 8 |
  c4.~4 r8 | e4 8 g4 8 |
  \tag #'dash       {<<{\hideNotes \slurDashed f4( \unHideNotes \tiny f8) \slurSolid} \new Voice f4.>> \normalsize f | }
  \tag #'(v1 v2 v3) {f4. f | }
  \tag #'v4         {f4 8 4. | }
  e4 8 f4 8 | e4.~4 r8 |
}

tenor = \relative {
  \autoBeamOff
  e4 8 g4 8 | 4. c4 r8 | g4 8 4 8 | 4.~4 r8 | 4 8 fis4 8 | g4 a8 b4. |
  c4 8 d4 c8 | b4.~4 r8 | c4 8 4 a8 | g4. c4 r8 | d4 c8 b4 g8 |
  g4.~4 r8 | c4 g8 4 c8 |
  \tag #'dash       {<<{\hideNotes \slurDashed c4( \unHideNotes \tiny a8) \slurSolid} \new Voice c4.>> \normalsize a |}
  \tag #'(v1 v2 v3) {c4. c |}
  \tag #'v4         {c4 a8 4. |}
  c4 8 d4 g,8 | 4.~4 r8 |
}

bass = \relative {
  \autoBeamOff
  c4 8 g4 8 | c4. 4 r8 | 4 8 b4 c8 | g4.~4 r8 | b4 8 d4 8 | g4 8 4. |
  e4 a,8 d4 8 | g4.~4 r8 | c,4 8 4 8 | 4. 4 r8 | g4 8 4 8 |
  c4.~4 r8 | 4 8 4 e8 |
  \tag #'dash       { <<{\hideNotes \slurDashed f4( \unHideNotes \tiny f8) \slurSolid} \new Voice f4.>> \normalsize f |}
  \tag #'(v1 v2 v3) { f4. f |}
  \tag #'v4         { f4 8 4. |}
  g4 8 4 8 | c,4.~4 r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Near -- er, bles -- sed Je -- sus,
  To Thy wound -- ed side;
  Near -- er to Thy heart of love,
  Would my soul a -- bide;
  There a -- lone is safe -- ty,
  There a -- lone is rest.
  When be -- set with dan -- ger,
  When with guilt op -- prest.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Pur -- er, Sav -- iour, pur -- er,
  May I ev -- er be,
  Free from ev -- ;ry earth -- ly stain,
  More, O Lord, like Thee;
  List -- 'ning 'mid the tem -- pest
  For Thy "\"Peace," be "still!\""
  Trust -- ing when in dark -- ness,
  Rest -- ing in Thy will.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Watch -- ing, ev -- er watch -- ing,
  Ev -- en un -- to prayer;
  Leav -- ing all with Je -- _ sus,
  Yield -- ing ev -- 'ry care;
  Trust -- ing, ful -- ly trust -- ing
  Ev -- 'ry pro -- mise sweet;
  Learn -- ing life's great les -- son
  At Thy pre -- cious feet.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Wait -- ing, on -- ly wait -- ing
  Till the hour shall come.
  When with joy I'll meet him there,
  In the heaven -- ly home;
  Oh for that glad morn -- ing,
  When my Lord a -- gain,
  "\"Glor" -- i -- fied in \nom all His \yesm "saints.\""
  Comes with them to reign!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Near" "er, " bles "sed " Je "sus, "
  "\nTo " "Thy " wound "ed " "side; "
  "\nNear" "er " "to " "Thy " "heart " "of " "love, "
  "\nWould " "my " "soul " a "bide; "
  "\nThere " a "lone " "is " safe "ty, "
  "\nThere " a "lone " "is " "rest. "
  "\nWhen " be "set " "with " dan "ger, "
  "\nWhen " "with " "guilt " op "prest.\n"

  \set stanza = "2."
  "\nPur" "er, " Sav "iour, " pur "er, "
  "\nMay " "I " ev "er " "be, "
  "\nFree " "from " ev ";ry " earth "ly " "stain, "
  "\nMore, " "O " "Lord, " "like " "Thee; "
  "\nList" "'ning " "'mid " "the " tem "pest "
  "\nFor " "Thy " "\"Peace, " "be " "still!\" "
  "\nTrust" "ing " "when " "in " dark "ness, "
  "\nRest" "ing " "in " "Thy " "will.\n"

  \set stanza = "3."
  "\nWatch" "ing, " ev "er " watch "ing, "
  "\nEv" "en " un "to " "prayer; "
  "\nLeav" "ing " "all " "with " Je "" "sus, "
  "\nYield" "ing " ev "'ry " "care; "
  "\nTrust" "ing, " ful "ly " trust "ing "
  "\nEv" "'ry " pro "mise " "sweet; "
  "\nLearn" "ing " "life's " "great " les "son "
  "\nAt " "Thy " pre "cious " "feet.\n"

  \set stanza = "4."
  "\nWait" "ing, " on "ly " wait "ing "
  "\nTill " "the " "hour " "shall " "come. "
  "\nWhen " "with " "joy " "I'll " "meet " "him " "there, "
  "\nIn " "the " heaven "ly " "home; "
  "\nOh " "for " "that " "glad " morn "ing, "
  "\nWhen " "my " "Lord " a "gain, "
  "\n\"Glor" i "fied " "in " \nom "all " "His " \yesm "saints.\" "
  "\nComes " "with " "them " "to " "reign! "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
          >>
        >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \soprano
                                                 \keepWithTag #'v2 \soprano
                                                 \keepWithTag #'v3 \soprano
                                                 \keepWithTag #'v4 \soprano
                                                 \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \keepWithTag #'v4 \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \tenor
                                                 \keepWithTag #'v2 \tenor
                                                 \keepWithTag #'v3 \tenor
                                                 \keepWithTag #'v4 \tenor
                                               }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
              \keepWithTag #'v4 \bass
            }
          >>
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

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
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
