% Original from John Lemcke

\version "2.10.25"
\header{
  title = "Poverty"
  subtitle = "Nativity"
  poet = "Tr. K. E. Robertzs"
  composer = "Welsh"
  meter = ""
  opus = ""
  arranger = "(Dr. Caradog Roberts)"
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
  \time 4/4
  \key a \major
  \clef treble
  \voiceOne
  \repeat volta 2 {
    \partial 4 e4
    a4 a2 b8(a)
    gis4 a2 b4
    cis4 cis2 d4
    cis4 b2 a4
    cis4 a2 gis8(fis) % 5
    e4 fis2 gis4
    a2.
  }
  \repeat volta 2 {
    cis4
    cis4 e2 e4
    e4 cis2 b8(a)
    cis4 cis2 cis4 % 10
    cis4 cis2 cis4
    cis4 cis2 cis4
    8(cis) a2 cis4
    b2 r4 \bar "||" \break e,4
    a4 a2 b8(a)
    gis4 a2 b4
    cis4 cis2 d4
    cis4 b2 a4
    cis4 a2 gis8(fis)
    e4 fis2 gis4
    a2.
  }
}

alto = \relative c' {
  \set Staff.midiInstrument = "oboe"
  \time 4/4
  \key a \major
  \clef treble
  \voiceTwo
  \repeat volta 2 {
    \partial 4 cis4
    e4 e2 fis4
    e4 cis2 e4
    e4 a2 a4
    a4 gis2 fis4
    e4 e2 e8(d)
    cis4 d2 e4
    e2.
  }
  \repeat volta 2 {
    a4
    a4 a2 a4
    a4 a2 fis4
    gis4 eis2 fis4
    eis8(fis) gis2 b4
    a8(gis) fis2 a4
    a4 a2 a4
    gis2 r4 d
    cis4 e2 fis4
    e4 cis2 e4
    e4 a2 a4
    a4 gis2 fis4 e4 e2 e8(d)
    cis4 d2 e4
    e2.
  }
}

tenor = \relative c' {
  \set Staff.midiInstrument = "clarinet"
  \time 4/4
  \key a \major
  \clef bass
  \voiceThree
  \repeat volta 2 {
    \partial 4 a4
    a4 a2 d8(cis)
    b4 a2 d4
    cis4 cis2 fis4
    e4 e2 cis4
    a4 a2 a4
    a4 a2 d4
    cis2.
  }
  \repeat volta 2 {
    e4
    e4 e2 e4
    e4 e2 fis4
    eis4 cis2 a4
    gis4 gis2 gis4
    a8(b) cis2 fis4
    e4 e2 e4
    e2 r4 gis,
    a4 a2 d8(cis)
    b4 a2 d4cis4 cis2 fis4
    e4 e2 cis4
    a4 a2 a4
    a4 a2 d4
    cis2.
  }
}

bass = \relative c {
  \set Staff.midiInstrument = "bassoon"
  \time 4/4
  \key a \major
  \clef bass
  \voiceFour
  \repeat volta 2 {
    \partial 4 a4
    cis4 cis2 d4
    e4 fis2 gis4
    a4 fis2 d4
    e4 e2 fis4
    a4 cis,2 d4
    e4 e2 e4
    a,2.
  }
  \repeat volta 2 {
    a'4
    a4 cis2 cis4
    cis4 a2 d4
    cis4 cis,2 fis4
    cis8(dis) eis2 eis4
    fis8(gis) a2 a4
    cis4 cis2 cis,8(d)
    e2 r4 e
    a,4 cis2 d4
    e4 fis2 gis4
    a4 fis2 d4
    e4 e2 fis4
    a4 cis,2 d4
    e4 e2 e4
    a,2.
  }
}

verseOneA = \lyricmode {
  All poor men and Hum- ble, All lame men who stum- ble.
  Come haste ye, nor feel ye a- fraid;
}

verseOneB = \lyricmode {
  For Je- sus, our treas- ure, With love past all mea- sure,
  In lone- ly poor man- ger was laid.
}

verseTwo = \lyricmode {
  Though wise men who found him laid rich gifts a- round him,
  Yet ox- en they gave him their hay;
  And Je- sus in beau- ty ac- cept- ed their dut- y,
  Con- tent- ed in man- ger he lay.
}

verseThree = \lyricmode {
  Then haste we to show him the prais- es we owe Him;
  Our serv- ice he ne'er can des- pise,
  Whose love still is ab- le to show us the stab- le,
  Where soft- ly in man- ger he lies.
}

% Print version with SA on one staff TB on another and words between
\score {
  \new ChoirStaff  <<
    \new Staff <<
      \context Voice = soprano \soprano
      \context Voice = alto    \alto
    >>
    \new Lyrics \lyricsto "soprano" { \verseOneA \verseTwo   }
    \new Lyrics \lyricsto "soprano" { \verseOneB \verseThree }
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
    \new Lyrics \lyricsto "soprano" { \verseOneA \verseOneB \verseTwo \verseThree  }
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
