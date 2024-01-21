\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Who will Man the Life-Boat?"
  subtitle    = "Sankey No. 782"
  subsubtitle = "C. C. No. 168"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs C. E. Breck."
  meter       = \markup\smallCaps "6.5. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }     s2.*6
  \textMark \markup { \box \bold "B" }     s2.*6
  \textMark \markup { \box \bold "C" }     s2.*6 s4.
  \textMark \markup { \box \bold "D" } s4. s2.*6
  \textMark \markup { \box \bold "E" }     s2.*7
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 8 4 8 | 4. g | a4 8 g4 fis8 | g4.~4 r8 | b4 8 4 8 | d4. b |
  g4 8 fis4 g8 | a4.~4 r8 | b4 8 4 c8 | b4. g | a4 8 g4 fis8 | g4.~4 r8 |
  e4 g8 c4 e8 | d4. b | g4 8 a4 fis8 | g4.~4 r8 |
  \section \sectionLabel \markup\smallCaps Chorus.
  d'4 8 4 e8 | d4. b | g4 8 \bar "|" \break
  a4 8 | b4.~4 r8 | c4 8 b4 a8 | b4. d | cis4 a8 b4 d8 | d4.~4 r8 | 4 8 4 e8 |
  d4. b | c4 8 d4 8 | e4.~4 r8 | d4 8 4 e8 | d4. b | g4 8 a4 fis8 | g4.~4 r8 |
}

alto = \relative {
  \autoBeamOff
  g'4 8 4 8 | 4. d | e4 8 d4 8 | 4.~4 r8 | g4 8 4 8 | 4. 4. |
  d4 8 4 8 | fis4.~4 r8 | d4 8 4 e8 | d4. d | e4 8 d4 c8 | b4.~4 r8 |
  c4 e8 4 g8 | 4. d | 4 8 fis4 d8 | 4.~4 r8 \section | g4 8 4 8 | 4. d | g4 8
  fis4 8 | g4.~4 r8 | fis4 a8 g4 fis8 | g4. g | 4 8 4 8 | fis4.~4 r8 | g4 8 4 8 |
  g4. g | 4 8 4 8 | 4.~4 r8 | 4 8 4 8 | 4. d | 4 8 fis4 d8 | 4.~4 r8 |
}

tenor = \relative {
  \autoBeamOff
  d'4 8 4 8 | 4. b | c4 8 b4 a8 | b4.~4 r8 | d4 8 4 8 | b4. d |
  b4 d8 c4 b8 | d4.~4 r8 | g,4 8 4 8 | 4. b | c4 8 b4 a8 | g4.~4 r8 |
  g4 c8 g4 c8 | b4. g | b4 8 c4 a8 | b4.~4 r8 \section | b4 8 4 c8 | b4. g | d'4 8
  b4 8 | 4.~4 r8 | 4 8 4 8 | 4. b | a4 cis8 a4 8 | 4.~4 r8 | b4 8 4 c8 |
  b4. d | c4 8 b4 8 | c4.~4 r8 | b4 8 4 c8 | b4. g | b4 8 c4 a8 | b4.~4 r8 | 
}

bass = \relative {
  \autoBeamOff
  g4 8 4 8 | 4. g | c,4 8 d4 8 | g4.~4 r8 | 4 8 4 8 | 4. 4. |
  b4 8 a4 g8 | d4.~4 r8 | g4 8 4 8 | 4. 4. | c,4 8 d4 dis8 | e4.~4 r8 |
  c4 8 4 8 | g'4. g | d4 8 4 8 | g,4.~4 r8 \section | g'4 8 4 8 | 4. g | b,4 8
  d4 8 | g4.~4 r8 | d4 8 4 8 | g4. g | e4 8 a,4 8 | d4.~4 r8 | g4 8 4 8 |
  g4. g | e4 8 g4 8 | c,4.~4 r8 | g'4 8 4 8 | 4. g | d4 8 4 8 | g,4.~4 r8 |
}

chorus = \lyricmode {
  Who will man the life -- boat?
  Who will launch a -- way?
  Who will help to res -- cue
  Dy -- ing souls to -- day?
  Who will man the life -- boat?
  Who will breast the wave,
  All its dan -- gers brav -- ing,
  Pre -- cious souls to save?
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Who will man the life -- boat?
  Who will storm the brave?
  Ma -- ny souls are drift -- ing
  Help -- less on the wave;
  See their hands up -- lift -- ed,
  Hear their bit -- ter cry:
  “Save us ere we per -- ish,
  Save us ere we die!”
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  See! a -- mid the break -- ers
  Yon -- der ves -- sel tost!
  On -- ward to the res -- cue;
  Haste, or all is lost!
  Waves that dash a -- round us
  Can -- not ov -- er -- whelm,
  While our faith -- ful Pi -- lot
  Stand -- eth at the helm.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Dark -- er yet, and dark -- er
  Grows the fear -- ful night:
  Sound the trump of mer -- cy,
  Flash the sig -- nal light!
  Bear the joy -- ful mes -- sage
  O'er the rag -- ing wave;
  Christ, the heav'n -- ly Pi -- lot,
  Comes the lost to save!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Who " "will " "man " "the " life "boat? "
  "\nWho " "will " "storm " "the " "brave? "
  "\nMa" "ny " "souls " "are " drift "ing "
  "\nHelp" "less " "on " "the " "wave; "
  "\nSee " "their " "hands " up lift "ed, "
  "\nHear " "their " bit "ter " "cry: "
  "\n“Save " "us " "ere " "we " per "ish, "
  "\nSave " "us " "ere " "we " "die!” "
  "\nWho " "will " "man " "the " life "boat? "
  "\nWho " "will " "launch " a "way? "
  "\nWho " "will " "help " "to " res "cue "
  "\nDy" "ing " "souls " to "day? "
  "\nWho " "will " "man " "the " life "boat? "
  "\nWho " "will " "breast " "the " "wave, "
  "\nAll " "its " dan "gers " brav "ing, "
  "\nPre" "cious " "souls " "to " "save?\n"

  \set stanza = "2."
  "\nSee! " a "mid " "the " break "ers "
  "\nYon" "der " ves "sel " "tost! "
  "\nOn" "ward " "to " "the " res "cue; "
  "\nHaste, " "or " "all " "is " "lost! "
  "\nWaves " "that " "dash " a "round " "us "
  "\nCan" "not " ov er "whelm, "
  "\nWhile " "our " faith "ful " Pi "lot "
  "\nStand" "eth " "at " "the " "helm. "
  "\nWho " "will " "man " "the " life "boat? "
  "\nWho " "will " "launch " a "way? "
  "\nWho " "will " "help " "to " res "cue "
  "\nDy" "ing " "souls " to "day? "
  "\nWho " "will " "man " "the " life "boat? "
  "\nWho " "will " "breast " "the " "wave, "
  "\nAll " "its " dan "gers " brav "ing, "
  "\nPre" "cious " "souls " "to " "save?\n"

  \set stanza = "3."
  "\nDark" "er " "yet, " "and " dark "er "
  "\nGrows " "the " fear "ful " "night: "
  "\nSound " "the " "trump " "of " mer "cy, "
  "\nFlash " "the " sig "nal " "light! "
  "\nBear " "the " joy "ful " mes "sage "
  "\nO'er " "the " rag "ing " "wave; "
  "\nChrist, " "the " heav'n "ly " Pi "lot, "
  "\nComes " "the " "lost " "to " "save! "
  "\nWho " "will " "man " "the " life "boat? "
  "\nWho " "will " "launch " a "way? "
  "\nWho " "will " "help " "to " res "cue "
  "\nDy" "ing " "souls " to "day? "
  "\nWho " "will " "man " "the " life "boat? "
  "\nWho " "will " "breast " "the " "wave, "
  "\nAll " "its " dan "gers " brav "ing, "
  "\nPre" "cious " "souls " "to " "save? "
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
