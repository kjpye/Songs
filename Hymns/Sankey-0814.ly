\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Rescue the Perishing."
  subtitle    = "Sankey No. 814"
  subsubtitle = "Sankey 880 No. 37"
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
  \unfoldRepeats
  \repeat volta 2 {
    \textMark \markup { \box \bold "A" } s1*3
    \alternative {
      \volta 1 { \textMark \markup { \box \bold "B" } s1 }
      \volta 2 { s1 }
    }
  }
  s1
  \textMark \markup { \box \bold "C" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \unfoldRepeats
  \repeat volta 2 {
    f'4 d8 ees f f f4 | bes4 a8 g8 4 f | f g8 a bes4 c8 d |
    \alternative {
      \volta 1 { c4 bes8 g f4 r }
      \volta 2 { c'4 bes8 a bes2 }
    }
  }
  \section \sectionLabel \markup\smallCaps Chorus.
  c4 bes8 c d8. c16 bes4 |
  c4 bes8 c d4 bes | 4 a8 g f bes d4 | c bes8 a bes2 |
}

alto = \relative {
  \autoBeamOff
  \unfoldRepeats
  \repeat volta 2 {
    d'4 | bes8 c d8 8 4 | d f8 ees8 4 d | c ees8 8 f4 8 8 |
    \alternative {
      \volta 1 { f4 e8 8 f4 r |}
      \volta 2 { g4 f8 8 2 | \section }
    }
  }
  f4 8 8 8. ees16 d4 |
  f4 8 8 4 4 | g f8 ees d f8 4 | g f8 8 2 |
}

tenor = \relative {
  \autoBeamOff
  \unfoldRepeats
  \repeat volta 2 {
    bes4 f8 8 bes8 8 4 | 4 8 8 4 4 | a4 bes8 c d4 a8 bes |
    \alternative {
      \volta 1 { a4 g8 bes a4 r |}
      \volta 2 { bes4 d8 c d2 \section |}
    }
  }
  a4 g8 a bes8. 16 4 |
  a4 g8 a bes4 d | ees bes8 8 8 d bes4 | 4 d8 ees d2 |
}

bass = \relative {
  \autoBeamOff
  \unfoldRepeats
  \repeat volta 2 {
    bes,4 8 8 8 8 4 | 4 ees8 8 bes4 4 | f'4 8 8 4 8 bes, |
    \alternative {
      \volta 1 { c4 8 8 f4 r |}
      \volta 2 { ees4 f8 8 bes,2 \section |}
    }
  }
  f'4 8 8 bes,8. 16 4 |
  f'4 8 8 bes,4 4 | ees4 8 8 bes8 8 4 | ees4 8 8 bes2 |
}

chorus = \lyricmode {
  Res -- cue the per -- ish -- ing.
  Care for the dy -- ing;
  Je -- sus is mer -- ci -- ful,
  Je -- sus will save.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Res -- cue the per -- ish -- ing,
  Care for the dy -- ing,
  Snatch them in pi -- ty from sin and the grave;
  Weep o'er the cry -- ing one,
  Lift up the fall -- en,
  Tell them of Je -- sus, the Migh -- ty to save.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Though they are slight -- in Him,
  Still He is wait -- ing,
  Wait -- ing fthe pen -- i -- tent child to re -- ceive;
  Plead with them earn -- est -- ly,
  Plead with them gent -- ly;
  He will for -- give if they on -- ly be -- lieve.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Down in the hu -- man heart,
  Crushed by the temp -- ter.
  Feel -- ings lie bur -- ied that grace can re -- store;
  Touched by a lov -- ing hand,
  Wak -- ened by kind -- ness,
  Chords that were bro -- ken will vi -- brate once more.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Res -- cue the per -- ish -- ing,
  Du -- ty de -- mands it;
  Strength for thy la -- bour the Lord will pro -- vide;
  Back to the nar -- row way
  Pa -- tient -- ly win them;
  Tell the poor wan -- d'rer a Sa -- viour has died.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Res" "cue " "the " per ish "ing, "
  "\nCare " "for " "the " dy "ing, "
  "\nSnatch " "them " "in " pi "ty " "from " "sin " "and " "the " "grave; "
  "\nWeep " "o'er " "the " cry "ing " "one, "
  "\nLift " "up " "the " fall "en, "
  "\nTell " "them " "of " Je "sus, " "the " Migh "ty " "to " "save. "
  "\nRes" "cue " "the " per ish "ing. "
  "\nCare " "for " "the " dy "ing; "
  "\nJe" "sus " "is " mer ci "ful, "
  "\nJe" "sus " "will " "save.\n"

  \set stanza = "2."
  "\nThough " "they " "are " slight "in " "Him, "
  "\nStill " "He " "is " wait "ing, "
  "\nWait" "ing " "fthe " pen i "tent " "child " "to " re "ceive; "
  "\nPlead " "with " "them " earn est "ly, "
  "\nPlead " "with " "them " gent "ly; "
  "\nHe " "will " for "give " "if " "they " on "ly " be "lieve. "
  "\nRes" "cue " "the " per ish "ing. "
  "\nCare " "for " "the " dy "ing; "
  "\nJe" "sus " "is " mer ci "ful, "
  "\nJe" "sus " "will " "save.\n"

  \set stanza = "3."
  "\nDown " "in " "the " hu "man " "heart, "
  "\nCrushed " "by " "the " temp "ter. "
  "\nFeel" "ings " "lie " bur "ied " "that " "grace " "can " re "store; "
  "\nTouched " "by " "a " lov "ing " "hand, "
  "\nWak" "ened " "by " kind "ness, "
  "\nChords " "that " "were " bro "ken " "will " vi "brate " "once " "more. "
  "\nRes" "cue " "the " per ish "ing. "
  "\nCare " "for " "the " dy "ing; "
  "\nJe" "sus " "is " mer ci "ful, "
  "\nJe" "sus " "will " "save.\n"

  \set stanza = "4."
  "\nRes" "cue " "the " per ish "ing, "
  "\nDu" "ty " de "mands " "it; "
  "\nStrength " "for " "thy " la "bour " "the " "Lord " "will " pro "vide; "
  "\nBack " "to " "the " nar "row " "way "
  "\nPa" tient "ly " "win " "them; "
  "\nTell " "the " "poor " wan "d'rer " "a " Sa "viour " "has " "died. "
  "\nRes" "cue " "the " per ish "ing. "
  "\nCare " "for " "the " dy "ing; "
  "\nJe" "sus " "is " mer ci "ful, "
  "\nJe" "sus " "will " "save. "
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
