\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Are You Coming Home To-Night?"
  subtitle    = "Sankey No. 370"
  subsubtitle = "Sankey 880 No. 397"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "A. N."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1 s2. s8
  \mark \markup { \box "B" } s8 s1 s2.
  \mark \markup { \box "C" } s4 s1 s2.
  \mark \markup { \box "D" } s4 s1 s2.
  \mark \markup { \box "E" } s4 s1 s4 s8.
  \mark \markup { \box "F" } s16 s2 s1
  \mark \markup { \box "G" } s1 s2.
  \mark \markup { \box "H" } s4 s1 s4
  \mark \markup { \box "I" } s2. s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8 8
  aes16 8. 8. bes16 c4 bes8 aes
  g8 f f8. e16 f4. \bar "|" \break 8
  g8 8 aes aes des4 c8 bes % B
  aes8 g aes c bes4\fermata \bar "|" \break ees,8 8
  aes8. 16 8 bes c4 bes8 aes % C
  \tag #'rep     {g8 f f8. e16 f4 \bar "|" \break \slurDashed 8(8) \slurSolid}
  \tag #'(v1 v2) {g8 f f8. e16 f4 \bar "|" \break             8 8            }
  \tag #'v3      {g8 f f8. e16 f4 \bar "|" \break             4              }
  ees8 aes c ees ees des aes bes % D
  c16 8.^\markup\italic rit. 8. bes16 aes4\fermata \bar "||" \break f8 aes
  des16 8. 8. 16 4 f,8 des' % E
  c16 8. 8. \bar "|" \break 16 4 ees,8 c'
  bes16 8. 8. 16 8 aes8 8 bes % F
  c8 aes8 8. f16 ees4 f8 aes % G
  d16 8. 8. 16 4 \bar "|" \break f,8 des'
  c16 8. 8. 16 4 aes8 bes % H
  c8 ees \bar "|" \break ees8 8 8 des16\fermata r aes8 bes % I
  c16 8. 8.\fermata bes16 aes4\fermata
}

alto = \relative {
  \autoBeamOff
  c'8 8
  c16 8. 8. des16 ees4 des8 c
  des8 8 8. 16 4. f8
  e8 8 f f f4 ees8 d % B
  c8 ees8 8 8 4\fermata des8 8
  c8. 16 8 des ees4 des8 c % C
  \tag #'rep     {des8 8 8. 16 4 \slurDashed 8(8) \slurSolid}
  \tag #'(v1 v2) {des8 8 8. 16 4             8 8            }
  \tag #'v3      {des8 8 8. 16 4             4              }
  c8 ees ges8 8 f f f f % D
  ees16 8. 8. des16 c4\fermata \once\partCombineApart r4
  f16 8. 8. 16 4 \once\partCombineApart r4 % E
  ees16 8. 8. 16 4 c8 ees
  des16 8. 8. 16 8 c c des % F
  ees8 c8 8. des16 c4 \once\partCombineApart r4 % G
  f16 8. 8. 16 4 \once\partCombineApart r4
  ees16 8. 8. 16 4 8 8 % H
  ees8 8 ges8 8 f8 16\fermata r16 8 8
  ees16 8. 8.\fermata des16 c4\fermata
}

tenor = \relative {
  \autoBeamOff
  aes8 8
  ees16 8. 8. 16 aes4 8 8
  aes8 8 8. 16 4. 8
  c8 8 8 8 aes4 8 g % B
  aes8 ees ees aes g4\fermata 8 8
  aes8. ees16 8 8 aes4 8 8 % C
  \tag #'rep     {aes8 8 8. 16 4 \slurDashed 8(8) \slurSolid}
  \tag #'(v1 v2) {aes8 8 8. 16 4             8 8            }
  \tag #'v3      {aes8 8 8. 16 4             4              }
  aes8 c ees c aes aes aes aes % D
  aes16 8. 8. ees16 4\fermata r4
  aes16 8. 8. 16 4 r % E
  aes16 8. 8. 16 4 ees8 aes
  g16 8. 8. 16 8 aes8 8 g % F
  aes8 ees8 8. aes16 4 r % G
  aes16 8. 8. 16 4 r
  aes16 8. 8. 16 4 8 g % H
  aes8 c8 8 8 aes8 16\fermata r16 8 8
  aes16 8. 8. ees16 4\fermata
}

bass = \relative {
  \autoBeamOff
  aes,8 8
  aes16 8. 8. 16 4 8 8
  des8 8 8. 16 4. 8
  c8 8 f f des4 ees8 8 % B
  aes,8 bes c aes ees'4\fermata 8 8
  aes,8. 16 8 8 4 8 8 % C
  \tag #'rep     {des8 8 8. 16 4 \slurDashed 8(8) \slurSolid}
  \tag #'(v1 v2) {des8 8 8. 16 4             8 8            }
  \tag #'v3      {des8 8 8. 16 4             4              }
  aes8 8 aes'8 8 des,8 8 8 8 % D
  ees16 8. 8. aes,16 4\fermata r4
  des16 8. 8. 16 4 r % E
  aes16 8. 8. 16 4 8 8
  ees'16 8. 8. 16 8 8 8 8 % F
  aes,8 8 8. 16 4 r % G
  des16 8. 8. 16 4 r
  aes16 8. 8. 16 4 c8 ees % H
  aes8 8 8 8 des,8 16\fermata r des8 8
  ees16 8. 8.\fermata 16 aes,4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to Je -- ses,
  Out of dark -- ness in to light?
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to -- night?
  To your lov -- ing heaven -- ly Fa -- ther
  Are you com -- ing Home to -- night?
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Are you com -- ing Home, ye wan -- d'rers
  Whom Je -- sus died to win,
  All foot -- sure, lame, and wea -- ry,
  Your gar -- ments stain'd with sin?
  Will you seek the blood of Je -- sus
  To wash your gar -- ments white?
  \nom Will you \yesm trust His pre -- cious pro -- mise?
  Are you com -- ing Home to -- night?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Are ye com -- ing Home, ye lost ones?
  Be -- hold, your Lord doth wait;
  Come then! no lon -- ger lin -- ger;
  Come ere it be too late!
  Will you come, and let Him save you?
  Oh, trust His love and might!
  \nom Will you \yesm come while He is call -- ing?
  Are you com -- ing Home to --  night?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Are you com -- ing Home, ye guil -- ty,
  Be -- hold, your Lord doth wait;
  Out -- side you've long been stand -- ing,
  Count now and ven -- ture in!
  Will you heed the Sa -- viour's pro -- mise,
  And dare to trust Him quite?—
  "\"Come" un -- to "Me!\"" saith Je -- sus:
  Are you com -- ing Home to --  night?
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Are you com -- ing Home, ye wan -- d'rers
  Whom Je -- sus died to win,
  All foot -- sure, lame, and wea -- ry,
  Your gar -- ments stain'd with sin?
  Will you seek the blood of Je -- sus
  To wash your gar -- ments white?
  Will you trust His pre -- cious pro -- mise?
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to Je -- ses,
  Out of dark -- ness in to light?
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to -- night?
  To your lov -- ing heaven -- ly Fa -- ther
  Are you com -- ing Home to -- night?

  \set stanza = "2."
  Are ye com -- ing Home, ye lost ones?
  Be -- hold, your Lord doth wait;
  Come then! no lon -- ger lin -- ger;
  Come ere it be too late!
  Will you come, and let Him save you?
  Oh, trust His love and might!
  Will you come while He is call -- ing?
  Are you com -- ing Home to --  night?
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to Je -- ses,
  Out of dark -- ness in to light?
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to -- night?
  To your lov -- ing heaven -- ly Fa -- ther
  Are you com -- ing Home to -- night?

  \set stanza = "3."
  Are you com -- ing Home, ye guil -- ty,
  Be -- hold, your Lord doth wait;
  Out -- side you've long been stand -- ing,
  Count now and ven -- ture in!
  Will you heed the Sa -- viour's pro -- mise,
  And dare to trust Him quite?—
  "\"Come" un -- to "Me!\"" saith Je -- sus:
  Are you com -- ing Home to --  night?
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to Je -- ses,
  Out of dark -- ness in to light?
  Are you com -- ing Home to -- night?
  Are you com -- ing Home to -- night?
  To your lov -- ing heaven -- ly Fa -- ther
  Are you com -- ing Home to -- night?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Are " "you " com "ing " "Home, " "ye " wan "d'rers "
  "\nWhom " Je "sus " "died " "to " "win, "
  "\nAll " foot "sure, " "lame, " "and " wea "ry, "
  "\nYour " gar "ments " "stain'd " "with " "sin? "
  "\nWill " "you " "seek " "the " "blood " "of " Je "sus "
  "\nTo " "wash " "your " gar "ments " "white? "
  "\nWill " "you " "trust " "His " pre "cious " pro "mise? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nAre " "you " com "ing " "Home " "to " Je "ses, "
  "\nOut " "of " dark "ness " "in " "to " "light? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nTo " "your " lov "ing " heaven "ly " Fa "ther "
  "\nAre " "you " com "ing " "Home " to "night? "

  \set stanza = "2."
  "\nAre " "ye " com "ing " "Home, " "ye " "lost " "ones? "
  "\nBe" "hold, " "your " "Lord " "doth " "wait; "
  "\nCome " "then! " "no " lon "ger " lin "ger; "
  "\nCome " "ere " "it " "be " "too " "late! "
  "\nWill " "you " "come, " "and " "let " "Him " "save " "you? "
  "\nOh, " "trust " "His " "love " "and " "might! "
  "\nWill " "you " "come " "while " "He " "is " call "ing? "
  "\nAre " "you " com "ing " "Home " to  "night? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nAre " "you " com "ing " "Home " "to " Je "ses, "
  "\nOut " "of " dark "ness " "in " "to " "light? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nTo " "your " lov "ing " heaven "ly " Fa "ther "
  "\nAre " "you " com "ing " "Home " to "night? "

  \set stanza = "3."
  "\nAre " "you " com "ing " "Home, " "ye " guil "ty, "
  "\nBe" "hold, " "your " "Lord " "doth " "wait; "
  "\nOut" "side " "you've " "long " "been " stand "ing, "
  "\nCount " "now " "and " ven "ture " "in! "
  "\nWill " "you " "heed " "the " Sa "viour's " pro "mise, "
  "\nAnd " "dare " "to " "trust " "Him " "quite?— "
  "\n\"Come " un "to " "Me!\" " "saith " Je "sus: "
  "\nAre " "you " com "ing " "Home " to  "night? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nAre " "you " com "ing " "Home " "to " Je "ses, "
  "\nOut " "of " dark "ness " "in " "to " "light? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nAre " "you " com "ing " "Home " to "night? "
  "\nTo " "your " lov "ing " heaven "ly " Fa "ther "
  "\nAre " "you " com "ing " "Home " to "night? "
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
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \bar "|."
                       }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \bar "|."
                       }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                       }
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
            \new NullVoice = "aligner" \keepWithTag #'rep \soprano
            \new Voice = "women" \partCombine { \global \keepWithTag #'rep \soprano \bar "|." }
                                              { \global \keepWithTag #'rep \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \keepWithTag #'rep \tenor }
                                            { \global \keepWithTag #'rep \bass }
          >>
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
                                         \keepWithTag #'v1 \soprano
                                         \keepWithTag #'v2 \soprano
                                         \keepWithTag #'v3 \soprano
                                       }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \bar "|."
                                              }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \bar "|."
            }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                            }
          >>
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
            }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \bar "|."
                                              }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto \nl
                                                \bar "|."
                                              }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                            }
          >>
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
