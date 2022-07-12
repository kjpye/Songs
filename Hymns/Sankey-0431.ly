\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Nothing but Leaves!"
  subtitle    = "Sankey No. 431"
  subsubtitle = "Sankey 880 No. 34"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "S. J. Vail."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. E. Akerman."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*3
  \mark \markup { \box "B" } s2.*3
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'16 8. 8 4 aes8
  g8 4 4 8
  aes4 8 4 f8
  g4.~4 8 % B
  g4 8 4 8
  aes4 bes8 c4 f,8
  f4 8 4 8 % C
  g4 aes8 bes4 8
  c4 8 ees8.[d16] c8
  bes4.(ees) % D
  r4 r8. ees,16 8. 16
  f4.~4.
  r4 r8. f16 8.\fermata aes16
  g4.~4.
}

alto = \relative {
  \autoBeamOff
  g'16 8. 8 4 f8
  ees8 4 4 8
  f4 8 4 d8
  ees4.~4 8 % B
  ees4 8 4 8
  ees4 8 4 8
  d4 8 4 8 % C
  ees4 d8 ees4 8
  ees4 8 4 8
  ees4.~4. % D
  r4 r8. c16 8. 16
  d4.~4.
  r4 r8. d16 8.\fermata f16
  ees4.~4.
}

tenor = \relative {
  \autoBeamOff
  ees'16 8. 8 4 d8
  c8 4 4 8
  c4 8 4 bes8
  bes4.~4 8 % B
  bes4 8 4 8
  aes4 g8 aes4 c8
  bes4 8 4 8 % C
  bes4 8 4 g8
  aes4 8 c8.[bes16] aes8
  g4.~4. % D
  r4 r8. g16 8. 16
  bes4.~4.
  r4 r8. bes16 8.\fermata 16
  bes4.~4.
}

bass = \relative {
  \autoBeamOff
  ees16 8. 8 4 bes8
  c8 4 4 8
  aes4 8 4 bes8
  ees4.~4 8 % B
  ees4 8 4 des8
  c4 bes8 aes4 a8
  bes4 8 4 8 % C
  ees4 f8 g4 ees8
  aes,4 8 4 8
  ees'4.(c) % D
  r4 r8. c16 8. 16
  bes4.~4.
  r4 r8. bes16 8.\fermata 16
  ees4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  No -- thing but leaves!
  The Spi -- rit grieves,
  O'er years of was -- ted life:
  O'er sins in -- dulged while con -- science slept,
  O'er vows and pro -- mis -- es un -- kept,
  And reaps, from years of strife.
  No -- thing but leaves!
  no -- thing but leaves!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  No -- thing but leaves!
  No ga -- thered sheaves
  Of life's fair rip -- 'ning grain:
  We sow our seeds; lo, tares and weeds,
  Words, \markup\italic i -- \markup\italic dle words,
  for earn -- est deeds:
  Then reap, with toil and pain.
  No -- thing but leaves!
  no -- thing but leaves!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  No -- thing but leaves!
  Sad mem -- 'ry weaves
  No vail to hide the past:
  And as we trace our wea -- ry way,
  And count each lost and mis -- spent day,
  We sad -- ly find at last—
  No -- thing but leaves!
  no -- thing but leaves!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ah! who shall thus the Mas -- ter meet,
  And bring but with -- ered leaves?
  Ah! who shall at the Sa -- viour's feet,
  Be -- fore the aw -- ful judg -- ment seat,
  Lay down, for gold -- en sheaves.
  No -- thing but leaves!
  no -- thing but leaves!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "No" "thing " "but " "leaves! "
  "\nThe " Spi "rit " "grieves, "
  "\nO'er " "years " "of " was "ted " "life: "
  "\nO'er " "sins " in "dulged " "while " con "science " "slept, "
  "\nO'er " "vows " "and " pro mis "es " un "kept, "
  "\nAnd " "reaps, " "from " "years " "of " "strife. "
  "\nNo" "thing " "but " "leaves! "
  "\nno" "thing " "but " "leaves!\n"

  \set stanza = "2."
  "\nNo" "thing " "but " "leaves! "
  "\nNo " ga "thered " "sheaves "
  "\nOf " "life's " "fair " rip "'ning " "grain: "
  "\nWe " "sow " "our " "seeds; " "lo, " "tares " "and " "weeds, "
  "\nWords, " "\markup\italic " i "\markup\italic " "dle " "words, "
  "\nfor " earn "est " "deeds: "
  "\nThen " "reap, " "with " "toil " "and " "pain. "
  "\nNo" "thing " "but " "leaves! "
  "\nno" "thing " "but " "leaves!\n"

  \set stanza = "3."
  "\nNo" "thing " "but " "leaves! "
  "\nSad " mem "'ry " "weaves "
  "\nNo " "vail " "to " "hide " "the " "past: "
  "\nAnd " "as " "we " "trace " "our " wea "ry " "way, "
  "\nAnd " "count " "each " "lost " "and " mis "spent " "day, "
  "\nWe " sad "ly " "find " "at " "last— "
  "\nNo" "thing " "but " "leaves! "
  "\nno" "thing " "but " "leaves!\n"

  \set stanza = "4."
  "\nAh! " "who " "shall " "thus " "the " Mas "ter " "meet, "
  "\nAnd " "bring " "but " with "ered " "leaves? "
  "\nAh! " "who " "shall " "at " "the " Sa "viour's " "feet, "
  "\nBe" "fore " "the " aw "ful " judg "ment " "seat, "
  "\nLay " "down, " "for " gold "en " "sheaves. "
  "\nNo" "thing " "but " "leaves! "
  "\nno" "thing " "but " "leaves! "
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
