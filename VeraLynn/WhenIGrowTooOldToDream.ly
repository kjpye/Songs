\version "2.20.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When I Grow Too Old to Dream"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sigmund Romberg"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Oscar Hammerstein II"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 3/4
}

TempoTrack = {
  \global
  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    \tempo 4=96
    s2.-\markup \upright \bold { Slow waltz, freely}
    s2.*29
  }
  \alternative {
    {
      s2.*2
    }
    {
      \tempo 4=90 s2.-\markup \upright \bold Rit.
      s2.*3
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \mark \markup { \circle "63a" } s2.*4
    \mark \markup { \circle "63b" } s2.*4
    \mark \markup { \circle "63c" } s2.*4
    \mark \markup { \circle "64a" } s2.*4
    \mark \markup { \circle "64b" } s2.*4
    \mark \markup { \circle "64c" } s2.*4
    \mark \markup { \circle "65a" } s2.*4
    \mark \markup { \circle "65b" } s2.*2
  }
  \alternative {
    {
      s2.*2
    }
    {
      \mark \markup { \circle "65c" } s2.*4
    }
  }

}

ChordTrack = \chordmode {
  \repeat volta 2 {
    a2.
    s2 d4/e
    a2.
    s2.
    e2.:9/gis % 63b
    e:6
    a
    s
    d % 63c
    s2 e4:7/d
    a2./cis
    fis:m
    a/e % 64a
    e:7
    a
    s
    e:6 % 64b
    b2:m/e e4:6
    a2.
    s
    s % 64c
    cis2:7/gis g4:7.11+
    fis2:m fis4:m/eis
    a2:7/e dis4:7.5-
    d2. % 65a
    s2 e4:7/d
    a2./c
    fis2:m d4:m6/f
    a2./e % 65b
    e:7
  }
  \alternative {
    {
      a
      s
    }
    {
      a2./e % 65c
      e:7
      a
      s
    }
  }
}

melody = \relative {
  \global
  \repeat volta 2 {
    a2 b4
    cis2 d4
    e2 cis4
    a2.
    b2 b4 % 63b
    b4 a b
    cis2.
    a2.
    d2 e4 % 63c
    fis2 gis4
    a2 e4
    cis2 a4
    cis2 e,4 % 64a
    b'4 a b
    a2.~
    a2 e'4
    e2. % 64b
    d2 e4
    cis2.~
    cis2 cis4
    cis2. % 64c
    b2 cis4
    a2.~
    a2 a4
    d2 e4 % 65a
    fis2 gis4
    a2 e4
    cis2 a4
    cis2 e4 % 65b
    b4 a b
  }
  \alternative {
    {
      a2.~
      a2 r4
    }
    {
      cis2 e4 % 65c
      b'4 a b
      a2.~
      a2 r4
    }
  }
  \bar "|."
}

wordsOne = \lyricmode {
  When I grow too old to dream,
  I'll have you to re -- mem -- ber.
  When I grow too old to dream,
  your love will live in my heart. __
  So kiss me, my sweet, __
  and so let us part. __
  And when I grow too old to dream,
  that kiss will live in my heart. __

  kiss will live in my heart. __
}

wordsSingle = \lyricmode {
  When I grow too old to dream,
  I'll have you to re -- mem -- ber.
  When I grow too old to dream,
  your love will live in my heart. __
  So kiss me, my sweet, __
  and so let us part. __
  And when I grow too old to dream,
  that kiss will live in my heart. __

  When I grow too old to dream,
  I'll have you to re -- mem -- ber.
  When I grow too old to dream,
  your love will live in my heart. __
  So kiss me, my sweet, __
  and so let us part. __
  And when I grow too old to dream,
  that kiss will live in my
  kiss will live in my heart. __
}

midiWords = \lyricmode {
  "When " "I " "grow " "too " "old " "to " "dream, "
  "\nI'll " "have " "you " "to " re mem "ber. "
  "\nWhen " "I " "grow " "too " "old " "to " "dream, "
  "\nyour " "love " "will " "live " "in " "my " "heart. " 
  "\nSo " "kiss " "me, " "my " "sweet, " 
  "\nand " "so " "let " "us " "part. " 
  "\nAnd " "when " "I " "grow " "too " "old " "to " "dream, "
  "\nthat " "kiss " "will " "live " "in " "my " "heart. " 
  "\nWhen " "I " "grow " "too " "old " "to " "dream, "
  "\nI'll " "have " "you " "to " re mem "ber. "
  "\nWhen " "I " "grow " "too " "old " "to " "dream, "
  "\nyour " "love " "will " "live " "in " "my " "heart. " 
  "\nSo " "kiss " "me, " "my " "sweet, " 
  "\nand " "so " "let " "us " "part. " 
  "\nAnd " "when " "I " "grow " "too " "old " "to " "dream, "
  "\nthat " "kiss " "will " "live " "in " "my "
  "\nkiss " "will " "live " "in " "my " "heart. " 
}

pianoRH = \relative {
  \global
  \repeat volta 2 {
    s2.*30
  }
  \alternative {
    {
      s2.*2
    }
    {
      s2.*2
      <a cis e a>2.~
      q2.
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  \repeat volta 2 {
    a'2 b4
    cis2 d4
    e2 cis4
    a2.
    b2 b4 % 63b
    b4 a b
    cis2.
    a2.
    <d, d'>2 <e e'>4 % 63c
    <fis fis'>2 <gis gis'>4
    <a a'>2 <e e'>4
    <cis cis'>2 a'4
    cis2 e,4 % 64a
    b'4 a b
    a2.~
    a2 e4
    e'2. % 64b
    d2 e4
    cis2.~
    cis2 e,4
    cis'2. % 64c
    b2 cis4
    a2.~
    a2 a4
    <d, d'>2 <e e'>4 % 65a
    <fis fis'>2 <gis gis'>4
    <a a'>2 <e e'>4
    <cis cis'>2 a'4
    cis2 e,4 % 65b
    b'4 a b
  }
  \alternative {
    {
      r4 <a, cis e> <a cis fis>
      <cis e a>4 <e a cis> <a cis e>
    }
    {
      cis2 e,4 % 65c
      b'4 a b
      s2.*2
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  \repeat volta 2 {
    r4 <a cis e> <b e a>
    r4 <cis e a> <d fis a>
    r4 <e a cis> <cis e a>
    r4 <a cis e> q
    r4 <d fis> <d e> % 63b
    <d g>4 <d fis> <d g>
    r4 <cis e> <cis fis>
    r4 q <cis g'>
    r4 <fis a> a % 63c
    r4 <a d> <b e>
    r4 <cis e> <a cis>
    r4 <fis a> <b, d>
    r4 <cis e a> <a cis> % 64a
    <d g> <d fis> <d g>
    r4 <cis e> <d fis>
    <cis e> <d fis> cis
    r4 <e g cis> q % 64b
    r4 <d fis b> <e g cis>
    r4 <cis e> <cis fis>
    <cis e> <cis fis> cis
    r4 <cis e> q % 64c
    r4 <cis eis> q
    r4 <a cis fis> r
    r4 <a cis g'> q
    r4 <fis' a> a % 65a
    r4 <a d> <b e>
    r4 <cis e> <a cis>
    r4 <fis a> <b, d>
    r4 <cis e a> <a cis> % 65b
    <d gis> <d fis> <d gis>
  }
  \alternative {
    {
      <cis e a>2.~
      q2.
    }
    {
      r4 q <a cis> % 65c
      <d gis> <d fis> <d g>
      s2.*2
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2.\p
    s2.*7
    s2.\mp
    s2.*21
  }
  \alternative {
    {
      s2.*2
    }
    {
      s2.\<
      s2.
      s2.\ff
      s2.
    }
  }
}

pianoLH = \relative {
  \global
  \oneVoice
  \repeat volta 2 {
    s2.*4
    <gis, gis'>2. % 63b
    <e e'>2.
    s2.*5
    <fis fis'>2 <f f'>4 % 63c+++
    <e e'>2. % 64a
    q2.
    s2.*2
    q2 r4 % 64b
    q2 r4
    s2.*2
    a2. % 64c
    gis2 g4
    fis2 eis4
    e2 ees4
    s2.*3 % 65a
    <fis fis'>2 <f f'>4
    <e e'>2. % 65b
    q2.
  }
  \alternative {
    {
      <a, e'>2.~
      q2.
    }
    {
      <e e'>2. % 65c
      q2.
      <a e'>2.~
      q2.
    }
  }
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  \repeat volta 2 {
    e2.~
    e2.
    e2.~
    e2.
    s2. % 63b
    s2.
    r4 e, fis
    r4 fis g
    r4 a2 % 63c
    r4 a b
    r4 <a e'> r
    s2.
    s2. % 64a
    s2.
    r4 e fis
    e fis e
    s2. % 64b
    s2.
    r4 e' fis
    e fis e
    s2. % 64c
    s2.*3
    r4 a,2 % 65a
    r4 a b
    r4 <a e'> r
    s2.
    s2.*2 % 65b
  }
  \alternative {
    {
      s2.*2
    }
    {
      s2.*4
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  \repeat volta 2 {
    a,2.
    e2.
    a2.
    e2.
    s2. % 63b
    s2.
    a,2.
    a2.
    d2. % 63c
    d2.
    cis2.
    s2.
    s2. % 64a
    s2.
    a2.~
    a2.
    s2. % 64b
    s2.
    a'2.~
    a2.
    s2.*4 % 64c
    d,2. % 65a
    d2.
    cis
    s2.
    s2.*2 % 65b
  }
  \alternative {
    {
      s2.*2
    }
    {
      s2.*4
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
