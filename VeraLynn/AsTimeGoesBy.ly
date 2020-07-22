\version "2.20.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "As Time Goes By"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Herman Hupfeld"
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

global = {
  \key bes \major
  \time 4/4
  \tempo 4=90
  \partial 8
}

TempoTrack = {
  \global
  s8-\markup \roman \bold {Moderately and liltingly}
  s1
  s1
  s1 % 20b
  s1
  s1
  s1
  s1 % 20c
  s1
  s1
  s1
  s1 % 21a
  s1
  s1
  s1 % 21b
  s1
  s1
  \repeat volta 2 {
    s1 % 21c
    s1
    s1
    s1 % 21d
    s1
    s1
    s1-\markup \roman \bold {poco rit.} % 22a
    s1
    s1-\markup \roman \bold {a tempo}
    s1 % 22b
    s1
    s1 % 22c
    s1
    s1
    s1 % 22d
  }
  \alternative {
    {
      s1
    }
    {
      s1
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \circle 5 }
  \mark \markup { \box "20a" } \partial 8 s8 s1*2
  \mark \markup { \box "20b" } s1*4
  \mark \markup { \box "20c" } s1*4
  \mark \markup { \box "21a" } s1*3
  \mark \markup { \box "21b" } s1*3
  \repeat volta 2 {
    \mark \markup { \box "21c" } s1*3
    \mark \markup { \box "21d" } s1*3
    \mark \markup { \box "22a" } s1*3
    \mark \markup { \box "22b" } s1*2
    \mark \markup { \box "22c" } s1*3
    \mark \markup { \box "22d" } s1
  }
  \alternative {
    {
      s1
    }
    {
      s1
    }
  }
}

ChordTrack = \chordmode {
  \global
  s8
  c2:m f:7
  d2:m7.5-
  f:7
  bes4 bes:dim bes2:6 % 20b
  s2. d4:m
  c1:7
  f2:7 c4:m7 f:7
  bes2:maj7 bes:6 % 20c
  bes2:maj7 bes:6
  c2:m f:7
  d2:m7.5- f:7
  bes4 bes:dim bes2:6 % 21a
  s2. d4:m
  c1:7
  f2:7 c4:m7 f:7 % 21b
  bes2 ees4 ees:m6
  bes2 bes:7
  \repeat volta 2 {
    ees1 % 21c
    g1:7
    c1:m
    des1:dim % 21d
    g2:m ees:7
    c1:9
    f2:9 f:dim % 22a
    f1:7
    c2:m f:7
    d2:m7.5- f:7 % 22b
    bes4 bes:dim bes2:6
    s2. d4:m % 22c
    c1:7
    bes2.:maj9/f b4:dim
    c2:m7 f4:7 f:7aug % 22d
  }
  \alternative {
    {
      bes4 g:m c:9 f:7
    }
    {
      bes4 aes:9 bes2
    }
  }
}

melody = \relative c' {
  \global
  d8
  ees8. d16 c8. bes16 c4. d8
  f8. ees16 d8. c16 ees4. f8
  bes8. a16 g8. 16 g2 % 20b
  r2 r4 a
  c8. bes16 a8. g16 a4 bes
  f4 f bes, c
  d1~ % 20c
  d2 r4 r8 d8
  ees8. d16 c8. bes16 c4. d8
  f8. ees16 d8. c16 ees4. f8
  bes8. a16 g8. f16 g2 % 21a
  r2 r4 a
  c8. bes16 a8. g16 a4 bes
  f4 f bes, c % 21b
  bes1~
  bes2 r
  \repeat volta 2 {
    bes8 c bes g'~g4 g % 21c
    g8. aes16 g8. fis16 g2
    c,8 d c g'~g4 g
    g8. a16 g8. fis16 g2 % 22d
    d8 ees d bes'~ bes4 bes
    bes8. a16 bes8. a16 c4 a |
    ees4 ees d d % 23a 
    f2. r8 d \bar "||"
    ees8. d16 c8. bes16 c8 c4 d8
    f8. ees16 d8. c16 ees8 ees4 f8 % 23b
    bes8. a16 g8. f16 g2
    r2 r4 a % 23c
    c8. bes16 a8. g16 a4 bes
    f4 f2 d4
    f2 d
  }
  \alternative {
    {
      bes2. r4
    }
    {
      bes'2~ bes4. r8
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  You must re- mem- ber this,
  a kiss is still a kiss,
  a sigh is just a sigh;
  the fun- da- men- tal things ap- ply,
  as time goes by. __
  And when two lov- ers woo,
  they still say "\"I" love "you\""
  on that you can re- ly
  no mat- ter what the fu- ture
  brings, as time goes by. __

  Moon- light and love __ songs
  nev- er out of date,
  hearts full of pas- sion, jea- lou- sy and hate;
  wo- man needs man __ and man must have his mate,
  that no one can de- ny.

  It's still the same old sto- ry,
  a fight for love and glo- ry,
  a case of do or die!
  The world will al- ways wel- come lov- ers,
  as time goes by. by. __
}

midiWordsOne = \lyricmode {
  "You " "must " re mem "ber " "this, "
  "a " "kiss " "is " "still " "a " "kiss, "
  "a " "sigh " "is " "just " "a " "sigh; "
  "the " fun da men "tal " "things " ap "ply, "
  "as " "time " "goes " "by. " 
  "And " "when " "two " lov "ers " "woo, "
  "they " "still " "say " "\"I " "love " "you\""
  "on " "that " "you " "can " re "ly "
  "no " mat "ter " "what " "the " fu "ture "
  "brings, " "as " "time " "goes " "by. " 

  Moon "light " "and " "love "  "songs "
  nev "er " "out " "of " "date, "
  "hearts " "full " "of " pas "sion, " jea lou "sy " "and " "hate; "
  wo "man " "needs " "man "  "and " "man " "must " "have " "his " "mate, "
  "that " "no " "one " "can " de "ny. "

  "It's " "still " "the " "same " "old " sto "ry, "
  "a " "fight " "for " "love " "and " glo "ry, "
  "a " "case " "of " "do " "or " "die! "
  "The " "world " "will " al "ways " wel "come " lov "ers, "
  "as " "time " "goes " "by. "

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _

  "It's " "still " "the " "same " "old " sto "ry, "
  "a " "fight " "for " "love " "and " glo "ry, "
  "a " "case " "of " "do " "or " "die! "
  "The " "world " "will " al "ways " wel "come " lov "ers, "
  "as " "time " "goes " "by. "
}

wordsTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  \markup \italic {Second time tacet}
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  \markup \italic {Sing from here}
}

pianoRH = \relative c' {
  \global
  s8
  s1
  s1
  s2. <f a d>8 <d f a>~ % 20b
  q8 <d f c'> <bes d g>4 q <a d a'>
  <bes e c'>8.\arpeggio <d e bes'>16 <c e a>8. <bes e g>16 <c e a>4 <bes e bes'>
  <a ees' f>4 q <g bes> <a c>
  s1 % 20c
  s1
  s1
  s1
  s2. <f' a d>8 <d f a>~ % 21a
  q8 <d f c'> <bes d g>4 q <a d a'>
  <bes e c'>8.\arpeggio <d e bes>16 <c e a>8. <bes e g>16 <c e a>4 <bes e bes'>
  <a ees' f>4 q <g bes> <a c> % 21b
  <d, bes'>4. bes'8 s2
  s1
  \repeat volta 2 {
    s2. <bes ees g>4 % 21c
    s1
    s2. <g c g'>4
    s2. <g bes e>8. ees'16 % 21d
    s1
    <d e bes'>8. <c a'>16 <d e bes'>8. <c a'>16 <e c'>4 <bes e a> |
    s1 % 22a
    <a f'>2.\arpeggio r8 d' \bar "\\"
    s1
    s1 % 22a
    s2. <f a d>8 <d f a>~
    q8 <d f c'> <bes d g>4 q <a d a'> % 22b
    <c e bes' c>8.\arpeggio <d e bes'>16 <c e a>8. <bes e g>16 <c e a>4 <bes e bes'>
    s1
    s1 % 22c
  }
  \alternative {
    {
      <d, bes'>4 s <e, bes' d>8 g <a c>4
    }
    {
      <d bes'>4 s <d f bes d>4. r8
    }
  }
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \voiceOne
  d8
  ees8. d16 c8. bes16 c4. d8
  f8. ees16 d8. c16 ees4. f8
  bes8. a16 g8. 16 g4 s % 20b
  s1
  s1
  s1
  d1~ % 20c
  d2~ d4. d8
  ees8. d16 c8. bes16 c4. d8
  f8. ees16 d8. c16 ees4. f8
  bes8. a16 g8. f16 g4 s % 21a
  s1
  s1
  s1 % 21b
  s2 c,8 d ees4
  <f, f'>2 <aes' bes>
  \repeat volta 2 {
    bes,8 c bes g'~g4 s % 21c
    g8. aes16 g8. fis16 g2
    c,8 d c g'~g4 s
    g8. a16 g8. fis16 g2 % 21d
    d8 ees d bes'~ bes4 bes
    s1 |
    ees4 ees d d % 22a
    s1 \bar "||"
    ees8. d16 c8. bes16 c8 c4 d8
    f8. ees16 d8. c16 ees8 ees4 f8 % 22b
    bes8. a16 g8. f16 g4 s
    s1 % 22c
    s1
    f4 f2 d4
    <ees f>2 d
  }
  \alternative {
    {
      s4 g,8 f s2
    }
    {
      s4 \times 2/3 {bes8 c bes} s2
    }
  }
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  s8
  <g c>4 <ees g> <ees c> q
  <aes c>4 <f aes> <f a> <a c>
  d4 cis d s % 20b
  s1
  s1
  s1
  a2 g % 20c
  \times 2/3 {a4 bes a} g4. r8
  <aes c>4 <f aes> <f a> <a c>
  <aes c>4 <f aes> <f a> <a c>
  d4 cis d s % 21a
  s1
  s1
  s1 % 21b
  s2 <a c>4 <ges bes>
  c4 bes d8 ees f4
  \repeat volta 2 {
    g,2. s4 % 21c
    <bes f>2. <g bes>4
    g2. s4
    <bes des>2. <g bes e>8. ees'16 % 21d
    <g, bes>4. <des' g>8~q2
    s1 |
    <a ees'>2 <eis gis> % 22a
    s1 \bar "||"
    <g' c>4 <ees g> <ees a>2
    <aes c>4 <f aes> <f a>2 % 22b
    d'4 cis d s
    s1 % 22c
    s1
    c4 bes a aes
    g4 bes <a c> <a cis> % 22d
  }
  \alternative {
    {
      s1
    }
    {
      s4 <c, ges'> s2
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \partial 8 s8\mp
}

pianoLH = \relative c {
  \global
  \oneVoice
  d8
  \appoggiatura c,8 ees'8. d16 c8. bes16 \appoggiatura ees,8 c'4. d8
  \appoggiatura c,8 f'8. ees16 d8. c16 \appoggiatura ees,8 ees'4. f8
  \appoggiatura bes,8 bes'8. a16 g8. f16 <bes, g'>4 d'8 a~ % 20b
  a8 c g4 g f
  <c, g' e'>4\arpeggio r <c c'>2
  <f c'>2 s
  bes,4 f' <bes d> f % 20c
  bes,4 f' <bes d> f8 d'
  \appoggiatura c,8 ees'8. d16 c8. bes16 \appoggiatura ees,8 c'4. d8
  \appoggiatura c,8 f'8. ees16 d8. c16 \appoggiatura ees,8 ees'4. f8
  \appoggiatura bes,8 bes'8. a16 g8. f16 <bes, g'>4 d'8 a~ % 21a
  a8 c g4 g f
  <c, c'>4 r q2
  <f c'>2 s % 21b
  <bes, bes'>4 f' ees'8 d c4
  <bes, f' d'>2\arpeggio <bes bes'>8 <c c'> <d d'>4
  \repeat volta 2 {
    <ees ees'>2. q4 % 21c
    <d d'>2. <g g'>4
    <c, g' ees'>2. <ees ees'>4
    <e e'>2. <des des'>4 % 21d
    <d d'>4. <ees ees'>8~q2
    s1 |
    s1 % 22a
    s4 c f, r8 d'' \bar "||"
    \appoggiatura c,8 ees'8. d16 c8. bes16 \appoggiatura f8 c'4. d8 |
    \appoggiatura d,8 f'8. ees16 d8. c16 s2 | % 22b
    \appoggiatura bes8 bes'8. a16 g8. f16 <bes, g'>4 d'8 a~ |
    a8 c g4 g f | % 22c
    s1
    <f, d'>2. <b, b'>4
    <c c'>2 <f ees'> % 22d
  }
  \alternative {
    {
      <bes, bes'>4 <g' d'> <c, c'> <f ees'>
    }
    {
      <bes, bes'>4 <aes' ees'> <bes f'> \ottava #-1 bes,,8 \ottava #0 r
    }
  }
  \bar "|."
}

pianoLHone = \relative c {
  \global
  \voiceOne
  s8
  s1
  s1
  s1 % 20b
  s1
  s1
  s2 ees
  s1 % 20c
  s1
  s1
  s1
  s1 % 21a
  s1
  s1
  s2 ees % 21b
  s1 
  s1 |
  \repeat volta 2 {
    s1 % 21c
    s1
    s1
    s1 % 21d
    s1
    r4 c r c % 22a
    c2 b |
    <c ees> 4 s2. \bar "||"
    s1
    s2 ees8 ees4 f8 % 22b
    s1
    s1 % 22c
    r4 c r c
    s1
    s1 % 22d
  }
  \alternative {
    {
      s1
    }
    {
      s1
    }
  }
  \bar "|."
}

pianoLHtwo = \relative c {
  \global
  \voiceTwo
  s8
  s1
  s1
  s1 % 20b
  s1
  s1
  s2 c4 f,
  s1 % 20c
  s1
  s1
  s1
  s1 % 21a
  s1
  s1
  s2 c'4 f, % 21b
  s1
  s1
  \repeat volta 2 {
    s1 % 21c
    s1
    s1
    s1 % 21d
    s1
    c2 c
    f1~ % 22a
    f4 s2.
    s1
    s2 f4 f % 22b
    s1
    s1 % 22c
    c2 c
    s1
    s1 % 22d
  }
  \alternative {
    {
      s1
    }
    {
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
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \unfoldRepeats \TempoTrack
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
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" { \midiWordsOne }
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
