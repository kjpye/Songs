\version "2.25.2"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Vow to Thee, my Country"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Gustav Holst"
  arranger    = "The Planets—Jupiter"
%  opus        = "opus"

  poet        = "Cecil Spring Rice"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 3/4
  \partial 4
}

TempoTrack = {
  \tempo "Moderato maestoso." 4=92
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s4 s2.*6
  \textMark \markup { \box "1b" }    s2. s2
  \repeat volta 2 {
    s2 s2.
    \textMark \markup { \box "1c" }    s2.*5
    \textMark \markup { \box "2a" }    s2.*4
    \textMark \markup { \box "2b" }    s2.*4
    \textMark \markup { \box "2c" }    s2.*4
    \textMark \markup { \box "2d" }    s2.*4
    \textMark \markup { \box "3a" }    s2.*4
    \textMark \markup { \box "3b" }    s2.*4
    \textMark \markup { \box "3c" }    s2.*4
    \textMark \markup { \box "3d" }    s2.*3
    \alternative { {s2. | s | s2} {s2.} }
  }
}

melody = \relative {
  \global
  r4 | R2.*6 |
  R2. | r4 r
  \repeat volta 2 {
    e'8(g) | a4. c8 b8. g16 | c8(d) c4 b | a8 b a4 g |
    e2 8(g) | a4. c8 b8. g16 | c8(d) e4 e | 8 d c4 d | c2 g8(e) |
    d4. 8 c e | d4 <g, \tweak font-size #-2 g'> g'8(e) | d4. 8 e g | a2 8(b) | % 2a
    c8. 16 b4 a | \slurDashed g8(8) \slurSolid c4 e, | d8 c d4 e | g2 e8(g) |
    a4. c8 b8. g16 | \slurDashed c8(d) \slurSolid c4 b | a8 b a4 g | e2 \slurDashed 8(g) \slurSolid |
    a4. c8 b8. g16 | \slurDashed c8(d) \slurSolid e4 4 | 8 d c4 d | c2 g8(e) \section |
    d4. 8 c e | d4 <g, \tweak font-size #-2 g'> g'8(e) | d4. 8 e g | a2 8(b) | % 3a
    c8. 16 b4 a | \slurDashed g8(8) \slurSolid c4 e, | d8 c d4 e | g2 e8(g) |
    a4. c8 b8. g16 | \slurDashed c8(d) \slurSolid c4 b | a8 b a4 g | e2 \slurDashed 8(g) \slurSolid |
    a4. c8 b8. g16 | \slurDashed c8(d) \slurSolid e4 4 | 8 d c4 d |
    \alternative {
      {c2 r4 | R2. | r2}
      {c2\fermata r4 }
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  I __ vow to thee, my coun -- try
  all earth -- ly things a -- bove,
  En -- tire and whole and per -- fect,
  the ser -- vice of my love,
  The love that asks no ques -- tion:
  the __ love that stands the test,
  That lays up -- on the alt -- ar
  the dear -- est and the best:
  The love that nev -- er falt -- ers,
  the love that pays the price,
  The love that makes un -- daunt -- ed
  the fin -- al sac -- ri -- fice.
  The love that asks no quest -- ion:
  the __ love that stands the test,
  That lays up -- on the alt -- ar
  the dear -- est and the best:
  I __ vow to thee, my coun -- try
  all earth -- ly things a -- bove,
  En -- tire and whole and per -- fect,
  the ser -- vice of my love.
}

wordsTwo = \lyricmode {
  And there's an -- oth -- er coun -- try,
  I've heard of long a -- go,
  Most dear to them that love her,
  most great to them that know;
  We may not count her ar -- mies,
  we may not see her King;
  Her for -- tress is a \nom faith -- ful \yesm heart,
  her pride is suf -- fer -- ing;
  And soul by soul and \nom si -- lent -- ly, \yesm
  her shin -- ing bounds in -- crease,
  \nom And her \yesm ways are ways of \nom gen -- tle -- ness \yesm
  and all her paths are peace.
  We may not count her ar -- mies,
  we __ may not see her King,
  Her for -- tress is a \nom faith -- ful \yesm heart,
  her pride is suf -- fer -- ing;
  And soul by soul and \nom si -- lent -- ly \yesm
  her shin -- ing bounds in -- crease,
  \nom And her \yesm ways are ways of \nom gen -- tle -- ness \yesm
  and all her paths are peace.
}

midiWords = \lyricmode {
  "I "  "vow " "to " "thee, " "my " coun "try "
  "\nall " earth "ly " "things " a "bove, "
  "\nEn" "tire " "and " "whole " "and " per "fect, "
  "\nthe " ser "vice " "of " "my " "love, "
  "\nThe " "love " "that " "asks " "no " ques "tion: "
  "\nthe "  "love " "that " "stands " "the " "test, "
  "\nThat " "lays " up "on " "the " alt "ar "
  "\nthe " dear "est " "and " "the " "best: "
  "\nThe " "love " "that " nev "er " falt "ers, "
  "\nthe " "love " "that " "pays " "the " "price, "
  "\nThe " "love " "that " "makes " un daunt "ed "
  "\nthe " fin "al " sac ri "fice. "
  "\nThe " "love " "that " "asks " "no " quest "ion: "
  "\nthe "  "love " "that " "stands " "the " "test, "
  "\nThat " "lays " up "on " "the " alt "ar "
  "\nthe " dear "est " "and " "the " "best: "
  "\nI "  "vow " "to " "thee, " "my " coun "try "
  "\nall " earth "ly " "things " a "bove, "
  "\nEn" "tire " "and " "whole " "and " per "fect, "
  "\nthe " ser "vice " "of " "my " "love.\n"

  \set stanza = "2."
  "\nAnd " "there's " an oth "er " coun "try, "
  "\nI've " "heard " "of " "long " a "go, "
  "\nMost " "dear " "to " "them " "that " "love " "her, "
  "\nmost " "great " "to " "them " "that " "know; "
  "\nWe " "may " "not " "count " "her " ar "mies, "
  "\nwe " "may " "not " "see " "her " "King; "
  "\nHer " for "tress " "is " "a " \nom faith "ful " \yesm "heart, "
  "\nher " "pride " "is " suf fer "ing; "
  "\nAnd " "soul " "by " "soul " "and " \nom si lent "ly, " \yesm
  "\nher " shin "ing " "bounds " in "crease, "
  \nom "\nAnd " "her " \yesm "ways " "are " "ways " "of " \nom gen tle "ness " \yesm
  "\nand " "all " "her " "paths " "are " "peace. "
  "\nWe " "may " "not " "count " "her " ar "mies, "
  "\nwe "  "may " "not " "see " "her " "King, "
  "\nHer " for "tress " "is " "a " \nom faith "ful " \yesm "heart, "
  "\nher " "pride " "is " suf fer "ing; "
  "\nAnd " "soul " "by " "soul " "and " \nom si lent "ly " \yesm
  "\nher " shin "ing " "bounds " in "crease, "
  \nom "\nAnd " "her " \yesm "ways " "are " "ways " "of " \nom gen tle "ness " \yesm
  "\nand " "all " "her " "paths " "are " "peace. "
}

pianoRHone = \relative {
  \global
  <g c g'>8(e') |
  <g, b d>4 d' c8(e) |
  <g, d'>4(g) <g c g'>8(e') |
  <g, b d>4 d' <c e>8(g') |
  <c, f a>2 <d f a>8(b') |
  <c, c'>4 <b c e b'> <a c f a> |
  <g c g'>4 <c f c'> <g c e> |
  <a d>8(c) <f, a d>4 <a c e> | % 1b
  <b d g>2
  \repeat volta 2 {
    \voiceOne 
    <c e>8(g') | a4. c8 b8. g16 | c8 d c4 b | a8 b a4 g |
    e2 8 g | a4. c8 b8. g16 | c8 d e4 e | 8 d c4 d | <e, g c>2 g8 e |
    d4. 8 c e | d4 g, g'8 e | d4. 8 e g | <f a>2 a8 b | % 2a
    c8. 16 b4 a | <c, g'> <c f c'> <c e> | <a d>8 c d4 <c e> | g'2 e8 g |
    a4. c8 b8. g16 | c8 d c4 b | a8 b a4 <b, d g> | <c e>2 e8 g |
    a4. c8 b8. g16 | c8 d e4 <g, c e> | e'8 d c4 <f, a d> | <e g c>2 g8 e \section |
    d4. 8 c e | d4 g, g'8 e | d4. 8 e g | a2 8 b | % 3a
    c8. 16 <c, e b'>4 <c e a> | <c g'> <c f c'> <c e> | <a d>8 c d4 <a e'> | g'2 e8 g |
    a4. c8 b8. g16 | c8 d c4 b | a8 b a4 g | e2 8 g |
    a4. c8 b8. g16 | c8 d e4 <g, c e> | e'8 d c4 <f, a d> |
    \alternative {
      {<e g c>2 <g c e>4 | e'8 d c4 <f, a d> | <e g c>2 }
      {<e g c>2\fermata r4 |}
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s4
  s2.*6 |
  s2. | s2
  \repeat volta 2 {
    s4 | <c' f>4 r <b f'> | <c g'> r q | <c f> r <b d> |
    s2 b4 | <c f> r <b f'> | <c g'> r <g' c> | <f a>2 4 | s2 c4 |
    <g b>2 r4 | g2 c4 | b2 c4 | c2 <d f>4 | % 2a
    c4 <c e> <c f> | s2. | s | d4 c b |
    <c f>4 r q | <c g'> r q | <c f> r s | s2 b4 |
    <c f>4 r <b f'> | <c g'> r s | <f a>2 s4 | s2. |
    <g, b>2 s4 | g2 c4 | b2 c4 | <c f>2 <d f>4 | % 3a
    c4 s2 | s2. | s | d4 c b |
    <c f>4 r <b f'> | <c g'> r q | <c f> r <b d> | s2 b4 |
    <c f>4 r <b f'> | <c g'> r s | <f a>2 s4 |
    \alternative {
      {s2. | <f a>2 s4 | s2 |}
      {s2.}
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\f |
}

pLH = \relative {
  e,4 | g r g | b r e, | g r c | f e d | a' g f | e d c |
  f4 d a | g2
  \repeat volta 2 {
    c4 | f r d | e r e | f r g |
    a2 g4 | f r d | e r c8 e | f2 4 | c2 e,4 |
    g2 a4 | b2 e,4 | g2 c4 | f e d | % 2a
    a'4 g f | e d c | f d c | b a g |
    f4 r d | e r e | f e g | a2 g4 |
    f4 r d' | e r c8 e | f2 4 | c2 e,4 \section |
    g2 a4 | b2 e,4 | g2 c4 | f e d | % 3a
    a'4 g f | e d c | f d c | b a g |
    f4 r d | e r e | f r g | a2 g4 |
    f4 r d' | e r c8 e | f2 4 |
    \alternative {
      {c2 e4 | f2 4 | c2 }
      {c2\fermata r4 |}
    }
  }
}

pianoLHone = \relative {
  \global
  \partCombine \pLH {\transpose c c, \pLH}
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s4
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
            \new Lyrics \lyricsto "melody" \wordsOne
            \new Lyrics \lyricsto "melody" \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
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
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \wordsOne \wordsTwo }
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
            \new Voice = "melody" \melody
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
