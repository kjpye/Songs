\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Trusting Jesus."
  subtitle    = "Sankey No. 826"
  subsubtitle = "Sankey 880 No. 193"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. Pahe."
  meter       = \markup\smallCaps "7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*4
  \textMark \markup { \box \bold "B" } s2.*4
  \textMark \markup { \box \bold "C" } s2.*4
  \textMark \markup { \box \bold "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4.=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 bes8 des4 c8 | 4 bes8 aes4. | 4 f8 aes4 f8 | ees8[aes] c bes4. |
  c4 bes8 des4 c8 | bes4 aes8 f4. | ees8[aes] c ees4 c8 | 4 bes8 aes4. |
  \section \sectionLabel \markup\smallCaps Chorus. \break
  ees'4 c8 ees4 c8 | 4 bes8 4. | c4 g8 aes4 8 | bes4 f8 g4. |
  aes4 8 bes4 8 | c4 8 des4. | ees4 f8 ees8[c] aes | c4 bes8 aes4. |
}

alto = \relative {
  \autoBeamOff
  ees'4 des8 f4 ees8 | ees4 des8 c4. | f4 des8 f4 des8 | c4 ees8 4. |
  ees4 des8 ees4 des8 | f4 8 des4. | c4 ees8 aes4 ees8 | 4 des8 c4. \section |
  aes'4 ees8 aes4 ees8 | 4 8 4. | e4 8 f4 8 | d4 8 ees4. |
  ees4 c8 ees4 8 | ees4 ges8 f4. | ees4 aes8 4 8 | 4 g8 aes4. |
}

tenor = \relative {
  \autoBeamOff
  aes4 8 4 8 | g4 8 aes4. | 4 8 4 8 | 4 8 g4. |
  aes4 8 4 8 | 4 8 4. | 8[ees] aes c4 aes8 | g4 8 aes4. \section |
  c4 aes8 c4 aes8 | 4 g8 4. | 4 c8 4 8 | bes4 8 4. |
  aes4 8 g4 8 | aes4 8 4. | 4 8 c[ees] c | ees4 des8 c4. |
}

bass = \relative {
  \autoBeamOff
  aes,4 8 4 8 | ees'4 8 aes,4. | des4 8 4 8 | aes4 8 ees'4. |
  aes,4 8 4 8 | des4 8 4. | aes4 8 aes'4 8 | ees4 8 aes,4. \section |
  aes'4 8 4 aes,8 | ees'4 8 4. | c4 8 f4 8 | bes,4 8 ees4(des8) |
  c4 aes8 ees'4 8 | aes4 aes,8 des4. | c4 des8 ees4 f8 | ees4 8 aes,4. |
}

chorus = \lyricmode {
  Trust -- ing as the mo -- ments fly;
  Trust -- ing as the days go by;
  Trust -- ing Him, what -- e'er be -- fall:
  Trust -- ing Je -- sus, that is all.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Sim -- ply trust -- ing ev -- 'ry day,
  Trust -- ing through a storm -- y way;
  E -- ven when my faith is small,
  Trust -- ing Je -- sus, that is all.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Bright -- ly doth His Spi -- rit shine
  In -- to this poor heart of mine;
  While He leads I can -- not fall:
  Trust -- ing Je -- sus, that is all.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sing -- ing, if my way be clear;
  Pray -- ing, if the path be drear;
  If in dan -- ger, for Him call:
  Trust -- ing Je -- sus, that is all.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Trust -- ing Him while life shall last;
  Trust -- ing Him till earth be past;
  Till with -- in the jas -- per wall:
  Trust -- ing Je -- sus, that is all.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sim" "ply " trust "ing " ev "'ry " "day, "
  "\nTrust" "ing " "through " "a " storm "y " "way; "
  "\nE" "ven " "when " "my " "faith " "is " "small, "
  "\nTrust" "ing " Je "sus, " "that " "is " "all. "
  "\nTrust" "ing " "as " "the " mo "ments " "fly; "
  "\nTrust" "ing " "as " "the " "days " "go " "by; "
  "\nTrust" "ing " "Him, " what "e'er " be "fall: "
  "\nTrust" "ing " Je "sus, " "that " "is " "all.\n"

  \set stanza = "2."
  "\nBright" "ly " "doth " "His " Spi "rit " "shine "
  "\nIn" "to " "this " "poor " "heart " "of " "mine; "
  "\nWhile " "He " "leads " "I " can "not " "fall: "
  "\nTrust" "ing " Je "sus, " "that " "is " "all. "
  "\nTrust" "ing " "as " "the " mo "ments " "fly; "
  "\nTrust" "ing " "as " "the " "days " "go " "by; "
  "\nTrust" "ing " "Him, " what "e'er " be "fall: "
  "\nTrust" "ing " Je "sus, " "that " "is " "all.\n"

  \set stanza = "3."
  "\nSing" "ing, " "if " "my " "way " "be " "clear; "
  "\nPray" "ing, " "if " "the " "path " "be " "drear; "
  "\nIf " "in " dan "ger, " "for " "Him " "call: "
  "\nTrust" "ing " Je "sus, " "that " "is " "all. "
  "\nTrust" "ing " "as " "the " mo "ments " "fly; "
  "\nTrust" "ing " "as " "the " "days " "go " "by; "
  "\nTrust" "ing " "Him, " what "e'er " be "fall: "
  "\nTrust" "ing " Je "sus, " "that " "is " "all.\n"

  \set stanza = "4."
  "\nTrust" "ing " "Him " "while " "life " "shall " "last; "
  "\nTrust" "ing " "Him " "till " "earth " "be " "past; "
  "\nTill " with "in " "the " jas "per " "wall: "
  "\nTrust" "ing " Je "sus, " "that " "is " "all. "
  "\nTrust" "ing " "as " "the " mo "ments " "fly; "
  "\nTrust" "ing " "as " "the " "days " "go " "by; "
  "\nTrust" "ing " "Him, " what "e'er " be "fall: "
  "\nTrust" "ing " Je "sus, " "that " "is " "all. "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
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
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
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
      \context {
        \Staff \RemoveAllEmptyStaves
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
