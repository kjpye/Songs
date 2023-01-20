\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Twenty Tons of TNT"
  subtitle    = "Flanders & Swann"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 17)

global = {
  \key ees \major
  \time 2/4
}

drumPitchNames.kk = #'woodblock
#(define mystyle
  '((woodblock cross   #f  0)
  ))

midiDrumPitches.woodblock = e'

DrumTrack = \drummode {
  \repeat volta 5 {
    kk8 r kk kk | r kk kk r |
    s2*14
    \alternative {
      {s2 | s |}
      {kk8 r kk kk | r kk kk r |}
    }
  }
  s2 | s 
}

TempoTrack = {
  \tempo "Stern and Forceful" 4=80
  \repeat volta 5 {
    s2
    \set Score.tempoHideNote = ##t
    s2*14
    \tempo "poco rit." 4=75 s2
    \alternative {
      {\tempo "a tempo" 4=80 s2 | s |}
      {\tempo "a tempo" 4=80 s2 | s |}
    }
  }
  \tempo "a tempo" 4=80 s2
  \tempo "poco rit." 4=75 s2
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
                                %  \mark \markup { \box 5 }
  \repeat volta 5 {
    \textMark \markup { \circle "63a" } s2*5
    \textMark \markup { \circle "63b" } s2*5
    \textMark \markup { \circle "63c" } s2*5
    \textMark \markup { \circle "63d" } s2
    \alternative {
      {s2*2}
      {s2*2}
    }
  }
  s2
}

melodyA = \relative {
  \override NoteHead.style = #'cross
  ees'8->\omit\ppppp r8 8-> 8-> | r8 8-> 8-> r\omit\f |
  \revert NoteHead.style
  ees8 g g ees | f ees c bes |
  \tag #'dash {<<{ees8 ees} \new Voice {\voiceTwo \tiny ees8. 16}>>  ees8 ees |}
  \tag #'v1   {ees8 ees ees ees |}
  \tag #'v2   {ees8. ees16 ees8 ees |}
  ees8 d ees4 | 8 g g ees | f ees c bes |
  \tag #'dash {<<{ees16 8. 16 8.} \new Voice {\voiceTwo \tiny ees8 8 8 8}>> |}
  \tag #'v1   {ees16 8. 16 8. |}
  \tag #'v2   {ees8 8 8 8 |}
  ees d ees4 |
  aes8 c c aes | g bes g ees | aes c c aes | bes bes bes4 | ees8. c16 bes8 g |
  f8 ees c bes
}

melodyB = \relative {ees'8. 16 8 8 | ees d ees4 }
melodyC = \relative {\override NoteHead.style = #'cross ees'8->\omit\ppppp r ees-> ees-> | r ees-> ees-> r\omit\f \revert NoteHead.style|}
melodyD = \relative {ees'8. 16 8 8 | 8 d ees4 |}

melody = {
  \global
  \repeat volta 5 {
    \keepWithTag #'dash \melodyA
    \alternative {
      {\melodyB}
      {\melodyC}
    }
  }
  \melodyD
  \bar "|."
}

melodySingle = {
  \global
  \keepWithTag #'v1 \melodyA \melodyB \section \break
  \keepWithTag #'v2 \melodyA \melodyB \section \break
  \keepWithTag #'v2 \melodyA \melodyB \section \break
  \keepWithTag #'v2 \melodyA \melodyB \section \break
  \keepWithTag #'v2 \melodyA \melodyC
  \melodyD
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  s2 | s | s\f | s | s |
}

wordsOne = \lyricmode {
  _ _ _ _ _
  \set stanza = "1."
  I have seen it e -- sti -- ma -- ted:
  Some -- where be -- tween death and birth
  There are now three thou -- sand mil -- lion
  Peo -- ple li -- ving on this earth
  And the stock -- piled mass des -- truc -- tion
  Of the Nu -- clear Powers -- That -- Be
  E -- quals for each man or wo -- man
  Twen -- ty tons of T. N. T.
}

wordsTwo = \lyricmode {
  _ _ _ _ _
  \set stanza = "2."
  E -- very man of e -- very na -- tion
  "(Twen" -- ty tons of T. N. "T.)"
  Shall re -- ceive this al -- loc -- a -- tion
  Twen -- ty tons of T. N. T.
  Tex -- an, Ban -- tu, Slav or Mao -- ri,
  Arg -- en -- tine or Singh -- a -- lee,
  Ev -- 'ry mai -- den brings this dow -- ry
  Twen -- ty tons of T. N. T.
}

wordsThree = \lyricmode {
  _ _ _ _ _
  \set stanza = "3."
  Not for thir -- ty sil -- ver shil -- ling
  Twen -- ty tons of T. N. T.
  Twen -- ty thou -- sand pounds a kill -- ing—
  Twen -- ty tons of T. N. T.
  Twen -- ty hun -- dred years of teach -- ing,
  Give to each his leg -- a -- cy,
  Pla -- to, Bud -- dha Christ or Len -- in,
  Twen -- ty tons of T. N. T.
}

wordsFour = \lyricmode {
  _ _ _ _ _
  \set stanza = "4."
  Fath -- er, Moth -- er, Son and Daugh -- ter,
  Twen -- ty tons of T. N. T.
  Give us land and seed and wa -- ter,
  Twen -- ty tons of T. N. T.
  Chil -- dren have no need of sha -- ring;
  At each new na -- tiv -- i -- ty
  Come the ghost -- ly Ma -- gi bear -- ing
  Twen -- ty tons of T. N. T.
}

wordsFive = \lyricmode {
  _ _ _ _ _
  \set stanza = "5."
  Ends the tale that has no se -- quel
  Twen -- ty tons of T. N. T.
  Now in death are all men e -- qual
  Twen -- ty tons of T. N. T.
  Teach me how to love my neigh -- bour,
  Do to him as he to me;
  Share the fruits of all our lab -- our
  _ _ _ _ _
  _ _ _ _ _ _ _
  Twen -- ty tons of T. N. T.
}

wordsSingle = \lyricmode {
  _ _ _ _ _
  \set stanza = "1."
  I have seen it e -- sti -- ma -- ted:
  Some -- where be -- tween death and birth
  There are now three thou -- sand mil -- lion
  Peo -- ple li -- ving on this earth
  And the stock -- piled mass des -- truc -- tion
  Of the Nu -- clear Powers -- That -- Be
  E -- quals for each man or wo -- man
  Twen -- ty tons of T. N. T.

  _ _ _ _ _
  \set stanza = "2."
  E -- very man of e -- very na -- tion
  "(Twen" -- ty tons of T. N. "T.)"
  Shall re -- ceive this al -- loc -- a -- tion
  Twen -- ty tons of T. N. T.
  Tex -- an, Ban -- tu, Slav or Mao -- ri,
  Arg -- en -- tine or Singh -- a -- lee,
  Ev -- 'ry mai -- den brings this dow -- ry
  Twen -- ty tons of T. N. T.

  _ _ _ _ _
  \set stanza = "3."
  Not for thir -- ty sil -- ver shil -- ling
  Twen -- ty tons of T. N. T.
  Twen -- ty thou -- sand pounds a kill -- ing—
  Twen -- ty tons of T. N. T.
  Twen -- ty hun -- dred years of teach -- ing,
  Give to each his leg -- a -- cy,
  Pla -- to, Bud -- dha Christ or Len -- in,
  Twen -- ty tons of T. N. T.

  _ _ _ _ _
  \set stanza = "4."
  Fath -- er, Moth -- er, Son and Daugh -- ter,
  Twen -- ty tons of T. N. T.
  Give us land and seed and wa -- ter,
  Twen -- ty tons of T. N. T.
  Chil -- dren have no need of sha -- ring;
  At each new na -- tiv -- i -- ty
  Come the ghost -- ly Ma -- gi bear -- ing
  Twen -- ty tons of T. N. T.

  _ _ _ _ _
  \set stanza = "5."
  Ends the tale that has no se -- quel
  Twen -- ty tons of T. N. T.
  Now in death are all men e -- qual
  Twen -- ty tons of T. N. T.
  Teach me how to love my neigh -- bour,
  Do to him as he to me;
  Share the fruits of all our lab -- our
  _ _ _ _ _
  Twen -- ty tons of T. N. T.
}

midiWords = \lyricmode {
  "" "" "" "" ""
  \set stanza = "1."
  "I " "have " "seen " "it " e sti ma "ted: "
  "\nSome" "where " be "tween " "death " "and " "birth "
  "\nThere " "are " "now " "three " thou "sand " mil "lion "
  "\nPeo" "ple " li "ving " "on " "this " "earth "
  "\nAnd " "the " stock "piled " "mass " des truc "tion "
  "\nOf " "the " Nu "clear " Powers That "Be "
  "\nE" "quals " "for " "each " "man " "or " wo "man "
  "\nTwen" "ty " "tons " "of " "T. " "N. " "T.\n"

  "" "" "" "" ""
  \set stanza = "2."
  "\nE" "very " "man " "of " e "very " na "tion "
  "\n(Twen" "ty " "tons " "of " "T. " "N. " "T.) "
  "\nShall " re "ceive " "this " al loc a "tion "
  "\nTwen" "ty " "tons " "of " "T. " "N. " "T. "
  "\nTex" "an, " Ban "tu, " "Slav " "or " Mao "ri, "
  "\nArg" en "tine " "or " Singh a "lee, "
  "\nEv" "'ry " mai "den " "brings " "this " dow "ry "
  "\nTwen" "ty " "tons " "of " "T. " "N. " "T.\n"

  "" "" "" "" ""
  \set stanza = "3."
  "\nNot " "for " thir "ty " sil "ver " shil "ling "
  "\nTwen" "ty " "tons " "of " "T. " "N. " "T. "
  "\nTwen" "ty " thou "sand " "pounds " "a " kill "ing— "
  "\nTwen" "ty " "tons " "of " "T. " "N. " "T. "
  "\nTwen" "ty " hun "dred " "years " "of " teach "ing, "
  "\nGive " "to " "each " "his " leg a "cy, "
  "\nPla" "to, " Bud "dha " "Christ " "or " Len "in, "
  "\nTwen" "ty " "tons " "of " "T. " "N. " "T.\n"

  "" "" "" "" ""
  \set stanza = "4."
  "\nFath" "er, " Moth "er, " "Son " "and " Daugh "ter, "
  "\nTwen" "ty " "tons " "of " "T. " "N. " "T. "
  "\nGive " "us " "land " "and " "seed " "and " wa "ter, "
  "\nTwen" "ty " "tons " "of " "T. " "N. " "T. "
  "\nChil" "dren " "have " "no " "need " "of " sha "ring; "
  "\nAt " "each " "new " na tiv i "ty "
  "\nCome " "the " ghost "ly " Ma "gi " bear "ing "
  "\nTwen" "ty " "tons " "of " "T. " "N. " "T.\n"

  "" "" "" "" ""
  \set stanza = "5."
  "\nEnds " "the " "tale " "that " "has " "no " se "quel "
  "\nTwen" "ty " "tons " "of " "T. " "N. " "T. "
  "\nNow " "in " "death " "are " "all " "men " e "qual "
  "\nTwen" "ty " "tons " "of " "T. " "N. " "T. "
  "\nTeach " "me " "how " "to " "love " "my " neigh "bour, "
  "\nDo " "to " "him " "as " "he " "to " "me; "
  "\nShare " "the " "fruits " "of " "all " "our " lab "our "
  "" "" "" "" ""
  "\nTwen" "ty " "tons " "of " "T. " "N. " "T. "
}

pianoRHone = \relative {
  \global
  \voiceOne
  \repeat volta 5 {
    <g bes ees>8.-> 16 <g c ees>8 <f aes c ees>-> ~ |
    q8 <f aes d> <g bes ees>4-> |
    <bes ees>4 <ees g c> | <c ees aes> f | <c ees>2 |
    <f, c' ees>8 <aes d> <g ees'>4 | % 63b
    <g bes ees>4 <c ees g> |
    <f, c' ees f>4 <c' ees>8 <bes d> |
    <g c ees>2 |
    <c ees>8 <bes d> <g ees'>4 |
    r4 ees''4( | d c) | r f( | <c ees> <bes d>) | <ees, g c ees> <bes ees bes'> | % 63c
    <c ees f>4 c8 bes |
    \alternative {
      {<g c ees>2 | <f aes c ees>8-. <aes d>-. <g ees'>4-.}
      {R2 | R <g c ees>2 | }
    }
  }
  <f aes c ees>8-. <aes d>-. <aes ees'>4-.
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  \repeat volta 5 {
    s2 | s | s | s4 <c' ees>8 <bes d> | s2 |
    s2 | s | s4 f | s2 | s |
    <ees' aes>2 | <d g>8 f ees4 | <c ees f>2 | f | s |
    s4 aes,
    \alternative {
      {s2 | s}
      {s2 | s}
    }
  }
  s2 | s |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 5 {
    s2\f | s | s\f | s | s |
    s2 | s | s | s | s |
    s2 | s | s | s | s |
    s2
    \alternative {
      {s2 | s |}
      {s2 | s |}
    }
  }
  s2\mp | s |
}

pianoLHone = \relative {
  \global \voiceOne
  \repeat volta 5 {
    <ees, ees'>8.-> 16 <c c'>8 <aes aes'>-> ~ |
    q8 <bes bes'> <ees, ees'>4-> |
    <ees'' g>4 <c g'> | <f, d'> <bes aes'> | <c g'>2 |
    <aes, aes'>8 <bes bes'> <ees bes'>4 | % 63b
    <ees ees'>4 <c c'> |
    <aes aes'> <d d'>8 r | <c c'>2 |
    <aes aes'>8 <bes bes'> <ees, ees'>4 |
    <c'' aes'>2 | <bes g'>4 <c bes'> | <aes f'>2 <bes bes'> | c'4 <g, ees'> | % 63c
    <aes f'>4 c8 d |
    \alternative {
      {c2 | f,8-. bes-. <ees, bes'>4-. |}
      {R2 | R |}
    }
  }
  c'2 | f,8-. bes-. <ees, bes'>4-. |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  \repeat volta 5 {
  s2 | s | s | s | s |
  s2 | s | s | s | s |
  s2 | s | s | s | s |
  s4 bes, |
    \alternative {
      {s2 | s |}
      {s2 | s |}
    }
  }
  s2 | s |
  \bar "|."
}

\book {
  #(define output-suffix "repeat")
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \unfoldRepeats
%   \articulate
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
            \new Lyrics \lyricsto "melody" \wordsOne
            \new Lyrics \lyricsto "melody" \wordsTwo
            \new Lyrics \lyricsto "melody" \wordsThree
            \new Lyrics \lyricsto "melody" \wordsFour
            \new Lyrics \lyricsto "melody" \wordsFive
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
            \new Lyrics \lyricsto "melody" \wordsSingle
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
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
      } << \DrumTrack >>
    >>
    \midi {}
  }
}
