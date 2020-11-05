\version "2.20.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I'm Forever Blowing Bubbles"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup \right-column { \line {James Kendis,}
                                        \line {John Kellette,}
                                        \line {James Brockman,}
                                        \line {& Nat Vincent}
                                      }
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
  \key f \major
  \time 3/4
}

TempoTrack = {
  \global
  \tempo 4=120
  s2.*4
  \set Score.tempoHideNote = ##t
}

TempoTrackSingle = {
  \global
  \tempo 4=120
  s2.*4
  \set Score.tempoHideNote = ##t
}

RTA = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "78a" } s2.*4
  \mark \markup { \circle "78b" } s2.*4
}

RTB = {
  \set Score.currentBarNumber = #9
  \mark \markup { \musicglyph #"scripts.segno" }
% \mark \markup { \circle "78c" }
  s2.*4
  \mark \markup { \circle "78d" } s2.*4
  \mark \markup { \circle "79a" } s2.*4
  \mark \markup { \circle "79b" } s2.*4
  \mark \markup { \circle "79c" } s2.*4
  \mark \markup { \circle "79d" } s2.*4
  \mark \markup { \circle "80a" } s2.*4
  \mark \markup { \circle "80b" } s2.*2
}

RTC = {
  s2.^\markup \bold \upright Fine
  s2.
  \mark \markup { \circle "80c" } s2.*4
  \mark \markup { \circle "80d" } s2.*4
  \mark \markup { \circle "81a" } s2.*4
  \mark \markup { \circle "81b" } s2.*4
  \mark \markup { \circle "81c" } s2.*4
  \mark \markup { \circle "81d" } s2.*3
  s2 s8 \mark \markup \bold { D.\tiny \musicglyph #"scripts.segno". al Fine } s
}

RTD = {
  \set Score.currentBarNumber = #39
  s2.
}

RehearsalTrack       = { \RTA \RTB \RTC           }
RehearsalTrackSingle = { \RTA \RTB \RTC \RTB \RTD }

CTA = \chordmode {
  f2.
  c:7
  f
  s
  g:7 % 78b
  c2:7/g
  c4:7
  f2.
  s
}

CTB = \chordmode {
  f2. % 78c
  c:7
  f
  s
  bes % 78d
  s
  f
  s
  bes % 79a
  f
  bes
  f
  g:7 % 79b
  s
  c:7
  s
  f % 79c
  s
  aes
  s
  d:m % 79d
  bes:7
  a:7
  c:7/g
  f % 80a
  c:7
  f
  s
  g:7 % 80b
  c:7
}

CTC = \chordmode {
  f2.
  s
  s2.*4 % 80c
  s2. % 80d
  s2 fis4:dim7
  c2.:7/g
  c:7
  g:m7 % 81a
  s
  s
  c:7
  s % 81b
  s
  f
  s
  a:7 % 81c
  s
  d:m
  s
  f:m6/aes % 81d
  g:7
  c:11
  c:7
}

CTD = \chordmode {
  f2. % 80b++
}

ChordTrack       = { \CTA \CTB \CTC           }
ChordTrackSingle = { \CTA \CTB \CTC \CTB \CTD }

melodyA = \relative {
  \global
  R2.*8
}

melodyB = \relative {
  c'4. d8 c b % 78c
  bes2 d4
  c4 f2~
  f2.
  f4. g8 f e % 78d
  f2 d4
  c2.~
  c2.
  d4 f d % 79a
  c2.
  d8 e f4 d
  c2.
  b4 d e % 79b
  f2 d4
  e2 f4
  g2.
  a2 gis4 % 79c
  a2 f4
  g4 e2~
  e2.
  f2 g4 % 79d
  f2 d4
  e2.~
  e2.
  c4. d8 c b % 80a
  bes2 d4
  c4 f2~
  f2 e8 f
  a4 g2 % 80b
  d2 e4
}

melodyC = \relative {
  f'2.~ % 80b++
  f4 r r
  f4 e f % 80c
  e2.
  e4 d e
  d2.
  c4 d a % 80d
  c2 d4
  e2.~
  e2.
  g4 f g % 81a
  f2.
  f4 e f
  e2.
  d4 e c % 81b
  d4 e c
  a2.~
  a2.
  a4 a a % 81c
  a4 b cis
  e2.
  d2.
  d4 d d % 81d
  d4 e f
  a2.
  g2.
}

melodyD = \relative {
  f'2. % 80b++
}

melody       = { \melodyA \melodyB \melodyC                   \bar "||" }
melodySingle = { \melodyA \melodyB \melodyC \melodyB \melodyD \bar "|." }

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  I'm for -- ev -- er blow -- ing bub -- bles, __
  pret -- ty bub -- bles in the air, __
  they fly so high,
  near -- ly reach the sky,
  then like my dreams, they fade and die.
  For -- tune's al -- ways hid -- ing,
  I've looked ev -- 'ry -- where. __
  I'm for -- ev -- er blow -- ing bub -- bles, __
  pret -- ty bub -- bles in the air, __
  I'm dream -- ing dreams,
  I'm schem -- ing schemes,
  I'm build -- ing cas -- tles high, __
  they're born a -- new,
  their days are few,
  just like a sweet but -- ter -- fly. __
  And as the day -- light is dawn -- ing,
  they come a -- gain in the morn -- ing.
}

wordsSingle = \lyricmode {
  I'm for -- ev -- er blow -- ing bub -- bles, __
  pret -- ty bub -- bles in the air, __
  they fly so high,
  near -- ly reach the sky,
  then like my dreams, they fade and die.
  For -- tune's al -- ways hid -- ing,
  I've looked ev -- 'ry -- where. __
  I'm for -- ev -- er blow -- ing bub -- bles, __
  pret -- ty bub -- bles in the air, __
  I'm dream -- ing dreams,
  I'm schem -- ing schemes,
  I'm build -- ing cas -- tles high, __
  they're born a -- new,
  their days are few,
  just like a sweet but -- ter -- fly. __
  And as the day -- light is dawn -- ing,
  they come a -- gain in the morn -- ing.
  I'm for -- ev -- er blow -- ing bub -- bles, __
  pret -- ty bub -- bles in the air, __
  they fly so high,
  near -- ly reach the sky,
  then like my dreams, they fade and die.
  For -- tune's al -- ways hid -- ing,
  I've looked ev -- 'ry -- where. __
  I'm for -- ev -- er blow -- ing bub -- bles, __
  pret -- ty bub -- bles in the air, __
}

midiWords = \lyricmode {
  "\nI'm " for ev "er " blow "ing " bub "bles, " 
  "\npret" "ty " bub "bles " "in " "the " "air, " 
  "\nthey " "fly " "so " "high, "
  "\nnear" "ly " "reach " "the " "sky, "
  "\nthen " "like " "my " "dreams, " "they " "fade " "and " "die. "
  "\nFor" "tune's " al "ways " hid "ing, "
  "\nI've " "looked " ev "'ry " "where. " 
  "\nI'm " for ev "er " blow "ing " bub "bles, " 
  "\npret" "ty " bub "bles " "in " "the " "air, " 
  "\nI'm " dream "ing " "dreams, "
  "\nI'm " schem "ing " "schemes, "
  "\nI'm " build "ing " cas "tles " "high, " 
  "\nthey're " "born " a "new, "
  "\ntheir " "days " "are " "few, "
  "\njust " "like " "a " "sweet " but ter "fly. " 
  "\nAnd " "as " "the " day "light " "is " dawn "ing, "
  "\nthey " "come " a "gain " "in " "the " morn "ing. "
  "\nI'm " for ev "er " blow "ing " bub "bles, " 
  "\npret" "ty " bub "bles " "in " "the " "air, " 
  "\nthey " "fly " "so " "high, "
  "\nnear" "ly " "reach " "the " "sky, "
  "\nthen " "like " "my " "dreams, " "they " "fade " "and " "die. "
  "\nFor" "tune's " al "ways " hid "ing, "
  "\nI've " "looked " ev "'ry " "where. " 
  "\nI'm " for ev "er " blow "ing " bub "bles, " 
  "\npret" "ty " bub "bles " "in " "the " "air, " 
}

PRHA = \relative {
  \global
  <c' a' c>4. <d bes' d>8 <c a' c> <b gis' b>
  <bes g' bes>2 <d bes' d>4
  <c a' c>4 <f  a f'>4. <bes d>8
  <a c>8 <bes d> <a c>4 e8 f
  s2. % 78b
  s2.
  <f, a f'>4. <bes' d>8 <a c> <bes d>
  <f a f'>2 r4
}

PRHB = \relative {
  <c' a'>4. <d bes>8 <c a'> <b gis'> % 78c
  <bes g'>2 <d bes'>4
  <c a'>4 <f a>4. <bes d>8
  <a c>8 <bes d> <a c>2
  <f d'>4. <g d'>8 <f d'> <e cis'> % 78d
  <f c'>2 <d bes'>4
  s2.
  s2.
  <f, bes d>4 <bes d f> <f bes d> % 79a
  s2.
  <bes d>8 <c e> <d f>4 <bes d>
  s2.
  s2. % 79b
  s2.
  s2.
  s2.
  s2 <gis gis'>4 % 79c
  <a a'>4 <c f> <a c f>
  s2.
  s2.
  <f f'>4 <a d> <g g'> % 79d
  <f f'>4 <aes d> <f f'>
  s2.
  s2.
  <c' a'>4. <d bes'>8 <c a'> <b gis'> % 80a
  <bes g'>2 <d bes'>4
  <c a'>4 <f a>4. <bes d>8
  <a c>8 <bes d> <a c>4 e8 f
  <b, f' a>4 s2 % 80b
  s2.
}

PRHC = \relative {
  <f a f'>4 a'^^ g^^
  f4^^ e^^ d^^
  <a c f>4 <a c e> <a c f> % 80c
  <e e'>4 <a c> q
  <f a e'>4 <f a d> <f a e'>
  <d d'>4 <f a> q
  c'4 <f a d> <f a> % 80d
  s2.
  s2.
  s2.
  <bes, g'>4 <bes f'> <bes g'> % 81a
  s2.
  f'4 <bes, c e> <bes c f>
  s2.
  <e, bes' d>4 <e bes' e> <e bes' c> % 81b
  <e bes' d>4 <e bes' e> <e bes' c>
  <c f a>4. <a'' c>8-. <f a>-. <a c>-.
  <e a>8-. <a c>-. <d, a'>-. r <c a'>-. r
  a4 <cis, g' a> q % 81c
  q4 <d gis b> <e g cis>
  s2.
  s2.
  <f c' d>4 q q
  <f b d>4 <f b e> <f b f'>
  s2.
  s2.
}

PRHD = \relative {
  <f a f'>2.
}

pianoRH       = { \PRHA \PRHB \PRHC             \bar "|." }
pianoRHSingle = { \PRHA \PRHB \PRHC \PRHB \PRHD \bar "|." }

PRHOneA = \relative {
  \global
  s2.*4
  a'4 g2 % 78b
  f2 g4
  s2.
  s2.
}

PRHOneB = \relative {
  s2.*6
  a'2.~ % 78d++
  a2.
  s2. % 79a
  c,2.
  s2.
  c2.
  b4 d e % 79b
  f2 d4
  e2 f4
  g2.
  <a, a'>2 s4 % 79c
  s2.
  g'4 e2~
  e2.
  s2. % 79d
  s2.
  <e, e'>2.~
  q2.
  s2.*4
  s4 g'2 % 80b
  d2 e4
}

PRHOneC = \relative {
  s2.*7
  c'2 d4 % 80d+
  <e, e'>2.~
  q2.
  s2. % 81a
  f'2.
  s2.
  e2.
  s2.*6
  e2. % 81c++
  d2.
  s2. % 81d
  s2.
  a'2. g2.
}

PRHOneD = \relative {
  s2.
}

pianoRHone       = { \voiceOne \PRHOneA \PRHOneB \PRHOneC                   \bar "|." }
pianoRHoneSingle = { \voiceOne \PRHOneA \PRHOneB \PRHOneC \PRHOneB \PRHOneD \bar "|." }

PRHTwoA = \relative {
  \global
  s2.*4
  <b f'>4 q q % 78b
  r4 <e, bes'> q
  s2.*2
}

PRHTwoB = \relative {
  s2.*6
  c'4. d8 c a % 78d++
  c2.
  s2. % 79a
  r4 <f, a> q
  s2.
  r4 q q
  <f g>2 <g ais>4 % 79b
  r4 <g b> <f b>
  r4 <bes c> q
  q4 <bes d> <bes c e>
  r4 <c f> <gis gis'> % 79c
  s2.
  r4 <a cis> q
  <g a>4 <g b> <g cis>
  s2. % 79d
  s2.
  r4 <a cis> q
  <bes c>4 <bes d> <bes des>
  s2.*4
  s4 <bes f'> q % 80b
  r4 <e, bes'> q
}

PRHTwoC = \relative {
  s2.*7
  r4 <f a> <dis a'> % 80d+
  r4 <bes' c> <bes cis>
  <bes d>4 <bes des> <bes c>
  s2. % 81a
  r4 <bes d> q
  s2.
  r4 <bes c> q
  s2.*6
  r4 <f a> q % 81c++
  r4 q q
  s2. % 81d
  s2.
  r4 <bes d> <bes ees>
  <bes c>2.
}

PRHTwoD = \relative {
  s2.
}

pianoRHtwo       = { \voiceTwo \PRHTwoA \PRHTwoB \PRHTwoC                   \bar "|." }
pianoRHtwoSingle = { \voiceTwo \PRHTwoA \PRHTwoB \PRHTwoC \PRHTwoB \PRHTwoD \bar "|." }

dPA = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf s2.*7
}

dPB = {
}

dPC = {
}

dPD = {
}

dynamicsPiano       = { \dPA \dPB \dPC           }
dynamicsPianoSingle = { \dPA \dPB \dPC \dPB \dPD }

PLHA = \relative {
  \global
  f,4 <c' f a> q
  c,4 <c' e> <c e bes'>
  f,4 <c' f a> q
  f,4 q r
  g4 <f' g> q % 78b
  g,2 c,4
  <f c'>4 <c' f a> <c, c'>
  <f, f'>2 r4
}

PLHB = \relative {
  f,4 <c' f a> q % 78c
  c,4 <c' e> <c e bes'>
  f, <c' f a> q
  f,4 q q
  bes,4 <d' f a> q % 78d
  bes4 <d f bes> q
  f,4 <c' f a> <c f>
  f,4 g a
  bes2. % 79a
  f4 c'8 d c4
  <bes, bes'>4 <d' f bes> <d f>
  f,4 c'8 d c4
  g4 b cis % 79b
  d2 g,4
  c2 d4
  e4 d c
  s2. % 79c
  s2.
  e,4 <cis' g'> q
  s2.
  <d, d'>2 r4 % 79d
  <bes bes'>2 r4
  <a a'>2.
  <g g'>2.
  f'4 <c' f a> q % 80a
  c,4 <c' e> <e bes'>
  f,4 <c' f a> q
  f,4 q r
  f4 <f' g> q % 80b
  g,2 c,4
}

PLHC = \relative {
  <f, c'>4 a'-^ g-^ % 80b++
  f4-^ e-^ d-^
  s2. % 80c
  c,2.
  s2.
  c2.
  s2. % 80d
  <c c'>2 fis4
  g2.
  c,2.
  \grace g'8 g'4 f g % 81a
  f2.
  f4 e f
  e2.
  g,2. % 81b
  c,2.
  f4 <c' f a> q
  c,4 q q
  e2. % 81c
  a,2.
  s2.
  s2.
  <aes aes'>2. % 81d
  <g g'>2.
  s2.
  s2.
}

PLHD = \relative {
  <f, c>2.
}

pianoLH       = { \PLHA \PLHB \PLHC             \bar "|." }
pianoLHSingle = { \PLHA \PLHB \PLHC \PLHB \PLHD \bar "|." }

PLHOneA = \relative {
  \global
  s2.*8
}

PLHOneB = \relative {
  s2.*16
  c2.~ % 79c
  c2.
  s2.
  cis4 d e
  s2.*10
}

PLHOneC = \relative {
  s2.*2
  f4\arpeggio e f % 80c
  s2.
  e4\arpeggio d e
  s2.
  c4 d a % 80d
  s2.*13
  d,4 a' e' % 81c
  d2.
  s2.*2
  r4 d ees % 81d++
  e2.
}

PLHOneD = \relative {
  s2.
}

pianoLHone       = { \voiceOne \PLHOneA \PLHOneB \PLHOneC                   \bar "|." }
pianoLHoneSingle = { \voiceOne \PLHOneA \PLHOneB \PLHOneC \PLHOneB \PLHOneD \bar "|." }

PLHTwoA = \relative {
  \global
  s2.*8
}

PLHTwoB = \relative {
  s2.*16
  f,2. % 79c
  c2.
  s2.
  a'2.
  s2.*10
}

PLHTwoC = \relative {
  s2.*2
  f,2.\arpeggio
  s2.
  f2.\arpeggio
  s2.
  f2.
  s2.*13
  d2.~ % 81c++
  d2.
  s2. % 81d
  s2.
  c2.~
  c2.

}

PLHTwoD = \relative {
  s2.
}

pianoLHtwo       = { \voiceTwo \PLHTwoA \PLHTwoB \PLHTwoC                   \bar "|." }
pianoLHtwoSingle = { \voiceTwo \PLHTwoA \PLHTwoB \PLHTwoC \PLHTwoB \PLHTwoD \bar "|." }

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
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
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
            \new Voice \pianoLHoneSingle
            \new Voice \pianoLHtwoSingle
          >>
        >>
      >>
    >>
    \midi {}
  }
}
