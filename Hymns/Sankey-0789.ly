\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Must I Go—and Empty-Handed?"
  subtitle    = "Sankey No. 789"
  subsubtitle = "Sankey 880 No. 380"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. C. Luther."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*4
  \textMark \markup { \box \bold "B" } s2.*4
  \textMark \markup { \box \bold "C" } s2.*4
  \textMark \markup { \box \bold "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4^\markup\bold Duet. 8 a[g] fis | d'4 b8 a4 fis8 | g4 8 8[fis] e | a4 g8 fis4. |
  a4 8 8[g] fis | d'4 b8 a4 fis8 | b4 8 a4 d8 | fis,4 e8 d4. |
  \section \sectionLabel \markup\smallCaps Chorus. \break
  d'4 8 8[cis] b | a4 b8 a4 fis8 | d'4 8 8[cis] b | cis4 b8 a4. |
  a4 8 8[g] fis | d'4 b8 a4 fis8 | b4 8 a4 d8 | fis,4 e8 d4. |
}

alto = \relative {
  \autoBeamOff
  fis'4 8 8[e] d | fis4 g8 fis4 d8 | e4 8 8[d] cis | fis4 e8 d4. |
  fis4 8 8[e] d | fis4 g8 fis4 d8 | g4 8 fis4 8 | d4 cis8 d4. \section |
  fis4 8 8[a] g | fis4 g8 fis4 d8 | fis4 8 4 8 | a4 gis8 a4(g8) |
  fis4 8 8[e] d | fis4 g8 fis4 d8 | 4 8 4 fis8 | d4 cis8 d4. |
}

tenor = \relative {
  \autoBeamOff
  a4. a | a8[b] cis d4(a8) | a4. a | a a |
  a4. a | 8[b] cis d4(a8) | g4. a4 gis8 | a4(g8) fis4. \section
  a4 8 4 d8 | 4 8 4 a8 | b4 8 8[ais] b | a4 d8 cis4. |
  d4 8 4 a8 | 4 d8 4 a8 | g4 b8 d4 a8 | 4 g8 fis4. |
}

bass = \relative {
  \autoBeamOff
  d8[fis] a d,4. | d d | a8[c] e a,4. | 8[b] cis d4. |
  d4. d | d d | g,4(b8) d4 b8 | a4. d \section |
  d4 8 4 8 | 4 8 4 8 | b4 8 8[cis] d | e4 8 a,4. |
  d4 8 4 8 | 4 8 4 8 | g4 8 fis4 d8 | a4 8 d4. |
}

chorus = \lyricmode {
  “Must I go— and emp -- ty- hand -- ed?”
  Must I meet my Sa -- viour so?
  Not one soul with which to greet Him?
  Must I emp -- ty- hand -- ed go?
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  “Must I go— and emp -- ty- hand -- ed?
  Thus my dear Re -- deem -- er meet?
  Not one day of ser -- vice give Him?
  Lay no tro -- phy at His feet?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Not at death I shrink or fal -- ter,
  For my Sa -- viour saves me now;
  But to meet Him emp -- ty- hand -- ed,
  Thought of that now clouds my brow.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, the years of sin -- ning wast -- ed!
  Could I but re -- call them now
  I would give them to my Sa -- viour—
  To His will I'd glad -- ly bow.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Up, ye saints, a -- rouse, be earn -- est!
  Up and work while yet 'tis day;
  Ere the night of death o'er -- take you,
  Strive for souls while yet you may.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "“Must " "I " "go—" "and " emp ty hand "ed? "
  "\nThus " "my " "dear " Re deem "er " "meet? "
  "\nNot " "one " "day " "of " ser "vice " "give " "Him? "
  "\nLay " "no " tro "phy " "at " "His " "feet? "
  "\n“Must " "I " "go—" "and " emp ty hand "ed?” "
  "\nMust " "I " "meet " "my " Sa "viour " "so? "
  "\nNot " "one " "soul " "with " "which " "to " "greet " "Him? "
  "\nMust " "I " emp ty hand "ed " "go?\n"

  \set stanza = "2."
  "\nNot " "at " "death " "I " "shrink " "or " fal "ter, "
  "\nFor " "my " Sa "viour " "saves " "me " "now; "
  "\nBut " "to " "meet " "Him " emp ty hand "ed, "
  "\nThought " "of " "that " "now " "clouds " "my " "brow. "
  "\n“Must " "I " "go—" "and " emp ty hand "ed?” "
  "\nMust " "I " "meet " "my " Sa "viour " "so? "
  "\nNot " "one " "soul " "with " "which " "to " "greet " "Him? "
  "\nMust " "I " emp ty hand "ed " "go?\n"

  \set stanza = "3."
  "\nOh, " "the " "years " "of " sin "ning " wast "ed! "
  "\nCould " "I " "but " re "call " "them " "now "
  "\nI " "would " "give " "them " "to " "my " Sa "viour— "
  "\nTo " "His " "will " "I'd " glad "ly " "bow. "
  "\n“Must " "I " "go—" "and " emp ty hand "ed?” "
  "\nMust " "I " "meet " "my " Sa "viour " "so? "
  "\nNot " "one " "soul " "with " "which " "to " "greet " "Him? "
  "\nMust " "I " emp ty hand "ed " "go?\n"

  \set stanza = "4."
  "\nUp, " "ye " "saints, " a "rouse, " "be " earn "est! "
  "\nUp " "and " "work " "while " "yet " "'tis " "day; "
  "\nEre " "the " "night " "of " "death " o'er "take " "you, "
  "\nStrive " "for " "souls " "while " "yet " "you " "may. "
  "\n“Must " "I " "go—" "and " emp ty hand "ed?” "
  "\nMust " "I " "meet " "my " Sa "viour " "so? "
  "\nNot " "one " "soul " "with " "which " "to " "greet " "Him? "
  "\nMust " "I " emp ty hand "ed " "go? "
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
