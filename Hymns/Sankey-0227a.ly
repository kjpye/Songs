\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, Lover of my Soul."
  subtitle    = "Sankey No. 227 (First Tune)"
  subsubtitle = "Sankey 880 No. 615"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup {\smallCaps "Dr. J. B. Dykes," "by per."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "Hollingside."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*6
  \mark \markup { \box "C" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 bes c bes
  bes4. aes8 g2
  ees'4 d c bes
  g4 ees f2
  g4 bes c bes
  bes4. aes8 g2 % B
  g4 aes g f
  g4. f8 ees2
  ees4 aes g aes
  des4 c bes2
  c4 4 d ees
  aes,4 g f2 % C
  g4 bes c bes
  bes4. aes8 g2
  g4 aes g f
  g4. f8 ees2
}

alto = \relative {
  \autoBeamOff
  ees'4 4 c ees
  ees4 d ees2
  ees4 4 4 d
  ees4 4 d2
  ees4 4 8[aes] g4
  f4 ees d2 % B
  ees4 4 4 4
  ees4 d ees2
  c4 ees ees ees
  ees4 4 g2
  ees4 4 aes g
  f4 ees d2
  ees4 4 8[aes] g4
  f4 ees d2
  ees4 4 4 4
  ees4 d ees2
}

tenor = \relative {
  \autoBeamOff
  bes4 4 ees bes
  c4 bes bes2
  bes4 4 aes aes
  bes4 a bes2
  bes4 g aes8[c] ees4
  d4 c b2 % B
  c4 aes bes c
  bes4 aes g2
  aes4 c bes c
  bes4 c ees2
  c4 bes4 4 4
  bes4 4 2 % C
  bes4 g aes8[c] ees4
  d4 c b2
  c4 aes bes c
  bes4 aes g2
}

bass = \relative {
  \autoBeamOff
  ees4 g aes g
  f4 bes, ees2
  g4 4 aes f
  ees4 c bes2
  ees4 4 4 4
  f4 4 g2 % B
  c,4 4 bes aes
  bes4 4 ees2
  ees4 4 4 aes
  g4 aes ees2
  aes4 g f ees
  d4 ees bes2 % C
  ees4 4 4 4
  f4 4 g2
  c,4 4 bes aes
  bes4 4 ees2
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
