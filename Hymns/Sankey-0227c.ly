\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, Lover of my Soul."
  subtitle    = "Sankey No. 227 (Third tune)"
  subsubtitle = "Sankey 880 No. 615"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. P. Holbrook."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "Refuge"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s2.*6
  s2 \tuplet 3/2 {s8 \tempo 4=20 s \tempo 4=120 s}
  s2
  s4 s2.*3
  \tempo 4=60 s2 \tempo 4=120 s4
  s2.*2
  s2 \tempo 4=110 s4 s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  s4 s2.*3 s2
  s4 s2.*3 s2 \bar "||" \break a'8.^\f^\markup\smallCaps Congregation. 16
  fis'4. e8 \partCombineApart \tuplet 3/2 {e8[d] b} \partCombineAutomatic % C
  a4(fis) d'8. b16
  a4. fis8 e8. fis16
  g2\fermata \bar "|" \break fis8. a16
  fis'4. e8 \partCombineApart \tuplet 3/2 {e8[d] b} \partCombineAutomatic % D
  a4(fis) d'8. b16
  a4. d,8 fis8.^\markup\italic rit. e16
  d2
}

alto = \relative {
  \autoBeamOff
  fis'8.\omit\mp ^\markup {\smallCaps Duet. \italic "(A. and T,)"} 16
  fis4. d8 g8. fis16
  fis4(d) \tuplet 3/2 {d8[e] fis}
  g4. b8 a8. g16
  fis2 \bar "|" \break d8. 16
  e4~ \tuplet 3/2 {e8[dis] e} \tuplet 3/2 {e[dis] e} % B
  fis4(d) 8. 16
  e4~ \tuplet 3/2 {e8[dis] e} \tuplet 3/2 {e8[g\fermata] fis}
  d2 \bar "||" \break fis8.^\f 16
  a4. g8 \tuplet 3/2 {4 8} % C
  fis4(d) fis8. g16
  fis4. d8 c8. d16
  e2\fermata \bar "|" \break d8. fis16
  a4. g8 \tuplet 3/2 {g4 8}
  fis4(d) fis8. g16
  fis4. d8 8. c16
  d2
}

tenor = \relative {
  \autoBeamOff
  a8.\omit\mp 16
  a4. fis8 b8. a16
  a4(fis) \tuplet 3/2 {fis8 g a}
  b4. d8 cis8. b16
  a2 fis8. 16
  g4~(\tuplet 3/2 {g8 fis) g} \tuplet 3/2 {g8[fis] g} % B
  a4(fis) 8. 16
  g4~( \tuplet 3/2 {8[fis]) g} \tuplet 3/2 {g8[b\fermata] a}
  fis2 a8.\omit\f 16
  d4. cis8 \tuplet 3/2 {b4 d8} % C
  d4(a) 8. b16
  d4. a8 8. d16
  cis2\fermata a8. 16
  d4. cis8 \tuplet 3/2 {b4 d8}
  d4(a) 8. b16
  d4. fis,8 a8. g16
  fis2
}

bass = \relative {
  \autoBeamOff
  s4 s2.*3 s2
  s4 s2.*3 s2 d8.\omit\f 16
  d4. 8 \tuplet 3/2 {g4 g,8} % C
  d'2 8. 16
  d4. 8 a8. 16
  a2\fermata
  d8. 16
  d4. 8 \tuplet 3/2 {f4 g,8} % D
  d'2 8. 16
  d4. 8 a8. 16
  d2
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
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Hide " "me, " "O " "my " Sa "viour, " "hide, "
  "\nTill " "the " "storm " "of " "life " "is " "past; "
  "\nSafe " in "to " "the " ha "ven " "guide, "
  "\nOh, " re "ceive " "my " "soul " "at " "last! "

  \set stanza = "2."
  "\nAll " "my " "trust " "on " "Thee " "is " "stayed, "
  "\nAll " "my " "help " "from " "Thee " "I " "bring; "
  "\nCov" "er " "my " de fence "less " "head "
  "\nWith " "the " sha "dow " "of " "Thy " "wing. "

  \set stanza = "3."
  "\nJust " "and " ho "ly " "is " "Thy " "name, "
  "\nI " "am " "all " un righ teous "ness; "
  "\nVile " "and " "full " "of " "sin " "I " "am, "
  "\nThou " "art " "full " "of " "truth " "and " "grace. "

  \set stanza = "4."
  "\nThou " "of " "life " "the " Foun "tain " "art, "
  "\nFree" "ly " "let " "me " "take " "of " "Thee; "
  "\nSpring " "Thou " "up " with "in " "my " "heart, "
  "\nRise " "to " "all " e ter ni "ty. "
}

wordsMidiAlto = \lyricmode {
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
            \new NullVoice = "aligner" \alto
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
            \new NullVoice = "aligner" { \alto \alto \alto \alto }
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
            \new NullVoice = "aligner" { \alto \alto \alto \alto }
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
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidiAlto
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
