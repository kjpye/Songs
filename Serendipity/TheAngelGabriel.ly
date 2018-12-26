\version "2.9.82"
\header{
  title = "The Angel Gabriel from Heaven Came"
%  poet = "Tr. K. E. Robertzs"
  composer = "Basque traditional carol melody"
  meter = "10.10.12.7.3"
  opus = ""
  arranger = "arr. Charles Edgar Pettman 1866-1945"
  instrument = ""
  dedication = ""
  piece = ""
  head = ""
  copyright = ""
  footer = ""
  tagline = ""
}

#(set-global-staff-size 20)
#(set-default-paper-size "a4")

soprano = \relative c' {
  \set Staff.midiInstrument = "flute"
  \time 9/8
  \key bes \major
  \clef treble
  \voiceOne
  \repeat volta 4 {
    \partial 8 d8
               g4 bes8 a4 c8 bes4 a8
    \time 12/8 g4. a4. d,4.~d4 \breathe \bar "" \break d8
    \time  9/8 g4 bes8 a4 c8 bes4 a8
    \time 12/8 g4.~g4 f8 g4.~g4 \breathe \bar "" \break bes8
               bes4 c8 bes4 a8 bes4 c8 d4 d8
               c4. bes a4.~a4 \breathe \bar "" \break bes8
               c4 bes8 a4 g8 a4. d, \breathe
               g4.( bes8 a bes g4.~g4) f8
    \time  9/8 g2.~g4
  }
  \bar "|."
}

alto = \relative c' {
  \set Staff.midiInstrument = "oboe"
  \time 9/8
  \key bes \major
  \clef treble
  \voiceTwo
  \repeat volta 4 {
    \partial 8 d8
               bes4 d8 c4 ees8 d4 c8
    d4. ees c~c4 c8
    bes4 d8 c4 ees8 d4 ees8
    d4. d d~d4 d8
    d4 ees8 d4 ees8 f4 ees8 d4 d8
    g4. g g(f4) f8
    c4 c8 c4 c8 c4. c
    bes4.(ees d) d
    bes2.~bes4
  }
}

tenor = \relative c {
  \set Staff.midiInstrument = "clarinet"
  \time 9/8
  \key bes \major
  \clef bass
  \voiceOne
  \repeat volta 4 {
    \partial 8 d8
    d4 d8 d4 d8 d4 d8
    bes'4. c a(a4) a8
    g4 g8 g4 g8 g4 a8
    bes4. a bes~bes4 bes8
    bes4 f8 f4 c'8 bes4 a8 bes4 bes8
    a4. c c~c4 bes8
    g4 g8 g4 g8 g4. fis
    g2.(bes4.)a
    g2.~g4
  }
}

bass = \relative c {
  \set Staff.midiInstrument = "bassoon"
  \time 9/8
  \key bes \major
  \clef bass
  \voiceTwo
  \repeat volta 4 {
    \partial 8 d8
    g,4 g8 g4 g8 g4 g8
    \time 12/8 g'4. g g(fis4) fis8
    \time  9/8 g4 g,8 g4 g8 g4 c8
    \time 12/8 bes4. d g~g4 bes,8
               bes4 a8 bes4 c8 d4 c8 bes4 bes8
               ees4.(e) f4.~f4 d8
               ees4 ees8 ees4 ees8 d4. d
               ees4.(c bes) d
    \time  9/8 <g, d'>2.~q4
  } 
}

verseOne = \lyricmode {
  The ang- el Gab- ri- el from heav- en came,
  his wings as drift- ed snow, his eyes as flame;
  "'All" "hail,'" said he, "'thou" low- ly maid- en Mar- __ _ y,
  most high- ly fav- oured lad- y,
  Glor- i- a!
}

verseTwo = \lyricmode {
  "'for" know a bles- sed Moth- er thou shalt be,
  all gen- er- a- tions laud and hon- our thee,
  the Son shall be Em- man- u- el, by seers fore- told;
%  most high- ly fav- oured lad- "y.'"
%  Glor- i- a!
}

verseThree = \lyricmode {
  The gent- le Mar- y meek- ly bowed her head,
  "'To" me be as it pleas- eth "God,'" she said,
  "'my" soul shall laud and mag- ni- fy his ho- ly name';
%  most high- ly fav- oured lad- y.
%  Glor- i- a!
}

verseFour = \lyricmode {
  of her, Em- man- u- el, the Christ was born
  in Beth- le- hem, all on a Christ- mas morn,
  and christ- ian folk through- out the world will e- ver say
%  "'most" high- ly fav- oured lad- "y'."
%  Gor- i- a!
}

% Print version with SA on one staff TB on another and words between
\score {
  \new ChoirStaff  <<
    \new Staff <<
      \context Voice = soprano \soprano
      \context Voice = alto    \alto
    >>
    \new Lyrics \lyricsto "alto" { \verseOne   }
    \new Lyrics \lyricsto "alto" { \verseTwo   }
    \new Lyrics \lyricsto "alto" { \verseThree }
    \new Lyrics \lyricsto "alto" { \verseFour  }
    \new Staff  <<
      \context Voice = tenor \tenor
      \context Voice = bass  \bass
    >>
  >>
  \layout {}
}

% midi/karaoke version
\score {
  \new ChoirStaff  <<
    \new Staff <<
      \context Voice = soprano \unfoldRepeats \soprano
      \context Voice = alto    \unfoldRepeats \alto
    >>
    \new Lyrics \lyricsto "soprano" { \verseOne \verseTwo \verseThree \verseFour }
    \new Staff  <<
      \context Voice = tenor \unfoldRepeats \tenor
      \context Voice = bass  \unfoldRepeats \bass
    >>
  >>
  \midi {}
}

% soprano MP3 version
\score {
  \new ChoirStaff  <<
    \new Staff <<
      \context Voice = soprano \unfoldRepeats \soprano
    >>
  >>
  \midi {}
}

% alto MP3 version
\score {
  \new ChoirStaff  <<
    \new Staff <<
      \context Voice = alto    \unfoldRepeats \alto
    >>
  >>
  \midi {}
}

% tenor MP3 version
\score {
  \new ChoirStaff  <<
    \new Staff  <<
      \context Voice = tenor \unfoldRepeats \tenor
    >>
  >>
  \midi {}
}

% bass MP3 version
\score {
  \new ChoirStaff  <<
    \new Staff  <<
      \context Voice = bass  \unfoldRepeats \bass
    >>
  >>
  \midi {}
}
