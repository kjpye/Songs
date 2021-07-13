\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Enthroned is Jesus now."
  subtitle    = "Sankey No. 136"
  subsubtitle = "Sankey 880 No. 478"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "T. C. O'Kane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "T. J. Judkin."
  meter       = "S.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key ees \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*3 s4. s4
  \repeat volta 2 {
    s8 s2. s2.
    \mark \markup { \box "E" } s2.*5 s4. s4
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  bes'8
  bes8[a] bes c4 bes8
  ees,4.~4 8
  ees8[f] g aes4 c8
  f,4.~4 8
  g8[fis] g bes[a] bes % B
  ees4 8 8[d] c
  bes[c] bes g4 f8
  ees4.~4 r8 \break
  g4.^\markup\smallCaps Chorus. ~8 f ees % C
  c'8[bes] 8 4 r8
  d4.~8 c bes
  aes8[g] f g4 r8 \break
  ees'4.~8 d c % D
  bes8[c] bes g4 r8
  f4.(g4) f8
  ees4.~4
  \repeat volta 2 {
    \partial 8 r8
    ees4.~8[g] c
    bes4.(g4) r8
    f4.~8[c'] bes % E
    bes4.(ees4) r8
    ees4.~8 d c
    bes8(c) bes g4 r8
    f4.(g4) f8
    ees4.~4
  }
}


sopranoExpanded = \relative {
  \autoBeamOff
  bes'8
  bes8[a] bes c4 bes8
  ees,4.~4 8
  ees8[f] g aes4 c8
  f,4.~4 8
  g8[fis] g bes[a] bes % B
  ees4 8 8[d] c
  bes[c] bes g4 f8
  ees4.~4 r8 \break
  g4.^\markup\smallCaps Chorus. ~8 f ees % C
  c'8[bes] 8 4 r8
  d4.~8 c bes
  aes8[g] f g4 r8 \break
  ees'4.~8 d c % D
  bes8[c] bes g4 r8
  f4.(g4) f8
  ees4.~4 r8
  ees4.~8[g] c
  bes4.(g4) r8
  f4.~8[c'] bes % E
  bes4.(ees4) r8
  ees4.~8 d c
  bes8(c) bes g4 r8
  f4.(g4) f8
  ees4.~4 r8
  ees4.~8[g] c
  bes4.(g4) r8
  f4.~8[c'] bes % E
  bes4.(ees4) r8
  ees4.~8 d c
  bes8(c) bes g4 r8
  f4.(g4) f8
  ees4.~4
}


alto = \relative {
  \autoBeamOff
  g'8
  g8[fis] g a4 g8
  ees4.~4 8
  ees4 8 4 8
  d4.~4 8
  ees4 8 g8[fis] g % B
  ees4 8 4 8
  g8[a] g ees4 d8
  ees4.~4 r8
  ees4.~8 d ees % C
  aes8[g] 8 4 r8
  f4.~8 ees d
  f8[ees] d ees4 r8
  g4.(ees8)8 8 % D
  g8[a] g ees4 r8
  d4.(ees4) d8
  ees4.~4
  \repeat volta 2 {
    \partial 8 r8
    ees4.~8[g] a
    g4.(ees4) r8
    d4.~8 ees ees % E
    g4.~4 r8
    g4.(ees8) 8 8
    g8[aes] g ees4 r8
    d4.~4 8
    bes4.~4
  }
}

tenor = \relative {
  \autoBeamOff
  ees'8
  ees4 8 4 bes8
  g4.~4 8
  g8[aes] bes c4 8
  bes4.~4 8
  bes8[a] bes ees4 8 % B
  bes4 8 c[bes] aes
  bes4 8 4 aes8
  g4.~4 r8
  bes4 r8 8 aes g % C
  bes4 ees8 4 r8
  bes4 r8 8 8 8
  bes4 8 4 r8
  bes4.(c8) bes aes % D
  bes4 8 4 r8
  r4. bes4 aes8
  g4.~4
  \repeat volta 2 {
    \partial 8 r8
    g4 r8 8 bes ees
    ees4 8 bes4 r8
    bes4 r8 bes aes g % E
    bes4 8 4 r8
    bes4.(c8) bes aes
    bes4 8 4 r8
    bes4.~4 aes8
    g4.~4
  }
}

bass= \relative {
  \autoBeamOff
  ees8
  ees4 8 4 8
  ees4.~4 8
  ees4 8 aes,4 a8
  bes4.~4 8
  ees4 8 4 8 % B
  g4 8 aes4 8
  ees4 8 bes4 8
  ees4.~4 r8
  ees4 r8 8 8 8 % C
  ees4 8 4 r8
  bes4 r8 8 8 8
  ees4 8 4 r8
  ees4.(aes8) 8 8 % D
  ees4 8 4 r8
  bes4.~4 8
  ees4.~4
  \repeat volta 2 {
    \partial 8 r8
    ees4 r8 8 8 8
    ees4 8 4 r8
    bes4 r8 8 8 8 % E
    ees4 8 4 r8
    ees4.(aes8) 8 8
    ees4 8 4 r8
    bes4.~4 8
    ees4.~4
  }
}

chorusA = \lyricmode {
  There with the glo -- ri -- fied,
  Safe by our Sa -- viour's side,
  We shall be sat -- is -- fied
  By and by!
  By __ and by! By __ and by!
  We shall be sat -- is -- fied
  By and by!
}

chorusSingleA = \lyricmode {
  There with the glo -- ri -- fied,
  Safe by our Sa -- viour's side,
  We shall be sat -- is -- fied
  By and by!
  By __ and by! By __ and by!
  We shall be sat -- is -- fied
  By and by!
  By __ and by! By __ and by!
  We shall be sat -- is -- fied
  By and by!
}

chorusB = \lyricmode {
  There, there _ _ _ _ _
  Safe, safe _ _ _ _ _
  _ _ _ _ _ _
  By and by!
  There, there with the glo -- ri -- fied,
  Safe, safe by our Sa -- viour's side,
}

chorusSingleB = \lyricmode {
  There, there _ _ _ _ _
  Safe, safe _ _ _ _ _
  _ _ _ _ _ _
  By and by!
  There, there with the glo -- ri -- fied,
  Safe, safe by our Sa -- viour's side,
  _ _ _ _ _ _ _ _ _
  There, there with the glo -- ri -- fied,
  Safe, safe by our Sa -- viour's side,
  _ _ _ _ _ _ _ _ _
}

emptyVerse = \lyricmode {
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
}
  
wordsOne = \lyricmode {
  \set stanza = "1."
  En throned is Je -- sus now
  Up -- on His heaven -- ly seat;
  The king -- ly crown is on His brow,
  The saints are at His feet.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  In shi -- ning white they stand,
  A great and count -- less throng;
  A palm -- y scep -- tre in each hand,
  On ev -- 'ry lip a somg.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  They sing the Lamb of God,
  Once slain on earth for them;
  The Lamb thro' whose a -- to -- ning blood
  Each wears his di -- a -- dem.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thy grace, O Ho -- ly Ghost,
  Thy bles -- sed help sup -- ply.
  That we may join that ra -- diant host,
  Tri -- umph -- ant in the sky!
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "En " "throned " "is " Je "sus " "now "
  "\nUp" "on " "His " heaven "ly " "seat; "
  "\nThe " king "ly " "crown " "is " "on " "His " "brow, "
  "\nThe " "saints " "are " "at " "His " "feet. "
  "\nThere " "with " "the " glo ri "fied, "
  "\nSafe " "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nBy "  "and " "by! " "By "  "and " "by! "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nBy "  "and " "by! " "By "  "and " "by! "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "

  \set stanza = "2."
  "\nIn " shi "ning " "white " "they " "stand, "
  "\nA " "great " "and " count "less " "throng; "
  "\nA " palm "y " scep "tre " "in " "each " "hand, "
  "\nOn " ev "'ry " "lip " "a " "somg. "
  "\nThere " "with " "the " glo ri "fied, "
  "\nSafe " "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nBy "  "and " "by! " "By "  "and " "by! "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nBy "  "and " "by! " "By "  "and " "by! "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "

  \set stanza = "3."
  "\nThey " "sing " "the " "Lamb " "of " "God, "
  "\nOnce " "slain " "on " "earth " "for " "them; "
  "\nThe " "Lamb " "thro' " "whose " a to "ning " "blood "
  "\nEach " "wears " "his " di a "dem. "
  "\nThere " "with " "the " glo ri "fied, "
  "\nSafe " "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nBy "  "and " "by! " "By "  "and " "by! "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nBy "  "and " "by! " "By "  "and " "by! "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "

  \set stanza = "4."
  "\nThy " "grace, " "O " Ho "ly " "Ghost, "
  "\nThy " bles "sed " "help " sup "ply. "
  "\nThat " "we " "may " "join " "that " ra "diant " "host, "
  "\nTri" umph "ant " "in " "the " "sky! "
  "\nThere " "with " "the " glo ri "fied, "
  "\nSafe " "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nBy "  "and " "by! " "By "  "and " "by! "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nBy "  "and " "by! " "By "  "and " "by! "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "En " "throned " "is " Je "sus " "now "
  "\nUp" "on " "His " heaven "ly " "seat; "
  "\nThe " king "ly " "crown " "is " "on " "His " "brow, "
  "\nThe " "saints " "are " "at " "His " "feet. "

  "\nThere, " "there "  "with " "the " glo ri "fied, "
  "\nSafe, " "safe "  "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nThere, " "there "  "with " "the " glo ri "fied, "
  "\nSafe, " "safe "  "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nThere, " "there "  "with " "the " glo ri "fied, "
  "\nSafe, " "safe "  "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "

  \set stanza = "2."
  "\nIn " shi "ning " "white " "they " "stand, "
  "\nA " "great " "and " count "less " "throng; "
  "\nA " palm "y " scep "tre " "in " "each " "hand, "
  "\nOn " ev "'ry " "lip " "a " "somg. "
  "\nThere, " "there "  "with " "the " glo ri "fied, "
  "\nSafe, " "safe "  "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nThere, " "there "  "with " "the " glo ri "fied, "
  "\nSafe, " "safe "  "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nThere, " "there "  "with " "the " glo ri "fied, "
  "\nSafe, " "safe "  "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "

  \set stanza = "3."
  "\nThey " "sing " "the " "Lamb " "of " "God, "
  "\nOnce " "slain " "on " "earth " "for " "them; "
  "\nThe " "Lamb " "thro' " "whose " a to "ning " "blood "
  "\nEach " "wears " "his " di a "dem. "
  "\nThere, " "there "  "with " "the " glo ri "fied, "
  "\nSafe, " "safe "  "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nThere, " "there "  "with " "the " glo ri "fied, "
  "\nSafe, " "safe "  "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nThere, " "there "  "with " "the " glo ri "fied, "
  "\nSafe, " "safe "  "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "

  \set stanza = "4."
  "\nThy " "grace, " "O " Ho "ly " "Ghost, "
  "\nThy " bles "sed " "help " sup "ply. "
  "\nThat " "we " "may " "join " "that " ra "diant " "host, "
  "\nTri" umph "ant " "in " "the " "sky! "
  "\nThere, " "there "  "with " "the " glo ri "fied, "
  "\nSafe, " "safe "  "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nThere, " "there "  "with " "the " glo ri "fied, "
  "\nSafe, " "safe "  "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
  "\nThere, " "there "  "with " "the " glo ri "fied, "
  "\nSafe, " "safe "  "by " "our " Sa "viour's " "side, "
  "\nWe " "shall " "be " sat is "fied "
  "\nBy " "and " "by! "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorusA }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
            \addlyrics { \emptyVerse \chorusB }
          >>
        >>
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
    \unfoldRepeats
    \context GrandStaff <<
      <<
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
            \new NullVoice = "aligner" { \sopranoExpanded
                                         \sopranoExpanded
                                         \sopranoExpanded
                                         \sopranoExpanded
                                       }
            \new Voice = "women" \partCombine { \global \sopranoExpanded
                                                \sopranoExpanded
                                                \sopranoExpanded
                                                \sopranoExpanded
                                                \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusSingleA
                                              \wordsTwo   \chorusSingleA
                                              \wordsThree \chorusSingleA
                                              \wordsFour  \chorusSingleA
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new NullVoice { \tenor \tenor \tenor \tenor }
            \addlyrics { \emptyVerse \chorusSingleB
                         \emptyVerse \chorusSingleB
                         \emptyVerse \chorusSingleB
                         \emptyVerse \chorusSingleB
                       }
          >>
        >>
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
    \unfoldRepeats
    \context GrandStaff <<
      <<
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
            \new NullVoice = "aligner" { \sopranoExpanded
                                         \sopranoExpanded
                                         \sopranoExpanded
                                         \sopranoExpanded
                                       }
            \new Voice = "women" \partCombine { \global \sopranoExpanded
                                                \sopranoExpanded
                                                \sopranoExpanded
                                                \sopranoExpanded
                                                \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusSingleA
                                              \wordsTwo   \chorusSingleA
                                              \wordsThree \chorusSingleA
                                              \wordsFour  \chorusSingleA
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new NullVoice { \tenor \tenor \tenor \tenor }
            \addlyrics { \emptyVerse \chorusSingleB
                         \emptyVerse \chorusSingleB
                         \emptyVerse \chorusSingleB
                         \emptyVerse \chorusSingleB
                       }
          >>
        >>
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
  \bookOutputSuffix "midi-women"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
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
            \new Voice { \global \sopranoExpanded
                         \sopranoExpanded
                         \sopranoExpanded
                         \sopranoExpanded
                         \bar "|."
                       }
            \addlyrics \wordsMidiWomen
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
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
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
            \new Voice { \global \sopranoExpanded
                         \sopranoExpanded
                         \sopranoExpanded
                         \sopranoExpanded
                         \bar "|."
                       }
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
            \addlyrics \wordsMidiMen
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
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
            \new Voice { \global \sopranoExpanded
                         \sopranoExpanded
                         \sopranoExpanded
                         \sopranoExpanded
                         \bar "|."
                       }
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
            \addlyrics \wordsMidiMen
          >>
        >>
      >>
    >>
    \midi {}
  }
}
