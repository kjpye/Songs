\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "What a Wonderful Saviour!"
  subtitle    = "Sankey No. 119"
  subsubtitle = "N.H. No. 5"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. A. Hoffmann."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  a'4
  d4 d a a
  cis4 b a g8 8
  fis2 e4 d
  a'2 4 \bar "|" \break \partial 4 a
  d4 d a a % B
  cis4 b a g8 8
  fis2 g4 e
  e2 d4 \bar "|" \break \partial 4 d8^\markup\smallCaps Chorus. e
  fis2 e4 d % C
  a'2 fis4 d
  e2 d4 e fis4 a2 \bar "|" \break \partial 4 a8 a
  d2 4 b % D
  a2 fis4 d
  fis2 e4 4
  d2.
}

alto = \relative {
  fis'4
  fis4 4 4 4
  a4 g fis e8 e
  d2 cis4 d
  c2 4 e
  d4 fis fis fis % B
  a4 g fis e8 8
  d2 e4 cis
  cis2 d4 8 8
  d2 4 4 % C
  fis2 d4 4
  cis2 b4 cis
  d4 fis2 8 8
  fis2 g4 4 % D
  fis2 d4 4
  d2 cis4 4
  d2.
}

tenor = \relative {
  a4
  a4 a d d
  d4 4 4 b8 8
  a2 g4 fis
  e2 a4 g
  fis4 a d d % B
  d4 4 4 b8 8
  a2 4 g
  g2 fis4 8 g
  a2 g4 fis % C
  d'2 a4 fis
  a2 4 4
  a4 d2 8 8
  a2 b4 d % D
  d2 a4 g
  a2 4 g
  fis2.
}

bass= \relative {
  d4
  d4 4 4 4
  g4 g d g,8 8
  a2 4 4
  a2 4 cis
  d4 4 4 4 % B
  g4 g d g,8 8
  a2 4 4
  a2 g4 8 8
  s2 4 4 % C
  s2 4 4
  a2 4 4
  d4 2 8 8
  s2 g4 4 % D
  d2 4 4
  a2 4 4
  d2.
}

chorus = \lyricmode {
  What a won -- der -- ful Sa -- viour is Je -- sus, my Je -- sus!
  What a won -- der -- ful Sa -- viour is Je -- sus, my Lord!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Christ has for sin a -- tone -- ment made:
  What a won -- der -- ful Sa -- viour!
  We are re -- deemed!— the price is paid:
  What a won -- der -- ful Sa -- viour!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I praise Him for the clean -- sing blood:
  What a won -- der -- ful Sa -- viour!
  That re -- con -- ciled my soul to God:
  What a won -- der -- ful Sa -- viour!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He clean -- ses me from all my sin:
  What a won -- der -- ful Sa -- viour!
  And now He reigns and rules with -- in:
  What a won -- der -- ful Sa -- viour!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  He walks be -- side me in the way:
  What a won -- der -- ful Sa -- viour!
  And keeps the faith -- ful day by day:
  What a won -- der -- ful Sa -- viour!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  He gives me ov -- er -- com -- ing power:
  What a won -- der -- ful Sa -- viour!
  And tri -- umph in each try -- ing hour:
  What a won -- der -- ful Sa -- viour!
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  To Him I've giv -- en all my heart:
  What a won -- der -- ful Sa -- viour!
  The world shall ne -- ver share a part:
  What a won -- der -- ful Sa -- viour!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Christ " "has " "for " "sin " a tone "ment " "made: "
  "\nWhat " "a " won der "ful " Sa "viour! "
  "\nWe " "are " re "deemed!— " "the " "price " "is " "paid: "
  "\nWhat " "a " won der "ful " Sa "viour! "
  "\nWhat " "a " won der "ful " Sa "viour " "is " Je "sus, " "my " Je "sus! "
  "\nWhat " "a " won der "ful " Sa "viour " "is " Je "sus, " "my " "Lord! "

  \set stanza = "2."
  "\nI " "praise " "Him " "for " "the " clean "sing " "blood: "
  "\nWhat " "a " won der "ful " Sa "viour! "
  "\nThat " re con "ciled " "my " "soul " "to " "God: "
  "\nWhat " "a " won der "ful " Sa "viour! "
  "\nWhat " "a " won der "ful " Sa "viour " "is " Je "sus, " "my " Je "sus! "
  "\nWhat " "a " won der "ful " Sa "viour " "is " Je "sus, " "my " "Lord! "

  \set stanza = "3."
  "\nHe " clean "ses " "me " "from " "all " "my " "sin: "
  "\nWhat " "a " won der "ful " Sa "viour! "
  "\nAnd " "now " "He " "reigns " "and " "rules " with "in: "
  "\nWhat " "a " won der "ful " Sa "viour! "
  "\nWhat " "a " won der "ful " Sa "viour " "is " Je "sus, " "my " Je "sus! "
  "\nWhat " "a " won der "ful " Sa "viour " "is " Je "sus, " "my " "Lord! "

  \set stanza = "4."
  "\nHe " "walks " be "side " "me " "in " "the " "way: "
  "\nWhat " "a " won der "ful " Sa "viour! "
  "\nAnd " "keeps " "the " faith "ful " "day " "by " "day: "
  "\nWhat " "a " won der "ful " Sa "viour! "
  "\nWhat " "a " won der "ful " Sa "viour " "is " Je "sus, " "my " Je "sus! "
  "\nWhat " "a " won der "ful " Sa "viour " "is " Je "sus, " "my " "Lord! "

  \set stanza = "5."
  "\nHe " "gives " "me " ov er com "ing " "power: "
  "\nWhat " "a " won der "ful " Sa "viour! "
  "\nAnd " tri "umph " "in " "each " try "ing " "hour: "
  "\nWhat " "a " won der "ful " Sa "viour! "
  "\nWhat " "a " won der "ful " Sa "viour " "is " Je "sus, " "my " Je "sus! "
  "\nWhat " "a " won der "ful " Sa "viour " "is " Je "sus, " "my " "Lord! "

  \set stanza = "6."
  "\nTo " "Him " "I've " giv "en " "all " "my " "heart: "
  "\nWhat " "a " won der "ful " Sa "viour! "
  "\nThe " "world " "shall " ne "ver " "share " "a " "part: "
  "\nWhat " "a " won der "ful " Sa "viour! "
  "\nWhat " "a " won der "ful " Sa "viour " "is " Je "sus, " "my " Je "sus! "
  "\nWhat " "a " won der "ful " Sa "viour " "is " Je "sus, " "my " "Lord! "
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
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
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
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
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
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
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
               \RehearsalTrack
               \RehearsalTrack
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
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
