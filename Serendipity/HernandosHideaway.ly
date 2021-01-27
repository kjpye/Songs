\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hernando's Hideaway"
  subtitle    = "From the Warner Bros Picture “The Pajama Game”"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Richard Adler & Jerry Ross"
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

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key bes \major
  \time 4/4
  \set Timing.measurePosition = #(ly:make-moment 3/8)
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "1a" } s8 s2 s1*2 s2. \bar "||" \break
  \mark \markup { \circle "1b" } s4 s1*3
  \mark \markup { \circle "1c" } s1*3
  \mark \markup { \circle "2a" } s1*3
  \mark \markup { \circle "2b" } s1*3
  \mark \markup { \circle "2c" } s1*3
  \mark \markup { \circle "2d" } s1
  \repeat volta 2 {
    s1*3
    \mark \markup { \circle "3a" } s1*3
    \mark \markup { \circle "3b" } s1*3
    \mark \markup { \circle "3c" } s1*3
    \mark \markup { \circle "3d" } s1*3
    \mark \markup { \circle "4a" } s1*3
    \mark \markup { \circle "4b" } s1*3
    \mark \markup { \circle "4c" } s1*2
  }
  \alternative {{s1}{s1}}
}

ChordTrack = \chordmode {
  s8 s2
  s1
  s1
  s2. s4 % 1b
  d1:7
  s1
  g1:m
}

melody = \relative {
  \global
  r8 r2
  R1
  R1
  r2 r4 \bar "||" ees'4\fermata
  d8 r r ees d r r ees % 1b
  d8 fis a r r4 ees
  d8 r r ees d r r ees
  d8 g bes r r4 ees,4 % 1c
  d8 r r ees d r r ees
  d8 fis a r8 r4 bes
  g8 r r ees' d c r bes16 a % 2a
  g8 r d4 g8 r r4
  d8 r r ees d r r ees
  d8 fis a r r4 ees % 2b
  d8 r r ees d r r ees
  d8 g bes r r4 ees,
  d8 r r ees d r r ees % 2c
  d8 fis a r r4 bes
  g8 r r ees' d c r bes16 a
  g8 r d4 g8 r r4 % 2d
  \repeat volta 2 {
    R1
    R1
    r8 d16 d ees8 d g fis g a
    bes8 a g fis g r r4 % 3a
    R1
    R1
    r8 d16 d ees8 d g fis g a % 3b
    bes8 a g fis g r r4
    R1
    R1 % 3c
    r8 g16 g aes8 g c b c d
    ees8 d c b c4 r
    r8 a a a a4 r % 3d
    r8 d cis bis cis4 r
    r4 r8 ees d4 cis
    d2. ees,4 % 4a
    d8 r r ees d r r ees
    d8 fis a r r4 ees
    d8 r r ees d r r ees % 4b
    d8 g bes r r4 ees,
    d8 r r ees d r r ees
    d8 fis a r r4 bes % 4c
    g8 r r ees' d c r bes16 a
  }
  \alternative {
    {
      g8 r d4 g8 r r4
    }
    {
      g8 r d4\fermata g8 r r4
    }
  }
  \bar "|."
}

words = \lyricmode {
  I know a dark se -- clud -- ed place,
  A place where no one knows your face,
  A glass of wine, a fast em -- brace,
  It's called Her -- nan -- do's Hide -- a -- way!
  O -- lay!
  All you see are sil -- hou -- ettes,
  And all you hear are cas -- ta -- nets,
  And no one cares how late it gets,
  Not at Her -- nan -- do's Hide -- a -- way!
  O -- lay!

  At the Gol -- den Fin -- ger -- bowl
  or an -- y place you go,
  You will meet your Un -- cle Max and ev -- 'ry -- one you know.
  But if you go to the spot that I am think -- in' of,
  You will be free to gaze at me and talk of love!

  Just knock three times and whis -- per low,
  That you and I were met by Joe,
  Then strike a match and you will know,
  You're in Her -- nan -- do's Hide -- a -- way!
  O -- lay!

  way! O -- lay!!
}

wordsSingle = \lyricmode {
  I know a dark se -- clud -- ed place,
  A place where no one knows your face,
  A glass of wine, a fast em -- brace,
  It's called Her -- nan -- do's Hide -- a -- way!
  O -- lay!
  All you see are sil -- hou -- ettes,
  And all you hear are cas -- ta -- nets,
  And no one cares how late it gets,
  Not at Her -- nan -- do's Hide -- a -- way!
  O -- lay!

  At the Gol -- den Fin -- ger -- bowl
  or an -- y place you go,
  You will meet your Un -- cle Max and ev -- 'ry -- one you know.
  But if you go to the spot that I am think -- in' of,
  You will be free to gaze at me and talk of love!

  Just knock three times and whis -- per low,
  That you and I were met by Joe,
  Then strike a match and you will know,
  You're in Her -- nan -- do's Hide -- a -- way!
  O -- lay!

  At the Gol -- den Fin -- ger -- bowl
  or an -- y place you go,
  You will meet your Un -- cle Max and ev -- 'ry -- one you know.
  But if you go to the spot that I am think -- in' of,
  You will be free to gaze at me and talk of love!

  Just knock three times and whis -- per low,
  That you and I were met by Joe,
  Then strike a match and you will know,
  You're in Her -- nan -- do's Hide -- a -- way!
  O -- lay!

}

wordsMidi = \lyricmode {
  "I " "know " "a " "dark " se clud "ed " "place, "
  "\nA " "place " "where " "no " "one " "knows " "your " "face, "
  "\nA " "glass " "of " "wine, " "a " "fast " em "brace, "
  "\nIt's " "called " Her nan "do's " Hide a "way! "
  "\nO" "lay! "
  "\nAll " "you " "see " "are " sil hou "ettes, "
  "\nAnd " "all " "you " "hear " "are " cas ta "nets, "
  "\nAnd " "no " "one " "cares " "how " "late " "it " "gets, "
  "\nNot " "at " Her nan "do's " Hide a "way! "
  "\nO" "lay! "

  "\nAt " "the " Gol "den " Fin ger "bowl "
  "\nor " an "y " "place " "you " "go, "
  "\nYou " "will " "meet " "your " Un "cle " "Max " "and " ev 'ry "one " "you " "know. "
  "\nBut " "if " "you " "go " "to " "the " "spot " "that " "I " "am " think "in' " "of, "
  "\nYou " "will " "be " "free " "to " "gaze " "at " "me " "and " "talk " "of " "love! "

  "\nJust " "knock " "three " "times " "and " whis "per " "low, "
  "\nThat " "you " "and " "I " "were " "met " "by " "Joe, "
  "\nThen " "strike " "a " "match " "and " "you " "will " "know, "
  "\nYou're " "in " Her nan "do's " Hide a "way! "
  "\nO" "lay! "

  "\nAt " "the " Gol "den " Fin ger "bowl "
  "\nor " an "y " "place " "you " "go, "
  "\nYou " "will " "meet " "your " Un "cle " "Max " "and " ev 'ry "one " "you " "know. "
  "\nBut " "if " "you " "go " "to " "the " "spot " "that " "I " "am " think "in' " "of, "
  "\nYou " "will " "be " "free " "to " "gaze " "at " "me " "and " "talk " "of " "love! "

  "\nJust " "knock " "three " "times " "and " whis "per " "low, "
  "\nThat " "you " "and " "I " "were " "met " "by " "Joe, "
  "\nThen " "strike " "a " "match " "and " "you " "will " "know, "
  "\nYou're " "in " Her nan "do's " Hide a "way! "
  "\nO" "lay! "
}

pianoRH = \relative {
  \global
  s8 s2
  s1
  s8 r r4 r2
  r2 r4 \bar "||" s4
  s1 % 1b
  s4. r8 r4 s
  s1
  s4. r8 r4 s % 1c
  s1
  s4. r8 r4 s
  s1 % 2a
  s8 r s4. r8 r4
  s1
  s1 % 2b
  s1
  s4. r8 r4 s
  s1 % 2c
  s4. r8 r4 s
  s1
  s8 r s2. % 2d
}

pianoRHone = \relative {
  \global
  \voiceOne
  ees''8(d c) r bes16(a
  bes8) r r c8(bes a) r g16(f
  <bes, d g>8) s s2.
  s2. ees4\fermata(
  d8) r r ees(d4) r8 ees( % 1b
  d fis <c fis a>)s s4 <fis, c' ees>(
  d'8) r r ees(d) r r ees(
  d8 g <d g bes>) s4. <g, c ees>4( % 1c
  d'8) r r ees(d) r r ees(
  d8) fis <c fis a> s4. <c fis bes>4(
  g'8) \oneVoice r \voiceOne r ees'(d c) r bes16(a % 2a
  <bes, d g>8) s <fis c' d>4(<bes d g>8_.) s4.
  d8 r r ees(d) r r ees(
  d8 fis <c fis a>-.) \oneVoice r r4 \voiceOne <fis, c' ees>4( % 2b
  d'8) r r ees8(d) r r ees(
  d8 g <d g bes>-.) s4. <g, c ees>4(
  d'8) r r ees(d) r r ees( % 2c
  d8 fis <c fis a>-.) s4. <c fis bes>4(
  g'8) \oneVoice r \voiceOne r ees'(d c)r bes16(a
  <bes, d g>8) s <fis c' d>4(<bes d g>8-.) <bes d>( <c ees> <bes d> % 2d
  \repeat volta 2 {
    <a' c>4.) <gis b>8(<a c>4.) <g b>8(
    <a c>4.) <g b>8 <a c>(<c ees>-.) r d16(cis
    <d, g bes>8-.) d16 d ees8(d g fis g a
    bes8 a g fis g) <bes, d>(<c ees> <bes d> % 3a
    <a' c>4.) <gis b>8(<a c>4.) <gis b>8(
    <a c>4.) <gis b>8(<a c> <c ees>-.) r d16(cis
    <bes d>8) d,16 d ees8(d g fis g a % 3b
    bes8 a g fis g) <b, g'>(<c aes'> <bes g'>
    <d' f>4.) <cis e>8(<d f>4.) <cis e>8(
    <d f>4.) <cis e>8(<d f> <f aes>) r g16(f % 3c
    \oneVoice <g, c ees>8-.) g16 g aes8(g c b c d
    ees8 d c b c4-.) <g, c ees>->(
    <g cis e>8) a'-. a-. a-. a4-. <a, c fis>4( % 3d
    <a cis g'>8-.) <bes' d>-. <a cis>-. <gis bis> <a c>4-. <g, c e>->(
    <fis c' d>4.) <fis' c' ees>8(<fis c' d>4 <eis b' cis>
    <fis c' d>2.) ees4( % 4a
    \voiceOne d8-.) e e ees(d) r r ees(
    d8 fis <c fis a>-.) \oneVoice r8 r4 \voiceOne <fis, c' ees>(
    d'8) r r ees(d) r r ees( % 4b
    d8 g <d g bes>) \oneVoice r8 r4 \voiceOne  <g, c ees>(
    d'8) r r ees(d) r r ees(
    d8 fis <c fis a>-.) \oneVoice r8 r4 \voiceOne <c fis bes>4( % 4c
    g'8) \oneVoice r \voiceOne r ees'(d c) r bes16(a
  }
  \alternative {
    {
      <bes, d g>8) \oneVoice r \voiceOne <fis c' d>4(<bes d g>8-.) <bes d>( <c ees> <bes d>
    }
    {
      <bes d g>8-.) r <fis c' d>4\fermata(<bes d g>8) s4.
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  r8 f'4 r
  <d g>4 r fis r
  s1
  s1
  r4 <fis, c'> r q % 1b
  s1
  r4 <g bes> r q
  s1 % 1c
  r4 <fis c'>-. r q-.
  s1
  <bes d>8 s8 r4 fis' r % 2a
  s1
  r4 <fis, c'>4-. e q-.
  s1 % 2b
  r4 <g bes>-. r q-.
  s1
  r4 <fis c'>-. r q-. % 2c
  s1
  <bes d>8 s r4 fis' r
  s1 % 2d
  \repeat volta 2 {
    r4 <d fis> e <ees f>
    r4 <d fis> <ees f> r
    s1
    s1 % 3a
    r4 <d fis> r <ees fis>
    r4 <d fis> <ees fis> r
    s1 % 3b
    s1
    r4 <g b> r <aes b>
    r4 <g b> <aes b> r4 % 3c
    s1
    s1
    s1 % 3d
    s1
    s1
    s1 % 4a
    r4 <fis, c'>-. r q-.
    s1
    r4 <g bes>-. r q-. % 4b
    s1
    r4 <fis c'>-. r q-.
    s1 % 4c
    <bes d>8 s r4 fis' r
  }
  \alternative {{s1}{s1}}
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s8\mf s2
  s1
  s1
  s1
  s1-\markup {\dynamic mp - \dynamic mf}
  s1*14
  s2 s\< % 2d
  \repeat volta 2 {
    s1\mf
    s2. s4\>
    s1\mp
    s2 s8 s4.\< % 3a
    s1\mf
    s2. s8 s\>
    s8 s\mp s2. % 3b
    s2 s8 s4.\<
    s1\mf
    s2. s8 s\> % 3c
    s8 s\mp s2.
    s1
    s1 % 3d
    s1
    s4. s8\< s2
    s1\! % 4a
    s1*7
  }
  \alternative {{s2. s4\mf}{s1}}
}

pianoLH = \relative {
  \global
  \oneVoice
  r8 <d c'>4 r
  g,8 r r4 <d' c'>4 r
  g,8 r r d' d,4 d'-.
  g,8 r r d' d,4-. \bar "||" ees'4\fermata(
  d8) r r d,(d') r r d,( % 1b
  d'8) r r d,(d') r d,4(
  g8) r r d-.(g) r r d(
  g8) r r d r4 a'4( % 1c
  d8) r r d,(d') r r d,-.(
  d'8) r r d,(d') r d,4(
  g8) r r4 <d' c'> d,4( % 2a
  g8-.) r d'4--(g,8-.) r r4
  d'8 r r d,8(d') r r d,(
  d'8) r r d,(d')r d,4( % 2b
  g8) r r d(g) r r d(
  g8) r r d r4 a'(
  d8) r r d,(d') r r d,( % 2c
  d'8) r r d,(d') e d,4(
  g8) r r4 <d' c'> d,(
  g8) r d'4(g,8-.) r r4 % 2d
  \repeat volta 2 {
    d4. d'8(d,4.) d'8(d,4.) d'8(d,4) r
    g8 d'16 d e8(d g fis g a
    bes8 a g fis g) r8 r4 % 3a
    d,4. d'8(d,4.) d'8(
    d,4.) d'8(d,4) r4
    g8-. d'16 d ees8(d g fis g a % 3b
    bes8 a g fis g) r r4
    g,,4. g'8(g,4.) g'8(
    g,4.) g'8(g,4) r4 % 3c
    c8-. g'16 g aes8(g c b c d
    ees8 d c b c4) c8->(bes
    a8-.) a'-. a-. a-. a4-. dis,4->( % 3d
    e8-.) r r4 r a,->(
    d4.) d8(d4 gis
    a4.) d,8(d,) r ees'4( % 4a
    d8) r r d,8(d') r r d,(
    d'8) r r d,(d') r d,4(
    g8) r r d(g) r r d( % 4b
    g8) r r d r4 a'(
    d8) r r d,(d') r r d,(
    d'8) r4 d,8(d') r d,4( % 4c
    g8) r r4 <d' c'> d,(
  }
  \alternative {
    {
      g8-.) r d'4--(d,8-.) r r4
    }
    {
      g8\repeatTie r d'4\fermata( g,8-.) r r4
    }
  }
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
          \new Staff <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \words
          >>
          \new PianoStaff <<
            \new Staff <<
              \new Voice \pianoRH
              \new Voice \pianoRHone
              \new Voice \pianoRHtwo
            >>
            \new Dynamics \dynamicsPiano
            \new Staff <<
              \clef "bass"
              \new Voice \pianoLH
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
          \new Staff <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
          \new PianoStaff <<
            \new Staff <<
              \new Voice \pianoRH
              \new Voice \pianoRHone
              \new Voice \pianoRHtwo
            >>
            \new Dynamics \dynamicsPiano
            \new Staff <<
              \clef "bass"
              \new Voice \pianoLH
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
          \new Staff <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsMidi
          >>
          \new PianoStaff <<
            \new Staff <<
              \new Voice \pianoRH
              \new Voice \pianoRHone
              \new Voice \pianoRHtwo
            >>
            \new Dynamics \dynamicsPiano
            \new Staff <<
              \clef "bass"
              \new Voice \pianoLH
            >>
          >>
        >>
      >>
    >>
    \midi {}
  }
}
