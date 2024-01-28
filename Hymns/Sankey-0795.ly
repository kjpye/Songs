\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Let the Sunshine in!"
  subtitle    = "Sankey No. 795"
  subsubtitle = "C. C. No. 95"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Chas. H. Gabriel."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Ada Blenkhorn."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2
  \textMark \markup { \box \bold "C" }    s1*4
  \textMark \markup { \box \bold "D" }    s1*3 s2
  \textMark \markup { \box \bold "E" } s2 s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8. c'16 8. bes16 8. as16 8. f16 | g4 4 2 | ees8. des'16 8. c16 \bar "|" \break
  c8. bes16 8. g16 | bes4 aes4 2 | ees8. c'16 8. bes16 8. aes16 8. ees16 |
  g4 f des'2 | c8. ees,16 8. aes16 bes4 c | aes2. r4 |
  \section \sectionLabel \markup\smallCaps Chorus.
  ees8. ees'16 8. f16 ees4 aes, |
  g2~4 r | ees8. des'16 8. ees16 des4 ees,4 | c'2~4 r | ees,8. ees'16 8. f16 \bar "|" \break
  ees8. c16 aes8. ees16 | g4 f des'2 | c8. ees,16 8. aes16 bes4 c | aes2. r4 |
}

alto = \relative {
  \autoBeamOff
  c'8. ees16 8. des16 8. c16 8. 16 | des4 4 2 | ees8. 16 8. 16
  ees8. 16 8. 16 | 4 4 2 | c8. ees16 8. des16 8. c16 8. ees16 |
  ees4 des f2 | ees8. c16 8. 16 des4 ees | c2. r4 \section | c8. ees16 aes8. 16 4 ees8. 16
  ees4 4 4 r | 8. g16 8. 16 4 ees8. 16 | 4 4 4 r | c8. ees16 aes8. 16
  aes8. ees16 8. 16 | 4 des f2 | ees8. c16 8. 16 des4 ees | c2. r4 |
}

tenor = \relative {
  \autoBeamOff
  aes8. 16 8. 16 8. ees16 8. 16 | 4 4 2 | g8. bes16 8. aes16
  aes8. g16 8. bes16 | des4 c4 2 | aes8. 16 8. 16 8. ees16 8. aes16 |
  aes4 4 2 | 8. 16 8. 16 g4 4 | aes2. r4 \section | 8. c16 8. des16 c4 8. 16 |
  bes4 4 4 r | g8. bes16 8. 16 4 8. 16 | aes4 4 4 r | 8. c16 8. des16
  c8. aes16 8. 16 | 4 4 2 | 8. 16 8. 16 g4 4 | aes2. r4 |
}

bass = \relative {
  \autoBeamOff
  aes,8. 16 8. 16 8. 16 8. 16 | bes4 4 2 | ees8. 16 8. 16
  ees8. 16 8. 16 | aes,4 4 2 | 8. 16 8. 16 8. 16 8. c16 |
  des4 4 2 | ees8. 16 8. 16 4 4 | aes,2. r4 \section | aes'8. 16 8. 16 4 8. 16 |
  ees4 4 4 r | 8. 16 8. 16 4 g8. 16 | aes4 4 4 r | 8. 16 8. 16
  aes8. 16 c,8. 16 | des4 4 2 | ees8. 16 8. 16 4 4 | aes,2. r4 |
}

chorus = \lyricmode {
  Clear the dar -- kened win -- dows, op -- en wide the door,
  Let the bles -- sed sun -- shine in.
  Let the bles -- sed sun -- shine in…
  Let the bles -- sed sun -- shine in.
  Clear the dar -- kened win -- dows, op -- en wide the door,
  Let the bles -- sed sun -- shine in.
}

chorusMen = \lyricmode {
  \tiny
  \repeat unfold 40 \skip 1
  _ _ _ _ _ _ the sun -- shine in,
  _ _ _ _ _ _ the sun -- shine in:
  \repeat unfold 18 \skip 1
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Do you fear the foe will in the con -- flict win?
  Is it dark with -- out you— dark -- er still with -- in?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Does you faith grow faint -- er in the cause you love?
  Are your prayers un -- an -- swered from the throne a -- bove?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Would you go re -- joic -- ing on the up -- ward way,
  Know -- ing naught of dark -- ness— dwell -- ing in the day?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Do " "you " "fear " "the " "foe " "will " "in " "the " con "flict " "win? "
  "\nIs " "it " "dark " with "out " "you—" dark "er " "still " with "in? "
  "\nClear " "the " dar "kened " win "dows, " op "en " "wide " "the " "door, "
  "\nLet " "the " bles "sed " sun "shine " "in. "
  "\nLet " "the " bles "sed " sun "shine " "in… "
  "\nLet " "the " bles "sed " sun "shine " "in. "
  "\nClear " "the " dar "kened " win "dows, " op "en " "wide " "the " "door, "
  "\nLet " "the " bles "sed " sun "shine " "in.\n"

  \set stanza = "2."
  "\nDoes " "you " "faith " "grow " faint "er " "in " "the " "cause " "you " "love? "
  "\nAre " "your " "prayers " un an "swered " "from " "the " "throne " a "bove? "
  "\nClear " "the " dar "kened " win "dows, " op "en " "wide " "the " "door, "
  "\nLet " "the " bles "sed " sun "shine " "in. "
  "\nLet " "the " bles "sed " sun "shine " "in… "
  "\nLet " "the " bles "sed " sun "shine " "in. "
  "\nClear " "the " dar "kened " win "dows, " op "en " "wide " "the " "door, "
  "\nLet " "the " bles "sed " sun "shine " "in.\n"

  \set stanza = "3."
  "\nWould " "you " "go " re joic "ing " "on " "the " up "ward " "way, "
  "\nKnow" "ing " "naught " "of " dark "ness—" dwell "ing " "in " "the " "day? "
  "\nClear " "the " dar "kened " win "dows, " op "en " "wide " "the " "door, "
  "\nLet " "the " bles "sed " sun "shine " "in. "
  "\nLet " "the " bles "sed " sun "shine " "in… "
  "\nLet " "the " bles "sed " sun "shine " "in. "
  "\nClear " "the " dar "kened " win "dows, " op "en " "wide " "the " "door, "
  "\nLet " "the " bles "sed " sun "shine " "in. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Do " "you " "fear " "the " "foe " "will " "in " "the " con "flict " "win? "
  "\nIs " "it " "dark " with "out " "you—" dark "er " "still " with "in? "
  "\nClear " "the " dar "kened " win "dows, " op "en " "wide " "the " "door, "
  "\nLet " "the " bles "sed " sun "shine " "in. "
  "\nLet " "the " bles "sed " sun "shine, " "the " sun "shine " "in… "
  "\nLet " "the " bles "sed " sun "shine, " "the " sun "shine " "in. "
  "\nClear " "the " dar "kened " win "dows, " op "en " "wide " "the " "door, "
  "\nLet " "the " bles "sed " sun "shine " "in.\n"

  \set stanza = "2."
  "\nDoes " "you " "faith " "grow " faint "er " "in " "the " "cause " "you " "love? "
  "\nAre " "your " "prayers " un an "swered " "from " "the " "throne " a "bove? "
  "\nClear " "the " dar "kened " win "dows, " op "en " "wide " "the " "door, "
  "\nLet " "the " bles "sed " sun "shine " "in. "
  "\nLet " "the " bles "sed " sun "shine, " "the " sun "shine " "in… "
  "\nLet " "the " bles "sed " sun "shine, " "the " sun "shine " "in. "
  "\nClear " "the " dar "kened " win "dows, " op "en " "wide " "the " "door, "
  "\nLet " "the " bles "sed " sun "shine " "in.\n"

  \set stanza = "3."
  "\nWould " "you " "go " re joic "ing " "on " "the " up "ward " "way, "
  "\nKnow" "ing " "naught " "of " dark "ness—" dwell "ing " "in " "the " "day? "
  "\nClear " "the " dar "kened " win "dows, " op "en " "wide " "the " "door, "
  "\nLet " "the " bles "sed " sun "shine " "in. "
  "\nLet " "the " bles "sed " sun "shine, " "the " sun "shine " "in… "
  "\nLet " "the " bles "sed " sun "shine, " "the " sun "shine " "in. "
  "\nClear " "the " dar "kened " win "dows, " op "en " "wide " "the " "door, "
  "\nLet " "the " bles "sed " sun "shine " "in. "
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
