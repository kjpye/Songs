\version "2.20.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Here in My Heart"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup { \right-column { \line {Pat Genaro,}
                                          \line {Lou Levinson,}
                                          \line {& Bill Borelli}
                                        }}
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
  \time 2/2
}

TempoTrack = {
  \global
  \tempo 2=60
  s1
  \set Score.tempoHideNote = ##t
  s1*4
  \repeat volta 2 { s1*30 }
  \alternative {
    {
      s1*2
    }
    {
      s1
      s2 \tempo 2=30 s2
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "82a" } s1*4
  \repeat volta 2 {
    \mark \markup { \circle "82b" } s1*4
    \mark \markup { \circle "82c" } s1*4
    \mark \markup { \circle "83a" } s1*4
    \mark \markup { \circle "83b" } s1*3
    \mark \markup { \circle "83c" } s1*3
    \mark \markup { \circle "83d" } s1*4
    \mark \markup { \circle "84a" } s1*3
    \mark \markup { \circle "84b" } s1*3
    \mark \markup { \circle "84c" } s1*2
  }
  \alternative {
    {
      s1
      \mark \markup { \circle "84d" } s1
    }
    {
      s1*2
    }
  }
}

ChordTrack = \chordmode {
  bes1
  g1:m
  c1:m
  f2.:m7 f4:7aug
  \repeat volta 2 {
    bes1 % 82b
    g1:m
    d2:7aug \tuplet 3/2 {s4 d:7 s}
    ees1
    f1:7 % 82c
    s1
    f1:7aug
    bes2:maj7 f:m6/aes
    g2.:m7 d4:m7.5-
    g2:7 g4:aug7.9- % 83a
    g:7
    c1:m
    s1
    a2.:7 e4:m7.5- % 83b
    aes2:7 a4:aug7.9- a:7
    d2:m a:7/cis
    c2:m7 f:7 % 83c
    bes1
    g1:m
    d2:7aug \tuplet 3/2 {s4 d:7 s} % 83d
    ees1
    f1:7
    s1
    f1:7aug % 84a
    bes2:maj7 f4:m6/aes g:7
    ees1:m/ges
    c1:m7.5- % 84b
    bes1/f
    f2:m/aes
    g:7
    c2:m c:m7 % 84c
    f1:9
  }
  \alternative {
    {
      bes2 g:m
      c4:m c:m7 f2:9 % 84d
    }
    {
      bes2 g:m
      c4:m7 b:9.5- bes2
    }
  }
}

melody = \relative {
  \global
  r1*4
  \repeat volta 2 {
    d''2. c8 bes % 82b
    d2. c8 bes
    bes2~ \tuplet 3/2 {bes4 a c}
    bes4 g2.
    c2. bes8 a % 82c
    c2. bes8 a
    a2~ \tuplet 3/2 {a4 g f}
    a4 d,2.
    f4 ees8 d f2~ % 83a
    f4 d aes'4. g8
    f4 ees2.~
    ees1
    g4 f8 e g2~ % 83b
    g4 g8 a bes4 a8 g
    a2. 4
    bes2 c % 83c
    d2. c8 bes
    d2. c8 bes
    bes2~ \tuplet 3/2 {bes4 a c} % 83d
    bes4 g2.
    c2. bes8 a
    c2. bes8 a
    a2~ \tuplet 3/2 {a4 g f} % 84a
    a4 d,2.
    ees4 f8 ges bes2~
    bes4 bes \tuplet 3/2 {c4 bes c} % 84b
    d1
    f,1
    ees4 f g2~ % 84c
    g4 f8 g \tuplet 3/2 {a4 bes c}
  }

  \alternative {
    {
      bes1
      R1
    }
    {
      bes1
      R1\fermata
    }
  }
  \bar "|."
}

wordsOne = \lyricmode {
  Here in my heart
  I'm a -- lone __ and so lone -- ly,
  here in my heart
  I just yearn __ for you on -- ly.
  Here in my arms __
  I long to hold you, __
  hold you so near, __
  ev -- er close to my heart.
  So darl -- ing say that you care,
  take this heart I give glad -- ly,
  sure -- ly you know
  I need youe __ love so bad -- ly.
  here in my heart, __
  my life and my all, dear.
  Please be mine, __
  and stay here in my heart.
  heart.
}

wordsSingle = \lyricmode {
  Here in my heart
  I'm a -- lone __ and so lone -- ly,
  here in my heart
  I just yearn __ for you on -- ly.
  Here in my arms __
  I long to hold you, __
  hold you so near, __
  ev -- er close to my heart.
  So darl -- ing say that you care,
  take this heart I give glad -- ly,
  sure -- ly you know
  I need youe __ love so bad -- ly.
  here in my heart, __
  my life and my all, dear.
  Please be mine, __
  and stay here in my heart.
  Here in my heart
  I'm a -- lone __ and so lone -- ly,
  here in my heart
  I just yearn __ for you on -- ly.
  Here in my arms __
  I long to hold you, __
  hold you so near, __
  ev -- er close to my heart.
  So darl -- ing say that you care,
  take this heart I give glad -- ly,
  sure -- ly you know
  I need youe __ love so bad -- ly.
  here in my heart, __
  my life and my all, dear.
  Please be mine, __
  and stay here in my heart.
}

midiWords = \lyricmode {
  "\nHere " "in " "my " "heart "
  "\nI'm " a "lone "  "and " "so " lone "ly, "
  "\nhere " "in " "my " "heart "
  "\nI " "just " "yearn "  "for " "you " on "ly. "
  "\nHere " "in " "my " "arms " 
  "\nI " "long " "to " "hold " "you, " 
  "\nhold " "you " "so " "near, " 
  "\nev" "er " "close " "to " "my " "heart. "
  "\nSo " darl "ing " "say " "that " "you " "care, "
  "\ntake " "this " "heart " "I " "give " glad "ly, "
  "\nsure" "ly " "you " "know "
  "\nI " "need " "youe "  "love " "so " bad "ly. "
  "\nhere " "in " "my " "heart, " 
  "\nmy " "life " "and " "my " "all, " "dear. "
  "\nPlease " "be " "mine, " 
  "\nand " "stay " "here " "in " "my " "heart. "
  "\nHere " "in " "my " "heart "
  "\nI'm " a "lone "  "and " "so " lone "ly, "
  "\nhere " "in " "my " "heart "
  "\nI " "just " "yearn "  "for " "you " on "ly. "
  "\nHere " "in " "my " "arms " 
  "\nI " "long " "to " "hold " "you, " 
  "\nhold " "you " "so " "near, " 
  "\nev" "er " "close " "to " "my " "heart. "
  "\nSo " darl "ing " "say " "that " "you " "care, "
  "\ntake " "this " "heart " "I " "give " glad "ly, "
  "\nsure" "ly " "you " "know "
  "\nI " "need " "youe "  "love " "so " bad "ly. "
  "\nhere " "in " "my " "heart, " 
  "\nmy " "life " "and " "my " "all, " "dear. "
  "\nPlease " "be " "mine, " 
  "\nand " "stay " "here " "in " "my " "heart. "
}

pianoRH = \relative {
  \global
  <bes' d>2. <a c>8 <g bes>
  <bes d>2. <a c>8 <g bes>
  <c ees>2~ \tuplet 3/2 {q4 <ees, g> <g bes>}
  s1
  \repeat volta 2 {
    <bes d>2. <a c>8 <g bes> % 82b
    <bes d>2. <a c>8 <g bes>
    <fis bes>2~ \tuplet 3/2 {q4 <c a'> <fis c'>}
    s1
    s1 % 82c
    s1
    s1
    <d a'>4 s2.
    s1 % 83a
    s1
    <d f>4 s2.
    s1
    s1 % 83b
    s1
    s1
    <bes ees g bes>2 <c ees a c> % 83c
    <bes' d>2. <a c>8 <g bes>
    <bes d>2. <a c>8 <g bes>
    <fis bes>2~ \tuplet 3/2 {q4 <c a'> <fis c'>} % 83d
    s1
    s1
    s1
    s1 % 84a
    <d a'>4 s2.
    s1
    s1 % 84b
    s1
    s1
    <c ees>4 <bes d f> s2 % 84c
    s1
  }
  \alternative {
    {
      s1
      <g' c ees g>4 <ees g bes> s2 % 84d
    }
    {
      s1
      <g c e g>4 <a cis f a> <bes d g bes>2\fermata\arpeggio
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  s1*3
  b'4 c c cis\arpeggio
  \repeat volta 2 {
    s1 % 82b
    s1
    s1
    <g bes>4 <ees g>2.
    <a c>2. <g bes>8 <f a> % 82c
    <a c>2. <g bes>8 <f a>
    <f a>2~ \tuplet 3/2 {q4 g f}
    s4 d2.
    f4 ees8 d f2~ % 83a
    f4 d aes'4. g8
    s4 ees2.~
    ees1
    g4 f8 e g2~ % 83b
    g4 g8 a <f bes>4 a8 g
    a2. a4
    s1 % 83c
    s1
    s1
    s1 % 83d
    <g bes>4 <ees g>2.
    <a c>2. <g bes>8 <f a>
    <a c>2. <g bes>8 <f a>
    q2~ \tuplet 3/2 {q4 g f} % 84a
    s4 d2.
    ees4 f8 ges bes2~
    bes4 bes \tuplet 3/2 {c4 bes c} % 84b
    <bes d>1
    <f, f'>1
    s2 <ees' g> % 84c
    <ees g>4 f8 g \tuplet 3/2 {<f a>4 <g bes> <a c>}
  }
  \alternative {
    {
      bes4 g8 bes \tuplet 3/2 {<d, d'>4 <ees ees'> <f f'>}
      s2 \tuplet 3/2 {b4 c cis}
    }
    {
      bes4 g8 bes \tuplet 3/2 {<d, d'>4 <ees ees'> <f f'>}
      s1
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s1*3
  <ees' g>2.\arpeggio <ees a>4\arpeggio
  \repeat volta 2 {
    s1 % 82b
    s1
    s1
    bes2 d4 c
    ees1 % 82c
    ees1
    cis1
    s4 a4 c c
    <g b>2. <aes c>4 % 83a
    <g b>2 << b2 \\ {ees4 d} >>
    s4 c4 b c
    d4 ees f8 ees d ees
    <a, cis>2. <bes d>4 % 83b
    <a cis>2 cis
    <a d f>2 <a e' g>
    s1 % 83c
    s1
    s1
    s1 % 83d
    bes2 d4 c
    ees1
    ees1
    cis1 % 84a
    s4 a4 c b
    bes2. <ees ges>4~
    q1 % 84b
    f1
    \tuplet 3/2 {c4 d c}
    b2
    s2 \tuplet 3/2 {bes4 c bes} % 84c
    a2 ees'
  }
  \alternative {
    {
      <d f>2 bes'
      s2 <ees, g'> % 84d
    }
    {
      <d f>2 bes'
      s1
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp
  s1*3
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
      s1
    }
  }
}

pianoLH = \relative {
  \global
  \oneVoice
  s1*3
  <f, a'>2.\arpeggio <f' a>4\arpeggio
  \repeat volta 2 {
    s1*14 % 82b
    d4 d, cis' cis, % 83b++
    c' c, f f' % 83c
    s1*11
    aes,2 g4 g, % 84b++
    s1 % 84c
    s1
  }
  \alternative {
    {
      <bes' f'>2 <g g'>
      s1 % 84d
    }
    {
      <bes f>2 <g g'>
      <c bes'>4 <b dis a'> <bes bes'>2\fermata\arpeggio
    }
  }
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  r4 f d'2
  r4 d, bes'2
  r4 g, ees'2
  s1
  \repeat volta 2 {
    r4 f d'2 % 82b
    r4 d, bes'2
    r4 bes, fis'2
    r4 bes, g'2
    r4 c, f c' % 82c
    r4 c, f c'
    r4 f,, c'2
    f1
    d4 ees8 f d2 % 83a
    f1
    g1~
    g1
    e4 f8 g e2 % 83b
    g1
    s1
    s1 % 83c
    r4 f d'2
    r4 d,2 bes'4
    r4 bes,2 fis'4 % 83d
    r4 bes, g'2
    r4 c, f c'
    r4 c, f c'
    r4 f,, ees'2 % 84a
    f1
    ees1
    c1 % 84b
    r4 f, bes a
    s1
    g'1 % 84c
    ees2 \tuplet 3/2 {c'4 bes a}
  }
  \alternative {
    {
      s1
      c4 bes a2 % 84d
    }
    {
      s1
      s1
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  bes,1
  g1
  c,1
  s1
  \repeat volta 2 {
    bes'1 % 82b
    g1
    d1
    ees1
    f1 % 82c
    f1
    f,1
    bes'2 aes
    g2. d4 % 83a
    g2 g
    c2 g
    c2 g
    a2. e4 % 83b
    a2 a
    d4 d, cis' cis,
    s1 % 83c
    bes'1
    g1
    d1 % 83d
    ees1
    f1
    f1
    f,1 % 84a
    bes'2 aes4 g
    ges2. ees4
    c1 % 84b
    f,1
    s1
    c'2 c % 84c
    f,2 f'
  }
  \alternative {
    {
      s1
      c'2 f % 84d
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
          \new Staff \with { \consists "Volta_engraver" }
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
        \new ChordNames \ChordTrack
        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsSingle
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
          \new Staff
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
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
    \midi {}
  }
}
