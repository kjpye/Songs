\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "“More to Follow.”"
  subtitle    = "Sankey No. 865"
  subsubtitle = "Sankey 880 No. 8"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "7.6. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \unfoldRepeats \repeat volta 2 {
    \textMark \markup { \box \bold A } s2.*3
    \alternative { {s2.} {s2.} }
  }
  \textMark \markup { \box \bold "B" } s2.*4
  \textMark \markup { \box \bold "C" } s2.*4
  \textMark \markup { \box \bold "D" } s2.*4
  \textMark \markup { \box \bold "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \unfoldRepeats \repeat volta 2 {
    e'4 fis8 gis4 a8 | b4 cis8 b4. | b4 gis8 b4 gis8 |
    \alternative { {gis8 fis4~4 r8} {fis8 e4~4 r8} }
  }
  gis4 b8 e4 b8 | cis4 8 b4. | 4 gis8 b4 gis8 | 8 fis4~4 r8 |
  gis4 b8 e4 b8 | cis4 8 b4. | 4 gis8 b4 gis8 | fis8 e4~4 r8 |
  \section \sectionLabel \markup\smallCaps Chorus.
  gis4 b8 4. | a4 cis8 4. | b4 gis8 b4 gis8 | 8 fis4~4 r8 |
  e4 fis8 gis4 a8 | b4 e8 8(cis4) | b4 gis8 b4 gis8 | fis8 e4~4 r8 |
}

alto = \relative {
  \unfoldRepeats \repeat volta 2 {
    e'4 8 4 fis8 | gis4 a8 gis4. | 4 e8 gis4 e8 |
    \alternative { {e8 dis4~4 r8} {dis8 e4~4 r8} }
  }
  e4 8 gis4 8 | a4 8 gis4. | 4 e8 gis4 e8 | 8 dis4~4 r8
  e4 8 gis4 8 | a4 8 gis4. | 4 e8 gis4 e8 | dis e4~4 r8 \section
  e4 gis8 4. | a4 8 4. | g4 e8 g4 e8 | e dis4~4 r8 |
  e4 8 4 fis8 | gis4 8 a4. | gis4 e8 gis4 e8 | dis8 e4~4 r8 |
}

tenor = \relative {
  \unfoldRepeats \repeat volta 2 {
    e2. | e2. | e'4 b8 e4 b8 |
    \alternative { {b8 4~4 r8} {a8 gis4~4 r8} }
  }
  b4 gis8 b4 e8 | 4 8 4. | 4 b8 e4 b8 | 8 4~4 r8
  b4 fis8 b4 e8 | 4 8 4(b8) | e4 b8 e4 b8 | a gis4~4 r8 \section
  b4 e8 4. | cis4 e8 4. | 4 b8 e4 b8 | 8 4~4 r8 |
  gis4 a8 b4 8 | 4 8 cis(e4) | 4 b8 e4 b8 | a gis4~4 r8 |
}

bass = \relative {
  \unfoldRepeats \repeat volta 2 {
    e2. | e | 4 8 4 8 |
    \alternative { {b8 4~4 r8} {b8 e4~4 r8} }
  }
  e4 8 4 8 | a,4 cis8 e4. | 4 8 4 8 | b8 4~4 r8
  e4 8 4 8 | a,4 cis8 e4. | 4 8 4 8 | b e4~4 r8 \section |
  e4 8 4. | a4 8 4. | e4 8 4 8 | b8 4~4 r8 |
  e4 8 4 8 | 4 8 a,4. | e'4 8 4 8 | b8 e4~4 r8 |
}

chorus = \lyricmode {
  More and more, more and more,
  Al -- ways more to fol -- low;
  Oh, His match -- less, bound -- less love!
  Still there’s more to fol -- low.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Have you on the Lord be -- lieved?
  Still there's more to fol -- low;
  Of His grace have you re -- cieved?
  Still there's more to fol -- low;
  Oh, the grace the Fa -- ther shows!
  Still there's more to fol -- low;
  Free -- ly He His power be -- stows:
  Still there's more to fol -- low.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Have you felt the Sa -- viour near?
  Still there's more to fol -- low;
  Does His bles -- sed pre -- sence cheer?
  Still there's more to fol -- low;
  Oh, the love that Je -- sus shows!
  Still there's more to fol -- low;
  Free -- ly He His love be -- stows:
  Still there's more to fol -- low.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Have you felt the Spi -- rit's power?
  Still there's more to fol -- low;
  Fall -- ing like the gen -- tle shower?
  Still there's more to fol -- low;
  Oh, the power the Spi -- rit shows!
  Still there's more to fol -- low;
  Free -- ly He His power be -- stows:
  Still there's more to fol -- low.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Have " "you " "on " "the " "Lord " be "lieved? "
  "\nStill " "there's " "more " "to " fol "low; "
  "\nOf " "His " "grace " "have " "you " re "cieved? "
  "\nStill " "there's " "more " "to " fol "low; "
  "\nOh, " "the " "grace " "the " Fa "ther " "shows! "
  "\nStill " "there's " "more " "to " fol "low; "
  "\nFree" "ly " "He " "His " "power " be "stows: "
  "\nStill " "there's " "more " "to " fol "low. "
  "\nMore " "and " "more, " "more " "and " "more, "
  "\nAl" "ways " "more " "to " fol "low; "
  "\nOh, " "His " match "less, " bound "less " "love! "
  "\nStill " "there’s " "more " "to " fol "low.\n"

  \set stanza = "2."
  "\nHave " "you " "felt " "the " Sa "viour " "near? "
  "\nStill " "there's " "more " "to " fol "low; "
  "\nDoes " "His " bles "sed " pre "sence " "cheer? "
  "\nStill " "there's " "more " "to " fol "low; "
  "\nOh, " "the " "love " "that " Je "sus " "shows! "
  "\nStill " "there's " "more " "to " fol "low; "
  "\nFree" "ly " "He " "His " "love " be "stows: "
  "\nStill " "there's " "more " "to " fol "low. "
  "\nMore " "and " "more, " "more " "and " "more, "
  "\nAl" "ways " "more " "to " fol "low; "
  "\nOh, " "His " match "less, " bound "less " "love! "
  "\nStill " "there’s " "more " "to " fol "low.\n"

  \set stanza = "3."
  "\nHave " "you " "felt " "the " Spi "rit's " "power? "
  "\nStill " "there's " "more " "to " fol "low; "
  "\nFall" "ing " "like " "the " gen "tle " "shower? "
  "\nStill " "there's " "more " "to " fol "low; "
  "\nOh, " "the " "power " "the " Spi "rit " "shows! "
  "\nStill " "there's " "more " "to " fol "low; "
  "\nFree" "ly " "He " "His " "power " be "stows: "
  "\nStill " "there's " "more " "to " fol "low. "
  "\nMore " "and " "more, " "more " "and " "more, "
  "\nAl" "ways " "more " "to " fol "low; "
  "\nOh, " "His " match "less, " bound "less " "love! "
  "\nStill " "there’s " "more " "to " fol "low. "
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
