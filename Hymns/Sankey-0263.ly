\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Cling to the Bible!"
  subtitle    = "Sankey No. 263"
  subsubtitle = "Sankey 880 No. 465"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. R. Murray."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "M. J. Smith."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*3
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4 8. 16 4 a8. g16
  f4 g8. d16 f4 ees
  c'4 8. 16 4 bes8. a16
  bes4 c8. 16 d2 % B
  bes4 8. 16 4 a8. g16
  f4 g8. d16 f4 ees
  c'4 8. 16 4 d8. bes16 % C
  a4 g8. 16 f2 \bar "||"
  bes4^\markup\smallCaps Chorus. 8. c16 d4 bes
  c4 8. d16 ees4 c % D
  d4 8. ees16 f4 8. ees16
  d4 c8. 16 bes2
}

alto = \relative {
  \autoBeamOff
  d'4 8. 16 4 f8. ees16
  d4 8. 16 4 c
  ees4 8. 16 4 d8. c16
  f4 8. 16 2 % B
  d4 8. 16 4 f8. ees16
  d4 8. 16 4 c
  f4 8. 16 4 8. 16 % C
  f4 e8. 16 f2
  d4 8. ees16 f4 d
  f4 8. 16 4 4 % D
  f4 8. 16 4 g8. 16
  d4 ees8. 16 d2
}

tenor = \relative {
  \autoBeamOff
  f4 8. 16 4 g8. a16
  bes4 b8. 16 c4 g
  a4 8. 16 4 bes8. c16
  bes4 a8. 16 bes2 % B
  f4 8. 16 4 g8. a16
  bes4 b8. 16 c4 g
  a4 8. 16 4 bes8. d16 % C
  c4 bes8. 16 a2
  f4 8. 16 bes4 f
  a4 8. bes16 c4 a % D
  bes4 8. c16 d4 bes8. 16
  bes4 a8. 16 bes2
}

bass = \relative {
  \autoBeamOff
  bes,4 8. 16 4 8. 16
  bes4 g8. 16 c4 4
  f4 8. 16 4 8. ees16
  d4 f8. 16 bes2 % B
  bes,4 8. 16 4 8. 16
  bes4 g8. 16 c4 4
  f4 8. 16 4 bes,8. 16 % C
  c4 8. 16 f2
  bes,4 8. 16 4 4
  f'4 8. 16 4 4 % D
  bes4 8. 16 4 ees,8. 16
  f4 8. 16 bes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Cling to the Bi -- ble!
  Cling to the Bi -- ble!
  Cling to the Bi -- ble—
  Our Lamp and our Guide!
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Cling to the Bi -- ble, though all else be ta -- ken;
  Lose not its pre -- cepts so pre -- cious and pure;
  Souls that are sleep -- ing its tid -- ings a -- wa -- ken
  Life from the dead in its pro -- mis -- es sure.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Cling to the Bi -- ble! this jew -- el and trea -- sure
  Brings life e -- ter -- nal, and saves fall -- en man;
  Sure -- ly its val -- ue no mor -- tal can mea -- sure:
  Seek for its bless -- ing, O soul while you can!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Lamp for the feet that in by -- ways have wan -- dered,
  Guide for the youth that would o -- ther -- wise fall;
  Hope for the sin -- ner whose life has been squan -- dered,
  Staff for teh a -- gedm abd best Book of all!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Cling " "to " "the " Bi "ble, " "though " "all " "else " "be " ta "ken; "
  "\nLose " "not " "its " pre "cepts " "so " pre "cious " "and " "pure; "
  "\nSouls " "that " "are " sleep "ing " "its " tid "ings " a wa "ken "
  "\nLife " "from " "the " "dead " "in " "its " pro mis "es " "sure. "
  "\nCling " "to " "the " Bi "ble! "
  "\nCling " "to " "the " Bi "ble! "
  "\nCling " "to " "the " Bi "ble— "
  "\nOur " "Lamp " "and " "our " "Guide! "

  \set stanza = "2."
  "\nCling " "to " "the " Bi "ble! " "this " jew "el " "and " trea "sure "
  "\nBrings " "life " e ter "nal, " "and " "saves " fall "en " "man; "
  "\nSure" "ly " "its " val "ue " "no " mor "tal " "can " mea "sure: "
  "\nSeek " "for " "its " bless "ing, " "O " "soul " "while " "you " "can! "
  "\nCling " "to " "the " Bi "ble! "
  "\nCling " "to " "the " Bi "ble! "
  "\nCling " "to " "the " Bi "ble— "
  "\nOur " "Lamp " "and " "our " "Guide! "

  \set stanza = "3."
  "\nLamp " "for " "the " "feet " "that " "in " by "ways " "have " wan "dered, "
  "\nGuide " "for " "the " "youth " "that " "would " o ther "wise " "fall; "
  "\nHope " "for " "the " sin "ner " "whose " "life " "has " "been " squan "dered, "
  "\nStaff " "for " "teh " a "gedm " "abd " "best " "Book " "of " "all! "
  "\nCling " "to " "the " Bi "ble! "
  "\nCling " "to " "the " Bi "ble! "
  "\nCling " "to " "the " Bi "ble— "
  "\nOur " "Lamp " "and " "our " "Guide! "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
