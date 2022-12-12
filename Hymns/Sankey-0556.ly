\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, Saviour, Pilot Me!"
  subtitle    = "Sankey No. 556"
  subsubtitle = "Sankey 880 No. 554"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. . Gould."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Edward Hopper, D.D."
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
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*2
  \textMark \markup { \box \bold "B" }    s2.*3
  \textMark \markup { \box \bold "C" }    s2.*3
  \textMark \markup { \box \bold "D" }    s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''8. c16 | bes4. a8 \tuplet 3/2 {c8[bes] g} | f2 ees'8. d16 |
  d4. c8 bes a | bes2 c8. 16 | 4. f,8 g f |
  bes2 c8. 16 | 4. f,8 g f | bes2 d8. c16 |
  bes4. a8 \tuplet 3/2 {c[bes] g} | f2 ees'8. d16 | 4. c8 bes a | bes2
}

alto = \relative {
  \autoBeamOff
  f'8. ees16 | d4. 8 ees8. 16 | d2 f8. 16 |
  g4. 8 f ees | d2 ees8. 16 | 4. 8 8 8 |
  d8(g f4) ees8. 16 | 4. 8 8 8 | d(ees d4) f8. ees16 |
  d4. 8 ees8. 16 | d2 f8. 16 | g4. 8 f ees | d2
}

tenor = \relative {
  \autoBeamOff
  f8. 16 | 4. fis8 g8. bes16 | 2 a8. bes16 |
  bes4. ees8 d c | bes2 aes8. 16 | 4. 8 bes a |
  bes8(ees d4) a8. 16 | 4. 8 bes8 a | bes8(g f4) 8. 16 |
  f4. fis8 g8. bes16 | 2 a8. bes16 | 4. ees8 d c | bes2
}

bass = \relative {
  \autoBeamOff
  bes,8. 16 | 4. 8 8. 16 | 2 c8. 16 |
  ees4. 8 f f | bes,2 f'8. 16 | 4. 8 8 8 |
  bes,2 f'8. 16 | 4. 8 8 8 | bes,2 8. 16 |
  bes4. 8 8. 16 | 2 c8. d16 | ees4. 8 f8 8 | bes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, Sa -- viour, pi -- lot me
  O -- ver life's tem -- pes -- tuous sea:
  Un -- known waves be -- fore me roll, __
  Hi -- ding rock and treach -- 'rous shoal: __
  Chart and com -- pass come from Thee:
  Je -- sus, Sa -- viour, pi -- lot me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  As a mo -- ther stills her child,
  Thou canst hush the o -- cean wild:
  Bois -- t'rous waves o -- bey Thy will __
  When Thou say'st to them "\"Be" "still!\"" __
  Won -- drous Sov -- 'reign of the sea,
  Je -- sus, Sa -- viour, pi -- lot me!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When at last I near the shore,
  And the fear -- ful break -- ers roar
  'Twixt me and the peace -- ful rest— __
  Then, while lean -- ing on Thy breast __
  May I hear Thee say to me
  "\"Fear" not! I will pi -- lot "thee!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " Sa "viour, " pi "lot " "me "
  "\nO" "ver " "life's " tem pes "tuous " "sea: "
  "\nUn" "known " "waves " be "fore " "me " "roll, " 
  "\nHi" "ding " "rock " "and " treach "'rous " "shoal: " 
  "\nChart " "and " com "pass " "come " "from " "Thee: "
  "\nJe" "sus, " Sa "viour, " pi "lot " "me!\n"

  \set stanza = "2."
  "\nAs " "a " mo "ther " "stills " "her " "child, "
  "\nThou " "canst " "hush " "the " o "cean " "wild: "
  "\nBois" "t'rous " "waves " o "bey " "Thy " "will " 
  "\nWhen " "Thou " "say'st " "to " "them " "\"Be " "still!\" " 
  "\nWon" "drous " Sov "'reign " "of " "the " "sea, "
  "\nJe" "sus, " Sa "viour, " pi "lot " "me!\n"

  \set stanza = "3."
  "\nWhen " "at " "last " "I " "near " "the " "shore, "
  "\nAnd " "the " fear "ful " break "ers " "roar "
  "\n'Twixt " "me " "and " "the " peace "ful " "rest— " 
  "\nThen, " "while " lean "ing " "on " "Thy " "breast " 
  "\nMay " "I " "hear " "Thee " "say " "to " "me "
  "\n\"Fear " "not! " "I " "will " pi "lot " "thee!\" "
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
            \new NullVoice = "aligner" \alto
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
