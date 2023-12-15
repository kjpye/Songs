\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Cross that He gave."
  subtitle    = "Sankey No. 747"
  subsubtitle = "May be sung as a Solo and Chorus."
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Com. Ballington Booth."
  arranger    = "Arr. W.J.K."
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 |
  \textMark \markup { \box \bold "B" }    s1*3 |
  \textMark \markup { \box \bold "C" }    s1*3 |
  \textMark \markup { \box \bold "D" }    s1*3 |
  \textMark \markup { \box \bold "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4 | bes a8 bes c4 g8 bes | aes f4.~4 8 g | aes4. bes8 d4. c8 |
  bes2(g4.) bes8 | ees4 d8 ees d4 ees8 bes | d c4.~4 aes8 c |
  \tag #'dash       {\slurDashed bes4(8) \slurSolid f8 aes4. f8 |}
  \tag #'(v1 v3 v4) {            bes4.              f8 aes4. f8 |}
  \tag #'v2         {            bes4 8             f8 aes4. f8 |}
  ees2. r8
  \section \sectionLabel \markup\smallCaps Chorus.
  bes'8 | 4 a8 bes c bes a bes |
  g2. r8 bes | 4 a8 bes c bes a bes | g2. bes8 ees |
  ees8 d c f, aes4 8 c | c bes8 8 ees, g4 8 8 | 4 f ees d | ees2.
}

alto = \relative {
  \autoBeamOff
  g'4 | g fis8 g aes4 ees8 g | f d4.~4 8 ees | f4. g8 aes4. 8 |
  g2(ees4.) g8 | 4 f8 g aes4 g8 g | bes aes4.~4 ees8 8 |
  \tag #'dash       {\slurDashed ees4(8) \slurSolid d8 4. 8 |}
  \tag #'(v1 v3 v4) {            ees4.              d8 4. 8 |}
  \tag #'v2         {            ees4 8             d8 4. 8 |}
  bes2. r8 \section g' | 4 fis8 g aes g f g |
  ees2. r8 g | 4 fis8 g aes g fis g | ees2. g8 g |
  aes8 8 8 d, f4 8 aes | 8 g g bes, ees4 des8 8 | c4 c bes bes | 2.
}

tenor = \relative {
  \autoBeamOff
  bes4 | ees4 8 8 4 bes8 8 |8 4.~4 8 8 | 4. 8 4. d8 |
  ees2(bes4.) 8 | 4 8 8 c4 bes8 ees | 8 4.~4 c8 aes |
  \tag #'dash       {\slurDashed g4(8) \slurSolid aes8 f4. aes8 |}
  \tag #'(v1 v3 v4) {            g4.              aes8 f4. aes8 |}
  \tag #'v2         {            g4 8             aes8 f4. aes8 |}
  g2. r8 \section ees' | 4 8 8 8 8 8 8 |
  bes2. r8 ees | 4 8 8 8 8 8 8 | bes2. 8 8 |
  bes8 8 8 8 d4 8 8 | ees8 8 8 g, bes4 8 8 | aes4 4 g f | g2.
}

bass = \relative {
  \autoBeamOff
  ees4 | 4 8 8 4 8 8 | bes8 4.~4 8 8 | 4. 8 4. 8 |
  ees2.. 8 | 4 8 8 4 8 8 | aes,8 4.~4 8 8 |
  \tag #'dash       {\slurDashed bes4(8) \slurSolid 8 4. 8 |}
  \tag #'(v1 v3 v4) {            bes4.              8 4. 8 |}
  \tag #'v2         {            bes4 8             8 4. 8 |}
  ees2. r8 \section 8 | 4 8 8 8 8 8 8 |
  <<ees2. \new Voice { \teeny r8 ees g bes ees,4 \normalsize}>> r8 8 |
  4 8 8 8 8 8 8 |
  <<2. \new Voice { \teeny  r8 ees g bes g4 \normalsize}>> 8 g |
  bes8 8 8 8 4 bes,8 8 | ees8 8 8 8 4 8 8 | aes,4 4 bes4 4 | ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  The cross is not great -- er than His grace;
  The storm can -- not hide His bless -- ed face;
  I am sat -- is -- fied to know
  That with Je -- sus here be -- low,
  I can con -- quer ev -- 'ry foe.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  The cross that He gave may be hea -- vy,
  But it ne'er out -- weighs His grace;
  The storm that I feared may sur -- round me,
  But it ne'er ex -- cludes His face.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The thorns in my path are not sharp -- er
  Than com -- posed His crown for me;
  The cup that I drink not more bit -- ter
  Than He \nom drank in \yesm Geth -- sem -- a -- ne.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The light of His love shin -- eth bright -- er,
  As it falls on paths of woe;
  The toil of my work grow -- eth light -- er,
  As I stoop to raise the low.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  His will I have joy in ful -- fill -- ing,
  As I'm walk -- ing in His sight;
  My all to the blood I am bring -- ing,
  It a -- lone can keep me right.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "cross " "that " "He " "gave " "may " "be " hea "vy, "
  "\nBut " "it " "ne'er " out "weighs " "His " "grace; "
  "\nThe " "storm " "that " "I " "feared " "may " sur "round " "me, "
  "\nBut " "it " "ne'er " ex "cludes " "His " "face. "
  "\nThe " "cross " "is " "not " great "er " "than " "His " "grace; "
  "\nThe " "storm " can "not " "hide " "His " bless "ed " "face; "
  "\nI " "am " sat is "fied " "to " "know "
  "\nThat " "with " Je "sus " "here " be "low, "
  "\nI " "can " con "quer " ev "'ry " "foe.\n"

  \set stanza = "2."
  "\nThe " "thorns " "in " "my " "path " "are " "not " sharp "er "
  "\nThan " com "posed " "His " "crown " "for " "me; "
  "\nThe " "cup " "that " "I " "drink " "not " "more " bit "ter "
  "\nThan " "He " "drank " "in " Geth sem a "ne. "
  "\nThe " "cross " "is " "not " great "er " "than " "His " "grace; "
  "\nThe " "storm " can "not " "hide " "His " bless "ed " "face; "
  "\nI " "am " sat is "fied " "to " "know "
  "\nThat " "with " Je "sus " "here " be "low, "
  "\nI " "can " con "quer " ev "'ry " "foe.\n"

  \set stanza = "3."
  "\nThe " "light " "of " "His " "love " shin "eth " bright "er, "
  "\nAs " "it " "falls " "on " "paths " "of " "woe; "
  "\nThe " "toil " "of " "my " "work " grow "eth " light "er, "
  "\nAs " "I " "stoop " "to " "raise " "the " "low. "
  "\nThe " "cross " "is " "not " great "er " "than " "His " "grace; "
  "\nThe " "storm " can "not " "hide " "His " bless "ed " "face; "
  "\nI " "am " sat is "fied " "to " "know "
  "\nThat " "with " Je "sus " "here " be "low, "
  "\nI " "can " con "quer " ev "'ry " "foe.\n"

  \set stanza = "4."
  "\nHis " "will " "I " "have " "joy " "in " ful fill "ing, "
  "\nAs " "I'm " walk "ing " "in " "His " "sight; "
  "\nMy " "all " "to " "the " "blood " "I " "am " bring "ing, "
  "\nIt " a "lone " "can " "keep " "me " "right. "
  "\nThe " "cross " "is " "not " great "er " "than " "His " "grace; "
  "\nThe " "storm " can "not " "hide " "His " bless "ed " "face; "
  "\nI " "am " sat is "fied " "to " "know "
  "\nThat " "with " Je "sus " "here " be "low, "
  "\nI " "can " con "quer " ev "'ry " "foe. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
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
            \addlyrics \wordsMidiMen
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
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
