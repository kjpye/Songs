\version "2.25.13"

% Original from John Lemcke

\include "kjp.ly"

\header {
  title = "Alleluia Round"
  composer = "William Boyce"
  meter = "Andante"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  line-width = 170\mm
  left-margin = 20\mm
  bottom-margin = 20\mm
  top-margin = 10\mm
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  \repeat volta 2 {
    \textMark \markup \box "A"
    c1 b a g \break
    a2. b4 c8( b a g a g f e f2 g2) c1 \section \break
    \textMark \markup \box "B"
    r4 c,4 e c g' d g a8(b) c(b) a(b) c4 d b r4 \bar "|" \break
    g2~g4 g4 f2 e4 r4 c'2~c4 a b2 c1 \section \break
    \textMark \markup \box "C"
    c2. e4 | d8(c b a) g2 g4 a fis2 g \bar "|" \break
    r4 e4 c2 d c r4 c'4 d2 d e1
  }
}

verse = \lyricmode {
  % Lyrics follow here.
  Al -- le -- lu -- ia,
  al -- le -- lu -- ia.
  Al -- le -- lu -- ia,
  al -- le -- lu -- ia,
  al -- le -- lu -- ia,
  al -- le -- lu -- ia,
  al -- le -- lu -- ia.
  Al -- le -- lu -- ia,
  al -- le -- lu -- ia,
  al -- le -- lu -- ia,
  al -- le -- lu -- ia.
}

#(set-global-staff-size 22)

\book {
  \bookOutputSuffix "repeat"
  \score {
    \new Staff \with {
      midiInstrument = "flute"
    } {   %\transpose c bf,
      \sopranoVoice }
    \addlyrics \verse
    \layout { indent = 0.0\mm }
    \midi {
      \tempo 4 = 120
    }
  }
}
