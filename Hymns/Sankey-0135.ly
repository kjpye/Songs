\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ride on in Majesty!"
  subtitle    = "Sankey No. 135"
  subsubtitle = "N.H. No. 9"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. H. Milman, D.D."
  meter       = "L.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4 s1*3 s2 \tempo 4=40 s4 \tempo 4=120
  s4 s1*3 s2 \tempo 4=40 s4 \tempo 4=120
  s4 s1*3 s2.
  s4 s1*3 s2.
}

soprano = \relative {
  \autoBeamOff
  f'4 bes4. c8 d4 bes
  g4 a bes d
  ees4 d c bes
  bes4 a8[bes] c4\fermata 4
  d4. c8 bes4 4 % B
  c4. bes8 a4 4
  d4 a8[g] f4 bes
  c4 4 4\fermata f,
  bes2. c4 % C
  d2. bes4
  c2. 4
  bes2. f4
  g2. 4
  f2. bes4
  bes2. a4
  bes2.
}

alto = \relative {
  \autoBeamOff
  d'4
  d4(f8) 8 4 4
  ees4 4 d f
  ees4 f g f
  ees4 4 f\fermata \bar "|" \break \partial 4 g
  fis4. 8 g4 f % B
  e4. 8 f4 f
  f4 f d d
  g4 f8[ees] d4\fermata \bar "|" \break \partial 4 f^\markup\smallCaps Chorus.
  d4 f f f % C
  f4 4 4 d
  ees4 4 f ees
  d4 4 4 \bar "|" \break \partial 4 d
  g4 f ees c % D
  f4 ees d d
  g4 f ees ees
  d4 ees d
}

tenor = \relative {
  \autoBeamOff
  bes4
  bes4. a8 bes4 4
  bes4 f f bes
  bes4 4 4 4
  g4 c8[bes] a4\fermata g
  a4. d8 4 4 % B
  c4. 8 4 4
  bes4 4 4 4
  bes4 g bes\fermata f
  f4 bes d a % C
  bes4 4 4 4
  g4 c bes a
  bes4 f f bes
  bes4 b c a % D
  bes4 a bes bes
  bes4 4 4 c
  bes4 g f
}

bass= \relative {
  \autoBeamOff
  bes,4
  bes4(d8) f bes4 d,
  ees4 c bes bes'
  g4 f ees d
  c4 c f\fermata ees
  d4. 8 g4 g % B
  c,4. 8 f4 ees
  d4 ees f g
  ees4 g bes,\fermata f'
  bes,4 d f f % C
  bes4 f d g
  ees4 c f f
  bes,4 4 4 4
  ees4 d c ees % D
  d4 c bes g'
  ees4 d c f
  bes,2.
}

chorus = \lyricmode {
  Ride on, ride on, ride on!
  ride on in ma -- jes -- ty
  in ma -- jes -- ty!
  In low -- ly pomp,
  in low -- ly pomp ride on,
  rise on to die,
  to die!
}

chorusSop = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Ride on!
  ride on in ma -- jes -- ty
  in low -- ly pomp ride on to die!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Ride on! ride on in ma -- jes -- ty!
  Hark! all the tribes "\"Ho" -- san -- "na\"" cry!
  O Sa -- viour meek, pur -- sue Thy road
  With palms and scat -- tered gar -- ments strew'd.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ride on! ride on in ma -- jes -- ty!
  The an -- gel ar -- mies of the sky
  Look down with sad and won -- d'ring eyes
  To see th'ap -- proach -- ing Sac -- ri -- fice.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ride on! ride on in ma -- jes -- ty!
  The last and fier -- cest strife is nigh;
  The Fa -- ther on His sap -- phire throne
  A -- waits His own a -- noint -- ed Son.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ride on! ride on in ma -- jes -- ty!
  In low -- ly pomp ride on to die;
  Bow Thy meek head to mor -- tal pain,
  Then take, O God, Thy pow'r and reign.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ride " "on! " "ride " "on " "in " ma jes "ty! "
  "\nHark! " "all " "the " "tribes " "\"Ho" san "na\" " "cry! "
  "\nO " Sa "viour " "meek, " pur "sue " "Thy " "road "
  "\nWith " "palms " "and " scat "tered " gar "ments " "strew'd. "
  "\nRide " "on, " "ride " "on, " "ride " "on! "
  "\nride " "on " "in " ma jes "ty "
  "\nin " ma jes "ty! "
  "\nIn " low "ly " "pomp, "
  "\nin " low "ly " "pomp " "ride " "on, "
  "\nrise " "on " "to " "die, "
  "\nto " "die! "

  \set stanza = "2."
  "\nRide " "on! " "ride " "on " "in " ma jes "ty! "
  "\nThe " an "gel " ar "mies " "of " "the " "sky "
  "\nLook " "down " "with " "sad " "and " won "d'ring " "eyes "
  "\nTo " "see " th'ap proach "ing " Sac ri "fice. "
  "\nRide " "on, " "ride " "on, " "ride " "on! "
  "\nride " "on " "in " ma jes "ty "
  "\nin " ma jes "ty! "
  "\nIn " low "ly " "pomp, "
  "\nin " low "ly " "pomp " "ride " "on, "
  "\nrise " "on " "to " "die, "
  "\nto " "die! "

  \set stanza = "3."
  "\nRide " "on! " "ride " "on " "in " ma jes "ty! "
  "\nThe " "last " "and " fier "cest " "strife " "is " "nigh; "
  "\nThe " Fa "ther " "on " "His " sap "phire " "throne "
  "\nA" "waits " "His " "own " a noint "ed " "Son. "
  "\nRide " "on, " "ride " "on, " "ride " "on! "
  "\nride " "on " "in " ma jes "ty "
  "\nin " ma jes "ty! "
  "\nIn " low "ly " "pomp, "
  "\nin " low "ly " "pomp " "ride " "on, "
  "\nrise " "on " "to " "die, "
  "\nto " "die! "

  \set stanza = "4."
  "\nRide " "on! " "ride " "on " "in " ma jes "ty! "
  "\nIn " low "ly " "pomp " "ride " "on " "to " "die; "
  "\nBow " "Thy " "meek " "head " "to " mor "tal " "pain, "
  "\nThen " "take, " "O " "God, " "Thy " "pow'r " "and " "reign. "
  "\nRide " "on, " "ride " "on, " "ride " "on! "
  "\nride " "on " "in " ma jes "ty "
  "\nin " ma jes "ty! "
  "\nIn " low "ly " "pomp, "
  "\nin " low "ly " "pomp " "ride " "on, "
  "\nrise " "on " "to " "die, "
  "\nto " "die! "
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Ride " "on! " "ride " "on " "in " ma jes "ty! "
  "\nHark! " "all " "the " "tribes " "\"Ho" san "na\" " "cry! "
  "\nO " Sa "viour " "meek, " pur "sue " "Thy " "road "
  "\nWith " "palms " "and " scat "tered " gar "ments " "strew'd. "
  "\nRide " "on! "
  "\nride " "on " "in " ma jes "ty "
  "\nin " low "ly " "pomp " "ride " "on " "to " "die! "

  \set stanza = "2."
  "\nRide " "on! " "ride " "on " "in " ma jes "ty! "
  "\nThe " an "gel " ar "mies " "of " "the " "sky "
  "\nLook " "down " "with " "sad " "and " won "d'ring " "eyes "
  "\nTo " "see " th'ap proach "ing " Sac ri "fice. "
  "\nRide " "on! "
  "\nride " "on " "in " ma jes "ty "
  "\nin " low "ly " "pomp " "ride " "on " "to " "die! "

  \set stanza = "3."
  "\nRide " "on! " "ride " "on " "in " ma jes "ty! "
  "\nThe " "last " "and " fier "cest " "strife " "is " "nigh; "
  "\nThe " Fa "ther " "on " "His " sap "phire " "throne "
  "\nA" "waits " "His " "own " a noint "ed " "Son. "
  "\nRide " "on! "
  "\nride " "on " "in " ma jes "ty "
  "\nin " low "ly " "pomp " "ride " "on " "to " "die! "

  \set stanza = "4."
  "\nRide " "on! " "ride " "on " "in " ma jes "ty! "
  "\nIn " low "ly " "pomp " "ride " "on " "to " "die; "
  "\nBow " "Thy " "meek " "head " "to " mor "tal " "pain, "
  "\nThen " "take, " "O " "God, " "Thy " "pow'r " "and " "reign. "
  "\nRide " "on! "
  "\nride " "on " "in " ma jes "ty "
  "\nin " low "ly " "pomp " "ride " "on " "to " "die! "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "alignerA" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerA" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerA"   \wordsTwo
            \new Lyrics \lyricsto "alignerA"   \wordsThree
            \new Lyrics \lyricsto "alignerA"   \wordsFour
            \new Lyrics \with { alignAboveContext = women } \lyricsto "alignerS"   \chorusSop
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
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
            \new NullVoice = "alignerS" { \soprano \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto    \alto    \alto    \alto    }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "alignerA" { \wordsOne   \chorus
                                               \wordsTwo   \chorus
                                               \wordsThree \chorus
                                               \wordsFour  \chorus
                                             }
            \new Lyrics \with {alignAboveContext = women } \lyricsto "alignerS" { \chorusSop \chorusSop \chorusSop \chorusSop }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
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
            \new NullVoice = "alignerS" { \soprano \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto    \alto    \alto    \alto    }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "alignerA" { \wordsOne   \chorus
                                               \wordsTwo   \chorus
                                               \wordsThree \chorus
                                               \wordsFour  \chorus
                                             }
            \new Lyrics \with {alignAboveContext = women } \lyricsto "alignerS" { \chorusSop \chorusSop \chorusSop \chorusSop }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
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
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidi
          >>
                                  % Tenor staff
          \new Staff = tenor\with { printPartCombineTexts = ##f }
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
  \bookOutputSuffix "midi-sop"
  \score {
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
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor\with { printPartCombineTexts = ##f }
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
