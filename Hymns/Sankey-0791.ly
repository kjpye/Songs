\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Will Jesus Find us Watching?"
  subtitle    = "Sankey No. 791"
  subsubtitle = "Sankey 880 No. 410"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
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
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*3
  \textMark \markup { \box \bold "C" }    s1*3
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
  f'4 8. g16 f4 bes8 c | d4 bes g8 bes4 r8 | f e f g \bar "|" \break
  f4 bes | c2. r4 | f,4 8. g16 f4 bes8 c | d4 bes g8 bes4 r8 |
  f8^\markup\italic rit. bes8 8 c d4 c | bes2. r4 |
  \section \sectionLabel \markup\smallCaps Refrain.
  c4 8. d16 c4 f,8. g16 |
  f8 bes4. d8 bes4 r8 | g bes a g f4 bes | c2. r4 | f,4 8. g16 \bar "|" \break
  f4 bes8 c | d4 bes g8 bes4\fermata r8 | f8 4. bes8 8 8 c | d4 c bes2 |
}

alto = \relative {
  \autoBeamOff
  d'4 8. ees16 d4 8 ees | f4 f ees8 g4 r8 | d8 cis d ees
  d4 f | 2. r4 | d4 8. ees16 d4 8 ees | f4 4 ees8 g4 r8 |
  f8 d f g f4 ees | d2. r4 \section | f4 8. 16 4 ees8. 16 |
  d8 4. f8 ees4 r8 | ees8 g f ees d4 f | 2. r4 | d4 8. ees16
  d4 8 ees | f4 4 ees8 g4\fermata r8 | f8 4. d8 8 f g | f4 ees d2 |
}

tenor = \relative {
  \autoBeamOff
  bes4 8. 16 4 8 8 | 4 4 8 4 r8 | 8 8 8 8
  bes4 4 | a2. r4 | bes4 8. 16 4 8 8 | 4 4 8 4 r8 |
  bes8 8 8 8 4 a | bes2. r4 \section | a4 8. bes16 a4 8. 16 |
  bes8 4. 8 4 r8 | bes8 8 8 8 4 4 | a2. r4 | bes4 8. 16
  bes4 8 8 | 4 4 8 4\fermata r8 | 8 4. 8 8 8 8 | 4 a bes2 |
}

bass = \relative {
  \autoBeamOff
  bes,4 8. 16 4 8 8 | 4 d ees8 4 r8 | bes8 8 8 8
  bes4 d | f2. r4 | bes,4 8. 16 4 8 8 | 4 d ees8 4 r8 |
  d8 g d ees f4 f | bes,2. r4 \section | f'4 8. 16 4 8. 16 |
  bes,8 4. 8 4 r8 | ees8 8 8 8 bes4 d | f2. r4 | bes,4 8. 16
  bes4 8 8 | 4 d ees8 4\fermata r8 | d8 4. g8 8 d ees | f4 f bes,2 |
}

chorus = \lyricmode {
  Oh, can we say we are rea -- dy, bro -- ther?—
  Rea -- dy for the soul's bright home?
  Say, will He find you and me still watch -- ing,
  Wait -- ing, wait -- ing when the Lord shall come?
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  When Je -- sus comes to re -- ward His ser -- vants,
  Whe -- ther it be noon or night,
  Faith -- ful to Him will He find us watch -- ing,
  With our lamps all trimmed and bright?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  If at the dawn of the ear -- ly morn -- ing,
  He shall call us one by one,
  When to the Lord we res -- tore our tal -- ents,
  Will He an -- swer thee?— “Well done!”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Have we been true to the trust He left us?
  Do we seek to do our best?
  If in our hearts there is naught con -- demns us,
  We shall have a glo -- rious rest.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Bles -- sed are those whom the Lord finds watch -- ing,
  In His glo -- ry they shall share;
  If He shall come at the dawn or mid -- night,
  Will He find us watch -- ing there?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "When " Je "sus " "comes " "to " re "ward " "His " ser "vants, "
  "\nWhe" "ther " "it " "be " "noon " "or " "night, "
  "\nFaith" "ful " "to " "Him " "will " "He " "find " "us " watch "ing, "
  "\nWith " "our " "lamps " "all " "trimmed " "and " "bright? "
  "\nOh, " "can " "we " "say " "we " "are " rea "dy, " bro "ther?— "
  "\nRea" "dy " "for " "the " "soul's " "bright " "home? "
  "\nSay, " "will " "He " "find " "you " "and " "me " "still " watch "ing, "
  "\nWait" "ing, " wait "ing " "when " "the " "Lord " "shall " "come?\n"

  \set stanza = "2."
  "\nIf " "at " "the " "dawn " "of " "the " ear "ly " morn "ing, "
  "\nHe " "shall " "call " "us " "one " "by " "one, "
  "\nWhen " "to " "the " "Lord " "we " res "tore " "our " tal "ents, "
  "\nWill " "He " an "swer " "thee?— " "“Well " "done!” "
  "\nOh, " "can " "we " "say " "we " "are " rea "dy, " bro "ther?— "
  "\nRea" "dy " "for " "the " "soul's " "bright " "home? "
  "\nSay, " "will " "He " "find " "you " "and " "me " "still " watch "ing, "
  "\nWait" "ing, " wait "ing " "when " "the " "Lord " "shall " "come?\n"

  \set stanza = "3."
  "\nHave " "we " "been " "true " "to " "the " "trust " "He " "left " "us? "
  "\nDo " "we " "seek " "to " "do " "our " "best? "
  "\nIf " "in " "our " "hearts " "there " "is " "naught " con "demns " "us, "
  "\nWe " "shall " "have " "a " glo "rious " "rest. "
  "\nOh, " "can " "we " "say " "we " "are " rea "dy, " bro "ther?— "
  "\nRea" "dy " "for " "the " "soul's " "bright " "home? "
  "\nSay, " "will " "He " "find " "you " "and " "me " "still " watch "ing, "
  "\nWait" "ing, " wait "ing " "when " "the " "Lord " "shall " "come?\n"

  \set stanza = "4."
  "\nBles" "sed " "are " "those " "whom " "the " "Lord " "finds " watch "ing, "
  "\nIn " "His " glo "ry " "they " "shall " "share; "
  "\nIf " "He " "shall " "come " "at " "the " "dawn " "or " mid "night, "
  "\nWill " "He " "find " "us " watch "ing " "there? "
  "\nOh, " "can " "we " "say " "we " "are " rea "dy, " bro "ther?— "
  "\nRea" "dy " "for " "the " "soul's " "bright " "home? "
  "\nSay, " "will " "He " "find " "you " "and " "me " "still " watch "ing, "
  "\nWait" "ing, " wait "ing " "when " "the " "Lord " "shall " "come? "
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
