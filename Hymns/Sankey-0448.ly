\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Only a Step to Jesus!"
  subtitle    = "Sankey No. 448"
  subsubtitle = "Sankey 880 No. 236"
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

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
  \mark \markup { \box "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8 8 8 des4 c8
  bes4. aes4 f8
  ees4 aes8 4 c8
  bes4.~4.
  c8 8 8 des4 c8 % B
  bes4. aes4 f8
  ees4 aes8 c4 bes8
  aes4.~4.
  f8^\markup\smallCaps Refrain. 8 8 aes4 r8 % C
  ees8 8 8 c'4 r8
  c4 des8 ees4 c8
  bes4.~4 r8
  bes8 8 8 4 c8 % D
  des4. bes
  c8 8 8 4 des8
  ees4. c4 r8
  c8 8 8 des4 c8 % E
  bes4. aes4\fermata f8
  ees4 aes8 c4 bes8
  aes4.~4.
}

alto = \relative {
  \autoBeamOff
  ees'8 8 8 f4 ees8
  des4. 4 8
  ees4 8 4 8
  ees4.~4.
  ees8 8 8 f4 ees8 % B
  des4. 4 aes8
  aes4 c8 ees4 des8
  c4.~4.
  des8 8 8 f4 r8 % C
  c8 8 8 ees4 r8
  ees4 8 4 aes8
  g4.~4 r8
  g8 8 8 4 aes8 % D
  bes4. g
  aes8 8 8 4 8
  aes4. 4 r8
  ees8 8 8 f4 ees8 % E
  des4. 4\fermata aes8
  aes4 c8 ees4 des8
  c4.~4.
}

tenor = \relative {
  \autoBeamOff
  aes8 8 8 4 8
  f4. 4 aes8
  aes4 8 4 8
  g4.~4.
  aes8 8 8 4 8 % B
  aes4. 4 des8
  c4 aes8 ees8[f] g
  aes4.~4.
  aes8 8 8 4 r8 % C
  aes8 8 8 4 r8
  aes4 bes8 c4 ees8
  ees4.~4 r8
  ees8 8 8 des4 c8 % D
  bes4. ees
  ees8 8 8 4 bes8
  c4. ees4 r8
  aes,8 8 8 4 8 % E
  aes4. 4\fermata des8
  c4 aes8 f[g] aes
  bes4.~4.
}

bass = \relative {
  \autoBeamOff
  aes,8 8 8 4 8
  des4. 4 8
  c4 8 4 aes8
  ees'4.~4.
  aes,8 8 8 des4 ees8 % B
  f4. 4 des8
  ees4 8 4 8
  aes,4.~4.
  des8 8 8 4 r8 % C
  aes'8 8 8 4 r8
  aes4 8 4 8
  ees4.~4 r8
  ees8 8 8 4 8 % D
  ees4. 4.
  aes8 8 8 4 8
  aes4. 4 r8
  aes,8 8 8 des4 ees8 % E
  f4. 4\fermata des8
  ees4 8 4 8
  aes,4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  On -- ly a step! On -- ly a step!
  Come, He waits for thee;
  Come, and thy sin con -- fess -- ing,
  Thou shalt re -- ceive a bless -- ing:
  Do not re -- ject the mer -- cy
  He free -- ly of -- fers thee.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  On -- ly a step to Je -- sus!
  Then why not take it now?
  Come, and they sin con -- fess -- ing;
  To Him, thy Sa -- viour bow.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  On -- ly a step to Je -- sus!
  Be -- lieve, and thou shalt live;
  Lov -- ing -- ly now He's wait -- ing,
  And rea -- dy to for -- give.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ly a step to Je -- sus!
  A step from sin to grace:
  What has thy heart de -- di -- ded?
  The mo -- ments fly a -- pace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  On -- ly a step to Je -- sus!
  A why not come, and say—
  "\"Glad" -- ly, to Thee, my Sa -- viour,
  I give my -- self a -- "way\"?"
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "On" "ly " "a " "step " "to " Je "sus! "
  "\nThen " "why " "not " "take " "it " "now? "
  "\nCome, " "and " "they " "sin " con fess "ing; "
  "\nTo " "Him, " "thy " Sa "viour " "bow. "
  "\nOn" "ly " "a " "step! " On "ly " "a " "step! "
  "\nCome, " "He " "waits " "for " "thee; "
  "\nCome, " "and " "thy " "sin " con fess "ing, "
  "\nThou " "shalt " re "ceive " "a " bless "ing: "
  "\nDo " "not " re "ject " "the " mer "cy "
  "\nHe " free "ly " of "fers " "thee.\n"

  \set stanza = "2."
  "\nOn" "ly " "a " "step " "to " Je "sus! "
  "\nBe" "lieve, " "and " "thou " "shalt " "live; "
  "\nLov" ing "ly " "now " "He's " wait "ing, "
  "\nAnd " rea "dy " "to " for "give. "
  "\nOn" "ly " "a " "step! " On "ly " "a " "step! "
  "\nCome, " "He " "waits " "for " "thee; "
  "\nCome, " "and " "thy " "sin " con fess "ing, "
  "\nThou " "shalt " re "ceive " "a " bless "ing: "
  "\nDo " "not " re "ject " "the " mer "cy "
  "\nHe " free "ly " of "fers " "thee.\n"

  \set stanza = "3."
  "\nOn" "ly " "a " "step " "to " Je "sus! "
  "\nA " "step " "from " "sin " "to " "grace: "
  "\nWhat " "has " "thy " "heart " de di "ded? "
  "\nThe " mo "ments " "fly " a "pace. "
  "\nOn" "ly " "a " "step! " On "ly " "a " "step! "
  "\nCome, " "He " "waits " "for " "thee; "
  "\nCome, " "and " "thy " "sin " con fess "ing, "
  "\nThou " "shalt " re "ceive " "a " bless "ing: "
  "\nDo " "not " re "ject " "the " mer "cy "
  "\nHe " free "ly " of "fers " "thee.\n"

  \set stanza = "4."
  "\nOn" "ly " "a " "step " "to " Je "sus! "
  "\nA " "why " "not " "come, " "and " "say— "
  "\n\"Glad" "ly, " "to " "Thee, " "my " Sa "viour, "
  "\nI " "give " my "self " a "way\"? "
  "\nOn" "ly " "a " "step! " On "ly " "a " "step! "
  "\nCome, " "He " "waits " "for " "thee; "
  "\nCome, " "and " "thy " "sin " con fess "ing, "
  "\nThou " "shalt " re "ceive " "a " bless "ing: "
  "\nDo " "not " re "ject " "the " mer "cy "
  "\nHe " free "ly " of "fers " "thee. "
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
