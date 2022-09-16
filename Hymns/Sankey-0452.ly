\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Almost Persuaded."
  subtitle    = "Sankey No. 452"
  subsubtitle = "Sankey 880 No. 52"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
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

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4. c4 8
  b4. g
  g4. a4 8
  b4.~4.
  b4. c4 8 % B
  b4. g
  a4. b4 a8
  g4.~4.
  c4. 4 8 % C
  c4 b8 4.
  d4. a4 c8
  c4 b8 4.
  g4. 4 8 % D
  g4 a8 b4.
  b4. b4\fermata a8
  g4.~4.
}

alto = \relative {
  \autoBeamOff
  d'4. e4 8 | d4. b | e4. fis4 8 | g4.~4.
  d4. e4 8 | d4. b | d4. 4 c8 | b4.~4.
  e4. 4 8 | e4 d8 4. | fis4. 4 a8 | a4 g8 4.
  b,4. c4 d8 | e4 8 d4. | e4(g8) fis4\fermata 8 | g4.~4.
}

tenor = \relative {
  \autoBeamOff
  g4. 4 8 | g4. 4. | b4. d4 8 | d4.~4.
  g,4. 4 8 | g4. 4. | fis4. g4 fis8 | g4.~4.
  g4. 4 8 | g4 8 4. | a4. d4 8 | d4 8 4.
  g,4. 4 8 | g4 8 4. | g4(b8) d4\fermata c8
  b4.~4.
}

bass = \relative {
  \autoBeamOff
  g4. 4 8 | g4. 4. | e4. d4 8 | g4.~4.
  g4. 4 8 | g4. 4. | d4. 4 8 | g,4.~4.
  c4. 4 e8 | g4 8 4. | d4. 4 fis8 | g4 8 4.
  g,4. a4 b8 | c4 8 g4. | d'4. 4\fermata 8 | g,4.~4.
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
  "\"Al" -- most per -- sua -- "ded\"" now to be -- lieve:
  "\"Al" -- most per -- sua -- "ded\"" Christ to re -- ceive;
  Seems now some soul to say,
  "\"Go," Spi -- rit, go Thy way,
  Some more con -- ven -- ient day
  On __ Thee I'll "call.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Al" -- most per -- sua -- "ded\"" come, come to -- day;
  "\"Al" -- most per -- sua -- "ded,\"" turn not a -- way;
  Je -- sus in -- vites you here, An -- gels are lin -- g;ring near,
  Prayers rise from hearts so dear: O __ wan -- d'rer, come!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Al" -- most per -- sua -- "ded,\"" har -- vest is past!
  "\"Al" -- most per -- sua -- "ded,\""  doom comes at last!
  "\"Al" -- "most\"" can -- not a -- vail; "\"Al" -- "most\"" is but to fail!
  Sad, sad, that bit -- ter wail— "\"Al" -- most— \markup\italic but \markup\italic "lost!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Al" "most " per sua "ded\" " "now " "to " be "lieve: "
  "\n\"Al" "most " per sua "ded\" " "Christ " "to " re "ceive; "
  "\nSeems " "now " "some " "soul " "to " "say, "
  "\n\"Go, " Spi "rit, " "go " "Thy " "way, "
  "\nSome " "more " con ven "ient " "day "
  "\nOn "  "Thee " "I'll " "call.\"\n"

  \set stanza = "2."
  "\n\"Al" "most " per sua "ded\" " "come, " "come " to "day; "
  "\n\"Al" "most " per sua "ded,\" " "turn " "not " a "way; "
  "\nJe" "sus " in "vites " "you " "here, " An "gels " "are " lin "g;ring " "near, "
  "\nPrayers " "rise " "from " "hearts " "so " "dear: " "O "  wan "d'rer, " "come!\n"

  \set stanza = "3."
  "\n\"Al" "most " per sua "ded,\" " har "vest " "is " "past! "
  "\n\"Al" "most " per sua "ded,\" "  "doom " "comes " "at " "last! "
  "\n\"Al" "most\" " can "not " a "vail; " "\"Al" "most\" " "is " "but " "to " "fail! "
  "\nSad, " "sad, " "that " bit "ter " "wail— " "\"Al" "most— " "but " "lost!\" "
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
