\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Only Remembered."
  subtitle    = "Sankey No. 798"
  subsubtitle = "N. H. No. 103"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar, D. D."
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
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2
  \textMark \markup { \box \bold "C" }    s1*3
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*2 s2
  \textMark \markup { \box \bold "F" } s2 s1*2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4 a8. bes16 ees4 bes8 g | bes4 aes8. f16 aes8 g4. | c4 d8. 16 \bar "|" \break
  ees4 bes8 c | d4 c8. 16 bes2 | 4 a8. bes16 ees4 bes8 g |
  bes4 aes8. f16 aes8 g4. | c4 d8. 16 ees4 bes8 aes | g4 f8. ees16 2 |
  \section \sectionLabel \markup\smallCaps Refrain. \break
  f4 8. g16 aes8 4 r8 | g4 8. aes16 bes8 4 r8 | bes4 a8. bes16 c8[d] ees8 8 |
  d4 c8. 16 bes2 | 4 a8. bes16 ees4 bes8 g | bes4 aes8. f16 \bar "|" \break
  aes8 g4. | c4 d8. 16 ees4 bes8 aes | g4 f8. ees16 2 |
}

alto = \relative {
  \autoBeamOff
  ees'4 8. 16 g4 8 ees | d4 f8. d16 f8 ees4. | 4 aes8. 16
  g4 8 8 | f4 ees8. 16 d2 | ees4 8. 16 f4 8 ees |
  ees4 d8. 16 f8 ees4. | 4 aes8. 16 g4 8 f | ees4 d8. ees16 2 \section |
  d4 8. ees16 f8 4 r8 | ees4 8. f16 g8 4 r8 | f4 ees8. d16 f4 8 8 |
  f4 ees8. 16 d2 | ees4 8. 16 g4 8 ees | d4 f8. d16
  f8 ees4. | 4 aes8. 16 g4 8 f | ees4 d8. ees16 2 |
}

tenor = \relative {
  \autoBeamOff
  g4 fis8. g16 bes4 8 8 | 4 8. 16 8 4. | aes4 bes8. 16
  bes4 ees8 bes | 4 a8. 16 bes4(aes) | g4 fis8. g16 bes4 ees8 bes |
  g4 f8. bes16 8 4. | aes4 bes8. 16 4 ees8 c | bes4 aes8. g16 2 \section |
  bes4 8. 16 8 4 r8 | 4 8. 16 ees8 4 r8 | d4 c8. bes16 a8[bes] c c |
  bes4 a8. 16 bes4(aes) | g4 fis8. g16 bes4 ees8 bes | 4 8. 16
  bes8 4. | aes4 bes8. 16 8[ees] 8 c | bes4 aes8. g16 2 |
}

bass = \relative {
  \autoBeamOff
  ees4 8. 16 4 8 8 | bes4 8. 16 ees8 4. | aes4 f8. 16
  ees4 8 8 | f4 8. 16 bes,2 | c4 8. 16 4 8 8 |
  bes4 8. 16 ees8 4. | aes4 f8. 16 ees4 8 aes | bes4 bes,8. ees16 2 \section |
  bes4 8. 16 8 4 r8 | ees4 8. 16 8 4 r8 | f4 8. 16 4 8 a |
  bes4 f8. 16 bes,2 | ees4 8. 16 4 8 8 | bes4 8. 16
  ees8 4. | aes4 f8. 16 ees4 8 aes | bes4 bes,8. ees16 2 |
}

chorus = \lyricmode {
  On -- ly re -- mem -- bered, on -- ly re -- mem -- bered,
  On -- ly re -- mem -- bered by what we have done;
  Thus we would pass from the earth and its toil -- ing,
  On -- ly re -- mem -- bered by what we have done.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Fa -- ding a -- way like the stars of the morn -- ing,
  Los -- ing their light in the glo -- ri -- ous sun—
  Thus would we pass from the earth and its toil -- ing,
  On -- ly re -- mem -- bered by what we have done.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Shall we be missed, tho' by oth -- ers suc -- ceed -- ed,
  Reap -- ing the fields we in spring -- time have sown?
  Yes; but the sow -- ers must pass from their la -- boursm
  Ev -- er re -- mem -- bered by what they have done.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ly the truth that in life we have spo -- ken,
  On -- ly the seed that on earth we have sown;
  These shall pass on -- ward when we are for -- got -- ten,
  Fruits of the har -- vest and what we have done.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, when the Sa -- viour shall make up Hi jew -- els,
  When the bright crowns of re -- joic -- ing are won,
  Then shall His wear -- y and faith -- ful dis -- cip -- les
  All be re -- mem -- bered by what they have done.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Fa" "ding " a "way " "like " "the " "stars " "of " "the " morn "ing, "
  "\nLos" "ing " "their " "light " "in " "the " glo ri "ous " "sun— "
  "\nThus " "would " "we " "pass " "from " "the " "earth " "and " "its " toil "ing, "
  "\nOn" "ly " re mem "bered " "by " "what " "we " "have " "done. "
  "\nOn" "ly " re mem "bered, " on "ly " re mem "bered, "
  "\nOn" "ly " re mem "bered " "by " "what " "we " "have " "done; "
  "\nThus " "we " "would " "pass " "from " "the " "earth " "and " "its " toil "ing, "
  "\nOn" "ly " re mem "bered " "by " "what " "we " "have " "done.\n"

  \set stanza = "2."
  "\nShall " "we " "be " "missed, " "tho' " "by " oth "ers " sec ceed "ed, "
  "\nReap" "ing " "the " "fields " "we " "in " spring "time " "have " "sown? "
  "\nYes; " "but " "the " sow "ers " "must " "pass " "from " "their " la "boursm "
  "\nEv" "er " re mem "bered " "by " "what " "they " "have " "done. "
  "\nOn" "ly " re mem "bered, " on "ly " re mem "bered, "
  "\nOn" "ly " re mem "bered " "by " "what " "we " "have " "done; "
  "\nThus " "we " "would " "pass " "from " "the " "earth " "and " "its " toil "ing, "
  "\nOn" "ly " re mem "bered " "by " "what " "we " "have " "done.\n"

  \set stanza = "3."
  "\nOn" "ly " "the " "truth " "that " "in " "life " "we " "have " spo "ken, "
  "\nOn" "ly " "the " "seed " "that " "on " "earth " "we " "have " "sown; "
  "\nThese " "shall " "pass " on "ward " "when " "we " "are " for got "ten, "
  "\nFruits " "of " "the " har "vest " "and " "what " "we " "have " "done. "
  "\nOn" "ly " re mem "bered, " on "ly " re mem "bered, "
  "\nOn" "ly " re mem "bered " "by " "what " "we " "have " "done; "
  "\nThus " "we " "would " "pass " "from " "the " "earth " "and " "its " toil "ing, "
  "\nOn" "ly " re mem "bered " "by " "what " "we " "have " "done.\n"

  \set stanza = "4."
  "\nOh, " "when " "the " Sa "viour " "shall " "make " "up " "Hi " jew "els, "
  "\nWhen " "the " "bright " "crowns " "of " re joic "ing " "are " "won, "
  "\nThen " "shall " "His " wear "y " "and " faith "ful " dis cip "les "
  "\nAll " "be " re mem "bered " "by " "what " "they " "have " "done. "
  "\nOn" "ly " re mem "bered, " on "ly " re mem "bered, "
  "\nOn" "ly " re mem "bered " "by " "what " "we " "have " "done; "
  "\nThus " "we " "would " "pass " "from " "the " "earth " "and " "its " toil "ing, "
  "\nOn" "ly " re mem "bered " "by " "what " "we " "have " "done. "
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
  \bookOutputSuffix "repeat"
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
