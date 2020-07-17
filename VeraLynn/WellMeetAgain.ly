\version "2.20.3"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We'll Meet Again"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Hugh Charles and Ross Parker"
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
  \key d \major
  \time 4/4
  \tempo 4=92
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \circle "1a" }
  \mark \markup { \box "9a" } s1*2
  \repeat volta 2 {
    s1
    \mark \markup { \box "9b" } s1*4
    \mark \markup { \box "9c" } s1*3
    \mark \markup { \box "10a" } s1*4
    \mark \markup { \box "10b" } s1*4
    \mark \markup { \box "10c" } s1*4
    \mark \markup { \box "10d" } s1*4
    \mark \markup { \box "11a" } s1*4
  }
  \alternative {
    {
      \mark \markup { \box "11b" } s1*4
    }
    {
      \mark \markup { \box "11c" } s1*4
    }
  }
}

ChordTrack = \chordmode {
  \global
  e2:m9 e:m7
  s2 bes4:aug6 a:13
  \repeat volta 2 {
    d1:6
    fis2:7
    f4:7 fis:7 % 9b
    b2:13 bes4:13 b:13
    c2:9 b:7
    e2:9 e:7
    b2:m7 e:13 % 9c
    e1:m7
    e2:m9 a4:13 a:13.9-
    d2:6 d4:dim d % 10a -- check chords
    fis2:7 f4:7 fis %% check chords
    b2:13 bes4:13 b:13
    c2:9 b:7
    e1:m7 % 10b
    g2 a:13.9- % check chords
    d2:6 c4:9 a8:m7 d:6
    s1
    d1:7 % 10c
    d1:aug
    g2:maj7 g:6
    s2 fis4:7 f:7
    e1:7 % 10d
    e1:aug
    a2:7 e4:m7 ees:dim7
    e2:m7 a:14.9-
    d1:6 % 11a
    fis2:7 f4:7 fis:7
    b2:13
    bes4:13
    b:13
    b1:aug7
  }
  \alternative {
    {
      e2:9 e:7 % 11b
      e2:m7 a:13.9-
      d2:6 bes4:9 a:7.9-
      d2:6 a:13.9-
    }
    {
      e2:9 e:7 % 11c
    }
  }
  e2:m7 a:13.9-
  e1:m7 % check chords
  d1:6
}

melody = \relative c' {
  \global
  r1
  r1
  \repeat volta 2 {
    cis2. gis8 a
    ais2. a8 ais % 9b
    b2. ais8 b
    g'2. \times 2/3 {r8 fis g}
    fis2 e4~ \times 2/3 {e8 e d}
    d2 cis4~ \times 2/3 {cis8 cis d} % 9c
    e1
    r1
    a,2 gis4 a % 10a
    ais2 a4 ais
    b2 ais4 b
    g'2. fis8 g
    fis4 e4~e8 e4 d8 % 10b
    d8 b4. \times 2/3 {r4 fis' fis}
    d1
    r4 d e eis
    fis8 e fis e~e4 \times 2/3 {d8 e fis~} % 10c
    fis8 e fis e~e4 d8 ais
    r8 b4 d8 fis e4.~
    e4 r r8 fis4 g8
    gis8 fis gis fis~fis4 \times 2/3 {e8 fis g~} % 10d
    g8 fis4 gis8 fis4 e8 fis
    a8 g~g2 fis8 e~
    e2 r
    a,2. gis8 a % 11a
    ais2. a8 ais
    b2. ais8 b
    g'2. \times 2/3 {r8 fis g}
  }
  \alternative {
    {
      fis2 e4~\times 2/3 {e8 e d} % 11b
      d4 r8 b8~ \times 2/3 {b4 fis' fis}
      d1~
      d2 r
    }
    {
      fis4 e e d % 11c
    }
  }
  d4 b fis' fis
  d1~
  d1\fermata
  \bar "|."
}

wordsOne = \lyricmode {
  We'll meet a- gain, don't know where, don't know when,
  but I know we'll __ meet a- gain some sun- ny day.

  Keep smil- ing through just like you al- ways do,
  till the blue skies __ drive the dark clouds far a- way.
  So will you please say hel- lo __ to the folks __ that I know,
  tell them I won't be long. __
  They'll be hap- py to know that as you __ saw me go
  I was sing- ing this song: __
  
  We'll meet a- gain, don't know where, don't know when,
  but I know we'll __ meet a- gain some sun- ny day.

  know we'll __ meet a- gain some sun- ny day.
}

midiWordsOne = \lyricmode {
  "We'll " "meet " a "gain, " "don't " "know " "where, " "don't " "know " "when, "
  "but " "I " "know " "we'll "  "meet " a "gain " "some " sun "ny " "day. "

  "Keep " smil "ing " "through " "just " "like " "you " al "ways " "do, "
  "till " "the " "blue " "skies "  "drive " "the " "dark " "clouds " "far " a "way. "
  "So " "will " "you " "please " "say " hel "lo "  "to " "the " "folks "  "that " "I " "know, "
  "tell " "them " "I " "won't " "be " "long. " 
  "They'll " "be " hap "py " "to " "know " "that " "as " "you "  "saw " "me " "go "
  "I " "was " sing "ing " "this " "song: " 
  
  "We'll " "meet " a "gain, " "don't " "know " "where, " "don't " "know " "when, "
  "but " "I " "know " "we'll "  "meet " a "gain " "some " sun "ny " "day. "
}

pianoRH = \relative c'' {
  \global
  s1
  s1
  \repeat volta 2 {
    s1
    s1 % 9b
    s1
    s1
    s1
    s1 % 9c
    s1
    r8 <g b fis'> e' <g, cis fis>~q4 s
    s1 % 10a
    s1
    s1
    s1
    s1 % 10b
    s1
    <fis a b d>2 <bes d e g>4 <g a c e>8 <fis a b d>~
    q4 d' e eis
    fis8 e fis e~e4 \times 2/3 {d8 e fis~} % 10c
    fis8 e fis e~e4 d8 ais
    r8 b4 d8 fis e4.~
    e2 s
    gis8 fis gis fis~fis4 \times 2/3 {e8 fis gis~} % 10d
    gis8 fis4 gis8 fis4 e8 fis
    s1
    s2 fis16 e cis bes a g fis e \bar "||"
    s1 % 11a
    s1
    s1
    s1
  }
  \alternative {
    {
      s1
      s1
      d'8 e d4 <d, f c'> <cis e bes'>8 a'~
      a8 b d <g, bes cis fis>~q q4.
    }
    {
      s1
    }
  }
  s1
  d'4 <d, e g c> \times 2/3 {<e g b d> <d e g b> <e g b d>}
  <a b d fis>1\fermata
  \bar "|."
}


pianoRHone = \relative c'' {
  \global
  \voiceOne
  fis4 e e d
  d4 b fis a
  \repeat volta 2 {
    a2. gis8 a
    ais2 a4 a8 ais % 9b
    b2. ais8 b
    g'2.~ \times 2/3 {g8 fis g}
    fis2 e4~\times 2/3 {e8 e d}
    d2 cis4~\times 2/3 {cis8 cis d} % 9c
    e1
    s2.. a,8~
    a2 gis4 a % 10a
    ais2 a4 ais
    b2 bes4 b
    g'2. fis8 g
    fis4 e~e8 e4 d8 % 10b
    d8 b4. \times 2/3 {r4 fis' fis}
    s1
    s1
    s1 % 10c
    s1
    s1
    s2 r8 fis4 g8
    s1 % 10d
    s1
    a8 g~g2 fis8 e~
    e2 s
    a,2. gis8 a % 11a
    ais2 a4 a8 ais
    b2. ais8 b
    g'2.~\times 2/3 {g8 fis g}
  }
  \alternative {
    {
      fis2 e4~\times 2/3 {e8 e d} % 11b
      d4. b8~\times 2/3 {b4 fis' fis}
      s1
      s1
    }
    {
      fis4 e e d % 11c
    }
  }
  d4 b fis' fis
  s1
  s1
  \bar "|."
}

pianoRHtwo = \relative c'' {
  \global
  \voiceTwo
  <g b d>2 <g b>
  <e g b>2 d4 cis
  \repeat volta 2 {
    r4 <b d fis>2 eis8 fis
    r4 <cis e fis> <c ees f> <cis e fis> % 9b
    r4 <dis gis> <d g> dis
    r4 <bes' d e> <a dis>2
    r4 <gis b>2 q4
    r4 <fis a>2 <e gis>4 % 9c
    r4 <g b>2 q4
    s2. <cis, fis ais>8 <b d fis>~
    q4 q <d f> <d fis> % 10a
    r4 <cis e fis> <c ees f> <cis e fis>
    r4 <dis gis> <d g> dis
    r4 <bis' d e> <a dis>2
    <g b d>2 q % 10b
    g2 <g bes>
    <fis a b d>2 s
    s1
    s1 % 10c
    s1
    s1
    s2 <ais e'>4 <a ees'>
    s1 % 10d
    s1
    cis2 <g d'>4 <a c e>8 <g b d>~
    q2 s
    r4 <b, d fis>2 eis8 fis % 11a
    r4 <cis e fis> <c ees f> <cis e fis>
    r4 <dis gis> <d g> dis
    r4 <a' dis>2 q4
  }
  \alternative {
    {
      r4 <gis b>2 q4
      r4 <g b> \times 2/3 {<e g>4 <g bes cis> q}
      s1
      s1
    }
    {
      <gis b>2 q
    }
  }
  <g b>2 <g bes cis>4 q
  s1
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1\>
  \repeat volta 2 {
    s1\mp
    s1 % 9b
    s1*26
  }
  \alternative {
    {
      s1*4
    }
    {
      s1
    }
  }
  s1
  s1\<
  s1\ff
}

pianoLH = \relative c, {
  \global
  \oneVoice
  e4 r e r
  e4 r <bes' bes'> <a a'>
  \repeat volta 2 {
    d,4 r a' r
    fis4 r f fis % 9b
    s1
    s1
    s1
    s1 % 9c
    s1
    s1
    d4 r f fis % 10a
    cis r f fis
    s1
    s1
    e4 <g' b d>2 e,4 % 10b
    <a g'>2 q
    d,4 <fis' a b d> c, a8 d~
    d4 r r2
    d4 <fis' a c d> a, q % 10c
    d,4 <fis' ais d> a, q
    g4 <g' b d fis> d, <g' b d e>
    g,4 q fis f
    e4 <gis' b e fis> b, q % 10d
    e, <gis' c e> e, q
    a4 <g' cis e> e, ees
    e4 <g' b d e> a, <bes' cis e>
    d,,4 r a' r % 11a % 11a
    fis4 r f fis
    s1
    s1
  }
  \alternative {
    {
      s1
      s1
      d4 <fis' a b d> <bes, aes'> <a g'>
      <d fis a b>4 q r <a g'>
    }
    {
      <e' d'>2 q % 11c
    }
  }
  <a, g'>2 q
  r4 q \times 2/3 {q q q}
  d,1\fermata
  \bar "|."
}

pianoLHone = \relative c {
  \global
  \voiceOne
  s1
  s1
  \repeat volta 2 {
    s1
    s1 % 9b
    b4 a' aes a
    r4 bes r a
    r4 d r d
    r4 a r d % 9c
    r4 d r d
    r4 d r g,
    s1 % 10a
    s1
    r4 a aes a
    r4 bes r a
    s1 % 10b
    s1
    s1
    s1
    s1 % 10c
    s1
    s1
    s1
    s1 % 10d
    s1
    s1
    s1
    s1 % 11a
    s1
    b,4 a' aes a
    r4 a r a
  }
  \alternative {
    {
      r4 d r d
      r4 d r g,
      s1
      s1
    }
    {
      s1
    }
  }
  s1
  s1
  s1
  \bar "|."
}

pianoLHtwo = \relative c {
  \global
  \voiceTwo
  s1
  s1
  \repeat volta 2 {
    s1
    s1 % 9b
    b2 bes4 b
    c2 b
    e2 e
    b2 e % 9c
    e2 e
    e2 a,
    s1 % 10a
    s1
    b2 bes4 b
    cis2 b
    s1 % 10b
    s1
    s1
    s1
    s1 % 10c
    s1
    s1
    s1
    s1 % 10d
    s1
    s1
    s1
    s1 % 11a
    s1
    b2 bes4 b
    b2 b
  }
  \alternative {
    {
      e2 e % 11b
      e2 a,
      s1
      s1
    }
    {
      s1
    }
  }
  s1
  s1
  s1
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
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
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
          \new Staff
          <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" { \wordsOne \wordsOne }
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
          \new Staff
          <<
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" { \midiWordsOne \midiWordsOne }
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
