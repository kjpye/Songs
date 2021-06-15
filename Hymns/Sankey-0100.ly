\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Rifted Rock."
  subtitle    = "Sankey No. 100"
  subsubtitle = "Sankey 880 No. 238"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer     = \markup\smallCaps "R. Lowey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. T. Hartsough."
  meter       = "8.7."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key g \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \repeat unfold 2 {
    \mark \markup { \box "C" } s4 s2.*3 s2
    \mark \markup { \box "D" } s4 s2.*3 s2
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  g'8. a16
  b4. g8 a8. g16
  g8 e4. g8. e16
  d4. g8 a8. b16
  a2 \bar "|" \break \partial 4 g8. a16
  b4. g8 a8. g16 % B
  fis8 e4. fis8. g16
  a4. fis8 e8. fis16
  d2
  \repeat unfold 2 {
    \bar "|" \break \partial 4
    d'8. 16
    d4. b8 a g % C
    e8 d4. g8. a16
    b4. g8 a8. b16
    a2 \bar "|" \break \partial 4 d8. 16
    d4. b8 a g
    g8 e4. g8. a16
    b4. g8 a8. 16
    g2
  }
}

alto = \relative {
  d'8. 16
  g4. d8 8. 16
  e8 c4. e8. c16
  d4. 8 fis8. g16
  fis2 g8. 16
  g4. d8 8. 16 % B
  d8 c4. d8. 16
  d4. 8 cis8. 16
  d2
  \repeat unfold 2 {
    d8. 16
    g4. 8 d d % C
    c8 b4. d8. 16
    g4. d8 fis8. g16
    fis2 8. 16
    g4. 8 d d % D
    e8 c4. d8. e16
    d4. 8 fis8. 16
    g2
  }
}

tenor = \relative {
  b8. c16
  d4. b8 c8. b16
  c8 g4. c8. g16
  g4. b8 c8. d16
  d2 b8. c16
  d4. b8 c8. b16 % B
  c8 g4. a8. g16
  fis4. a8 g8. a16
  fis2
  \repeat unfold 2 {
    b8. 16
    b4. d8 c b % C
    g8 4. b8. c16
    d4. b8 d8. 16
    d2 a8. 16
    b4. d8 c b % D
    c8 g4. 8. 16
    g4. b8 c8. 16
    b2
  }
}

bass= \relative {
  g8. 16
  g4. 8 fis8. g16
  c,8 4. 8. 16
  b4. b'8 a8. g16
  d2 g8. 16
  g4. 8 fis8. g16
  c,8 4. 8. b16
  a4. 8 8. 16
  d2
  \repeat unfold 2 {
    g8. 16
    g4. 8 8 8 % C
    g8 4. 8. 16
    g4. 8 d8. g16
    d2 8. 16
    g4. 8 8 8 % D
    c,8 4. b8. c16
    d4. 8 8. 16
    g,2
  }
}

chorus = \lyricmode {
  In the Rift -- ed Rock I'm rest -- ing,
  Sure and Safe from all a -- larm;
  Storms and bil -- lows have u -- ni -- ted,
  All in vain, to do me harm.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  In the Rift -- ed Rock I'm rest -- ing,
  Sure and safe from all a -- larml
  Storms and bil -- lows have u -- ni -- ted,
  All in vain, to do me harm:
  In the Rift -- ed Rock I'm rest -- ing,
  Surf is dash -- ing at my feet,
  Storm -- clouds dark are o'er me hov -- 'ring,
  Yet my rest is all com -- plete.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Many a storm -- y sea I've trav -- ersed,
  Many a tem -- pest shock have known;
  Have been driv -- en, with -- out an -- chor,
  On the bar -- ren shore and lone.
  Yet I now have found a ha -- ven,
  Nev -- er moved by tem -- pest shock,
  Where my soul is safe for ev -- er,
  In the bles -- sed Rift -- ed Rock.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "the " Rift "ed " "Rock " "I'm " rest "ing, "
  "\nSure " "and " "safe " "from " "all " a "larml "
  "\nStorms " "and " bil "lows " "have " u ni "ted, "
  "\nAll " "in " "vain, " "to " "do " "me " "harm: "
  "\nIn " "the " Rift "ed " "Rock " "I'm " rest "ing, "
  "\nSurf " "is " dash "ing " "at " "my " "feet, "
  "\nStorm" "clouds " "dark " "are " "o'er " "me " hov "'ring, "
  "\nYet " "my " "rest " "is " "all " com "plete. "
  "\nIn " "the " Rift "ed " "Rock " "I'm " rest "ing, "
  "\nSure " "and " "Safe " "from " "all " a "larm; "
  "\nStorms " "and " bil "lows " "have " u ni "ted, "
  "\nAll " "in " "vain, " "to " "do " "me " "harm. "

  \set stanza = "2."
  "\nMany " "a " storm "y " "sea " "I've " trav "ersed, "
  "\nMany " "a " tem "pest " "shock " "have " "known; "
  "\nHave " "been " driv "en, " with "out " an "chor, "
  "\nOn " "the " bar "ren " "shore " "and " "lone. "
  "\nYet " "I " "now " "have " "found " "a " ha "ven, "
  "\nNev" "er " "moved " "by " tem "pest " "shock, "
  "\nWhere " "my " "soul " "is " "safe " "for " ev "er, "
  "\nIn " "the " bles "sed " Rift "ed " "Rock. "
  "\nIn " "the " Rift "ed " "Rock " "I'm " rest "ing, "
  "\nSure " "and " "Safe " "from " "all " a "larm; "
  "\nStorms " "and " bil "lows " "have " u ni "ted, "
  "\nAll " "in " "vain, " "to " "do " "me " "harm. "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "single"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
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
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor }
                                            { \global \bass \bass }
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
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor }
                                            { \global \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
