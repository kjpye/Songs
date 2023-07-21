\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Faint, yet Pursuing."
  subtitle    = "Sankey No. 681"
  subsubtitle = "Sankey 880 No. 485"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. W. R. Griswold."
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
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4 8. c16 bes4 g8 aes | bes4 ees bes2 | aes4 8. bes16 aes4 g8 f | g4 c bes2 |
  bes4 8. c16 bes4 g8 aes | bes4 ees d2 | ees4 d8. c16 bes4 8 aes | g4 f ees2 |
  \section \sectionLabel \markup\smallCaps Chorus. \break
  ees'4 8. 16 4 d8 c | bes4 c bes2 | c4 8. 16 bes4 aes8 g | f4 a bes2 |
  bes4 8. c16 bes4 g8 aes | bes4 ees d2 | ees4 d8. c16 bes4 8 aes | g4 f ees2 |
}

alto = \relative {
  \autoBeamOff
  ees'4 f8. fis16 g4 ees8 f | g4 4 ees2 | d4 ees8. 16 f4 ees8 d | ees4 4 2 |
  ees4 f8. fis16 g4 ees8 d | ees4 4 aes2 | 4 8. 16 ees4 8 8 | 4 d ees2 |
  g4 8. 16 aes4 8 8 | g4 fis g2 | ees4 8. 16 4 d8 ees | f4 ees d2 |
  ees4 f8. fis16 g4 ees8 d | ees4 4 aes2 | 4 8. 16 ees4 8 8 | 4 d ees2 |
}

tenor = \relative {
  \autoBeamOff
  g4 aes8. a16 bes4 8 8 | ees4 bes g2 | bes4 8. 16 4 8 8 | 4 aes g2 |
  g4 aes8. a16 bes4 8 8 | 4 4 2 | c4 bes8. aes16 g4 bes8 c | bes4 aes g2 |
  bes4 8. 16 c4 d8 ees | bes4 a bes2 | aes4 8. 16 bes4 8 8 | 4 f4 2 |
  g4 aes8. a16 bes4 8 8 | 4 4 2 | c4 bes8. aes16 g4 bes8 c | bes4 aes g2 |
}

bass = \relative {
  \autoBeamOff
  ees4 8. 16 4 8 8 | 4 4 2 | bes4 c8. 16 d4 bes8 8 | ees4 4 2 |
  ees4 8. 16 4 8 f | g4 4 f2 | ees4 8. 16 4 g8 aes | bes4 bes, ees2 |
  ees4 8. 16 4 8 8 | 4 4 2 | aes4 8. 16 g4 f8 ees | d4 c bes2 |
  ees4 8. 16 4 8 f | g4 4 f2 | ees4 8. 16 4 g8 aes | bes4 bes, ees2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  “Faint, yet pur -- su -- ing.” from day to day,
  O -- ver the thorn -- y and blood- -- marked way:
  Strength -- en and keep us, O Sa -- viour Friend,
  Ev -- er pur -- su -- ing, un -- to life's end!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  “Faint, yet pur -- su -- ing.” we press our way
  Up to the glo -- ri -- ous gates of day;
  Fol -- low -- ing Him who has gone be -- fore,
  O -- ver the path to the bright -- er shore.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  “Faint, yet pur -- su -- ing.” what -- e'er be -- fall;
  He who has died for us, died for all:
  So should they come as a migh -- ty  throng,
  Bear -- ing His ban -- ner a -- loft with song.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  “Faint, yet pur -- su -- ing.” till e -- ven -- tide,
  Un -- der the cross of the Cru -- ci -- fied;
  Know -- ing, when dark -- ly are skies o'er -- cast,
  Sor -- row and sigh -- ing will end at last.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  “Faint, yet pur -- su -- ing.” the eye a -- far
  Sees thro' the dark -- ness the Morn -- ing Star,
  Shed -- ding its ray for the wea -- ry feet,
  Light -- ing the way to the gold -- en street.
}
  
wordsMidi = \lyricmode {
  "“Faint, " "yet " pur su "ing.” " "we " "press " "our " "way "
  "\nUp " "to " "the " glo ri "ous " "gates " "of " "day; "
  "\nFol" low "ing " "Him " "who " "has " "gone " be "fore, "
  "\nO" "ver " "the " "path " "to " "the " bright "er " "shore. "
  "\n“Faint, " "yet " pur su "ing.” " "from " "day " "to " "day, "
  "\nO" "ver " "the " thorn "y " "and " blood- "marked " "way: "
  "\nStrength" "en " "and " "keep " "us, " "O " Sa "viour " "Friend, "
  "\nEv" "er " pur su "ing, " un "to " "life's " "end!\n"

  \set stanza = "2."
  "\n“Faint, " "yet " pur su "ing.” " what "e'er " be "fall; "
  "\nHe " "who " "has " "died " "for " "us, " "died " "for " "all: "
  "\nSo " "should " "they " "come " "as " "a " migh "ty "  "throng, "
  "\nBear" "ing " "His " ban "ner " a "loft " "with " "song. "
  "\n“Faint, " "yet " pur su "ing.” " "from " "day " "to " "day, "
  "\nO" "ver " "the " thorn "y " "and " blood- "marked " "way: "
  "\nStrength" "en " "and " "keep " "us, " "O " Sa "viour " "Friend, "
  "\nEv" "er " pur su "ing, " un "to " "life's " "end!\n"

  \set stanza = "3."
  "\n“Faint, " "yet " pur su "ing.” " "till " e ven "tide, "
  "\nUn" "der " "the " "cross " "of " "the " Cru ci "fied; "
  "\nKnow" "ing, " "when " dark "ly " "are " "skies " o'er "cast, "
  "\nSor" "row " "and " sigh "ing " "will " "end " "at " "last. "
  "\n“Faint, " "yet " pur su "ing.” " "from " "day " "to " "day, "
  "\nO" "ver " "the " thorn "y " "and " blood- "marked " "way: "
  "\nStrength" "en " "and " "keep " "us, " "O " Sa "viour " "Friend, "
  "\nEv" "er " pur su "ing, " un "to " "life's " "end!\n"

  \set stanza = "4."
  "\n“Faint, " "yet " pur su "ing.” " "the " "eye " a "far "
  "\nSees " "thro' " "the " dark "ness " "the " Morn "ing " "Star, "
  "\nShed" "ding " "its " "ray " "for " "the " wea "ry " "feet, "
  "\nLight" "ing " "the " "way " "to " "the " gold "en " "street. "
  "\n“Faint, " "yet " pur su "ing.” " "from " "day " "to " "day, "
  "\nO" "ver " "the " thorn "y " "and " blood- "marked " "way: "
  "\nStrength" "en " "and " "keep " "us, " "O " Sa "viour " "Friend, "
  "\nEv" "er " pur su "ing, " un "to " "life's " "end! "
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

#(set-global-staff-size 20)

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
