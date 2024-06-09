\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Believe, and Keep on Believing!"
  subtitle    = "Sankey No. 867"
  subsubtitle = "Sankey 880 No. 474"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{Arr. \smallCaps "El Nathan"}
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*3
  \textMark \markup { \box \bold "B" }    s2.*3
  \textMark \markup { \box \bold "C" }    s2.*3
  \textMark \markup { \box \bold "D" }    s2.*3
  \textMark \markup { \box \bold "E" }    s2.*3 s8 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  f'16 16 | bes8. 16 8 8 a g | 8 f d f4 8 | bes8. 16 8 8 c d |
  d8 c8 8 4 8 | d8. ees16 d8 8 c bes | 8. c16 bes8 4 a16 g |
  f8. bes16 8 a c8. f,16 | 8 bes2
  \section \sectionLabel \markup\smallCaps Chorus.
  f8 | c'8. 16 8 8 d c |
  c8 bes g f4 8 | bes8. 16 8 8 c d | d c8 8 4 f,8 |
  d'8. 16 8 ees8. d16 c8 | bes8 8 8 c[bes\fermata] g | f8. bes16 8 a c8. f,16 | 8 bes2
}

alto = \relative {
  d'16 d | 8. ees16 f8 g f ees | 8 d bes d4 8 | 8. 16 8 8 ees f |
  e8 8 8 f4 8 | 8. g16 f8 8 ees d | g8. 16 8 4 ees16 16 |
  d8. 16 8 f8 8. 16 | 8 d2 \section f8 | ees8. 16 8 8 f ees |
  ees8 d ees d4 8 | 8. ees16 f8 g a bes | 8 8 8 a4 f8 |
  f8. 16 8 8. 16 ees8 | d8 8 8 ees4 8 | d8. 16 8 f8 8. ees16 | 8 d2
}

tenor = \relative {
  bes16 16 | 8. 16 8 8 8 8 | 8 8 f bes4 8 | f8. 16 8 8 bes8 8 |
  bes8 8 8 a4 8 | bes8. 16 8 8 f f | ees8. g16 bes8 4 16 16 |
  bes8. 16 8 c ees8. a,16 | c8 bes2 \section f8 | a8. 16 8 8 8 8 |
  bes8 8 8 4 8 | 8. 16 8 d8 8 8 | e8 8 8 f4 f,8 |
  bes8. 16 8 a8. 16 8 | bes8 8 8 g4_\fermata bes8 | 8. 16 8 c ees8. a,16 | c8 bes2
}

bass = \relative {
  bes,16 16 | 8. c16 d8 ees8 8 8 | bes8 8 8 4 8 | 8. 16 8 8 8 8 |
  c8 8 8 f4 8 | bes,8. 16 8 8 8 8 | ees8. 16 8 4 16 16 |
  f8. 16 8 8 8. 16 | bes,8 2 \section f'8 | 8. 16 8 8 8 8 |
  bes,8 8 8 4 8 | 8. c16 d8 g g g | c,8 8 8 f4 8 |
  bes,8. 16 8 f'8. 16 8 | g8 8 8 ees4_\fermata 8 | f8. 16 8 8 8. 16 | bes,8 2
}

chorus = \lyricmode {
  I be -- lieved, and I keep on be -- liev -- ing!
  Be -- lieve! and the “feel -- ing” may come or may go;
  Be -- lieve in the Word that was writ -- ten to show
  That all who be -- lieve, their sal -- va -- tion may know;
  Be -- lieve, and keep right on be -- liev -- ing!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I be -- lieved in God’s won -- der -- ful mer -- cy and grace;
  Be -- lieved in the smile of His re -- con -- ciled face;
  Be -- lieved in His mes -- sage of par -- don and peace:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I be -- lieved in the work of my cru -- ci -- fied Lord;
  Be -- lieved in re -- demp -- tion a -- lone thro’ His blood;
  Be -- lieved in my Sa -- viour by trust -- ing His Word:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I be -- lieved in the heart that was o -- pened for me;
  Be -- lieved in the love flow -- ing bles -- sed and free;
  Be -- lieved that my sins were all nailed to the tree:
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I be -- lieved in Him -- self, as the true Liv -- ing One;
  Be -- lieved in His pre -- sence on high on the throne:
  Be -- lieved in His com -- ing in glo -- ry full soon:
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " be "lieved " "in " "God’s " won der "ful " mer "cy " "and " "grace; "
  "\nBe" "lieved " "in " "the " "smile " "of " "His " re con "ciled " "face; "
  "\nBe" "lieved " "in " "His " mes "sage " "of " par "don " "and " "peace: "
  "\nI " be "lieved, " "and " "I " "keep " "on " be liev "ing! "
  "\nBe" "lieve! " "and " "the " “feel "ing” " "may " "come " "or " "may " "go; "
  "\nBe" "lieve " "in " "the " "Word " "that " "was " "writ "  "-ten " "to " "show "
  "\nThat " "all " "who " be "lieve, " "their " sal va "tion " "may " "know; "
  "\nBe" "lieve, " "and " "keep " "right " "on " be liev "ing!\n"

  \set stanza = "2."
  "\nI " be "lieved " "in " "the " "work " "of " "my " cru ci "fied " "Lord; "
  "\nBe" "lieved " "in " re demp "tion " a "lone " "thro’ " "His " "blood; "
  "\nBe" "lieved " "in " "my " Sa "viour " "by " trust "ing " "His " "Word: "
  "\nI " be "lieved, " "and " "I " "keep " "on " be liev "ing! "
  "\nBe" "lieve! " "and " "the " “feel "ing” " "may " "come " "or " "may " "go; "
  "\nBe" "lieve " "in " "the " "Word " "that " "was " "writ "  "-ten " "to " "show "
  "\nThat " "all " "who " be "lieve, " "their " sal va "tion " "may " "know; "
  "\nBe" "lieve, " "and " "keep " "right " "on " be liev "ing!\n"

  \set stanza = "3."
  "\nI " be "lieved " "in " "the " "heart " "that " "was " o "pened " "for " "me; "
  "\nBe" "lieved " "in " "the " "love " flow "ing " bles "sed " "and " "free; "
  "\nBe" "lieved " "that " "my " "sins " "were " "all " "nailed " "to " "the " "tree: "
  "\nI " be "lieved, " "and " "I " "keep " "on " be liev "ing! "
  "\nBe" "lieve! " "and " "the " “feel "ing” " "may " "come " "or " "may " "go; "
  "\nBe" "lieve " "in " "the " "Word " "that " "was " "writ "  "-ten " "to " "show "
  "\nThat " "all " "who " be "lieve, " "their " sal va "tion " "may " "know; "
  "\nBe" "lieve, " "and " "keep " "right " "on " be liev "ing!\n"

  \set stanza = "4."
  "\nI " be "lieved " "in " Him "self, " "as " "the " "true " Liv "ing " "One; "
  "\nBe" "lieved " "in " "His " pre "sence " "on " "high " "on " "the " "throne: "
  "\nBe" "lieved " "in " "His " com "ing " "in " glo "ry " "full " "soon: "
  "\nI " be "lieved, " "and " "I " "keep " "on " be liev "ing! "
  "\nBe" "lieve! " "and " "the " “feel "ing” " "may " "come " "or " "may " "go; "
  "\nBe" "lieve " "in " "the " "Word " "that " "was " "writ "  "-ten " "to " "show "
  "\nThat " "all " "who " be "lieve, " "their " sal va "tion " "may " "know; "
  "\nBe" "lieve, " "and " "keep " "right " "on " be liev "ing! "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \layout { \context { \Staff autoBeaming = ##f } }
%    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat
  }
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
