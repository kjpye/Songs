\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Be Still, O Heart!"
  subtitle    = "Sankey No. 713"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{Arr. \smallCaps "J. H. Watson."}
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 2/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2*6
  \textMark \markup { \box \bold "B" }    s2*7
  \textMark \markup { \box \bold "C" }    s2*6
  \textMark \markup { \box \bold "D" }    s2*4 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

apart = \partCombineApart
auto  = \partCombineAutomatic

soprano = \relative {
  \autoBeamOff
  ees'8 | c'4. bes8 | aes4. g8 | bes[aes] g[f] | 4 ees8 8 | 4. f8 | g4 aes |
  c8[bes] 8.[f16] | bes4. ees,8 | c'4. bes8 | aes4. g8 |
  \tag #'dash       {\slurDashed bes(aes) des(f,) \slurSolid |}
  \tag #'(v1 v2 v4) {            bes[aes] des[f,]            |}
  \tag #'v3         {            bes aes  des f,             |}
  4 ees8 ees' | 4. c8 |
  aes4 c | 8[bes] 8.[ees,16] | aes4.
  \section \sectionLabel \markup\smallCaps Chorus.
  c8 | 4. 8 | bes4. 8 | 8 c d bes |
  bes4 ees8 8 | 4. c8 | aes4. c8 | c bes bes c | bes4 aes8\fermata
}

alto = \relative {
  \autoBeamOff
  c'8 | ees4. des8 | c4. ees8 |f4 ees8[des] | 4 c8 des | c4. 8 | ees4 4 |
  d4 f | ees4. 8 | 4. des8 | c4. ees8 |
  \tag #'dash       {\slurDashed f8(8) des(8)  \slurSolid |}
  \tag #'(v1 v2 v4) {            f4    des4               |}
  \tag #'v3         {            f8 8  des8 8             |}
  des4 c8 ees | 4. 8 |
  ees4 4 | 8[d] 4 | c4. \section aes'8 | 4. 8 | g4. 8 | aes8 8 8 8 |
  g4 8 \apart r | r \auto aes aes \apart r | r \auto ees ees ees | ees des des ees | des4 c8\fermata
}

tenor = \relative {
  \autoBeamOff
  aes8 | 4. ees8 | 4. aes8 | 4 4 | 4 8 g | aes4. 8 | c4 4 |
  aes4 4 | g4. 8 | aes4. ees8 | 4. aes8 |
  \tag #'dash       {\slurDashed 8(8) 8(8) \slurSolid |}
  \tag #'(v1 v2 v4) {            4    4               |}
  \tag #'v3         {            8 8  8 8             |}
  4 8 des | c4. aes8 |
  aes4 4 | 4 g | aes4. \section r8 | r ees' ees r | r ees8 8 8 | d ees f d |
  ees4 bes8 des | c4. ees8 | c4. aes8 | aes g g g | g[ees] ees\fermata
}

bass = \relative {
  \autoBeamOff
  aes,8 | 4. 8 | 4. c8 | des4 4 | aes4 8 ees' | aes4. 8 | g4 f |
  bes,4 d | ees4. 8 | aes,4. 8 | 4. c8 |
  \tag #'dash       {\slurDashed des8(8) f(8)  \slurSolid |}
  \tag #'(v1 v2 v4) {            des4    f                |}
  \tag #'v3         {            des8 8  f8 8             |}
  aes4 8 g | aes4. aes,8 |
  c4 aes | ees'4 4 | aes,4. \section r8 | r aes'8 8 r | r ees8 8 8 | bes'8 8 8 8 |
  ees,4 8 \apart r | r aes aes r | r \auto aes,8 8 8 | ees'8 8 8 8 | 4 aes,8\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Be still, O heart! What e -- vil can be -- tide thee?
  Fear not, fear not, With God to walk be -- side thee.
}

chorusMen = \lyricmode {
  \repeat unfold 34 _
  Be still, O heart,
  _ _ _ _ _ _ _
  Fear not, fear not,
  _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Be still, O heart! why fear and trem -- ble?
  What e -- vil can thy steps be -- tide?
  Tho' foes, a migh -- ty host, as -- sem -- ble,
  Fear not, for God is on thy side.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Be still, O heart! the Lord of glo -- ry
  Was once a man ac -- quaint with grief;
  He stoops to hear— tell all thy sto -- ry;
  He loves, He cares, He'll send re -- lief;
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Be still, O heart! cease fear -- ing, fret -- ting
  A -- bout the fut -- ure all un -- known;
  Ne'er think a -- bout the \nom Mas -- ter is for -- get -- ting \yesm
  A -- bout His child— His loved and own.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be still, O heart! thy Lord will send thee
  The clouds or sun -- shine as is best;
  His own right hand shall e'er de -- fend thee;
  Then trust His love, and be at rest.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be " "still, " "O " "heart! " "why " "fear " "and " trem "ble? "
  "\nWhat " e "vil " "can " "thy " "steps " be "tide? "
  "\nTho' " "foes, " "a " migh "ty " "host, " as sem "ble, "
  "\nFear " "not, " "for " "God " "is " "on " "thy " "side. "
  "\nBe " "still, " "O " "heart! " "What " e "vil " "can " be "tide " "thee? "
  "\nFear " "not, " "fear " "not, " "With " "God " "to " "walk " be "side " "thee.\n"

  \set stanza = "2."
  "\nBe " "still, " "O " "heart! " "the " "Lord " "of " glo "ry "
  "\nWas " "once " "a " "man " ac "quaint " "with " "grief; "
  "\nHe " "stoops " "to " "hear— " "tell " "all " "thy " sto "ry; "
  "\nHe " "loves, " "He " "cares, " "He'll " "send " re "lief; "
  "\nBe " "still, " "O " "heart! " "What " e "vil " "can " be "tide " "thee? "
  "\nFear " "not, " "fear " "not, " "With " "God " "to " "walk " be "side " "thee.\n"

  \set stanza = "3."
  "\nBe " "still, " "O " "heart! " "cease " fear "ing, " fret "ting "
  "\nA" "bout " "the " fut "ure " "all " un "known; "
  "\nNe'er " "think " a "bout " "the " \nom Mas "ter " "is " for get "ting " \yesm
  "\nA" "bout " "His " "child— " "His " "loved " "and " "own. "
  "\nBe " "still, " "O " "heart! " "What " e "vil " "can " be "tide " "thee? "
  "\nFear " "not, " "fear " "not, " "With " "God " "to " "walk " be "side " "thee.\n"

  \set stanza = "4."
  "\nBe " "still, " "O " "heart! " "thy " "Lord " "will " "send " "thee "
  "\nThe " "clouds " "or " sun "shine " "as " "is " "best; "
  "\nHis " "own " "right " "hand " "shall " "e'er " de "fend " "thee; "
  "\nThen " "trust " "His " "love, " "and " "be " "at " "rest. "
  "\nBe " "still, " "O " "heart! " "What " e "vil " "can " be "tide " "thee? "
  "\nFear " "not, " "fear " "not, " "With " "God " "to " "walk " be "side " "thee. "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
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
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
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
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
            \addlyrics \wordsMidi
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
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
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
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
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
            \addlyrics \wordsMidi
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
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
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerB { \keepWithTag #'dash \bass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB \chorusMen
        >>
    \layout {
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
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
            }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
