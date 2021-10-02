\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Every Joyful Heart!"
  subtitle    = "Sankey No. 230"
  subsubtitle = "Sankey 880 No. 423"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "L. Edson."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. Stennet."
  meter       = \markup\smallCaps "6.6.6.6.8.8."
  piece       = \markup\smallCaps "Trumpet."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s1*3 s2
  \mark \markup { \box "B" } s2 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3
  \mark \markup { \box "D" }    s1*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'2
  bes4 4 f g
  f2. 4
  bes4 c d c
  bes2 \bar "|" \break bes
  d4 f d bes % B
  c2. 4
  d4 bes c a
  bes2. \bar "|" \break f4
  bes4 4 4 f % C
  g4 4 4 bes
  c4 4 4 d \break
  bes4 4 4 f % D
  g4 4 4 bes
  c2 a
  bes2\fermata
}

alto = \relative {
  \autoBeamOff
  d'2
  d4 4 f ees
  c2. d4
  d4 f f ees
  d2 2
  f4 4 4 4 % B
  f2. 4
  f4 g g f
  f2. f4
  d4 4 4 f % C
  ees4 4 4 d
  f4 4 4 4
  d4 4 4 f % D
  ees4 4 4 f
  ees2 c4(ees)
  d2\fermata
}

tenor = \relative {
  \autoBeamOff
  f2
  f4 bes bes bes
  a2. 4
  g4 a bes a
  bes2 2
  bes4 c bes bes % B
  a2. 4
  bes4 d ees c
  d2. bes4
  f4 4 4 bes % C
  bes4 4 4 4
  a4 4 4 bes
  bes4 4 4 4 % D
  bes4 4 4 f
  g2 f
  f2\fermata
}

bass = \relative {
  \autoBeamOff
  bes,2
  bes4 4 d ees
  f2. d4
  g4 f bes f
  bes,2 2
  bes'4 a bes d, % B
  f2. 4
  bes4 g ees f
  bes,2. 4
  bes4 4 4 d
  ees4 4 4 bes
  f'4 4 4 d
  g4 4 4 d % D
  ees4 4 4 d
  c2 f
  bes,2\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, ev -- 'ry joy -- ful heart,
  That loves the Sa -- viour's name,
  Your nob -- lest powers ex -- ert
  To cel -- e -- brate His fame;
  Tell all a -- bove and all be -- low,
  Tell all a -- bove and all be -- low,
  The debt of love to Him you owe.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He left His star -- ry crown,
  and laid His robes a -- side;
  In wings of love came down,
  And wept, and bled, and died:
  What He en -- dured no tongue can tell,
  What He en -- dured no tongue can tell,
  To save our souls from death and hell.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  From the dark grave He rose—
  The man -- sion of the dead;
  And thence His migh -- ty foes
  In glo -- rious tri -- umph led:
  Up through the sky the Con -- queror rode,
  Up through the sky the Con -- queror rode,
  And reigns on high, the Sa -- viour God.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  From thence He'll quick -- ly come—
  His cha -- riot will not stay—
  Abd bear our spi -- rits home
  To realms of end -- less day:
  There shall we see His love -- ly face,
  There shall we see His love -- ly face,
  And ev -- er be in His em -- brace.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " ev "'ry " joy "ful " "heart, "
  "\nThat " "loves " "the " Sa "viour's " "name, "
  "\nYour " nob "lest " "powers " ex "ert "
  "\nTo " cel e "brate " "His " "fame; "
  "\nTell " "all " a "bove " "and " "all " be "low, "
  "\nTell " "all " a "bove " "and " "all " be "low, "
  "\nThe " "debt " "of " "love " "to " "Him " "you " "owe. "

  \set stanza = "2."
  "\nHe " "left " "His " star "ry " "crown, "
  "\nand " "laid " "His " "robes " a "side; "
  "\nIn " "wings " "of " "love " "came " "down, "
  "\nAnd " "wept, " "and " "bled, " "and " "died: "
  "\nWhat " "He " en "dured " "no " "tongue " "can " "tell, "
  "\nWhat " "He " en "dured " "no " "tongue " "can " "tell, "
  "\nTo " "save " "our " "souls " "from " "death " "and " "hell. "

  \set stanza = "3."
  "\nFrom " "the " "dark " "grave " "He " "rose— "
  "\nThe " man "sion " "of " "the " "dead; "
  "\nAnd " "thence " "His " migh "ty " "foes "
  "\nIn " glo "rious " tri "umph " "led: "
  "\nUp " "through " "the " "sky " "the " Con "queror " "rode, "
  "\nUp " "through " "the " "sky " "the " Con "queror " "rode, "
  "\nAnd " "reigns " "on " "high, " "the " Sa "viour " "God. "

  \set stanza = "4."
  "\nFrom " "thence " "He'll " quick "ly " "come— "
  "\nHis " cha "riot " "will " "not " "stay— "
  "\nAbd " "bear " "our " spi "rits " "home "
  "\nTo " "realms " "of " end "less " "day: "
  "\nThere " "shall " "we " "see " "His " love "ly " "face, "
  "\nThere " "shall " "we " "see " "His " love "ly " "face, "
  "\nAnd " ev "er " "be " "in " "His " em "brace. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
