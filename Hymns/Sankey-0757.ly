\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Bringing in the Sheaves!"
  subtitle    = "Sankey No. 757"
  subsubtitle = "Sankey 880 No. 374"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{"Arr. from" \smallCaps "Geo. A. Miner."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "K. S."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*2
  \textMark \markup { \box \bold "B" } s1*3
  \textMark \markup { \box \bold "C" } s1*3
  \repeat volta 2 {
    \textMark \markup { \box \bold "D" } s1*2 s2
    \textMark \markup { \box \bold "E" } s2
    \alternative {
      \volta 1 { s1 }
      \volta 2 { s1 }
    }
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8 8 8. a16 g4 e | c'8 8 8. d16 c4 a |
  g8 8 8. a16 g4 e | 8 8 d cis d2 | e8 g8 8. a16 g4 4 |
  a8 c8 8. d16 c4 a | g8 8 c d e4 c | d8 c e8. d16 c2
  \section \sectionLabel \markup\smallCaps "Refrain."
%  e,8 g8 8. a16 g2 | a8 c8 8. a16 g2 | e8 g c d \break
  \repeat volta 2 {
    e,8 g8 8. a16 g2 | a8 c8 8. a16 g2 | e8 g c d \bar "|" \break
    e4 c |
    \alternative {
      \volta 1 { e8 8 d c d2 }
      \volta 2 { d8 c e8. d16 c2 }
    }
  }
}

alto = \relative {
  \autoBeamOff
  e'8 8 8. f16 e4 c | e8 8 f8. 16 4 4 |
  e8 8 8. f16 e4 c | 8 8 b ais b2 | c8 e8 8. f16 e4 4 |
  f8 a8 8. f16 4 4 | e8 8 g g g4 e | f8 e g8. f16 e2 |
  \repeat volta 2 {
    c8 e8 8. f16 e2 | f8 a8 8. f16 e2 | c8 e e f
    g4 e |
    \alternative {
      \volta 1 { g8 8 8 fis g2 }
      \volta 2 { f8 e g8. f16 e2 }
    }
  }
}

tenor = \relative {
  \autoBeamOff
  c'8 8 8. 16 4 g | 8 8 a8. 16 4 c |
  c8 8 8. 16 4 g | 8 8 8 8 2 | 8 c8 8. 16 4 4 |
  c8 8 a8. 16 c4 4 | 8 8 8 b c4 4 | b8 c8 8. b16 c2 | \section
  \repeat volta 2 {
    g8 c8 8. 16 2 | 8 8 8. 16 2 | 8 8 8 8
    c4 4 |
    \alternative {
      \volta 1 { c8 8 d a b2 }
      \volta 2 { b8 c8 8. b16 c2 }
    }
  }
}

bass = \relative {
  \autoBeamOff
  c8 8 8. 16 4 4 | 8 8 f8. 16 4 4 |
  c8 8 8. 16 4 4 | g'8 8 g,8 8 2 | c8 8 8. 16 4 4 |
  f8 8 8. 16 4 4 | c8 c e g c4 c, | g'8 8 8. 16 c,2 |
  \repeat volta 2 {
    c8 8 8. 16 2 | f8 8 8. 16 c2 | 8 8 8 8
    c4 4 |
    \alternative {
      \volta 1 { c'8 8 b a g2 }
      \volta 2 { g8 8 8. 16 c,2 }
    }
  }
}

chorus = \lyricmode {
  \repeat volta 2 {
    Bring -- ing in the sheaves!
    Bring -- ing in the sheaves!
    We shall come re -- joic -- ing,
    \alternative {
      \volta 1 { bring -- ing in the sheaves! }
      \volta 2 { bring -- ing in the sheaves! }
    }
  }
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Sow -- ing in the morn -- ing, sow -- ing seeds of kind -- ness,
  Sow -- ing in the noon -- tide and the dew -- y eves:
  Wait -- ing for the har -- vest, and the time of reap -- ing,
  We shall come re -- joic -- ing, bring -- ing in the sheaves!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sow -- ing in the sun -- shine, sow -- ing in the sha -- dows,
  Fear -- ing nei -- ther clouds nor win -- ter's chill -- ing breeze:
  By and by the har -- vest, and the la -- bour en -- ded,
  We shall come re -- joic -- ing, bring -- ing in the sheaves!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Go then e -- ver, weep -- ing, sow -- ing for the Mas -- ter,
  Tho' the loss sus -- tained our spi -- rit of -- ten grieves:
  When our weep -- ing's o -- ver, He will bid us wel -- come,
  We shall come re -- joic -- ing, bring -- ing in the sheaves.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sow" "ing " "in " "the " morn "ing, " sow "ing " "seeds " "of " kind "ness, "
  "\nSow" "ing " "in " "the " noon "tide " "and " "the " dew "y " "eves: "
  "\nWait" "ing " "for " "the " har "vest, " "and " "the " "time " "of " reap "ing, "
  "\nWe " "shall " "come " re joic "ing, " bring "ing " "in " "the " "sheaves! "
  \repeat volta 2 {
    "\nBring" "ing " "in " "the " "sheaves! "
    "\nBring" "ing " "in " "the " "sheaves! "
    "\nWe " "shall " "come " re joic "ing, "
    \alternative {
      \volta 1 { bring "ing " "in " "the " "sheaves!" }
      \volta 2 { bring "ing " "in " "the " "sheaves!\n" }
    }
  }

  \set stanza = "2."
  "\nSow" "ing " "in " "the " sun "shine, " sow "ing " "in " "the " sha "dows, "
  "\nFear" "ing " nei "ther " "clouds " "nor " win "ter's " chill "ing " "breeze: "
  "\nBy " "and " "by " "the " har "vest, " "and " "the " la "bour " en "ded, "
  "\nWe " "shall " "come " re joic "ing, " bring "ing " "in " "the " "sheaves! "
  \repeat volta 2 {
    "\nBring" "ing " "in " "the " "sheaves! "
    "\nBring" "ing " "in " "the " "sheaves! "
    "\nWe " "shall " "come " re joic "ing, "
    \alternative {
      \volta 1 { bring "ing " "in " "the " "sheaves!" }
      \volta 2 { bring "ing " "in " "the " "sheaves!\n" }
    }
  }

  \set stanza = "3."
  "\nGo " "then " e "ver, " weep "ing, " sow "ing " "for " "the " Mas "ter, "
  "\nTho' " "the " "loss " sus "tained " "our " spi "rit " of "ten " "grieves: "
  "\nWhen " "our " weep "ing's " o "ver, " "He " "will " "bid " "us " wel "come, "
  "\nWe " "shall " "come " re joic "ing, " bring "ing " "in " "the " "sheaves. "
  \repeat volta 2 {
    "\nBring" "ing " "in " "the " "sheaves! "
    "\nBring" "ing " "in " "the " "sheaves! "
    "\nWe " "shall " "come " re joic "ing, "
    \alternative {
      \volta 1 { bring "ing " "in " "the " "sheaves!" }
      \volta 2 { bring "ing " "in " "the " "sheaves!" }
    }
  }
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
            \new Voice { \repeat unfold \verses \unfoldRepeats \RehearsalTrack }
            \new Voice { \repeat unfold \verses \unfoldRepeats \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \unfoldRepeats \soprano \bar "|." }
            \addlyrics {\unfoldRepeats \wordsMidi}
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \unfoldRepeats \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \unfoldRepeats \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \unfoldRepeats \bass }
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
            \new Voice { \repeat unfold \verses \unfoldRepeats \RehearsalTrack }
            \new Voice { \repeat unfold \verses \unfoldRepeats \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \unfoldRepeats \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \unfoldRepeats \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \unfoldRepeats \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \unfoldRepeats \chorus
                                              \wordsTwo   \unfoldRepeats \chorus
                                              \wordsThree \unfoldRepeats \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \unfoldRepeats \tenor }
                                    { \global \repeat unfold \verses \unfoldRepeats \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \unfoldRepeats \tenor }
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
