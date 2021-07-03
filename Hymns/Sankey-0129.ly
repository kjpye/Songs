\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "There is a Fountain."
  subtitle    = "Sankey No. 129"
  subsubtitle = "Sankey 880 No. 45"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Old Melody (arr.)"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. Cowper."
  meter       = "C.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \repeat volta 2 {
    \mark \markup { \box "C" } s4 s1*3 s2.
    \mark \markup { \box "D" } s4 s1*3 s2.
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  c'8[e]
  g4. a8 g4 c
  c4. a8 g4 c,8[e]
  g4. 8 a8[g] e[c]
  d2. \bar "|" \break \partial 4 c8[e]
  g4. a8 g4 c % B
  c4. a8 g4 c8[d]
  e4. c8 d4 e
  c2. \bar "|" \break \partial 4
  \repeat volta 2 {
    c8^\markup\smallCaps Refrain. [d]
    e4. c8 d4 e % C
    c4.(a8 c4) a
    g4. 8 a8[g] e[c]
    d2. \bar "|" \break \partial 4 c8[e]
    g4. a8 g4 c % D
    c4. a8 g4 c8[d]
    e4. c8 d4 e
    c2.
  }
}

alto = \relative {
  \autoBeamOff
  c'4
  e4. f8 e4 g
  f4. 8 e4 c
  e4. 8 f[e] e[c]
  b2. c4
  e4. f8 e4 g % B
  f4. 8 e4 e8[f]
  g4. e8 f4 g
  e2.
  \repeat volta 2 {
    e8[f]
    g4. e8 f4 g % C
    f4.( 8 4) 4
    e4. 8 f[e] e[c] d2. c4
    e4. f8 e4 g % D
    f4. 8 e4 e8[f]
    g4. e8 f4 g
    e2.
  }
}

tenor = \relative {
  \autoBeamOff
  e8[g]
  c4. 8 4 g
  a4. c8 4 4
  c4. 8 4 g
  g2. e8[g]
  c4. 8 4 g % B
  a4. c8 4 4
  c4. 8 b4 g
  g2.
  \repeat volta 2 {
    c4
    c4. 8 b4 c % C
    c2. 4
    c4. 8 4 g
    g2. e8[g]
    c4. 8 4 g % D
    a4. c8 4 4
    c4. 8 g4 g
    g2.
  }
}

bass= \relative {
  c4
  c4. 8 4 e
  f4. 8 c4 4
  c4. 8 4 8[e]
  g2. c,4
  c4. 8 4 e % B
  f4. 8 c4 4
  c4. 8 g'4 4
  c,2.
  \repeat volts 2 {
    c'4
    c4. 8 g4 c, % C
    f2. 4
    c4. 8 4 8[e]
    g2. c,4
    c4. 8 4 e % D
    f4. 8 c4 4
    c4. 8 g'4 4
    c,2.
  }
}

chorusOne = \lyricmode {
  Lose all their guil -- ty stains, __
  Lose all their guil -- ty stains;
  And sin -- ners plunged be -- neath that flood
  Lose all their guil -- ty stains.
}

chorusTwo = \lyricmode {
  Wash all my sins a -- way, __
  Wash all my sins a -- way;
  And there may I, tho' vile as he,
  Wash all my sins a -- way.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  There is a foun -- tain filled with blood,
  Drawn from Im -- man -- uel's veins,
  And sin -- ners plunged be -- neath that flood
  Lose all their guil -- ty stains.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The dy -- ing thief re -- joiced to see
  That foun -- tain in his day;
  And there may I, tho' vile as he,
  Wash all my sins a -- way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  E'er since by faith I saw the stream
  Thy flow -- ing wounds sup -- ply,
  Re -- deem -- ing love has been my theme,
  And shall be till I die.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Then in a nob -- ler, sweet -- er song
  I'll sing Thy power to save,
  When this poor lisp -- ing, stamm -- 'ring tongue
  Lies si -- lent in the grave.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "is " "a " foun "tain " "filled " "with " "blood, "
  "\nDrawn " "from " Im man "uel's " "veins, "
  "\nAnd " sin "ners " "plunged " be "neath " "that " "flood "
  "\nLose " "all " "their " guil "ty " "stains. "
  "\nLose " "all " "their " guil "ty " "stains, " 
  "\nLose " "all " "their " guil "ty " "stains; "
  "\nAnd " sin "ners " "plunged " be "neath " "that " "flood "
  "\nLose " "all " "their " guil "ty " "stains. "
  "\nWash " "all " "my " "sins " a "way, " 
  "\nWash " "all " "my " "sins " a "way; "
  "\nAnd " "there " "may " "I, " "tho' " "vile " "as " "he, "
  "\nWash " "all " "my " "sins " a "way. "

  \set stanza = "2."
  "\nThe " dy "ing " "thief " re "joiced " "to " "see "
  "\nThat " foun "tain " "in " "his " "day; "
  "\nAnd " "there " "may " "I, " "tho' " "vile " "as " "he, "
  "\nWash " "all " "my " "sins " a "way. "
  "\nLose " "all " "their " guil "ty " "stains, " 
  "\nLose " "all " "their " guil "ty " "stains; "
  "\nAnd " sin "ners " "plunged " be "neath " "that " "flood "
  "\nLose " "all " "their " guil "ty " "stains. "
  "\nWash " "all " "my " "sins " a "way, " 
  "\nWash " "all " "my " "sins " a "way; "
  "\nAnd " "there " "may " "I, " "tho' " "vile " "as " "he, "
  "\nWash " "all " "my " "sins " a "way. "

  \set stanza = "3."
  "\nE'er " "since " "by " "faith " "I " "saw " "the " "stream "
  "\nThy " flow "ing " "wounds " sup "ply, "
  "\nRe" deem "ing " "love " "has " "been " "my " "theme, "
  "\nAnd " "shall " "be " "till " "I " "die. "
  "\nLose " "all " "their " guil "ty " "stains, " 
  "\nLose " "all " "their " guil "ty " "stains; "
  "\nAnd " sin "ners " "plunged " be "neath " "that " "flood "
  "\nLose " "all " "their " guil "ty " "stains. "
  "\nWash " "all " "my " "sins " a "way, " 
  "\nWash " "all " "my " "sins " a "way; "
  "\nAnd " "there " "may " "I, " "tho' " "vile " "as " "he, "
  "\nWash " "all " "my " "sins " a "way. "

  \set stanza = "4."
  "\nThen " "in " "a " nob "ler, " sweet "er " "song "
  "\nI'll " "sing " "Thy " "power " "to " "save, "
  "\nWhen " "this " "poor " lisp "ing, " stamm "'ring " "tongue "
  "\nLies " si "lent " "in " "the " "grave. "
  "\nLose " "all " "their " guil "ty " "stains, " 
  "\nLose " "all " "their " guil "ty " "stains; "
  "\nAnd " sin "ners " "plunged " be "neath " "that " "flood "
  "\nLose " "all " "their " guil "ty " "stains. "
  "\nWash " "all " "my " "sins " a "way, " 
  "\nWash " "all " "my " "sins " a "way; "
  "\nAnd " "there " "may " "I, " "tho' " "vile " "as " "he, "
  "\nWash " "all " "my " "sins " a "way. "
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
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorusOne }
            \new Lyrics \lyricsto "aligner" { \wordsTwo \chorusTwo }
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusOne \chorusTwo
                                              \wordsTwo   \chorusOne \chorusTwo
                                              \wordsThree \chorusOne \chorusTwo
                                              \wordsFour  \chorusOne \chorusTwo
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusOne \chorusTwo
                                              \wordsTwo   \chorusOne \chorusTwo
                                              \wordsThree \chorusOne \chorusTwo
                                              \wordsFour  \chorusOne \chorusTwo
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
    \articulate
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
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff =alto 
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
