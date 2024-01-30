\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sound the Alarm!"
  subtitle    = "Sankey No. 803"
  subsubtitle = "Sankey 880 No. 419"
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
  \textMark \markup { \box \bold "A" }    s1*2 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3
  \textMark \markup { \box \bold "C" }    s1*3
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''4. c16 bes16 4 8. a16 | g4 bes f2 | 4 bes8. c16 d4 \bar "|" \break
  d8. 16 | 4 c4 2 | d4. c16 bes16 4 8. a16 | g4 bes f2 |
  f4 bes8 c d4 8. ees16 | d4 c bes2 |
  \section \sectionLabel \markup\smallCaps Refrain.
  c4. f,16 16 4 bes8 c |
  d4. bes16 16 4 c8 d |ees4 4 4 d8. 16 | c4 c c\fermata bes8. c16 |
  d4 f, bes c8. d16 | ees4 g, ees'\fermata 4 | d8 4 8 c4 bes8 a | bes2. r4 |
}

alto = \relative {
  \autoBeamOff
  f'4. ees16 d16 4 f8. 16 | ees4 4 d2 | 4 f8. 16 4
  f8. 16 | e4 4 f2 | 4. ees16 d16 4 f8. 16 | ees4 4 d2 |
  d4 f8 8 4 8. ees16 | f4 ees d2 \section | ees4. 16 16 4 f8 f |
  f4. 16 16 4 ees8 f | g4 g g f8. 16 | f4 e f\fermata d8. ees16 |
  f4 d f4 8. 16 | g4 ees g\fermata g | f8 4 8 4 8 8 | f2. r4 |
}

tenor = \relative {
  \autoBeamOff
  bes4. f16 f bes4 8. 16 | 4 4 2 | 4 8. a16 bes4 
  bes8. 16 | 4 4 a2 | bes4. f16 16 4 bes8. 16 | 4 4 2 |
  bes4 8 8 4 8. 16 | 4 a bes2 \section | a4. 16 16 4 d8 a |
  bes4. d16 16 4 bes8 8 | 4 4 4 8. 16 | a4 bes a\fermata bes8. 16 |
  bes4 4 4 a8. bes16 | 4 4 4\fermata 4 | 8 4 8 ees4 d8 c | d2. r4 |
}

bass = \relative {
  \autoBeamOff
  bes,4. 16 16 4 d8. 16 | ees4 g bes2 | bes,4 d8. f16 bes4
  bes8. 16 | g4 c, f2 | bes,4. 16 16 4 d8. 16 | ees4 g bes2 |
  bes,4 d8 ees d4 8. g16 | f4 4 bes,2 \section | f'4. 16 16 4 8 8 |
  bes,4. bes'16 16 4 8 8 | ees,4 4 4 bes8. 16 | c4 4 f\fermata bes,8. 16 |
  bes4 4 d c8. bes16 | ees4 4 4\fermata 4 | f8 4 8 4 8 8 | bes,2. r4 |

}

chorus = \lyricmode {
  Sound the a -- larm, watch -- man!
  Sound the a -- larm!
  For the Lord will come with a conq -- 'ring arm;
  And the  hosts of sin, as their ranks ad -- vance,
  Shall wi -- ther and fall at His glance.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Sound the a -- larm!
  Let the watch -- man cry!—
  “Up! for the day of the Lord is nigh;
  Who will es -- cape from the wrath to come?
  Who have a place in the soul's bright home!”
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sound the a -- larm!
  Let the cry go forth,
  Swift as the wind, o'er the realms of earth:
  “Flee to the Rock where the soul may hide!
  Flee to the Rock! in its cleft a -- bide!”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sound the a -- larm on the moun -- tain's brow!
  Plead with the lost by the way -- side now;
  Warn them to come and the truth em -- brace;
  Urge them to come and be saved by grace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Sound the a -- larm in the youth -- ful ear;
  Sound it a -- loud that the old may hear;
  Blow ye the trump while the day- beams last!
  Blow ye the trump till the light is past!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sound " "the " a "larm! "
  "\nLet " "the " watch "man " "cry!— "
  "\n“Up! " "for " "the " "day " "of " "the " "Lord " "is " "nigh; "
  "\nWho " "will " es "cape " "from " "the " "wrath " "to " "come? "
  "\nWho " "have " "a " "place " "in " "the " "soul's " "bright " "home!” "
  "\nSound " "the " a "larm, " watch "man! "
  "\nSound " "the " a "larm! "
  "\nFor " "the " "Lord " "will " "come " "with " "a " conq "'ring " "arm; "
  "\nAnd " "the "  "hosts " "of " "sin, " "as " "their " "ranks " ad "vance, "
  "\nShall " wi "ther " "and " "fall " "at " "His " "glance.\n"

  \set stanza = "2."
  "\nSound " "the " a "larm! "
  "\nLet " "the " "cry " "go " "forth, "
  "\nSwift " "as " "the " "wind, " "o'er " "the " "realms " "of " "earth: "
  "\n“Flee " "to " "the " "Rock " "where " "the " "soul " "may " "hide! "
  "\nFlee " "to " "the " "Rock! " "in " "its " "cleft " a "bide!” "
  "\nSound " "the " a "larm, " watch "man! "
  "\nSound " "the " a "larm! "
  "\nFor " "the " "Lord " "will " "come " "with " "a " conq "'ring " "arm; "
  "\nAnd " "the "  "hosts " "of " "sin, " "as " "their " "ranks " ad "vance, "
  "\nShall " wi "ther " "and " "fall " "at " "His " "glance.\n"

  \set stanza = "3."
  "\nSound " "the " a "larm " "on " "the " moun "tain's " "brow! "
  "\nPlead " "with " "the " "lost " "by " "the " way "side " "now; "
  "\nWarn " "them " "to " "come " "and " "the " "truth " em "brace; "
  "\nUrge " "them " "to " "come " "and " "be " "saved " "by " "grace. "
  "\nSound " "the " a "larm, " watch "man! "
  "\nSound " "the " a "larm! "
  "\nFor " "the " "Lord " "will " "come " "with " "a " conq "'ring " "arm; "
  "\nAnd " "the "  "hosts " "of " "sin, " "as " "their " "ranks " ad "vance, "
  "\nShall " wi "ther " "and " "fall " "at " "His " "glance.\n"

  \set stanza = "4."
  "\nSound " "the " a "larm " "in " "the " youth "ful " "ear; "
  "\nSound " "it " a "loud " "that " "the " "old " "may " "hear; "
  "\nBlow " "ye " "the " "trump " "while " "the " day "beams " "last! "
  "\nBlow " "ye " "the " "trump " "till " "the " "light " "is " "past! "
  "\nSound " "the " a "larm, " watch "man! "
  "\nSound " "the " a "larm! "
  "\nFor " "the " "Lord " "will " "come " "with " "a " conq "'ring " "arm; "
  "\nAnd " "the "  "hosts " "of " "sin, " "as " "their " "ranks " ad "vance, "
  "\nShall " wi "ther " "and " "fall " "at " "His " "glance. "
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

#(set-global-staff-size 19)

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
