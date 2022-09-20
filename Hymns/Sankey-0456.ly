\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Return, O Wanderer!"
  subtitle    = "Sankey No. 456"
  subsubtitle = "Sankey 880 No. 602"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. T. Hastings."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. B. Collyer."
  meter       = \markup\smallCaps "C. M."
  piece       = \markup\smallCaps "Welcome."

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
  \mark \markup { \box "A" } s4 s2.*8
  \mark \markup { \box "B" }    s2.*7 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  f'4 | d'2 c4 | bes2 f4 | g4(bes) g | f2 4 | g4(a) bes | c4(ees) d | c2 f,4 | d'2 c4 | % A
  bes2 f4 | f'2 ees4 | d2 f,4 | f(g) a | bes(d) c | bes2\fermata f4 | bes2\fermata d4 | bes2\fermata % B
  
}

alto = \relative {
  \autoBeamOff \partial 4
  d'4 | f2 ees4 | d2 4 | ees2 4 | d2 4 | ees2 d4 | f2 4 | f2 4 | f2 ees4 |
  d2 4 | f2 4 | f2 d4 | c2 f4 | f2 ees4 | d2\fermata 4 | f2\fermata 4 | d2\fermata
}

tenor = \relative {
  \autoBeamOff \partial 4
  f4 | f2 4 | f2 bes4 | 4(g) bes | 2 4 | 4(c) f, | f(c') bes | a2 4 | bes4(f) f |
  f2 bes4 | d2 a4 | bes2 4 | a4(bes) c | bes2 a4 | bes2\fermata 4 | d2\fermata bes4 | f2\fermata
}

bass = \relative {
  \autoBeamOff \partial 4
  bes,4 | 2 4 | 2 4 | ees2 4 | bes2 4 | ees4(c) bes | a2 bes4 | f'2 4 | bes,2 4 |
  bes2 4 | 4(d) f | a2 bes,4 | ees2 4 | d4(f) f | bes,2\fermata bes'4 | 2\fermata bes,4 | 2\fermata
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
  Re -- turn, O wan -- d'rer, now re -- turn,
  And seek thy Fa -- ther's face!
  Those new de -- sires which in thee burn
  Were kin -- dled by His grace.
  Re -- turn! Re -- turn!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Re -- turn, O wan -- d'rer, now re -- turn!
  He hears thy hum -- ble sigh;
  He sees thy sof -- tened spi -- rit mourn
  When no one else is nigh.
  Re -- turn! Re -- turn!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Re -- turn, O wan -- d'rer, now re -- turn!
  Thy Sa -- viour bids thee live;
  Go to His bleed -- ing feet, and learn
  How free -- ly He'll for -- give.
  Re -- turn! Re -- turn!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Re -- turn, O wan -- d'rer, now re -- turn,
  And wipe the fall -- ing etar!
  Thy Fa -- ther calls— no lon -- ger mourn:
  His love in -- vites thee near.
  Re -- turn! Re -- turn!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Re" "turn, " "O " wan "d'rer, " "now " re "turn, "
  "\nAnd " "seek " "thy " Fa "ther's " "face! "
  "\nThose " "new " de "sires " "which " "in " "thee " "burn "
  "\nWere " kin "dled " "by " "His " "grace. "
  "\nRe" "turn! " Re "turn!\n"

  \set stanza = "2."
  "\nRe" "turn, " "O " wan "d'rer, " "now " re "turn! "
  "\nHe " "hears " "thy " hum "ble " "sigh; "
  "\nHe " "sees " "thy " sof "tened " spi "rit " "mourn "
  "\nWhen " "no " "one " "else " "is " "nigh. "
  "\nRe" "turn! " Re "turn!\n"

  \set stanza = "3."
  "\nRe" "turn, " "O " wan "d'rer, " "now " re "turn! "
  "\nThy " Sa "viour " "bids " "thee " "live; "
  "\nGo " "to " "His " bleed "ing " "feet, " "and " "learn "
  "\nHow " free "ly " "He'll " for "give. "
  "\nRe" "turn! " Re "turn!\n"

  \set stanza = "4."
  "\nRe" "turn, " "O " wan "d'rer, " "now " re "turn, "
  "\nAnd " "wipe " "the " fall "ing " "etar! "
  "\nThy " Fa "ther " "calls— " "no " lon "ger " "mourn: "
  "\nHis " "love " in "vites " "thee " "near. "
  "\nRe" "turn! " Re "turn! "
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
