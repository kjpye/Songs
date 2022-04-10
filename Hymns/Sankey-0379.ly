\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Have you Been to Jesus?"
  subtitle    = "Sankey No. 379"
  subsubtitle = "Sankey 880 No. 398"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. A. Hoffman."
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
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*2
  \mark \markup { \box "B" }    s1*3
  \mark \markup { \box "C" }    s1*2 s2.
  \mark \markup { \box "D" } s4 s1*2 s2
  \mark \markup { \box "E" } s2 s1*2
  \mark \markup { \box "F" }    s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8 ees
  aes4 4 8 ees c ees
  aes4 4 4 8 bes
  c4 8 8 4 bes8 aes % B
  bes2. c8 bes
  aes4 4 8 c bes aes
  f4 4 4 aes8 f % C
  ees4 8 8 aes4 g8 8
  aes2. \bar "|" \break c8^\markup\smallCaps Chorus. bes
  aes2. 8 g % D
  f2. aes8 f
  ees4 aes8 bes \bar "|" \break c4 des8 c
  bes2. c8 bes % E
  aes4 4 8 c bes aes
  f4 4 4 aes8 f % F
  ees4 8 8 aes4 g8 8
  aes2.
}

alto = \relative {
  \autoBeamOff
  aes8 c
  c4 4 8 8 aes c
  ees4 des c ees8 8
  ees4 8 8 4 8 d % B
  ees2. 8 des
  c4 4 8 ees8 8 8
  des4 4 4 f8 des % C
  c4 8 8 ees4 des8 8
  c2. ees8 des
  c2. 8 ees % D
  des2. f8 des
  c4 ees8 8 4 8 8
  ees2. 8 des % E
  c4 4 8 ees8 8 8
  des4 4 4 f8 des % F
  c4 8 8 ees4 des8 8
  c2.
}

tenor = \relative {
  \autoBeamOff
  ees8 8
  ees4 4 8 aes aes aes
  aes4 f ees aes8 g
  aes4 8 8 4 bes8 8 % B
  g2. aes8 ees
  ees4 4 8 aes g aes
  aes4 4 4 8 8 % C
  aes4 8 8 c4 bes8 8
  aes2. r4
  r4 aes8 8 4 r4 % D
  r4 aes8 8 4 8 8
  aes4 8 g aes4 bes8 aes
  g4 8 8 4 aes8 ees % E
  ees4 4 8 aes8 g aes
  aes4 4 4 8 8 % F
  aes4 8 8 c4 bes8 8
  aes2.
}

bass = \relative {
  \autoBeamOff
  aes,8 8
  aes4 4 8 8 8 8
  c4 des aes c8 ees
  aes4 8 8 4 g8 8 % B
  ees2. 8 8
  aes,4 4 8 8 bes c
  des4 4 4 8 8 % C
  ees4 8 8 4 8 8
  aes,2. r4
  r4 aes8 8 4 r4 % D
  r4 des8 8 4 8 8
  aes4 c8 ees aes4 g8 aes
  ees4 8 8 4 8 8 % E
  aes,4 4 8 8 bes c
  des4 4 4 8 8 % F
  ees4 8 8 4 8 8
  aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Are you washed in the blood
  In the soul -- cleans -- ing blood of the Lamb?
  Are you gar -- ments spot -- less?
  Are they white as snow?
  Are you washed in the blood of the Lamb?
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  Are you washed in the blood
  _ _ _ _ _ _ _ _ _
  of the lamb?
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Have you been to Je -- sus for the cleans -- ing power?
  Are you washed in the blood of the Lamb?
  Are you ful -- ly trust -- ing in His grace this hour>
  Are you washed in the blood of the Lamb?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Are you walk -- ing dai -- ly by the Sa -- viour's side?
  Are you washed in the blood of the Lamb?
  Do you rest each mo -- ment in the Cru -- ci -- fied?
  Are you washed in the blood of the Lamb?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When the Bride -- groom com -- eth, will your robes be white,
  Pure and white in the blood of the Lamb?
  Will your soul be rea -- dy for the man -- sions bright,
  And be washed in the blood of the Lamb?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Lay a -- side the gar -- ments that are stained with sin,
  And be washed in the blood of the Lamb;
  There's a foun -- tain flow -- ing for the soul un -- clean—
  Oh, be washed in the blood of the Lamb;
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "Have " "you " "been " "to " Je "sus " "for " "the " cleans "ing " "power? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "
  "\nAre " "you " ful "ly " trust "ing " "in " "His " "grace " "this " "hour> "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "
  "\nAre " "you " "washed " "in " "the " "blood "
  "\nIn " "the " soul cleans "ing " "blood " "of " "the " "Lamb? "
  "\nAre " "you " gar "ments " spot "less? "
  "\nAre " "they " "white " "as " "snow? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "

  \set stanza = "2."
  "\nAre " "you " walk "ing " dai "ly " "by " "the " Sa "viour's " "side? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "
  "\nDo " "you " "rest " "each " mo "ment " "in " "the " Cru ci "fied? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "
  "\nAre " "you " "washed " "in " "the " "blood "
  "\nIn " "the " soul cleans "ing " "blood " "of " "the " "Lamb? "
  "\nAre " "you " gar "ments " spot "less? "
  "\nAre " "they " "white " "as " "snow? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "

  \set stanza = "3."
  "\nWhen " "the " Bride "groom " com "eth, " "will " "your " "robes " "be " "white, "
  "\nPure " "and " "white " "in " "the " "blood " "of " "the " "Lamb? "
  "\nWill " "your " "soul " "be " rea "dy " "for " "the " man "sions " "bright, "
  "\nAnd " "be " "washed " "in " "the " "blood " "of " "the " "Lamb? "
  "\nAre " "you " "washed " "in " "the " "blood "
  "\nIn " "the " soul cleans "ing " "blood " "of " "the " "Lamb? "
  "\nAre " "you " gar "ments " spot "less? "
  "\nAre " "they " "white " "as " "snow? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "

  \set stanza = "4."
  "\nLay " a "side " "the " gar "ments " "that " "are " "stained " "with " "sin, "
  "\nAnd " "be " "washed " "in " "the " "blood " "of " "the " "Lamb; "
  "\nThere's " "a " foun "tain " flow "ing " "for " "the " "soul " un "clean— "
  "\nOh, " "be " "washed " "in " "the " "blood " "of " "the " "Lamb; "
  "\nAre " "you " "washed " "in " "the " "blood "
  "\nIn " "the " soul cleans "ing " "blood " "of " "the " "Lamb? "
  "\nAre " "you " gar "ments " spot "less? "
  "\nAre " "they " "white " "as " "snow? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Have " "you " "been " "to " Je "sus " "for " "the " cleans "ing " "power? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "
  "\nAre " "you " ful "ly " trust "ing " "in " "His " "grace " "this " "hour> "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "
  "\nAre " "you " "washed " "in " "the " "blood "
  "\nIn " "the " soul cleans "ing " "blood " "of " "the " "Lamb? "
  "\nof " "the " "Lamb? "
  "\nAre " "you " gar "ments " spot "less? "
  "\nAre " "they " "white " "as " "snow? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "

  \set stanza = "2."
  "\nAre " "you " walk "ing " dai "ly " "by " "the " Sa "viour's " "side? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "
  "\nDo " "you " "rest " "each " mo "ment " "in " "the " Cru ci "fied? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "
  "\nAre " "you " "washed " "in " "the " "blood "
  "\nIn " "the " soul cleans "ing " "blood " "of " "the " "Lamb? "
  "\nof " "the " "Lamb? "
  "\nAre " "you " gar "ments " spot "less? "
  "\nAre " "they " "white " "as " "snow? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "

  \set stanza = "3."
  "\nWhen " "the " Bride "groom " com "eth, " "will " "your " "robes " "be " "white, "
  "\nPure " "and " "white " "in " "the " "blood " "of " "the " "Lamb? "
  "\nWill " "your " "soul " "be " rea "dy " "for " "the " man "sions " "bright, "
  "\nAnd " "be " "washed " "in " "the " "blood " "of " "the " "Lamb? "
  "\nAre " "you " "washed " "in " "the " "blood "
  "\nIn " "the " soul cleans "ing " "blood " "of " "the " "Lamb? "
  "\nof " "the " "Lamb? "
  "\nAre " "you " gar "ments " spot "less? "
  "\nAre " "they " "white " "as " "snow? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "

  \set stanza = "4."
  "\nLay " a "side " "the " gar "ments " "that " "are " "stained " "with " "sin, "
  "\nAnd " "be " "washed " "in " "the " "blood " "of " "the " "Lamb; "
  "\nThere's " "a " foun "tain " flow "ing " "for " "the " "soul " un "clean— "
  "\nOh, " "be " "washed " "in " "the " "blood " "of " "the " "Lamb; "
  "\nAre " "you " "washed " "in " "the " "blood "
  "\nIn " "the " soul cleans "ing " "blood " "of " "the " "Lamb? "
  "\nof " "the " "Lamb? "
  "\nAre " "you " gar "ments " spot "less? "
  "\nAre " "they " "white " "as " "snow? "
  "\nAre " "you " "washed " "in " "the " "blood " "of " "the " "Lamb? "
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiWomen
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new NullVoice = alignerT { \repeat unfold \verses \tenor}
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new NullVoice = alignerT { \repeat unfold \verses \tenor}
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
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
