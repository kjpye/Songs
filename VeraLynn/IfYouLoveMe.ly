\version "2.20.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "If You Love Me"
  subtitle    = "(I Won't Care)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Margeurite Monnot"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Edith Piaf"
  meter       = "English words by Geoffrey Parsons"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

TempoTrack = {
  \global
  s4-\markup \bold \roman Slowly
  s1
  s1
  s1-\markup \bold rit.
  s1-\markup \bold Broadly % 38b
  s1
  s1
  s1
  s1*19
  s1-\markup \bold rit. % 40a+
  s1
  \repeat volta 2 {
    s1-\markup \bold {a tempo}
    s1*6
    s1-\markup \bold rit. % 40d
  }
  \alternative {
    {
      s1-\markup \bold {a tempo}
    }
    {
      s1
      s1
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \partial 4
  \mark \markup { \box "38a" } s4 s1*3
  \mark \markup { \box "38b" } s1*4
  \mark \markup { \box "38c" } s1*4
  \mark \markup { \box "39a" } s1*4
  \mark \markup { \box "39b" } s1*4
  \mark \markup { \box "39c" } s1*3
  \mark \markup { \box "39d" } s1*3
  \mark \markup { \box "40a" } s1*3
  \repeat volta 2 {
    \mark \markup { \box "40b" } s1*3
    \mark \markup { \box "40c" } s1*4
    \mark \markup { \box "40d" } s1
    }
  \alternative {
    {
      s1
    }
    {
      s1*2
    }
  }
}

ChordTrack = \chordmode {
  \global
  s4
  g2 b:7/fis
  e2:m a:m
  ees1
  g2 b:7/fis % 38b
  e2.:m e4:m7
  a2:m a:m7
  a2:m7/d d:7
  g2/b b:aug % 38c
  c2 c:m6/a
  g4/d e:m a:m a:m7
  a2:m7/d d:7
  g2 b:7/fis % 39a
  e2.:m7 e4:m7
  a2:m a:m7
  a2:m7/d d:7
  g2/b b:aug % 39b
  c2 c:m6/a
  g1/d
  c2:6 d:13.9-
  g1 % 39c
  e4:m b:7 e2:m
  s4 b:7 e2:m
  cis4:m7.5- c:7 b2:7 % 39d
  cis4:m7.5- c:7 b2:7
  a4:m7 d:7 g:maj7 c:maj7
  fis4:m7.5- b:7 e:m e:m7/d % 40a
  a2:m/c a:m7/e
  a2:m7 c:7
  \repeat volta 2 {
    g2 b:7/fis % 40b
    e2.:m e4:m7
    a2:m a:m7
    a2:m7/d d:7 % 40c
    g2/b b:aug
    c2 c:m6/a
    g1/d
    c2:6 d:7.9- % 40d
  }
  \alternative {
    {
      g2. d4:7
    }
    {
      g2 c4:m6/ees d:7.9-
      g1:6
    }
  }
}

melody = \relative c' {
  \global
  r4
  R1*2
  r2 r4\fermata \breathe d8 c
  b4. b8 b dis fis a % 38b
  g2. e8 d
  c4. c8 c e g b
  a2. b8 c
  d4 g, g4. fis8 % 38c
  e4 c'2 d8 c
  b4 g c b
  a2. d,8 c
  b4. b8 b dis fis a % 39a
  g2. e8 d
  c4. c8 c e g b
  a2. b8 c
  d4 g, g4. fis8 % 39b
  e4 c'2 d8 c
  b4 g d g
  a2 b
  g2. \breathe b,8 b \bar "||" % 39c
  e8 e fis fis g4 b,8 b
  e8 e fis fis g4 e8 e
  g8 g e e fis 4 r % 39d
  r2 r4 b8 b
  c8 c a a b4 g8 g
  a8 a fis fis g4 g8 g % 40a
  a4 a g a
  b2. \breathe d,8 c
  \repeat volta 2 {
    b4. b8 b dis fis a % 40b
    g2. e8 d
    c4. c8 c e g b
    a2. b8 c % 40c
    d4 g, g4. fis8
    e4 c'2 d8 c
    b4 g d g
    a2 b % 40c
  }
  \alternative {
    {
      g2. d8 c
    }
    {
      g'1~
      g2. r4\fermata
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  If the sun should tum -- ble from the sky,
  if the sea should sud -- den -- ly run dry,
  if you love me, real -- ly love me,
  let it hap -pen, I won't care.

  If it seems that ev -- 'ry -- thing is lost,
  I should smile and nev -- er count the cost,
  if you love me, real -- ly love me,
  let it hap -- pen, darl -- ing, I won't care.

  Shall I catch a shoot -- ing star?
  Shall I bring it where you are?
  If you want me to I will.

  You can set me a -- ny task,
  I'll do a -- ny -- thing you ask,
  if you'll on -- ly love me still.

  When at last our life on earth is through,
  I shall share e -- ter -- ni -- ty with you,
  if you love me, real -- ly love me,
  then what -- ev -- er hap -- pens,
  I won't care.
  When at
  care. __
}

wordsTwo = \lyricmode {

}

midiWords = \lyricmode {
  "\nIf " "the " "sun " "should " tum "ble " "from " "the " "sky, "
  "\nif " "the " "sea " "should " sud den "ly " "run " "dry, "
  "\nif " "you " "love " "me, " real "ly " "love " "me, "
  "\nlet " "it " "hap " "-pen, " "I " "won't " "care. "

  "\nIf " "it " "seems " "that " ev 'ry "thing " "is " "lost, "
  "\nI " "should " "smile " "and " nev "er " "count " "the " "cost, "
  "\nif " "you " "love " "me, " real "ly " "love " "me, "
  "\nlet " "it " hap "pen, " darl "ing, " "I " "won't " "care. "

  "\nShall " "I " "catch " "a " shoot "ing " "star? "
  "\nShall " "I " "bring " "it " "where " "you " "are? "
  "\nIf " "you " "want " "me " "to " "I " "will. "

  "\nYou " "can " "set " "me " a "ny " "task, "
  "\nI'll " "do " a ny "thing " "you " "ask, "
  "\nif " "you'll " on "ly " "love " "me " "still. "

  "\nWhen " "at " "last " "our " "life " "on " "earth " "is " "through, "
  "\nI " "shall " "share " e ter ni "ty " "with " "you, "
  "\nif " "you " "love " "me, " real "ly " "love " "me, "
  "\nthen " what ev "er " hap "pens, "
  "\nI " "won't " "care. "
  "\nWhen " "at " "last " "our " "life " "on " "earth " "is " "through, "
  "\nI " "shall " "share " e ter ni "ty " "with " "you, "
  "\nif " "you " "love " "me, " real "ly " "love " "me, "
  "\nthen " what ev "er " hap "pens, "
  "\nI " "won't " "care. "
}

pianoRH = \relative c'' {
  \global
  d8 c
  s1
  <g g'>2~g8 <c e> <g c> <e g>
  <des g bes>2~ q4\fermata \breathe d8 c
  s1 % 38b
  s1
  s1
  s1
  <d g d'>4 <b d g> s2 % 38c
  <g c e>4 s2.
  <d' g b>4 <b e g> <c e a c> <c e g b>
  s1
  s1 % 39a
  s1
  s1
  s1
  <d g d'>4 <b d g> s2 % 39b
  <g c e>4 s2.
  <d' g b>4 <b d g> <g d'> <g d' g>
  s1
  <b d g>2. \breathe b8 b % 39c
  s2. b8 b
  s2. e8 e
  s1 % 39d
  s2 <a fis'>4 b8 b
  s1
  s1 % 40a
  <a, e' a>4 q <a c g'> <c g' a>
  <c e b'>2. \breathe d8 c
  \repeat volta 2 {
    s1 % 40b
    s1
    s1
    s1 % 40c
    <d g d'>4 <b d g> s2
    <g c e>4 s2.
    <d' g b>4 <b d g> <g d'> <g d' g>
    s1 % 40d
  }
  \alternative {
    {
      <b d g>2. s4
    }
    {
      s2 <c' g' a>4 <c ees fis b>
      <e a d>2\fermata r\fermata
    }
  }
  \bar "|."
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  s4
  b4. b8 b4 <b b'>8 <a a'>
  s1
  s1
  b,4. b8 b dis fis a % 38b
  g2. e8 d
  c4. c8 c e g b
  a2. b8 c
  s2 g4. fis8 % 39c
  s4 c'2 d8 c
  s1
  a2. d,8 c
  b4. b8 b dis fis a % 39a
  g2. e8 d
  c4. c8 c e g b
  a2. b8 c
  s2 g4. fis8 % 39b
  s4 c'2 d8 c
  s1
  <a, a'>2 b'
  s1 \bar "||" % 39c
  e,8 e fis fis g4 s
  e8 e fis fis g4 s
  g8 g e e fis4 e'8 e % 39d
  g8 g e e s2
  c8 c a a b4 g8 g
  a8 a fis fis g4 g8 g % 40a
  s1
  s1
  \repeat volta 2 {
    b,4. b8 b dis fis a % 40b
    g2. e8 d
    c4. c8 c e g b
    a2. b8 c % 40c
    s2 g4. fis8
    s4 c'2 d8 c
    s1
    <a, a'>2 b' % 40d
  }
  \alternative {
    {
      s2. d,8 c
    }
    {
      g'4 d' s2
      s1
    }
  }
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  s4
  r4 d dis r
  s1
  s1
  <d, g>4 q <dis a'> <b' d> % 38b
  <b e>2. <g b>4
  <e a>4 q <e g> <c' e>
  <c e>4  <c e g> <c fis> <d fis>
  s2 <b dis>4 q % 38c
  s4 <e g> <ees g> <ees g a>
  s1
  <c e>4 <c e g> <c fis> fis,
  <d g>4 q <dis a'> <b' d> % 39a
  <b e>2. <g b>4
  <d a'>4 q <d fis> <c' e>
  <c e>4 <c e g> <c fis> <d fis>
  s2 <b dis>4 q % 39b
  s4 <e g> <ees g> <ees g a>
  s1
  r4 <e g> <c ees fis>2
  s1 \bar "||" % 39c
  <g b>4 <a dis> <b e> s
  <g b>4 <g dis'> <b e> s
  <ais e'>4 ais <a dis> r % 39d
  bes'2 s
  <e, g>4 <c fis> <d fis> <b e>
  <c e>4 <a dis> <b e> q % 40a
  s1
  s1
  \repeat volta 2 {
    <d, g>4 q <dis a'> <b' dis> % 40b
    <b e>2. <g b>4
    <e a>4 q <e g> <c' e>
    <c e>4 <c e g> <c fis> <d fis> % 40c
    s2 <b dis>4 q
    s4 <e g> <ees g> <ees g a>
    s1
    r4 <e g> <c ees fis>2 % 40d
  }
  \alternative {
    {
      s2. fis,4
    }
    {
         <b d>2 s
         s1
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \partial 4
  s4\mf
  s1
  s1
  s2. s4\p
  s1 % 38b
  s1
  s1
  s2. s4\<
  s1\mp % 38c
  s1
  s1
  s2. s4\p
  s1 % 39a
  a1
  a1
  a2. s4\<
  s1\mp % 39b
  s1
  s1
  s1
  s1 % 39c
  s1
  s1
  s1 % 39d
  s1
  s1
  s1 % 40a
  s1\<
  s2.\mf s4\mp
  \repeat volta 2 {
    s1 % 40b
    s1
    s1
    s2. s4\< % 40c
    s1\mf
    s1
    s1
    s1 % 40d
  }
  \alternative {
    {
      s1
    }
    {
      s1\<
      s1\ff
    }
  }
}

pianoLH = \relative c' {
  \global
  \oneVoice
  r4
  <g b>2 <fis a>
  s1
  ees4 ees, d\fermata \breathe r
  g2 fis % 38b
  s1
  a2 a
  d,2 d'4 c
  b2 b, % 38c
  c2 a'
  d4 e a,2
  d,2 d'4 d,
  g2 fis % 39a
  s1
  a2 a
  d,2 d'4 c
  b2 b, % 39b
  c'2 a'
  d2 g,
  c2 d4 d,
  g4 d g, \breathe r \bar "||" % 39c
  e'4 b e, r
  e'4 b e, r
  cis'4 c b r % 39d
  s2. r4
  a4 d g, c
  fis,4 b e d % 40a
  c2 e4 e
  <a, g'>2 <d fis>4 \breathe r
  \repeat volta 2 {
    g,2 fis % 40b
    s1
    a2 a
    d,2 d'4 c % 40c
    b2 b,
    c2 a'
    d2 b
    c2 d4 d, % 40d
  }
  \alternative {
    {
      g4 fis e <d d'>
    }
    {
      <g d'>2 ees''4 ees
      \clef treble <g b>2\fermata \clef bass <g,,, g'>\fermata
    }
  }
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  s4
  s1
  r8 b e d c2
  s1
  s1 % 38b
  r4 e, dis d
  s1
  s1
  s1 % 38c
  s1
  s1
  s1
  s1 % 39a
  r4 e dis d
  s1
  s1
  s1 % 39b
  s1
  s1
  s1
  s1 % 39c
  s1
  s1
  s1 % 39d
  e'2 cis4 s
  s1
  s1 % 40a
  s1
  s1
  \repeat volta 2 {
    s1 % 40b
    r4 e, dis d
    s1
    s1 % 40c
    s1
    s1
    s1
    s1
  }
  \alternative {
    {
      s1
    }
    {
      s1
      s1
    }
  }
  \bar "|."
}

pianoLHtwo = \relative c {
  \global
  \voiceTwo
  s4
  s1
  <e g>2 a
  s1
  s1 % 38b
  e,1
  s1
  s1
  s1 % 38c
  s1
  s1
  s1
  s1 % 39a
  e1
  s1
  s1
  s1 % 39b
  s1
  s1
  s1
  s1 % 39c
  s1
  s1
  s1 % 39d
  cis''4 c b s
  s1
  s1 % 40a
  s1
  s1
  \repeat volta 2 {
    s1 % 40b
    e,,1
    s1
    s1 % 40c
    s1
    s1
    s1
    s1 % 40d
  }
  \alternative {
    {
      s1
    }
    {
      s1
      s1
    }
  }
  \bar "|."
}

\book {
  #(define output-suffix "repeat")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
            \new Lyrics \lyricsto "melody" \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
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
  #(define output-suffix "single")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \unfoldRepeats \ChordTrack }
        \new FretBoards { \unfoldRepeats \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" { \wordsOne \wordsTwo }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
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
    \midi {}
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \unfoldRepeats \ChordTrack }
        \new FretBoards { \unfoldRepeats \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "mp3")
  \score {
    \articulate
    \context GrandStaff
    <<
      <<
%        \new ChordNames { \unfoldRepeats \ChordTrack }
%        \new FretBoards { \unfoldRepeats \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "melody" \unfoldRepeats \melody
 %           \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
