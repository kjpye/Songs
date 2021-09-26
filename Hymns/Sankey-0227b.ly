\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, Lover of my Soul."
  subtitle    = "Sankey No. 227 (Second tune)"
  subsubtitle = "Sankey 880 No. 62"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "S. B. Marsh."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "Martyn."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1.*5
  \mark \markup { \box "A" } s1.*5
  \mark \markup { \box "B" } s1.*6
  \mark \markup { \box "A" } s1.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

nl = { \bar "||" \break }

sopranoA = \relative {
  \autoBeamOff
  a'2 4 2 f4 g2 4 2 r4
  a2 4 c2 bes4
  a2. g
  f2.~2 r4
}

sopranoB = \relative {
  \autoBeamOff
  c''2 4 2 4
  d2. d
  a2.~2 r4
  c2 4 2 4
  d2. d
  c2.~2 r4
}

soprano = {
  \sopranoA
  \sopranoA
  \sopranoB
  \sopranoA
}

altoA = \relative {
  \autoBeamOff
  f'2 4 2 4
  e2 4 2 r4
  f2 4 a2 g4
  f2. e
  f2.~2 r4
}

altoB = \relative {
  \autoBeamOff
  f'2 4 2 4
  f2. f
  f2.~2 r4
  a2 4 2 4
  bes2. 2.
  a2.~2 r4
}

alto = {
  \altoA
  \altoA
  \altoB
  \altoA
}

tenorA = \relative {
  \autoBeamOff
  c'2 4 2 a4
  c2 4 2 r4
  c2 4 2 d4
  c2. bes
  a2.~2 r4
}

tenorB = \relative {
  \autoBeamOff
  a2 4 2 4
  bes2. bes
  a2.~2 r4
  \partCombineApart R1.
  R1.
  R1.
  \partCombineAutomatic
}

tenor = {
  \tenorA
  \tenorA
  \tenorB
  \tenorA
}

bassA = \relative {
  \autoBeamOff


  f2 4 2 4
  c2 4 2 r4
  f2 4 2 bes,4
  c2. c
  f2.~2 r4
}

bassB = \relative {
  \autoBeamOff
  f2 4 2 4
  bes,2. 2.
  f'2.~2 r4
  f2 4 2 4
  bes,2. 2.
  f'2.~2 r4
}

bass = {
  \bassA
  \bassA
  \bassB
  \bassA
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, Lov -- er of my soul,
  Let me to Thy bo -- som fly,
  While the near -- er wa -- ters roll,
  While the tem -- pest still is high:
  Hide me, O my Sa -- viour, hide,
  Till the storm of life is past;
  Safe in -- to the ha -- ven guide,
  Oh, re -- ceive my soul at last!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oth -- er re -- fuge have I none,
  Hangs my help -- less soul on Thee;
  leave, oh, leave me not a -- lone,
  Still sup -- port and com -- fort me:
  All my trust on Thee is stayed,
  All my help from Thee I bring;
  Cov -- er my de -- fence -- less head
  With the sha -- dow of Thy wing.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thou, O Christ, art all I want;
  More than all in Thee I find:
  Raise the fal -- len, cheer the faint,
  Heal the sick, and lead the blind:
  Just and ho -- ly is Thy name,
  I am all un -- righ -- teous -- ness;
  Vile and full of sin I am,
  Thou art full of truth and grace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Plen -- teous grace with Thee is found—
  Grace to co -- ver all my sin:
  Let the heal -- ing streams a -- bound;
  Make me, keep me, pure with -- in:
  Thou of life the Foun -- tain art,
  Free -- ly let me take of Thee;
  Spring Thou up with -- in my heart,
  Rise to all e -- ter -- ni -- ty.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " Lov "er " "of " "my " "soul, "
  "\nLet " "me " "to " "Thy " bo "som " "fly, "
  "\nWhile " "the " near "er " wa "ters " "roll, "
  "\nWhile " "the " tem "pest " "still " "is " "high: "
  "\nHide " "me, " "O " "my " Sa "viour, " "hide, "
  "\nTill " "the " "storm " "of " "life " "is " "past; "
  "\nSafe " in "to " "the " ha "ven " "guide, "
  "\nOh, " re "ceive " "my " "soul " "at " "last! "

  \set stanza = "2."
  "\nOth" "er " re "fuge " "have " "I " "none, "
  "\nHangs " "my " help "less " "soul " "on " "Thee; "
  "\nleave, " "oh, " "leave " "me " "not " a "lone, "
  "\nStill " sup "port " "and " com "fort " "me: "
  "\nAll " "my " "trust " "on " "Thee " "is " "stayed, "
  "\nAll " "my " "help " "from " "Thee " "I " "bring; "
  "\nCov" "er " "my " de fence "less " "head "
  "\nWith " "the " sha "dow " "of " "Thy " "wing. "

  \set stanza = "3."
  "\nThou, " "O " "Christ, " "art " "all " "I " "want; "
  "\nMore " "than " "all " "in " "Thee " "I " "find: "
  "\nRaise " "the " fal "len, " "cheer " "the " "faint, "
  "\nHeal " "the " "sick, " "and " "lead " "the " "blind: "
  "\nJust " "and " ho "ly " "is " "Thy " "name, "
  "\nI " "am " "all " un righ teous "ness; "
  "\nVile " "and " "full " "of " "sin " "I " "am, "
  "\nThou " "art " "full " "of " "truth " "and " "grace. "

  \set stanza = "4."
  "\nPlen" "teous " "grace " "with " "Thee " "is " "found— "
  "\nGrace " "to " co "ver " "all " "my " "sin: "
  "\nLet " "the " heal "ing " "streams " a "bound; "
  "\nMake " "me, " "keep " "me, " "pure " with "in: "
  "\nThou " "of " "life " "the " Foun "tain " "art, "
  "\nFree" "ly " "let " "me " "take " "of " "Thee; "
  "\nSpring " "Thou " "up " with "in " "my " "heart, "
  "\nRise " "to " "all " e ter ni "ty. "
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
    system-system-spacing.basic-distance = #15
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
