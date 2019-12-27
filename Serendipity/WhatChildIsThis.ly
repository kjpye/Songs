\version "2.14.2"
\language "english"

\header {
  title = "What Child is This?"
  composer = "English Traditional"
  poet = "William Chatterton Dix"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \tempo 4=80
  \key g \major
  \time 6/8
  \partial 8
  \autoBeamOff
}

\paper {
  #(set-paper-size "a4")
  top-margin = 25\mm
  bottom-margin = 15\mm
  line-width = 170\mm
  left-margin = 20\mm
}

#(set-global-staff-size 18.8)

soprano = \relative c' {
  \global
  % Music follows here.
  e8  g4  a8  b8.[(c16)]
  b8  a4  fs8  d8.  [(e16)]
  fs8  g4  e8  e8.  [(ds16)]
  e8  fs4.  b,4
  e8  g4   a8  b8.  [(c16)]
  b8  a4   fs8  d8.  [(e16)]
  fs8  g8. [(fs16)]  e8  ds8.  [(cs16)]
  ds8  e4.   e4.   d'4.
  d8. [(c16)]
  b8  a4   fs8  d8.  [(e16)]
  fs8  g4   e8  e8.  [(ds16)]
  e8  fs4   ds8  b4.
  d'4.   d8. [(c16)]
  b8  a4   fs8  d8.  [(e16)]
  fs8  g8. [(fs16)]  e8  ds8.  [(cs16)]
  ds8  e4.   e4.
  
}

alto = \relative c' {
  \global
  % Music follows here.
  b8  e4   d8  d4
  g8  fs4   d8  d8.  [(e16)]
  c8  b4   b8  a4
  e'8  ds4.   b4
  b8  e4   d8  d4
  g8  fs4   d8  d8.  [(e16)]
  c8  b4   c8  b4
  b8  b4.   b4.   fs'4.  b8. [(a16)]
  g8  fs4   d8  d8.  [(e16)]
  c8  b4   b8  a4
  e'8  ds4   b8  b4.
  fs'4.   b8. [(a16)]
  g8  fs4   d8  d8.[(e16)]
  c8  b4   c8  b4
  b8  b4.   b4.
  
}

tenor = \relative c' {
  \global
  % Music follows here.
  g8  b4   a8  g4
  b8  d4   a8  fs4
  a8  g4   g8  e4
  e8  b'4.   b4
  g8  b4   a8  g4
  b8  d4   a8  fs4
  a8  g4   a8  fs4
  fs8  g4.   g4.   b4.
  d4
  d8  d4   a8  fs4
  a8  g4   g8  a4
  e8  b'4   fs8  b4.
  b4.   d4
  d8  d4   a8  fs4
  a8  g4   a8  fs4
  fs8  g4.   g4.
  
}

bass = \relative c {
  \global
  % Music follows here.
  e8  e4   fs8  g4
  g8  d4   d8  d4
  ds8  e4   e8  c4
  c8  b4.   b'4
  e,8  e4   fs8  g4
  g8  d4   d8  d4
  ds8  e4   a,8  b4
  b8  e4.   e4.   b'4.
  g4
  g8  d4   d8  d4
  ds8  e4   e8  c4
  c8  b4   b8  b4.
  b'4.   g4
  g8  d4   d8  d4
  ds8  e4   a,8  b4
  b8  e4.   e4.
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  What Child is this, who, laid to rest,
  On Ma -- ry's lap is sleep -- ing?
  Whom an -- gels greet with an -- thems sweet,
  While shep -- herds watch are keep -- ing?
  
  This, this is Christ the King;
  Whom shep -- herds guard and an -- gels sing;
  Haste, haste, to bring him laud,
  The Babe, the Son of Ma -- ry!
  
  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  So bring Him in -- cense, gold and myrrh,
  Come peas -- ant, King to own Him;
  The King of kings sal -- va -- tion brings,
  Let lov -- ing hearts en -- throne Him.
  
  Raise, raise, a song on high,
  The Vir -- gin sings her lull -- a -- by.
  Joy, joy for Christ is born,
  The Babe, the Son of Ma -- ry!
}

pianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \soprano \\
      \alto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \tenor \\
      \bass
    >>
  }
>>

\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \verseOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \verseTwo
      \new Staff \with {
        midiInstrument = "choir aahs"
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
    %\pianoReduction
  >>
  \layout  { indent = 0 }
  \midi { }
}
