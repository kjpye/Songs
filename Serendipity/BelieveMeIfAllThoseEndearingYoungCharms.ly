\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title = "Believe Me If All Those Endearing Young Charms"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer = "Thomas Moore"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 6/8
  \partial 8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Moderately Slow" 4=80
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'16^\p(f)
  ees8. f16 ees8 ees g bes
  aes8 c ees ees4 d16 c
  bes8. aes16 g8 f8. ees16 f8
  g4.~g4 g16 f % 5
  ees8. f16 ees8 ees g bes
  aes8 c ees ees4 d16 c
  bes8 ees g, f8. ees16 f8
  ees4.~ees4 bes'16 aes
  g8 bes ees8 ees8.~ees16 bes16 bes % 10
  c8 aes ees' ees4 d16 c
  bes8. aes16 g8 f8. ees16 f8
  g4.~g4 g16 f
  ees8. f16 ees8 ees g bes
  aes8 c ees ees4^\fermata d16 c
  bes8 ees g, f8. ees16 f8
  ees4.~ees8 r
}

alto = \relative {
  \autoBeamOff
  d'16~d
  bes8. bes16 bes8 bes ees ees
  ees8 ees ees ees4 ees16 ees
  g8. f16 ees8 d8. c16 d8
  ees4.~ees4 d16 d
  bes8. bes16 bes8 bes ees ees
  ees8 ees ees ees4 ees16 ees
  ees8 ees ees d8. ees16 d8
  bes4.~bes4 f'16 f
  ees8 ees g g8.~g16 <ees g>16 ~ q
  ees8 ees ees ees4 ees16 ees
  q8. f16 ees8 d8. c16 d8
  ees4.~ees4 d16 d
  bes8. bes16 bes8 bes ees ees
  ees8 ees ees ees4 ees16 ees
  ees8 g ees d8. ees16 d8
  ees4.~ees8 r
}

tenor = \relative {
  \autoBeamOff
  bes16(aes)
  g8. aes16 g8 g bes bes
  c8 aes c c4 bes16 aes
  g8. bes16 bes8 bes8. bes16 bes8
  bes4.~bes4 bes16 aes
  g8. aes16 g8 g bes des % 5
  c8 aes c c4 aes16 aes
  g8 g bes aes8. g16 aes8
  g4.~g4 bes16 bes
  bes8 bes bes bes8.~bes16 g16 g
  aes8 c c c4 bes16 aes % 10
  g8. aes16 bes8 bes8. bes16 bes8
  bes4.~bes4 bes16 aes
  g8. aes16 g8 g bes des
  c8 aes d c4^\fermata bes16 aes
  g8 bes bes aes8. g16 aes8 % 15
  g4.~g8 r
}

bass = \relative {
  \autoBeamOff
  bes,16(bes)
  ees8. ees16 ees8 ees ees g
  aes8 aes aes aes4 aes16 aes
  ees8. ees16 ees8 bes8. bes16 bes8
  ees4.~ees4 bes16 bes
  ees8. ees16 ees8 ees ees g
  aes8 aes aes aes4 aes,16 aes
  bes8 bes bes bes8. bes16 bes8
  ees4.~ees4 d16 d
  ees8 ees ees ees8.~ees16 ees ees
  aes8 aes es aes4 aes16 aes
  ees8. ees16 ees8 bes8. bes16 bes8
  ees4.~ees4 bes16 bes
  ees8. ees16 ees8 ees ees g
  aes8 aes aes aes4 aes16 aes
  bes,8 bes bes bes8. bes16 bes8
  ees4.~ees4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

verses = 2

wordsOne = \lyricmode {
  \set stanza = "1."
  Be -- lieve me, if all those en -- dear -- ing young charms which I gaze on so fond -- ly to -- day,
  Were to change by to -- mor -- row, and fleet in my arms,
  Like _ fair -- y gifts fad -- ing a -- way,
  Thou would'st still be a -- dored as this mo -- ment thou art.
  Let thy love -- li -- ness fade as it will;
  And a -- round the dear ru -- in, each wish of my heart,
  Would en -- twine it -- self ver -- dant -- ly still.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  It is not while beau -- ty and youth are thine own,
  And thy cheeks un -- pro -- faned by a tear,
  That the ferv -- our and faith of a soul can be known,
  To which time will but make thee more dear.
  For the heart that has tru -- ly loved ne -- ver for -- gets,
  But as tru -- ly loved on to the close,
  As the sun -- flow -- er turns on her god, when he sets,
  The same look which she gave when he rose.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be" "lieve " "me, " "if " "all " "those " en dear "ing " "young " "charms " "which " "I " "gaze " "on " "so " fond "ly " to "day, "
  "\nWere " "to " "change " "by " to mor "row, " "and " "fleet " "in " "my " "arms, "
  "\nLike " "" fair "y " "gifts " fad "ing " a "way, "
  "\nThou " "would'st " "still " "be " a "dored " "as " "this " mo "ment " "thou " "art. "
  "\nLet " "thy " love li "ness " "fade " "as " "it " "will; "
  "\nAnd " a "round " "the " "dear " ru "in, " "each " "wish " "of " "my " "heart, "
  "\nWould " en "twine " it "self " ver dant "ly " "still.\n"

  \set stanza = "2."
  "\nIt " "is " "not " "while " beau "ty " "and " "youth " "are " "thine " "own, "
  "\nAnd " "thy " "cheeks " un pro "faned " "by " "a " "tear, "
  "\nThat " "the " ferv "our " "and " "faith " "of " "a " "soul " "can " "be " "known, "
  "\nTo " "which " "time " "will " "but " "make " "thee " "more " "dear. "
  "\nFor " "the " "heart " "that " "has " tru "ly " "loved " ne "ver " for "gets, "
  "\nBut " "as " tru "ly " "loved " "on " "to " "the " "close, "
  "\nAs " "the " sun flow "er " "turns " "on " "her " "god, " "when " "he " "sets, "
  "\nThe " "same " "look " "which " "she " "gave " "when " "he " "rose. "
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
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" \wordsOne
            \new Lyrics \lyricsto "aligner" \wordsTwo
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
        >>
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne
                                              \wordsTwo
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
