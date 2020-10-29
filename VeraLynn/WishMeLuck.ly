\version "2.20.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Wish Me Luck"
  subtitle    = "(As You Wave Me Goodbye)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Phil Park"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Harry Parr-Davies"
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
  \time 4/4
}

TempoTrack = {
  \global
  \tempo "Andante rubato" 4=92
  s1
  \set Score.tempoHideNote = ##t
  \tempo 4=86 s1-\markup \bold rall
  \tempo 4=92 s1-\markup \bold {a tempo}
  s1*7
  \repeat volta 2 {
    \tempo 2=92
    s1*30
  }
  \alternative {{s1 s1}{s1 s1}}
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "51a" } s1*3
  \mark \markup { \circle "51b" } s1*4
  \mark \markup { \circle "51c" } s1*3
  \repeat volta 2 {
    \mark \markup { \circle "52a" } s1*4
    \mark \markup { \circle "52b" } s1*4
    \mark \markup { \circle "52c" } s1*4
    \mark \markup { \circle "52d" } s1*4
    \mark \markup { \circle "53a" } s1*5
    \mark \markup { \circle "53b" } s1*5
    \mark \markup { \circle "53c" } s1*4
  }
  \alternative {
    {
      \mark \markup { \circle "53d" } s1*2
    }
    {
      s1*2
    }
  }
}

ChordTrack = \chordmode {
  c1:7
  s1
  c1:7
  s2 c4:13 c:7 % 51b
  f1/c
  s2 c4:m7/f f:7
  bes4 c:7/bes a:m7 f/a
  g4:m7 a:7 d2:m % 51c
  c2/g d4.:m cis8:dim7 
  d4:m11 g:7 c2:7 \time 2/2
  \repeat volta 2 {
    f1 % 52a
    f2:7 bes
    f2/a c:7/g
    f2:7 bes4 bes:m
    f2/c d:m7 % 52b
    g2:m c:7
    f2 d:m7
    g2:m7 c:7
    f1 % 52c
    f2:7 bes
    f2/a c:7/g
    f2:7 bes4 bes:m
    f2/c d:m7 % 52d
    g2:m c:7
    f2 bes:6
    f1
    a1 % 53a
    g2:m6/e a:7
    d2:m a
    d2:m g:7
    c2/e a:m
    f2:6 g:9 % 53b
    g1:m7/c
    c1:7
    f1
    f2:7 bes
    f2/a c:7/a % 53c
    f2:7 bes4 bes:m
    f2/c d:m7
    g2:m7 c:7sus4
  }
  \alternative {
    {
      f2 g:7 % 53d
      c1:7
    }
    {
      f2 ees:7
      f1
    }
  }
}

melody = \relative {
  \global
  R1*2
  g'8 a g a bes c bes a
  g8 a bes c d2 % 51b
  f,8 g f g a bes a g
  f8 g a bes c2
  d8 c bes d c4. f,8
  bes8 a g bes a4. a8 % 51c
  g8 g c c d,4. e8
  g8 g d' d g,4 c,8. c16 \time 2/2
  \repeat volta 2 {
    f2 c4 f % 52a
    a2 f4 d'
    c1~
    c2 f,4 bes
    a2 c,4 a' % 52b
    g2 c,4 g'
    f1~
    f4 r c4. c8
    f2 c4 f % 52c
    a2 f4 d'
    c1~
    c2 f,4 bes
    a2 c,4 a' % 52d
    g2 c,4 g'
    f1~
    f2. r4
    a2 e4 f % 53a
    g2 a4 bes
    a2 d,4 e
    f2 g4 a
    g2 c
    d,2 a' % 53b
    g1~
    g2 c,4. c8 \bar "||"
    f2 c4 f
    a2 f4 d'
    c1~ % 53c
    c2 f,4 bes
    a2 c,4 a'
    g4 d'2 c4
  }
  \alternative {
    {
      f,1~ % 53d
      f4 r c4. 8
    }
    {
      f1~
      f2. r4
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  Trains steam out with hea -- vy loads
  up -- on the ir -- on way,
  mo -- tor cars are on the roads
  each mo -- ment of the day,
  Ae -- ro -- planes and ships
  are al -- ways mak -- ing trips,
  so why should you feel blue,
  if I must jour -- ney too?
  Wish me luck as you wave me good -- bye, __
  cheer -- i -- o,
  here I go on my way. __
  Wish me luck as you wave me good -- bye, __
  with a cheer,
  not a tear,
  make it gay. __
  Give me a smile
  I can keep all the while
  in my heart while I'm a -- way. __
  Till we meet once a -- gain you and I
  wish me luck as you wave me good -- bye. __
  Wish me
  "-bye." __
}

wordsSingle = \lyricmode {
  Trains steam out with hea -- vy loads
  up -- on the ir -- on way,
  mo -- tor cars are on the roads
  each mo -- ment of the day,
  Ae -- ro -- planes and ships
  are al -- ways mak -- ing trips,
  so why should you feel blue,
  if I must jour -- ney too?
  Wish me luck as you wave me good -- bye, __
  cheer -- i -- o,
  here I go on my way. __
  Wish me luck as you wave me good -- bye, __
  with a cheer,
  not a tear,
  make it gay. __
  Give me a smile
  I can keep all the while
  in my heart while I'm a -- way. __
  Till we meet once a -- gain you and I
  wish me luck as you wave me good -- bye. __
  Wish me luck as you wave me good -- bye, __
  cheer -- i -- o,
  here I go on my way. __
  Wish me luck as you wave me good -- bye, __
  with a cheer,
  not a tear,
  make it gay. __
  Give me a smile
  I can keep all the while
  in my heart while I'm a -- way. __
  Till we meet once a -- gain you and I
  wish me luck as you wave me good -- bye. __
}

midiWords = \lyricmode {
  "\nTrains " "steam " "out " "with " hea "vy " "loads "
  "\nup" "on " "the " ir "on " "way, "
  "\nmo" "tor " "cars " "are " "on " "the " "roads "
  "\neach " mo "ment " "of " "the " "day, "
  "\nAe" ro "planes " "and " "ships "
  "\nare " al "ways " mak "ing " "trips, "
  "\nso " "why " "should " "you " "feel " "blue, "
  "\nif " "I " "must " jour "ney " "too? "
  "\nWish " "me " "luck " "as " "you " "wave " "me " good "bye, " 
  "\ncheer" i "o, "
  "\nhere " "I " "go " "on " "my " "way. " 
  "\nWish " "me " "luck " "as " "you " "wave " "me " good "bye, " 
  "\nwith " "a " "cheer, "
  "\nnot " "a " "tear, "
  "\nmake " "it " "gay. " 
  "\nGive " "me " "a " "smile "
  "\nI " "can " "keep " "all " "the " "while "
  "\nin " "my " "heart " "while " "I'm " a "way. " 
  "\nTill " "we " "meet " "once " a "gain " "you " "and " "I "
  "\nwish " "me " "luck " "as " "you " "wave " "me " good "bye. " 
  "\nWish " "me " "luck " "as " "you " "wave " "me " good "bye, " 
  "\ncheer" i "o, "
  "\nhere " "I " "go " "on " "my " "way. " 
  "\nWish " "me " "luck " "as " "you " "wave " "me " good "bye, " 
  "\nwith " "a " "cheer, "
  "\nnot " "a " "tear, "
  "\nmake " "it " "gay. " 
  "\nGive " "me " "a " "smiole "
  "\nI " "can " "keep " "all " "the " "while "
  "\nin " "my " "heart " "while " "I'm " a "way. " 
  "\nTill " "we " "meet " "once " a "gain " "you " "and " "I "
  "\nwish " "me " "luck " "as " "you " "wave " "me " good "bye. " 
}

pianoRH = \relative {
  \global
  <d' g>8 <e a> <f bes> <g c> <bes d> q q4
  s1 \bar "||"
  <d, g>8 <e a> <d g> <e a> <f bes> <g c> <f bes> <e a>
  <d g>8 <e a> <f bes> <g c> s2 % 51b
  <c, e>8 <d g> <c f> <d g> <e a> <f bes> <e a> <d g>
  <c f>8 <d g> <e a> <f bes> s2
  s1*4 \time 2/2
  \repeat volta 2 {
    s1*21
    <a, c d>2 <b f' a> % 53b
    s1*8
  }
  \alternative {
    {
      s1*2
    }
    {
      s1
      <c' f a c>2.->\arpeggio r4
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  s1
  d'8 e f a c2
  s1
  s2 <e, d'> % 51b
  s1
  s2 <ees bes'>
  d'8 c bes d <c, c'>4. f8
  bes8 a g bes a4. a8 % 51c
  g8 g c c d,4. e8
  g8 g d' d <bes, g'>4 c8. c16 \time 2/2
  \repeat volta 2 {
    f2 c4 f % 52a
    a2 f4 d'
    c1~
    c2 f,4 bes
    a2 c,4 a' % 52b
    g2 c,4 g'
    f1~
    f4 r c4. c8
    f2 c4 f % 52c
    a2 f4 d'
    c1~
    c2 f,4 bes
    a2 c,4 a' % 52d
    g2 c,4 g'
    f1~
    f2. r4
    a2 e4 f % 53a
    g2 a4 bes
    a2 d,4 e
    f2 g4 a
    g2 c
    s1 % 53b
    g1~
    g2 c,4. c8 \bar "||"
    f2 c4 f
    a2 f4 d'
    c1~ % 53c
    c2 f,4 bes
    a2 c,4 a'
    g4 d'2 c4
  }
  \alternative {
    {
      \tuplet 3/2 {f,4 a c} e d % 53d
      g,2 c,4. c8
    }
    {
      \tuplet 3/2 {f4 a c} g' f
      s1
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s1
  bes2 e
  s1
  s2 a4 g % 51b
  s1
  s2 g4 f
  <d f>4 e g f8 r
  <bes, d>4 cis <e f> <d f> % 51c
  <c e>4 <e g> <a, c>4. <g bes>8
  <c f>4 f d s \time 2/2
  \repeat volta 2 {
    r4 <a c> r q % 52a
    r4 <c ees> r <f bes>
    g4. f16 g f4 e
    ees2 d4 des
    r4 <c f> r q % 52b
    r4 <bes d> e <bes e>
    r4 <a c> r q
    r4 <f bes d> r <e bes'>
    r4 <a c> r q % 52c
    r4 <c ees> r <f bes>
    g4. f16 g f4 e
    ees2 d4 des
    r4 <c f> r q % 52d
    r4 <bes d> r <bes e>
    r4 <a c> r <g d'>
    r4 <a c> r q
    cis4 a c2 % 53a
    d4 bes cis g'
    f4 a, b cis
    d4 a8 bes <b f'>2
    r4 c <e a>2
    s1 % 53b
    r4 <bes f'> r <bes d>
    <bes e>2 r4 <e, bes'>
    r4 <a c> r q
    r4 <c ees> r <f bes>
    g4. f16 g f4 e % 53c
    ees2 d4 des
    r4 <c f> r q
    r4 <f bes>2 q4
  }
  \alternative {
    {
      c2 <f b> % 53d
      f4 e r <e, bes'>
    }
    {
      c'2 <g' des'>
      s1
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp
  s1*9 \time 2/2
  \repeat volta 2 {
    s1*30
  }
  \alternative {
    {
      s1*2
    }
    {
      s1\<
      s1\f
    }
  }
}

pianoLH = \relative {
  \global
  \oneVoice
  s1*7
  <g, f'>4 <a e'> d2 % 51c
  g4 f, f'8 e d cis
  <d a'>4 <g b> s4 r \time 2/2
  \repeat volta 2 {
    f,4 r <c c'> r % 52a
    f4 r bes r
    a'4 c g bes
    f4 a bes,2
    c2 d % 52b
    g,2 c
    \grace f,8 d'4. e16 ees d4 f
    g,2 c
    f,4 r <c c'> r % 52c
    f4 r bes r
    a'4 c g bes
    f4 a bes,2
    c2 d % 52d
    g,2 c
    f,2 bes
    f2 g'4 f
    e4 r a, r % 53a
    e'4 r a, r
    d4 r a r
    d4 r g,2
    e'2 \grace a,8 a'4 g
    f4 e d g, % 53b
    c2 c,
    c'4 c, r c'
    f,4 r <c c'> r
    f4 r bes r
    a'4 c g bes % 53c
    f4 a bes,2
    c2 d
    g,2 c4 g'
  }
  \alternative {
    {
      <f a>2 g
      <c, bes'>2 c,
    }
    {
      <f' a>2 <ees bes'>
      <f c' a'>2\arpeggio f,4-> r
    }
  }
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  bes8 c d e f f f4
  f,2 fis4 g
  bes8 c bes c d e d c
  bes8 c d e bes2 % 51b
  a8 bes a bes c d c bes
  a8 bes c d bes4 a
  f4 g e f
  s1 % 51c
  s1
  s2 f8 e s4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  c1
  c2 c
  c1~
  c2 c % 51b
  c1~
  c2 f
  bes,2 a
  s1 % 51c
  s1
  s2 c4 s
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
          >>
        >>
        \new PianoStaff
        <<
          \set PianoStaff.connectArpeggios = ##t
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
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
        \new FretBoards \ChordTrack
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
            \new Lyrics \lyricsto "melody" \wordsSingle
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
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
      >>
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
    \midi {}
  }
}
