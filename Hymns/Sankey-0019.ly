\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lord Will Provide."
  subtitle    = "Sankey No. 19"
  subsubtitle = "Sankey 880 No. 21"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Philip Phillips"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Mrs. M. W. Cooke"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*5
  \mark \markup { \box "D" } s2.*4 s2
}

TempoTrack = {
  \tempo 4=120
  s4
  s2.*5
  s2.*5
  s2.*5
  s2. % D
  s2.
  \tempo 4=60 s2 \tempo 4=120 s4
  s2.
  s2
}

soprano = \relative c' {
  \global
  \repeat volta 4 {
    c4
    f4 f g
    a4 a g
    a4 a bes
    c2 4
    d4 d d
    d4 c a % B
    c4 c c
    c4 bes g
    a4 bes c
    d4 c f,8(g)
    a4 a g % C
    f2 \bar "||" f8^\markup{\upright Chorus} a
    c4 c c
    c2 a4
    bes4 bes bes
    g2 8 8 % D
    a4 g f
    c'2\fermata f,8(g)
    a4 a8(g) f(e)
    f2
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 4 {
    c4
    c4 c e
    f4 f e
    f4 f g
    a2 f4
    f4 f f
    f4 f f % B
    g4 g f
    e4 g e
    ees4 d f
    f4 f f8(g)
    f4 f e % C
    f2 \bar "||" f8 f
    e4 e e
    f2 f4
    f4 f f
    e2 e8 e % D
    f4 f f
    e2\fermata f8(g)
    f4 c c
    c2
  }
}

tenor = \relative c' {
  \global
  \repeat volta 4 {
    a4
    a4 a c
    c4 c c
    c4 c c
    f2 a,4
    bes4 bes bes
    bes4 a c % B
    c4 bes a
    g4 c c
    c4 bes a
    bes4 a c8(d)
    c4 c bes % C
    a2 \bar "||" 8 8
    g4 g g
    a2 c4
    d4 d d
    c2 8 8 % D
    c4 bes a
    g2\fermata c8(d)
    c4 c8(bes) a(g)
    a2
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 4 {
    f4
    f4 f c
    f4 f c
    f4 f f
    f2 4
    bes,4 bes bes
    bes4 f' f % B
    e4 e f
    c4 c c
    f4 f f
    f4 f a,8(bes)
    c4 c c % C
    f2 \bar "||" f8 f
    c4 c c
    f2 f4
    bes,4 bes bes
    c2 8 8 % D
    f4 f f
    c2\fermata a8(bes)
    c4 c c
    f2
  }
}

chorus = \lyricmode {
  Then, we'll trust in the Lord,
  And He will pro- vide;
  Yes, we'll trust in the Lord,
  And He will pro- vide.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  In some way or o- ther the Lord will pro- vide:
  It may not be \markup{\italic my}  way,
  It may not be \markup{\italic thy} way;
  And yet, in His \markup{\italic own} way,
  "\"the" Lord will pro- "vide.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  At some time or o- ther the Lord will pro- vide:
  It may not be \markup{\italic my} time,
  It may not be \markup{\italic thy} time;
  And yet, in His \markup{\italic own} time.
  "\"the" Lord will pro- "vide.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Des- pond then no long- er; the Lord will pro- vide;
  And this be the to- ken—
  No word He hath spo- ken
  Was ev- er yet bro- ken:
  "\"the" Lord will pro- "vide.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  March on then right bold- ly; the sea shall div- ide;
  The path- way made glo- rious,
  With shout- ings vic- to- rious,
  We'll join in the cho- rus,
  "\"the" Lord will pro- "vide.\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nIn " "some " "way " "or " o "ther " "the " "Lord " "will " pro "vide: "
  "\nIt " "may " "not " "be " "my " "way, "
  "\nIt " "may " "not " "be " "thy " "way; "
  "\nAnd " "yet, " "in " "His " "own " "way, "
  "\n\"the " "Lord " "will " pro "vide.\" "
  "\nThen, " "we'll " "trust " "in " "the " "Lord, "
  "\nAnd " "He " "will " pro "vide; "
  "\nYes, " "we'll " "trust " "in " "the " "Lord, "
  "\nAnd " "He " "will " pro "vide. "

  \set stanza = "2."
  "\nAt " "some " "time " "or " o "ther " "the " "Lord " "will " pro "vide: "
  "\nIt " "may " "not " "be " "my " "time, "
  "\nIt " "may " "not " "be " "thy " "time; "
  "\nAnd " "yet, " "in " "His " "own " "time. "
  "\n\"the " "Lord " "will " pro "vide.\" "
  "\nThen, " "we'll " "trust " "in " "the " "Lord, "
  "\nAnd " "He " "will " pro "vide; "
  "\nYes, " "we'll " "trust " "in " "the " "Lord, "
  "\nAnd " "He " "will " pro "vide. "

  \set stanza = "3."
  "\nDes" "pond " "then " "no " long "er; " "the " "Lord " "will " pro "vide; "
  "\nAnd " "this " "be " "the " to "ken— "
  "\nNo " "word " "He " "hath " spo "ken "
  "\nWas " ev "er " "yet " bro "ken: "
  "\n\"the " "Lord " "will " pro "vide.\" "
  "\nThen, " "we'll " "trust " "in " "the " "Lord, "
  "\nAnd " "He " "will " pro "vide; "
  "\nYes, " "we'll " "trust " "in " "the " "Lord, "
  "\nAnd " "He " "will " pro "vide. "

  \set stanza = "4."
  "\nMarch " "on " "then " "right " bold "ly; " "the " "sea " "shall " div "ide; "
  "\nThe " path "way " "made " glo "rious, "
  "\nWith " shout "ings " vic to "rious, "
  "\nWe'll " "join " "in " "the " cho "rus, "
  "\n\"the " "Lord " "will " pro "vide.\" "
  "\nThen, " "we'll " "trust " "in " "the " "Lord, "
  "\nAnd " "He " "will " pro "vide; "
  "\nYes, " "we'll " "trust " "in " "the " "Lord, "
  "\nAnd " "He " "will " pro "vide. "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
            \new Lyrics \lyricsto "soprano" \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
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
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano  \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
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
    \unfoldRepeats
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
  >>
    \midi {}
  }
}
