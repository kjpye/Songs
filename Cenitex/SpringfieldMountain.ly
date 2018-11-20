\version "2.14.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "SpringField Mountain"
  copyright = \today
}

global = {
  \time 3/4
  \key g \major
  \tempo 4=140
}

all = \relative c' {
  \global
  \partial 8 d8
  g8 b d,4 d
  c'8 b a4. d,8
  fis8 a d,4 d
  e8 fis g(d g) d
  g8 b d,4 d
  c'8 b a4. d,8
  fis8 a d,4 d
  d8 fis g(d g'4)
}

verseOneAll = \lyricmode {
  On Spring- field mount- ain There did dwell
  A love- ly youth,
  I loved him well.
  Too- roo- dee- loo,
  Too- roo- dee- ay,
  Too- roo- dee- loo,
  Too- roo- dee- ay.
}

MverseOneAll = \lyricmode {
  "\On " "Spring" "field " "mount" "ain"
  "/There " "did " "dwell"
  "/A " "love" "ly " "youth,"
  "/I " "loved " "him " "well."
  "/Too" "roo" "dee" "loo,"
  "/Too" "roo" "dee" "ay,"
  "/Too" "roo" "dee" "loo,"
  "/Too" "roo" "dee" "ay."
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "oboe"
      instrumentName = \markup \center-column { All }
    } <<
      \new Voice = "all" { \all }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "all" \verseOneAll
  >>
  \layout { }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "oboe"
      instrumentName = \markup \center-column { All }
    } <<
      \new Voice = "all" { \unfoldRepeats \all }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "all" \MverseOneAll
  >>
  \midi { }
}
  
