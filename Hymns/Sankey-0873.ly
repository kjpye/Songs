\version "2.25.17"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Blessed Assurance."
  subtitle    = "Sankey No. 873"
  subsubtitle = "Sankey 880 No. 500"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Mrs. J. F. Knapp."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4.*9
  \textMark \markup { \box \bold "B" } s4.*9
  \textMark \markup { \box \bold "C" } s4.*9
  \textMark \markup { \box \bold "D" } s4.*10
  \textMark \markup { \box \bold "E" } s4.*11
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  fis'8 e d | a'4. a g8 a b | a4.~4. 8 fis a |
  \tag #'dash    {d4. \slurDashed cis4(8) \slurSolid |}
  \tag #'v2      {d4.             cis4.              |}
  \tag #'(v1 v3) {d4.             cis4 8             |}
  \bar "|" \break
  b8 a gis | a4.~4. fis8 e d | a'4. 4. g8 a b | a4.~4. \bar "|" \break
  d,8 e fis | g4. e d8 e cis | d4.~4.
  \section \sectionLabel \markup\smallCaps Chorus.
  a'8 8 8 | d4. a \bar "|" \break
  b8 8 8 | a4.~4. 8 8 8 | b4. d cis8 8 b | cis4.~4. 8 d e |
  d4. a b8 a b | a4.~4. d,8 e fis | g4. e d8. e16 cis8 | d4.~4.
}

alto = \relative {
  d'8 d d | fis4. 4. d8 8 8 | 4.~4. fis8 d fis |
  \tag #'dash    {fis4. \slurDashed e4(8) \slurSolid |}
  \tag #'v2      {fis4.             e4.              |}
  \tag #'(v1 v3) {fis4.             e4 8             |}
  e8 8 8 | 4.~4. d8 8 8 | fis4. 4. d8 8 8 | 4.~4.
  d8 8 8 | e4. b d8 cis a | 4.~4. \section fis'8 8 8 | 4. 4.
  g8 8 8 | fis4.~4. 8 8 8 | g4. a4. 8 8 gis | a4.~4. g8 8 8 |
  fis4. 4. g8 fis g | fis4.~4. d8 cis d | e4. b d8. cis16 a8 | 4.~4.
}

tenor = \relative {
  a8 g fis | a4. 4. b8 fis g | fis4.~4. a8 8 8 |
  \tag #'dash    {a4. \slurDashed 4(8) \slurSolid |}
  \tag #'v2      {a4.             4.              |}
  \tag #'(v1 v3) {a4.             4 8             |}
  d8 cis b | cis4.~4. a8 g fis | a4. 4. b8 fis g | fis4.~4.
  fis8 g a | b4. g fis8 g g | fis4.~4. \section d'8 8 8 | a4. d
  d8 8 8 | 4.~4. 8 8 8 | 4. 4. e8 8 8 | 4.~4. a,8 b cis |
  d4. 4. 8 8 8 | 4.~4. a8 8 8 | b4. g fis8. g16 e8 | fis4.~4.
}

bass = \relative {
  d8 8 8 | 4. 4. 8 8 8 | 4.~4. 8 8 8 |
  \tag #'dash    {d4. \slurDashed e4(8) \slurSolid |}
  \tag #'v2      {d4.             e4.              |}
  \tag #'(v1 v3) {d4.             e4 8             |}
  e8 8 8 | a,4.~4. d8 8 8 | 4. 4. 8 8 8 | 4.~4.
  d8 8 8 | g,4. 4. a8 8 8 | d4.~4. \section 8 8 8 | 4. 4.
  g8 8 8 | d4.~4. 8 8 8 | g4. fis e8 8 8 | a4.~4. 8 8 8 |
  d,4. 4. 8 8 8 | 4.~4. fis8 e d | g,4. 4. a8. 16 8 | d4.~4.
}

chorus = \lyricmode {
  This is my sto -- ry, this is my song,
  Prais -- ing my Sa -- viour all the day long;
  This is my sto -- ry, this is my song,
  Prais -- ing my Sa -- viour all the day long.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Bles -- sed as -- sur -- rance— Je -- sus is mine!
  Oh, what a \nom fore -- taste of \yesm glo -- ry Di -- vine!
  Heir of sal -- va -- tion, pur -- chase of God;
  Born of His Spi -- rit, washed in His blood.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Per -- fect sub -- mis -- sion, per -- fect de -- light,
  Vi -- sions of rap -- ture burst on my sight;
  An -- gels de -- scend -- ing, bring from a -- bove
  E -- choes of mer -- cy, whis -- pers of love.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Per -- fect sub -- mis -- sion, all is at rest,
  I in my \nom Sa -- viour am \yesm hap -- py and blest;
  Watch -- ing and wait -- ing, look -- ing a -- bove,
  Filled with His good -- ness, lost in His love.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Bles" "sed " as sur "rance—" Je "sus " "is " "mine! "
  "\nOh, " "what " "a " \nom fore "taste " "of " \yesm glo "ry " Di "vine! "
  "\nHeir " "of " sal va "tion, " pur "chase " "of " "God; "
  "\nBorn " "of " "His " Spi "rit, " "washed " "in " "His " "blood. "
  "\nThis " "is " "my " sto "ry, " "this " "is " "my " "song, "
  "\nPrais" "ing " "my " Sa "viour " "all " "the " "day " "long; "
  "\nThis " "is " "my " sto "ry, " "this " "is " "my " "song, "
  "\nPrais" "ing " "my " Sa "viour " "all " "the " "day " "long.\n"

  \set stanza = "2."
  "\nPer" "fect " sub mis "sion, " per "fect " de "light, "
  "\nVi" "sions " "of " rap "ture " "burst " "on " "my " "sight; "
  "\nAn" "gels " de scend "ing, " "bring " "from " a "bove "
  "\nE" "choes " "of " mer "cy, " whis "pers " "of " "love. "
  "\nThis " "is " "my " sto "ry, " "this " "is " "my " "song, "
  "\nPrais" "ing " "my " Sa "viour " "all " "the " "day " "long; "
  "\nThis " "is " "my " sto "ry, " "this " "is " "my " "song, "
  "\nPrais" "ing " "my " Sa "viour " "all " "the " "day " "long.\n"

  \set stanza = "3."
  "\nPer" "fect " sub mis "sion, " "all " "is " "at " "rest, "
  "\nI " "in " "my " \nom Sa "viour " "am " \yesm hap "py " "and " "blest; "
  "\nWatch" "ing " "and " wait "ing, " look "ing " a "bove, "
  "\nFilled " "with " "His " good "ness, " "lost " "in " "His " "love. "
  "\nThis " "is " "my " sto "ry, " "this " "is " "my " "song, "
  "\nPrais" "ing " "my " Sa "viour " "all " "the " "day " "long; "
  "\nThis " "is " "my " sto "ry, " "this " "is " "my " "song, "
  "\nPrais" "ing " "my " Sa "viour " "all " "the " "day " "long.\n"
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
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 20)

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
