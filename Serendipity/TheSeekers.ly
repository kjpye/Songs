\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Seekers"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "George Dyson"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "John Masefield"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \minor
  \time 4/4
}

TempoTrack = {
  \global
  \tempo Broadly 4=88
  s1*2
  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    s1*20
  }
  s1*19
  s2 \tempo 4=80 s2
  \tempo 4=40 s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s1*2
  \repeat volta 2 {
    s1*2
    \textMark \markup { \box "1b" } s1*4
    \textMark \markup { \box "2a" } s1*5
    \textMark \markup { \box "2b" } s1*4
    \textMark \markup { \box "2c" } s1*5
  }
  \textMark \markup { \box "2d" } s1*4
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" } s1*4
  \textMark \markup { \box "3c" } s1*4
  \textMark \markup { \box "3d" } s1*5
}

melodyA = \relative {
  R1 | R |
}

melodyB = \relative {
  R1 | R |
  \tag #'dash {\slurDashed ees'8(8) \slurSolid 4 d ees8 f |}
  \tag #'v1   {            ees4                4 d ees8 f |}
  \tag #'v2   {            ees8  8             4 d ees8 f |}
  g2. 4 | bes4 4 c bes8(aes) |
  \tag #'dash {bes4(g2) \slurDashed ees8(f) \slurSolid |}
  \tag #'v2   {bes4(g2)             ees8(f)            |}
  \tag #'v1   {bes4(g2)             ees8 f             |}
  \tag #'dash {\slurDashed g4(8) \slurSolid 8 f4 g |} % 2a
  \tag #'v1   {            g4.              8 f4 g |}
  \tag #'v2   {            g4 8             8 f4 g |}
  aes2 g4 aes | bes4. 8 g4 bes | c2(d) |
  \tag #'dash {ees4 \slurDashed d8(8) \slurSolid c4 bes8 f |}
  \tag #'v1   {ees'4            d4               c4 bes8 f |}
  \tag #'v2   {ees'4            d8 8             c4 bes8 f |}
  g2. 4 | % 2b
  \tag #'dash {c4 \slurDashed 8(8) bes4 g8(8) \slurSolid |}
  \tag #'v1   {c4             8 8  bes4 g4               |}
  \tag #'v2   {c4             4    bes4 g8 8             |}
  \tag #'dash {ees2 \slurDashed f4.(8) \slurSolid|}
  \tag #'v1   {ees2             f2               |}
  \tag #'v2   {ees2             f4. 8            |}
  \tag #'dash {g4 4 f \slurDashed g8(8) \slurSolid | }
  \tag #'v1   {g4 4 f             g4               | }
  \tag #'v2   {g4 4 f             g8 8             | }
  \tag #'dash {\slurDashed ees4(c2) \slurSolid d4 |} % 2c
  \tag #'v2   {            ees4(c2)            d4 |}
  \tag #'v1   {            ees4 c2             d4 |}
  \tag #'dash {\slurHalfSolid ees 4(f g) \slurSolid bes |}
  \tag #'v1   {               ees,4(f g)            bes |}
  \tag #'v2   {               ees,4(f)g             bes |}
  g2 f | c'1 | R
}

melodyC = \relative {
  R1 | r2 r4 d' | ees4 8 8 d4 ees8(f) | g2. 8 8 | % 2d
  bes4 8 8 c4 bes8(aes) | bes4(g2) ees8(f) | g4. 8 f4 g | aes2(g4) aes | % 3a
  bes4 8 8 g4(bes) | c2(d) | ees4 d c bes8 f | g2. 4 |
  c4 4 bes g | ees2 f4. 8 | g4. 8 f4 g | ees(c2) d8 8 |
  ees4(f g) bes | <g ees'>2 <f d'> | c'1~ | 2 r | R1\fermata |
}

melody = {
  \global
  \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
  }
  \melodyC
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB
  \keepWithTag #'v2 \melodyB
  \melodyC
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  s1 | s |
  \repeat volta 2 {
    s1 | s |
    s1\mf | s | s | s |
    s1 | s | s4. s8\< s2 | s1 | s1\! | % 2a
    s1*4 |
    s1 s\< | s2 s\! | s1\f | s1 |
  }
  s1 | s2. s4\mp | s1 | s |
  s1*4 | % 3a
  s1\< | s | s\f | s |
  s1*4
  s1\<-\markup\italic largamente | s2 s\! | s1 | s | s |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  \set stanza = "1."
  Friends and loves we have none, nor wealth nor blessed a -- bode, __
  \nom But the \yesm hope, the burn -- ing hope, and the road, the o -- pen road. __
  Not for us are con -- tent, and qui -- \nom et and \yesm peace of mind,
  For we go seek -- ing \nom ci -- ties \yesm that we __ shall nev -- er find.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  \nom There is \yesm no so -- lace on earth for us __ for such as __ we, __
  Who __ \nom search for \yesm the hid -- den beau -- ty that eyes may nev -- er see. __
  \nom On -- ly \yesm the road and the dawn, the sun, the wind, \nom and the \yesm rain,
  \nom And the \yesm watch -- fire un -- \nom der the \yesm
  stars, __ and \nom sleep, _ and \yesm the road a -- gain.
}

wordsThree = \lyricmode {
  \set stanza = "3."
  We tra -- vel the dus -- ty __ road, till the light of the day is __ dim,__
  And __ sun -- set shows the spires __ a -- way on the world's __ rim. __
  Friends and loves we have none, nor wealth nor blessed a -- bode,
  But the hope, the burn -- ing hope, __
  And the road, __ the o -- pen road. __
}

midiWords = \lyricmode {
  \set stanza = "1."
  "Friends " "and " "loves " "we " "have " "none, " "nor " "wealth " "nor " "blessed " a "bode, " 
  "\nBut " "the " "hope, " "the " burn "ing " "hope, " "and " "the " "road, " "the " o "pen " "road. " 
  "\nNot " "for " "us " "are " con "tent, " "and " qui "et " "and " "peace " "of " "mind, "
  "\nFor " "we " "go " seek "ing " ci "ties " "that " "we "  "shall " nev "er " "find.\n"

  \set stanza = "2."
  "\nThere " "is " "no " so "lace " "on " "earth " "for " "us "  "for " "such " "as "  "we, " 
  "\nWho "  "search " "for " "the " hid "den " beau "ty " "that " "eyes " "may " nev "er " "see. " 
  "\nOn" "ly " "the " "road " "and " "the " "dawn, " "the " "sun, " "the " "wind, " "and " "the " "rain, "
  "\nAnd " "the " watch "fire " un "der " "the "   "\nstars, "  "and " "sleep, " "" "and " "the " "road " a "gain.\n"

  \set stanza = "3."
  "\nWe " tra "vel " "the " dus "ty "  "road, " "till " "the " "light " "of " "the " "day " "is "  "dim,__ "
  "\nAnd "  sun "set " "shows " "the " "spires "  a "way " "on " "the " "world's "  "rim. " 
  "\nFriends " "and " "loves " "we " "have " "none, " "nor " "wealth " "nor " "blessed " a "bode, "
  "\nBut " "the " "hope, " "the " burn "ing " "hope, " 
  "\nAnd " "the " "road, "  "the " o "pen " "road. " 
}

pianoRHone = \relative {
  \global \oneVoice
  <g' c ees>2-> <aes c f>4-> <f c' d>-> | <g c ees>2-> <f c' d>4-> <d aes' bes>-> |
  \repeat volta 2 {
    <ees g c>2-> <c f aes>4 <aes c d f> |
    <g c ees g>2 <aes c f>4 <f c' d> |
    <c' ees>4-- q-- <c d>-- \voiceOne ees8-- f-- | % 1b
    <g, c g'>2. <ees' g>4 |
    bes'4 4 c bes8 aes |
    bes4 g2 <bes, c ees>8 <aes d f> |
    <ees' g>2 <aes, ees' f>4 <g d' ees g> | % 2a
    <c ees aes>2 <d g>4 <c ees aes> |
    bes'4. 8 <d, g>4 <des g bes> |
    <c c'>2 <f d'> | <ees g ees'>4 <d f d'> <c ees c'> bes'8 f |
    <g, bes g'>2. <g des' g>4 | % 2b
    c'4 4 <aes, d bes'> <g ees' g> |
    ees'2 <c d f> |
    g'4 4 <f, c' f> <g d' g> |
    ees'4 c2 <aes bes d>4 | % 2c
    ees'4 <d f> <bes ees g> <bes f' bes> |
    <g ees' g>2-- <f c' d f>-- |
    <g' c ees>2-> <aes c f>4-> <f c' d>-> |
    <g c ees>2-> <f c' d>4-> <d aes' bes>-> |
  }
  <ees g c>2-> <c f aes>4 <aes c d f> | % 2d
  <g c ees g>2 <aes c f>4 <f c' d> |
  <c' ees>4 4 <c d> ees8 f |
  <g, c g'>2. <ees' g>4 |
  bes'4 4 c bes8 aes | % 3a
  bes4 g2 <bes, c ees>8 <aes d f> |
  <ees' g>2 <aes, ees' f>4 <g d' ees g> |
  <c ees aes>2 <d g>4 <c ees aes> |
  <bes ees bes'>2 <d g>4 <des g bes> | % 3b
  <c c'>2 <f f'> |
  <ees g ees'>4 <d f d'> <c ees c'> bes'8 f |
  <g, bes g'>2. <des' g>4 |
  c'4 4 <aes, d bes'> <g ees' g> | % 3c
  ees'2 <c d f> |
  g'4. 8 <f, c' f>4 <g d' g> |
  ees'4(c2) <aes bes d>4 |
  ees'4 <d f> <bes ees g> <bes f' bes> | % 3d
  <g ees' g>2-- <f c' d f>-- |
  <g' c e>2-> <aes c f>4-> <f c' d>-> |
  <g c e>2-> <aes, c f>4-- <f c' d>-- |
  <c' e>1--\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s1 | s |
  \repeat volta 2 {
    s1 | s |
    s2. <aes c>4 | g'4 f ees d8 c | <bes ees>2 <c ees> | <bes ees>2. s4 |
    g4 bes s2 | s1 | <bes ees>2 s | g'4 f aes g | s2. <bes, f'>4 | % 2a
    s1 | <c ees>2 s | bes4 aes s2 | <g b>2 s |
    s1 | bes2 s | s1 | s | s |
  }
  s1 | s | s2. <aes c>4 | g'4 f ees d8 c |
  <bes ees>2 <c ees> | <bes ees>2. s4 | g4 bes s2 | s1 | % 3a
  s1 | g'4 f aes g | s2. <bes, f'>4 | s1 |
  <c ees>2 s | bes4 aes s2 | <g b>2 s | s1 |
  bes2 s | s1 | s | s | s |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s |
  \repeat volta 2 {
    s4 s4-\markup\italic simile s2\> | s2. s4\! |
    s1\mf | s | s1-\markup\italic simile | s |
    s1 | s | s4 s2.\< | s1 | s\! | % 2a
    s1*4 |
    s1 | s\< | s2. s4\! | s1\f | s |
  }
  s2 s\> | s2. s4\mp | s1 | s |
  s1*4 | % 3a
  s1\< | s | s\f | s |
  s1*4 |
  s1\<-\markup\italic largamente | s | s\ff | s2 s-\markup\italic rit. | s1 |
}

pianoLHone = \relative {
  \global \voiceOne 
  <g c ees>2-> <aes c f>4-> <f c' d>-> | <g c ees>2-> <f c' d>4 <d aes' bes> |
  \repeat volta 2 {
    <ees g c>2-> s2 | s1 |
    <c g'>4-- <bes g'>-- <aes f'>-- f-- | % 1b
    <ees ees'>4-- <d d'>-- <c c'>-- <bes bes'>8-- <aes aes'>-- |
    <g g'>4-- <g' g'> <aes aes'> <f f'> |
    <g g'> <ees ees'> <c c'> <bes bes'> |
    <ees ees'>4 <d d'> <c c'> <bes bes'> | % 2a
    <g' g'>4 <f f'> <bes bes'> <aes aes'> |
    <aes aes'>4 <g g'> <f f'> <ees ees'> |
    \voiceOne bes''4 aes c b |
    c,4 d ees \oneVoice <d, d'> |
    <f f'>4 <ees ees'> <d d'> <ees ees'> | % 2b
    <bes' bes'>4 <aes aes'>8 <g g'> <f f'>4 <ees ees'>8 <d d'> |
    <c c'>2 \voiceOne g''4 f |
    g,2 <a, a'>4 <b b'> |
    <ees' g>2. s4 | % 2c
    <g,, g'>4 <bes bes'> <ees ees'> <d d'>-- ~ |
    q4 <c c'>-> <bes bes'>-> <aes aes'>-> |
    \voiceTwo <g'' c ees>2-> <aes c f>4-> <f c' d>-> |
    <g c ees>2-> <f c' d>4-> <d aes' bes>->
  }
  \voiceOne <ees g c>2-> s | % 2d
  s1 |
  \oneVoice <c g'>4 <bes g'> <aes f'> f |
  <ees ees'>4 <d d'> <c c'> <bes bes'>8 <aes aes'> |
  <g g'>4 <g' g'> <aes aes'> <f f'> | % 3a
  <g g'>4 <ees ees'> <c c'> <bes bes'> |
  <ees ees'>4 <d d'> <c c'> <bes bes'> |
  <g' g'>4 <f f'> <bes bes'> <aes aes'> |
  <aes aes'>4 <g g'> <f f'> <ees ees'> | % 3b
  bes''4 aes c b |
  c,4 d ees <d, d'> |
  <f f'>4 <ees ees'> <d d'> <ees ees'> |
  <bes' bes'>4 <aes aes'>8 <g g'> <f f'>4 <ees ees'>8 <d d'> | % 3c
  <c c'>2 aes' |
  \voiceOne g2 <a, a'>4 <b b'> |
  <ees' g>2. s4 |
  <g,, g'>4 <bes bes'> <ees ees'> <d d'>-- ~ | % 3d
  q4 <c c'>-> <bes bes'>-> <aes aes'>-> |
  \voiceTwo <g'' c e>2-> <aes c f>4-> <f c' d>-> |
  <g c e>2-> s |
  <c,, g' c e g>1\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  r4 <c, g'>2.-- | r4 q2. |
  \repeat volta 2 {
    r4 q2.~ | 4 2. |
    s1 | s | s | s | % 1b
    s1 | s | s | aes'2 g | <c, g'>2. s4 | % 2a
    s1 | s | s2 aes' | g4(g,) s2 |
    <c c'>4 <bes bes'> <aes aes'> <g g'>8 <f f'> | s1 | s | r4 <c c'>2. | r4 <c' g'>2.-- |
  }
  r4 <c c'>2.~ | \voiceOne 4 <c g'>2. | s1 | s |
  s1 | s | s | s | % 3a
  s1 | \voiceTwo aes'2 g | <c, g'>2. s4 | s1 |
  s1 | s2 aes' | g4(g,) s2 | <c c'>4 <bes bes'> <aes aes'> <g g'>8 <f f'> |
  s1 | s | r4 <c c'>2.\sf | r4 q2. | s1 |
  \bar "|."
}

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" {\wordsOne \wordsThree}
            \new Lyrics \lyricsto "melody" \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "single")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" { \wordsOne \wordsTwo \wordsThree}
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}


\book {
  #(define output-suffix "singlepage")
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
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" { \wordsOne \wordsTwo \wordsThree}
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
