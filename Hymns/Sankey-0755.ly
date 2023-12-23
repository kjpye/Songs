\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gather the Reapers Home!"
  subtitle    = "Sankey No. 755"
  subsubtitle = "Sankey 880 No. 461"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Jiohnson."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 ees | f4 bes4 4 8 d | c4 g g c8 bes | a4. 8 g4 f | f2(d4) \bar "|" \break
  d8 ees | f4 bes4 4 8 d | c4 g g c8 bes |
  \tag #'dash       {\slurDashed a4(8) \slurSolid 8 g4 a |}
  \tag #'(v1 v2 v4) {            a4.              8 g4 a |}
  \tag #'v3         {            a4 8             8 g4 a |}
  bes2.
  \section \sectionLabel \markup \smallCaps "Chorus." \break
  bes4 | c f,8. 16 8[g] a f | bes4 c d d | ees d8[c] d4 bes8 8 | c4. d8 c4 \bar "|" \break
  d,8[ees] | f4 bes8. 16 4 8 d | c4 g g c8[bes] | a4 8 8 g4 a | bes2.
}

alto = \relative {
  \autoBeamOff
  bes8 c | d4 4 4 8 f | ees4 4 4 g8 8 | f4. 8 ees4 4 | d2(bes4)
  bes8 c | d4 4 4 8 f | ees4 4 4 g8 8 |
  \tag #'dash       {\slurDashed f4(8) \slurSolid 8 ees4 4 |}
  \tag #'(v1 v2 v4) {            f4.              8 ees4 4 |}
  \tag #'v3         {            f4 8             8 ees4 4 |}
  d2.
  d4 | f c8. 16 4 f8 8 | 4 4 4 4 | 4 4 4 d8 8 | f4. 8 4
  bes,8[c] | d4 8. 16 4 8 f | ees4 4 4 g | f4 8 8 ees4 4 | d2.
}

tenor = \relative {
  \autoBeamOff
  f8 8 | bes4 f4 4 8 bes | g4 c c ees8 c | 4. 8 bes4 a | bes2(g4)
  g8 8 | bes4 g4 4 8 bes | g4 c c ees8 c |
  \tag #'dash       {\slurDashed c4(8) \slurSolid 8 bes4 g |}
  \tag #'(v1 v2 v4) {            c4.              8 bes4 g |}
  \tag #'v3         {            c4 8             8 bes4 g |}
  2. \section
  bes4 | aes4 8. 16 8[bes] c a | bes4 a bes4 4 | c bes4 4 8 8 | a4. bes8 a4
  f4 | bes f8. 16 4 8 bes | g4 c c c | c4 8 8 bes4 f | 2.
}

bass = \relative {
  \autoBeamOff
  bes,8 8 | 4 4 4 8 8 | ees4 4 4 8 8 | f4. 8 4 4 | bes,2.
  bes8 8 | 4 4 4 8 8 | ees4 4 4 8 8 |
  \tag #'dash       {\slurDashed f4(8) \slurSolid 8 4 4 |}
  \tag #'(v1 v2 v4) {            f4.              8 4 4 |}
  \tag #'v3         {            f4 8             8 4 4 |}
  bes,2.
  bes4 | f'4 8. 16 4 8 8 | d4 f bes4 4 | a bes4 4 bes,8 8 | f'4. 8 8[ees]
  d8[c] | bes4 8. 16 4 8 8 | ees4 4 4 4 | f4 8 8 4 f, | bes2.
}

chorus = \lyricmode {
  The Lord of the har -- vest will soon ap -- pear,
  His smile, His voice we shall see and hear!
  The Lord of the har -- vest will soon ap -- pear,
  And ga -- ther the  reap -- ers home!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Have ye heard the song from the gol -- den land?
  Have ye heard the glad new song?
  Let us bind our sheaves with a wil -- ling hand,
  For the time will not be long.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  They are look -- ing down from the gol -- den land,
  Our be -- lov'd are look -- ing down;
  They have done their work, they have borne their cross,
  And re -- ceiv'd their pro -- mis'd crown.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, the song rolls on from the gol -- den land,
  And our hearts are strong to -- day.
  For it nerves our souls with its mu -- sic sweet,
  As we \nom toil in \yesm the noon -- tide ray.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, the song rolls on from the gol -- den land,
  From its vales of joy and flow'rs;
  And we feel and know by a liv -- ing faith
  That its tones will soon be ours.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Have " "ye " "heard " "the " "song " "from " "the " gol "den " "land? "
  "\nHave " "ye " "heard " "the " "glad " "new " "song? "
  "\nLet " "us " "bind " "our " "sheaves " "with " "a " wil "ling " "hand, "
  "\nFor " "the " "time " "will " "not " "be " "long. "
  "\nThe " "Lord " "of " "the " har "vest " "will " "soon " ap "pear, "
  "\nHis " "smile, " "His " "voice " "we " "shall " "see " "and " "hear! "
  "\nThe " "Lord " "of " "the " har "vest " "will " "soon " ap "pear, "
  "\nAnd " ga "ther " "the "  reap "ers " "home!\n"

  \set stanza = "2."
  "\nThey " "are " look "ing " "down " "from " "the " gol "den " "land, "
  "\nOur " be "lov'd " "are " look "ing " "down; "
  "\nThey " "have " "done " "their " "work, " "they " "have " "borne " "their " "cross, "
  "\nAnd " re "ceiv'd " "their " pro "mis'd " "crown. "
  "\nThe " "Lord " "of " "the " har "vest " "will " "soon " ap "pear, "
  "\nHis " "smile, " "His " "voice " "we " "shall " "see " "and " "hear! "
  "\nThe " "Lord " "of " "the " har "vest " "will " "soon " ap "pear, "
  "\nAnd " ga "ther " "the "  reap "ers " "home!\n"

  \set stanza = "3."
  "\nOh, " "the " "song " "rolls " "on " "from " "the " gol "den " "land, "
  "\nAnd " "our " "hearts " "are " "strong " to "day. "
  "\nFor " "it " "nerves " "our " "souls " "with " "its " mu "sic " "sweet, "
  "\nAs " "we " \nom "toil " "in " \yesm "the " noon "tide " "ray. "
  "\nThe " "Lord " "of " "the " har "vest " "will " "soon " ap "pear, "
  "\nHis " "smile, " "His " "voice " "we " "shall " "see " "and " "hear! "
  "\nThe " "Lord " "of " "the " har "vest " "will " "soon " ap "pear, "
  "\nAnd " ga "ther " "the "  reap "ers " "home!\n"

  \set stanza = "4."
  "\nOh, " "the " "song " "rolls " "on " "from " "the " gol "den " "land, "
  "\nFrom " "its " "vales " "of " "joy " "and " "flow'rs; "
  "\nAnd " "we " "feel " "and " "know " "by " "a " liv "ing " "faith "
  "\nThat " "its " "tones " "will " "soon " "be " "ours. "
  "\nThe " "Lord " "of " "the " har "vest " "will " "soon " ap "pear, "
  "\nHis " "smile, " "His " "voice " "we " "shall " "see " "and " "hear! "
  "\nThe " "Lord " "of " "the " har "vest " "will " "soon " ap "pear, "
  "\nAnd " ga "ther " "the "  reap "ers " "home! "
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

#(set-global-staff-size 18)

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
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
            }
          >>
        >>
}

#(set-global-staff-size 19)

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
