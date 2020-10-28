\version "2.20.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When You Hear Big Ben"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Harry Leon, Mark Malloy & Jack Scott"
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
  \time 3/4
  \tempo Freely 4=84
}

TTA = {
  \global
  \set Score.tempoHideNote = ##t
  s2.*2
  \tempo 4=84 s2.-\markup \bold {a tempo}
  s2.*7
}

TTB = {
  s2.*20
}

TTC = {
  s2.*10
}

TTD = {
  s4 \tempo 4=80 s2-\markup \bold rall.
  s2 \tempo 4=27 s4 \tempo 4=80
  s4 \tempo 4=84 s2-\markup \bold {a tempo} s2
  s4 \tempo 4=42 s2
  \tempo 4=56 s2.
}

TempoTrack       = { \TTA \TTB \TTC      \TTD }
TempoTrackSingle = { \TTA \TTB \TTC \TTB \TTD }

RTA = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "41a" } s2.*4
  \mark \markup { \box "41b" } s2.*4
  \mark \markup { \box "41c" } s2.*2
}

RTB = {
  \mark \markup { \musicglyph #"scripts.segno" }
  s2.*2
  \mark \markup { \box "42a" } s2.*4
  \mark \markup { \box "42b" } s2.*4
  \mark \markup { \box "42c" } s2.*4
  \mark \markup { \box "42d" } s2.*4
  \mark \markup { \box "43a" } s2.
  s2 s8 \mark \markup \bold { To Coda  \musicglyph #"scripts.coda" } s
}

RTC = {
  s2.*2
  \mark \markup { \box "43b" } s2.*4
  \mark \markup { \box "43c" } s2.*3
  s2 s8 \mark \markup \bold { D.S. al Coda } s
}

RTD = {
  \break
  \mark \markup { \musicglyph #"scripts.coda" } s4
  \mark \markup { \box "43d" } s2 s2.*4
}

RehearsalTrack       = { \RTA \RTB \RTC      \RTD }
RehearsalTrackSingle = { \RTA \RTB \RTC \RTB \RTD }

ChordTrackA = \chordmode {
  s2.*2
  d2.:6
  fis4:m7 fis:m7.5- dis:dim7
  e2.:m7 % 41b
  a:7
  e:m7
  a:13.9-
  fis4:m7 f2:7 % 41c
  e4:m11 a2:7
}

ChordTrackB = \chordmode {
  d2:maj7 d4:6
  fis2.:m7
  e:m7 % 42a
  a4:13 a2:7
  e2.:m7
  a2:13 a4:7
  d4 f:13 ees:maj7 % 42b
  d2:maj7 r4
  g2 g4:6
  gis2.:dim7
  d2:6/a b4:dim % 42c
  d2.:6
  e:9
  s
  a:7 % 42d
  s2 r4
  d2.:6
  fis4:m7 fis:m7.5- dis:dim7
  e2.:m7 % 43a
  a:7
}

ChordTrackC = \chordmode {
  e2.:m7
  a:13.9-
  d:6/fis % 43b
  b:9
  e:m7
  a:7
  e:m7 % 43c
  a:13.9-
  fis4:m7
  f2:dim7
  d4/e a2:6
}

ChordTrackD = \chordmode {
  e2.:m7
  a:13.9-
  d:6
  e4:7 a2:7sus4
  d2.:maj7
}

ChordTrack       = { \ChordTrackA \ChordTrackB \ChordTrackC              \ChordTrackD }
ChordTrackSingle = { \ChordTrackA \ChordTrackB \ChordTrackC \ChordTrackB \ChordTrackD }

melodyA = \relative {
  \global
  R2.
  r4 r a8. d16 \bar "||"
  fis2 d4
  a4 r fis
  g2 a8 cis~ % 41b
  cis2 r4
  g'4 fis g
  fis2~8 e
  a,2. % 41c
  r4 r a8. d16
}

melodyB = \relative {
  fis'2~8 d
  a2 r8 fis
  g2 r8 a % 42a
  cis2 r8 a
  g'2 fis8 g
  fis2 e4
  d2. % 42b
  r4 r r8 d \bar "||"
  b2 8. 16
  e8 d~4 r8 b
  b2 a8. gis16 % 42c
  a2 r8 a
  gis4 b d
  fis8 e4. r8 d
  cis2 d8. dis16 % 42d
  e4 r a,8. d16 \bar "||"
  fis2 d4
  a4 r fis
  g2 a8 cis~ % 43a
  cis2 r4
}

melodyC = \relative {
  g'4 fis g
  fis2 4 \bar "||"
  d2. % 43b
  R2.*6
  r4 r a8. d16
}

melodyD = \relative {
  g'4 fis g % 43d
  fis2 fis4\fermata
  d2.
  R2.\fermata
  R2.\fermata
}

melody       = { \melodyA \melodyB \melodyC          \melodyD \bar "|." }
melodySingle = { \melodyA \melodyB \melodyC \melodyB \melodyD \bar "|."
               }

wordsA = \lyricmode {
  When you hear Big Ben you're home a -- gain, __
  home dear, where you __ be -- long.
  Though you're
}

wordsB = \lyricmode {
  far a -- way each night and day,
  you'll cry when you hear his song.
  He stands by the riv -- er, __
  that flows to the sea,
  his hands are to -- ge -- ther
  like ours used to be.
  When you hear Big Ben,
  your home a -- gain, __
}

wordsC = \lyricmode {
  home in my arms, sweet -- heart.
  Though you're
}

wordsD = \lyricmode {
  home in my arms, sweet -- heart.
}

words       = { \wordsA \wordsB \wordsC         \wordsD }
wordsSingle = { \wordsA \wordsB \wordsC \wordsB \wordsD }

midiWords = \lyricmode {
  "\nWhen " "you " "hear " "Big " "Ben " "you're " "home " a "gain, " 
  "\nhome " "dear, " "where " "you "  be "long. "
  "\nThough " "you're " "far " a "way "
  "\neach " "night " "and " "day, "
  "\nyou'll " "cry " "when " "you " "hear " "his " "song. "
  "\nHe " "stands " "by " "the " riv "er, " 
  "\nthat " "flows " "to " "the " "sea, "
  "\nhis " "hands " "are " to ge "ther "
  "\nlike " "ours " "used " "to " "be. "
  "\nWhen " "you " "hear " "Big " "Ben, "
  "\nyour " "home " a "gain, " 
  "\nhome " "in " "my " "arms, " sweet "heart. "
  "\nThough " "you're " "far " a "way "
  "\neach " "night " "and " "day, "
  "\nyou'll " "cry " "when " "you " "hear " "his " "song. "
  "\nHe " "stands " "by " "the " riv "er, " 
  "\nthat " "flows " "to " "the " "sea, "
  "\nhis " "hands " "are " to ge "ther "
  "\nlike " "ours " "used " "to " "be. "
  "\nWhen " "you " "hear " "Big " "Ben, "
  "\nyour " "home " a "gain, " 
  "\nhome " "in " "my " "arms, " sweet "heart. "
}

PRHA = \relative {
  \global
  <a' b d fis>4-.-> <fis a cis d>-.-> <gis b cis e>-.->
  <d e g a>2 a'8. d16 \bar "||"
  fis2 d4
  s2.
  g,,2 a8 cis~ % 41b
  cis2 r4
  <b' g'>4 <a fis'> <b g'>
  <bes fis'>2~8 e
  s2. % 41c
  <b, d a'>4 <g cis> a'8. d16
}

PRHB = \relative {
  fis''2~8 d
  a2 r8 fis
  g2 r8 a % 42a
  cis2 r8 a
  <b g'>2 <a fis'>8 <b g'>
  <a fis'>2 <g e'>4
  s2. % 42b
  <cis, d fis a>2 r8 d' \bar "||"
  b2 b8. 16
  e8 d~4 r8 b
  b2 a8. gis16 % 42c
  a2 r8 a
  gis4 b d
  fis8 e4. r8 d
  <a cis>2 <b d>8. <bis dis>16 % 42d
  <cis e>4 <a a'>-. a8. d16 \bar "||"
  fis2 d4
  s2.
  g,2 a8 cis~ % 43a
  cis2 r4
}

PRHC = \relative {
  <b' g'>4 <a fis'> <b g'> % 43a++
  <bes fis'>2 q4 \bar "||"
  d4 fis d % 43b
  s2.
  s2.
  <cis cis'>2.
  <b g'>4 <a fis'> r8 <b g'> % 43c
  <bes fis>2 <bes e>4
  s2.
  <a d fis a>4 <cis, fis a> a'8. d16 \bar "||" \break
}

PRHD = \relative {
  <b' g'>4 <a fis'> <b g'> % 43d
  <bes fis'>2 q4\fermata
  d4 <b d fis a>-.-> <fis a b d>-.->
  <g b d e>4-.-> <d e g a>2\fermata
  <cis d fis a>2.\fermata
}

pianoRH       = { \PRHA \PRHB \PRHC       \PRHD \bar "|." }
pianoRHSingle = { \PRHA \PRHB \PRHC \PRHB \PRHD \bar "|." }

PRHaA = \relative {
  \global
  \voiceOne
  s2.*3
  <e' a>2 <c fis>4
  \bar "|."
  s2.*4 % 41b
  a'2. % 41c
  s2.
}

PRHaB = \relative {
  s2.*6
  d''4 d8 c a g % 42b
  s2. \bar "||"
  s2.*9
  <e a>2 <c fis>4 % 42d+++
  s2.*2 % 43a
}

PRHaC = \relative {
  s2.*3 % 43a++
  a''2 fis4 % 43b+
  g2~8 a
  s2.
  s2. % 43c
  s2.
  a2.
  s2.
}

PRHaD = \relative {
  s2.*5
}

pianoRHone       = { \PRHaA \PRHaB \PRHaC        \PRHaD }
pianoRHoneSingle = { \PRHaA \PRHaB \PRHaC \PRHaB \PRHaD }

PRHbA = \relative {
  \global
  \voiceTwo
  s2.*3
  cis'4 c a
  \bar "|."
  s2.*4 % 41b
  e'4 ees2 % 41c
  s2.
}

PRHbB = \relative {
  s2.*6
  f'4 <ees a> d % 42b
  s2.*10
  cis4 c a % 42d+++\
  s2.*2
}

PRHbC = \relative {
  s2.*3
  dis''4 cis2 % 43b+
  b4 e d
  s2.*3
  cis8 e dis2
  s2.
}

PRHbD = \relative {
  s2.*5
}

pianoRHtwo       = { \PRHbA \PRHbB \PRHbC        \PRHbD }
pianoRHtwoSingle = { \PRHbA \PRHbB \PRHbC \PRHbB \PRHbD }

DPA = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf
  s2.
  s2.\mp
  s2.
  s2. % 41b
  s2.\<
  s2.\mf
  s2.
  s2. % 41c
  s2 s4\mp
}

DPB = {
  \override DynamicTextSpanner.style = #'none
  s2.\!  s2.*5
  s2\< s8\! s\> % 42b
  s2 s4\!
  s2.
  s2.
  s2.*9 % 42c
  s2.\< % 43a+
}

DPC = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf
  s2.
  s2.\f % 43b
  s2.*7
}

DPD = {
  \override DynamicTextSpanner.style = #'none
  s2.\f % 43d
  s2.
  s2.
  s4 s2\>
  s2.\mp
}

dynamicsPiano       = { \DPA \DPB \DPC      \DPD }
dynamicsPianoSingle = { \DPA \DPB \DPC \DPB \DPD }

PLHA = \relative {
  \global
  \oneVoice
  <b e>4-.-> <fis b>-.-> <e d'>-.->
  a4 a,2 \bar "||"
  d,4 <fis' a b d> q
  fis,2 dis4
  e4 <g' b d> q % 41b
  a,4 <g' a cis> q
  e, <g' b d> q
  a,4 <g' cis> q
  fis,4 f' f, % 41c
  e,4 a r
}

PLHB = \relative {
  d,4 <fis' a cis> <fis a b>
  fis,4 <a' cis e> q
  e,4 <g' b d> q % 42a
  a,4 <g' a cis e> q
  e,4 <g' b d> q
  a,4 <g' a cis> q
  d,4 f ees % 42b
  d4 d' r \bar "||"
  g,4 <g' b d> <g b e>
  gis,4 <gis' b d f> q
  a,4 <a' d fis> <b d f> % 42c
  d,,4 <a'' b d fis> b,
  e,4 <gis' b d fis> q
  e,4 q q
  a4 <g' a cis> r % 42d
  a,4 a r \bar "||"
  d,4 <fis' a b d> q
  fis,2 dis4
  e4 <g' b d> q % 43a
  a,4 <g' a cis> q
}

PLHC = \relative {
  e,4 <g' b d> q
  a,4 <g' cis> q
  fis,4 <fis' a b d>2 % 43b
  b,4 <fis' a b dis> q
  e,4 <g' b d> q
  a,4 <g' cis e> q
  e,4 <g' b d> q % 43c
  a,4 <g' cis e> q
  fis,4 r f
  e4 a r \bar "||"
}

PLHD = \relative {
  e,4 <g' b d> q % 43d
  a,4 <g' cis>2
  R2.
  r4 <a, g'>2\fermata
  d,2.\fermata
}

pianoLH       = { \PLHA \PLHB \PLHC       \PLHD \bar "|." }
pianoLHSingle = { \PLHA \PLHB \PLHC \PLHB \PLHD \bar "|." }

\book {
  #(define output-suffix "repeat")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \words
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
        \new ChordNames \ChordTrackSingle
        \new FretBoards \ChordTrackSingle
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrackSingle
          \new Staff
          <<
            \new Voice \RehearsalTrackSingle
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHSingle
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHSingle
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
        \new ChordNames \ChordTrackSingle
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrackSingle
          \new Staff
          <<
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHSingle
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHSingle
          >>
        >>
      >>
    >>
    \midi {}
  }
}
