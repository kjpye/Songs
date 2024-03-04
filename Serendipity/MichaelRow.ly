\version "2.25.13"
% Original from John Lemcke

\include "kjp.ly"

\header {
  title = "Michael, Row the Boat Ashore"
  composer = "Folk Song"
  % Remove default LilyPond tagline
  tagline = ##f
}

%\paper {
%  #(set-paper-size "a4")
%  top-margin = 10\mm
%  bottom-margin = 10\mm
%  line-width = 180\mm
%  left-margin = 15\mm
%  %ragged-bottom = ##t
%  %check-consistency = ##t
%  %two-sided = ##t
%  %inner-margin = 20\mm
%}

global = {
  \key d \major
  \time 2/2
}

dropLyrics =
{
  \override LyricText.extra-offset = #'(0 . -1)
  \override LyricHyphen.extra-offset = #'(0 . -1)
  \override LyricExtender.extra-offset = #'(0 . -1)
}

raiseLyrics =
{
  \revert LyricText.extra-offset
  \revert LyricHyphen.extra-offset
  \revert LyricExtender.extra-offset
}

skipFour = \repeat unfold 4 { \skip 8 }

mpmf = \markup {\dynamic mp - \dynamic mf}

voltaSecondTime = \markup { \volta-number "1." \larger \italic \bold { "   -   To Start" } }

RehearsalTrack = { % page numbers from John's original
  \textMark \markup \box "1a" s1*5
  \textMark \markup \box "1b" s1*6
  \textMark \markup \box "1c" s1*5
  \textMark \markup \box "2a" s1*5
  \textMark \markup \box "2b" s1*5
  \textMark \markup \box "2c" s1*6
  \textMark \markup \box "3a" s1*6
  \textMark \markup \box "3b" s1*5
  \textMark \markup \box "3c" s1*8
}

RehearsalTrackSingle = {
  \textMark \markup \box "1a" s1*5
  \textMark \markup \box "1b" s1*6
  \textMark \markup \box "1c" s1
  s1
  \textMark \markup \box "1b" s1*6
  \textMark \markup \box "1c+" s1*4
  \textMark \markup \box "2a" s1*5
  \textMark \markup \box "2b" s1*5
  \textMark \markup \box "2c" s1*3
  s1
  \textMark \markup \box "1b" s1*6
  \textMark \markup \box "1c+" s1*4
  \textMark \markup \box "2a" s1*5
  \textMark \markup \box "2b" s1*5
  \textMark \markup \box "2c" s1*2
  \textMark \markup \box "2c+++" s1*3
  \textMark \markup \box "3a" s1*6
  \textMark \markup \box "3b" s1*5
  \textMark \markup \box "3c" s1*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 152
}

sopranoA = \relative {
  R1 | R1 | R1 | r2 d'4 fis
}

sopranoB = \relative {
  a'4. fis8 a b4  a8~a2 fis4 a |
  b1 |
  a2 fis4 a |
  a4. fis8 g fis4 e8~ |
  e2 d4 e |
  fis2(e)
}

sopranoC = \relative {
  d'2 d4 fis
}

sopranoD = \relative {
  d'2 r2 |
  r4^\mpmf d'2 a4 |
  d4~d8 a8~a2 |
  r4 d2 b4 |
  a4~a8 d8~d2 |
  cis2 a2 |
  g1 |
  a4 b4 a8 g4 fis8~fis2 d4 fis |
  \tag #'both {\slurDashed a8(a4) \slurSolid fis8 a b4  a8~ |}
  \tag #'v1   {            a8 a4             fis8 a b4  a8~ |}
  \tag #'v2   {            a8~a4             fis8 a b4  a8~ |}
  a2 fis4 a |
  b1 |
  a2 fis4 a |
  \tag #'both {\slurDashed a8(a4) \slurSolid fis8 g fis4 e8~ |}
  \tag #'v1   {            a8 a4             fis8 g fis4 e8~ |}
  \tag #'v2   {            a8~a4             fis8 g fis4 e8~ |}
  e2 d4 e |
  fis2(e) |
}

sopranoE = \relative {
  d'2 d4^\mf fis
}

sopranoF = \relative {
  d'2 d4^\f fis |
  a4. fis8 a b4 a8~ |
  a2 fis4 a |
  b1 |
  a2 fis4 a |
  a4. fis8 g fis4 e8~e2 d4 e |
  fis2(e) |
  d2 r2
                                % Alleluia
  r4 d'2 a4 |
  d4~d8 a8~a2 |
  r4 d2 b4 |
  a4~a8 d8~d2 |
  cis2 a2 |
  g2 d'4 e |
  <a, fis'>1 |
  <g e'>1 |
  << { a'1 }  \new Voice { \stemUp s2 d,4 d } >> |
  << { \once \override NoteColumn.force-hshift = #-1.0 \shiftOnn g1 }
     \new Voice { \stemUp d8 d4 d8~d2 } >> |
  fis4 g fis8 e4 d8~d1 |
  \tag #'both {r4 \override NoteHead.style = #'cross d4             r2}
  \tag #'v2   {r4 \override NoteHead.style = #'cross d4^"(Shouted)" r2}
}

soprano = {
  \global
  \sopranoA
  \set Score.voltaSpannerDuration = \musicLength 4*4
  \repeat volta 3 {
    \sopranoB
    \alternative {
      \volta 1   { \sopranoC }
      \volta 2,3 { \keepWithTag #'both \sopranoD }
    }
    \set Score.repeatCommands = #(list(list 'volta voltaSecondTime))
    \sopranoE
%    \set Score.repeatCommands = #'((volta #f))
                                % Ending
    \set Score.repeatCommands = #`((volta ,#{ \markup \volta-number "2." #} ))
    \keepWithTag #'both \sopranoF
%    \set Score.repeatCommands = #'((volta #f))
%    \sopranoG
  }
}

sopranoSingle = {
  \global
  \sopranoA
  \sopranoB
  \sopranoC
  \sopranoB
  \keepWithTag #'v1 \sopranoD
  \sopranoE
  \sopranoB
  \keepWithTag #'v2 \sopranoD
%  \sopranoE
  \keepWithTag #'v2 \sopranoF
}

altoA = \relative {
  R1 | R1 | R1 | r2 d'4^\mf fis |
}

altoB = \relative {
  a'4. fis8 a b4  a8~a2 fis4 a |
  b1 |
  a2 fis4 a |
  a4. fis8 g fis4 e8~e2 d4 e |
  fis2(e)
}

altoC = \relative {
  d'2 d4 fis
}

altoD = \relative {
    d'2 r2 |
    r4 fis2 d4 |
    fis4~fis8 d8~d2 |
    r4 g2 d4 |
    fis4~fis8 d8~d2 |
    fis2 cis2 |
    b1 |
    cis4 d4 cis8 b4 a8~ |
    a2 d4 fis |
    \tag #'both {\slurDashed a8(a4) \slurSolid fis8 a b4  a8~ |}
    \tag #'v1   {            a8 a4             fis8 a b4  a8~ |}
    \tag #'v2   {            a8~a4             fis8 a b4  a8~ |}
    a2 fis4 a |
    b1 |
    a2 fis4 a |
    \tag #'both {\slurDashed a8(a4) \slurSolid fis8 g fis4 e8~ |}
    \tag #'v1   {            a8 a4             fis8 g fis4 e8~ |}
    \tag #'v2   {            a8~a4             fis8 g fis4 e8~ |}
    e2 d4 e |
    fis2(e) |
  }

altoE = \relative {
  d'2 d4 fis
}

altoF = \relative {
  d'2 d4 fis
  a4. fis8 a b4  a8~a2 fis4 a |
  b1 |
  a2 fis4 a |
  a4. fis8 g fis4 e8~e2 d4 e |
  fis2(e) |
  d2
  d4 fis |
  a4. fis8 a b4  a8~ |
  a2 fis4 a |
  b1 |
  a2 fis4 a |
  a4. fis8 g fis4 e8~e2 d4 e |
  fis1 |
  e1 |
  r2 a4 a4
  b8 b4 b8~b2
  a4 b a8 g4 fis8~fis1 |
  r4 \override NoteHead.style = #'cross d'4^"(Shouted)" r2
}

alto = \relative c' {
  \global
  \altoA
  \altoB
  \altoC
  \keepWithTag #'both \altoD
  \altoE
  \altoF
}

altoSingle = {
  \global
  \altoA
  \altoB
  \altoC
  \altoB
  \keepWithTag #'v1 \altoD
  \altoE
  \altoB
  \keepWithTag #'v2 \altoD
%  \altoE
  \altoF
}

tenorA = \relative {
  R1 R1 R1 r2 d4 fis |
}

tenorB = \relative {
  a4. fis8 a b4 a8~ |
  a2 fis4 a |
  b1 |
  a2 fis4 a |
  a4. fis8 g fis4 e8~ |
  e2 d4 e |
  fis2(e)
}

tenorC = \relative {
  d2 d4 fis
}

tenorD = \relative {
  d2 d4^\mpmf fis
  \tag #'both {\slurDashed a8(a4) \slurSolid fis8 a b4 a8~ |}
  \tag #'v1   {            a8~a4             fis8 a b4 a8~ |}
  \tag #'v2   {            a8 a4             fis8 a b4 a8~ |}
  a2 fis4 a |
  b1 |
  a2 fis4 a |
  \tag #'both {\slurDashed a8(a4) \slurSolid fis8 g fis4 e8~ |}
  \tag #'v1   {            a8~a4             fis8 g fis4 e8~ |}
  \tag #'v2   {            a8 a4             fis8 g fis4 e8~ |}
  e2 d4 e |
  fis2(e)
  d2 r2 |
  r4 d'2 a4 |
  d4~d8 a8~a2 |
  r4 d2 b4 |
  a4~a8 d8~d2 |
  cis2 a2 |
  g1 |
  a4 b4 a8 g4 fis8~
}

tenorE = \relative {
  fis2 d4^\mf fis |
}

tenorF = \relative {
  fis2 d4^\f fis |
  a4. fis8 a b4  a8~a2 fis4 a |
  b1 |
  a2 fis4 a |
  a4. fis8 g fis4 e8~e2 d4 e |
  fis2(e) |
  d2 r2
  r4 d'2 cis4 |
  b4~b8 a8~a2 |
  r4 b2 g4 |
  d'4~d8 d8~d2 |
  a2 cis2 |
  b2 d4 e |
  cis1 |
  cis1 |
  s2 d4 d |
  b8 b4 b8~b2 |
  cis4 cis cis8 cis4 d8~d1 |
  r4 \override NoteHead.style = #'cross d4^"(Shouted)" r2 |
}

tenor = \relative c' {
  \global
  \tenorA
  \tenorB
  \tenorC
  \keepWithTag #'both \tenorD
  \tenorE
  \tenorF
}

tenorSingle = {
  \global
  \tenorA
  \tenorB
  \tenorC
  \tenorB
  \keepWithTag #'v1 \tenorD
  \tenorE
  \tenorB
  \keepWithTag #'v2 \tenorD
%  \tenorE
  \tenorF
}

bassA = \relative c {
  R1 R1 R1 r2 d4 fis |
}

bassB = \relative {
  a4. fis8 a b4 a8~ |
  a2 fis4 a |
  b1 |
  a2 fis4 a |
  a4. fis8 g fis4 e8~ |
  e2 d4 e |
  fis2(e)
}

bassC = \relative {
  d2 d4 fis
}

bassD = \relative {
  d2 d4 fis
  \tag #'both {\slurDashed a8(a4) \slurSolid fis8 a b4 a8~ |}
  \tag #'v1   {            a8~a4             fis8 a b4 a8~ |}
  \tag #'v2   {            a8 a4             fis8 a b4 a8~ |}
  a2 fis4 a |
  b1 |
  a2 fis4 a |
  \tag #'both {\slurDashed a8(a4) \slurSolid fis8 g fis4 e8~ |}
  \tag #'v1   {            a8~a4             fis8 g fis4 e8~ |}
  \tag #'v2   {            a8 a4             fis8 g fis4 e8~ |}
  e2 d4 e |
  fis2(e)
  d2 r2 |
  r4 fis2 d4 |
  fis4~fis8 d8~d2 |
  r4 fis2 d4 |
  fis4~fis8 d8~d2 |
  fis2 cis2 |
  b1 |
  cis4 d4 cis8 b4 a8~ |
}

bassE = \relative {
  a,2 d4 fis |
}

bassF = \relative {
  a,2 d4 fis |
  a4. fis8 a b4  a8~a2 fis4 a |
  b1 |
  a2 fis4 a |
  a4. fis8 g fis4 e8~e2 d4 e |
  fis2(e) |
  d2
  d4 fis |

  a4. fis8 a b4  a8~ |
  a2 fis4 a |
  b1 |
  a2 fis4 a |
  a4. fis8 g fis4 e8~e2 d4 e |
  a1
  g1 |
  r2 fis4 fis |
  g8 g4 g8~g2 |
  a4 a a8 a4 d,8~d1 |
  \tag #'both {r4 \override NoteHead.style = #'cross d'4             r2}
  \tag #'v2   {r4 \override NoteHead.style = #'cross d4^"(Shouted)" r2}
}

bass = \relative c' {
  \global
  \bassA
  \bassB
  \bassC
  \keepWithTag #'both \bassD
  \bassE
  \keepWithTag #'both \bassF
}

bassSingle = {
  \global
  \bassA
  \bassB
  \bassC
  \bassB
  \keepWithTag #'v1 \bassD
  \bassE
  \bassB
  \keepWithTag #'v2 \bassD
%  \bassE
  \keepWithTag #'v2 \bassF
}

wordsOne = \lyricmode {
  Mi -- chael, row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael, row the boat a -- shore, Al -- le -- lu -- ia!
}

wordsOneMidi = \lyricmode {
  "\nMi" "chael, " "row " "the " "boat " a "shore, " Al le lu "ia! "
  "\nMi" "chael, " "row " "the " "boat " a "shore, " Al le lu "ia! "
}

sopranoVerseOne = \lyricmode {
                                % Lyrics follow here.
  \repeat unfold 88 \skip 1
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row,   Al -- le -- lu -- ia!
  Mi -- chael! %row that boat a -- shore!
}

wordsSopSingle = \lyricmode {
  \repeat unfold 164 \skip 1
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row,
  Al -- le -- lu -- ia!
  Mi -- chael!
  \repeat unfold 5 \skip 1
}

wordsSopSingleSep = \lyricmode {
  \wordsOne
  \wordsOne
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row, row that boat a -- shore!
  Jor -- dan's riv -- er is deep and wide,
  Al -- le -- lu -- ia!
  Jor -- dan's riv -- er is deep and wide,
  Al -- le -- lu -- ia!
  \wordsOne
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row, row that boat a -- shore!
  Mi -- chael's boat's a mu -- sic boat,
  Al -- le -- lu -- ia!
  Mi -- chael's boat's a mu -- sic boat,
  Al -- le -- lu -- ia!
  Mi -- chael row the boat a -- shore,
  Al -- le -- lu -- ia!
  Mi -- chael row the boat a -- shore,
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row,
  Al -- le -- lu -- ia!
  Mi -- chael!
  row that boat a -- shore!
  Row!
}

wordsSopSingleMidi = \lyricmode {
  \wordsOneMidi
  \wordsOneMidi
  "Al" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nMi" "chael, " "row, " "row " "that " "boat " a "shore! "
  "\nJor" "dan's " riv "er " "is " "deep " "and " "wide, "
  "\nAl" le lu "ia! "
  "\nJor" "dan's " riv "er " "is " "deep " "and " "wide, "
  "\nAl" le lu "ia! "
  \wordsOneMidi
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nMi" "chael, " "row, " "row " "that " "boat " a "shore! "
  "\nMi" "chael's " "boat's " "a " mu "sic " "boat, "
  "\nAl" le lu "ia! "
  "\nMi" "chael's " "boat's " "a " mu "sic " "boat, "
  "\nAl" le lu "ia! "
  "\nMi" "chael " "row " "the " "boat " a "shore, "
  "\nAl" le lu "ia! "
  "\nMi" "chael " "row " "the " "boat " a "shore, "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nMi" "chael, " "row, "
  "\nAl" le lu "ia! "
  "\nMi" "chael! "
  "\nrow " "that " "boat " a "shore! "
  "\nRow! "
}

altoVerseOne = \lyricmode {
  \dropLyrics
  \wordsOne
  Mi -- chael

  ia!
  
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row, row that boat a -- shore!
  \raiseLyrics
  Jor -- dan's \nom riv -- er \yesm is deep and wide,
  \dropLyrics
  Al -- le -- lu -- ia!
  \raiseLyrics
  Jor -- dan's \nom riv -- er \yesm is deep and wide,
  \dropLyrics
  Al -- le -- lu -- ia!
  
  Mi -- chael,
                                % Ending
  ia!
  Mi -- chael row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael, row the boat a -- shore, Al -- le -- lu -- ia!
  \raiseLyrics
  Mi -- chael row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael, row the boat a -- shore, Al -- le -- lu -- ia!
  
  Mi -- chael, row that boat, row that boat a -- shore!
  
  Row!
}

altoVerseTwo = \lyricmode {
  \repeat unfold 41 \skip 1
  Mi -- chael's boat's a mu -- sic boat,
  \skip1 \skip1 \skip1 \skip1 %Al -- le -- lu -- ia!
  Mi -- chael's boat's a mu -- sic boat,
  \skip1 \skip1 \skip1 \skip1 %Al -- le -- lu -- ia!
}

wordsAltoSingle = \lyricmode {
  \wordsOne
  \wordsOne
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row, row that boat a -- shore!
  \raiseLyrics
  Jor -- dan's \nom riv -- er \yesm is deep and wide,
  \dropLyrics
  Al -- le -- lu -- ia!
  \raiseLyrics
  Jor -- dan's \nom riv -- er \yesm is deep and wide,
  \dropLyrics
  Al -- le -- lu -- ia!
  \wordsOne
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row, row that boat a -- shore!
  \raiseLyrics
  Mi -- chael's boat's a mu -- sic boat,
  \dropLyrics
  Al -- le -- lu -- ia!
  \raiseLyrics
  Mi -- chael's boat's a mu -- sic boat,
  \dropLyrics
  Al -- le -- lu -- ia!
  \raiseLyrics

  
                                % Ending
  Mi -- chael row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael, row the boat a -- shore, Al -- le -- lu -- ia!
  \raiseLyrics
  Mi -- chael row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael, row the boat a -- shore, Al -- le -- lu -- ia!
  
  Mi -- chael, row that boat, row that boat a -- shore!
  
  Row!
}

wordsAltoSingleSep = \lyricmode {
  \wordsOne
  \wordsOne
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row, row that boat a -- shore!
  Jor -- dan's riv -- er is deep and wide,
  Al -- le -- lu -- ia!
  Jor -- dan's riv -- er is deep and wide,
  Al -- le -- lu -- ia!
  \wordsOne
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row, row that boat a -- shore!
  Mi -- chael's boat's a mu -- sic boat,
  Al -- le -- lu -- ia!
  Mi -- chael's boat's a mu -- sic boat,
  Al -- le -- lu -- ia!
                                % Ending
  Mi -- chael row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael, row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael, row the boat a -- shore, Al -- le -- lu -- ia!
  
  Mi -- chael, row that boat, row that boat a -- shore!
  
  Row!
}

wordsAltoSingleMidi = \lyricmode {
  \wordsOneMidi
  \wordsOneMidi
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nMi" "chael, " "row, " "row " "that " "boat " a "shore! "
  "\nJor" "dan's " riv "er " "is " "deep " "and " "wide, "
  "\nAl" le lu "ia! "
  "\nJor" "dan's " riv "er " "is " "deep " "and " "wide, "
  "\nAl" le lu "ia! "
  \wordsOneMidi
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nMi" "chael, " "row, " "row " "that " "boat " a "shore! "
  "\nMi" "chael's " "boat's " "a " mu "sic " "boat, "
  "\nAl" le lu "ia! "
  "\nMi" "chael's " "boat's " "a " mu "sic " "boat, "
  "\nAl" le lu "ia! "
                                % Ending
  "\nMi" "chael " "row " "the " "boat " a "shore, " Al le lu "ia! "
  "\nMi" "chael, " "row " "the " "boat " a "shore, " Al le lu "ia! "
  "\nMi" "chael " "row " "the " "boat " a "shore, " Al le lu "ia! "
  "\nMi" "chael, " "row " "the " "boat " a "shore, " Al le lu "ia! "
  
  "\nMi" "chael, " "row " "that " "boat, " "row " "that " "boat " a "shore! "
  
  "\nRow! "
}

tenorVerseOne = \lyricmode {
  \repeat unfold 88 \skip 1
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row,
                                %Al -- le -- lu -- ia!
                                %Mi -- chael row that boat, row that boat a -- shore!
  
}

wordsTenorSingle = \lyricmode {
%  \wordsOne
  \repeat unfold 164 \skip 1
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row,
                                %Al -- le -- lu -- ia!
                                %Mi -- chael row that boat, row that boat a -- shore!
  
}

wordsTenorSingleSep = \lyricmode {
  \wordsOne
  \wordsOne
  Sis -- ter help to trim the sail,
  Al -- le -- lu -- ia!
  Sis -- ter help to trim the sail,
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row,
  row that boat a -- shore!
  \wordsOne
  Jor -- dan's riv -- er is chil -- ly cold,
  Al -- le -- lu -- ia!
  Jor -- dan's riv -- er is chil -- ly cold,
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael row, row that boat a -- shore!
  \wordsOne
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row,
  Al -- le -- lu -- ia!
  Mi -- chael, row that boat, row that boat a -- shore!
  Row!
}

wordsTenorSingleMidi = \lyricmode {
  \wordsOneMidi
  \wordsOneMidi
  "\nSis" "ter " "help " "to " "trim " "the " "sail, "
  "\nAl" le lu "ia! "
  "\nSis" "ter " "help " "to " "trim " "the " "sail, "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nMi" "chael, " "row, "
  "\nrow " "that " "boat " a "shore! "
  \wordsOneMidi
  "\nJor" "dan's " riv "er " "is " chil "ly " "cold, "
  "\nAl" le lu "ia! "
  "\nJor" "dan's " riv "er " "is " chil "ly " "cold, "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nMi" "chael " "row, " "row " "that " "boat " a "shore! "
  \wordsOneMidi
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nMi" "chael, " "row, "
  "\nAl" le lu "ia! "
  "\nMi" "chael, " "row " "that " "boat, " "row " "that " "boat " a "shore! "
  "\nRow! "
}

bassVerseOne = \lyricmode {
  \dropLyrics
  \repeat unfold 24 \skip 1
  
  ia!
  
  \raiseLyrics
  Sis -- ter help to trim the sail,
  \dropLyrics
  Al -- le -- lu -- ia!
  \raiseLyrics
  Sis -- ter help to trim the sail,
                                %\dropLyrics
  Al -- le -- lu -- ia!
  
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row, row that boat a -- shore!
  
  Mi -- chael,
  \repeat unfold 23 \skip 1

  Mi -- chael row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael, row the boat a -- shore,
}

bassVerseTwo = \lyricmode {
  \repeat unfold 25 \skip 1
  Jor -- dan's \nom riv -- er \yesm is chil -- ly cold,
  \repeat unfold 4 \skip 1 %Al -- le -- lu -- ia!
  Jor -- dan's \nom riv -- er \yesm is chil -- ly cold,
  \repeat unfold 4 \skip 1 %Al -- le -- lu -- ia!
}

wordsBassSingle = \lyricmode {
%  \wordsOne
  \dropLyrics
  \repeat unfold 44 \skip 1
  
  \raiseLyrics
  Sis -- ter help to trim the sail,
  \dropLyrics
  Al -- le -- lu -- ia!
  \raiseLyrics
  Sis -- ter help to trim the sail,
                                %\dropLyrics
  Al -- le -- lu -- ia!
  
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row, row that boat a -- shore!
  
  \repeat unfold 22 \skip 1

  Jor -- dan's \nom riv -- er \yesm is chil -- ly cold,
  \repeat unfold 4 \skip 1 %Al -- le -- lu -- ia!
  Jor -- dan's \nom riv -- er \yesm is chil -- ly cold,
  \repeat unfold 4 \skip 1 %Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael row, row the boat a -- shore!
  \repeat unfold 22 \skip 1
  Mi -- chael row the boat a -- shore, Al -- le -- lu -- ia!
  Mi -- chael, row the boat a -- shore,
  \repeat unfold 15 \skip 1
}

wordsBassSingleSep = \lyricmode {
  \wordsOne
  \wordsOne
  Sis -- ter help to trim the sail,
  Al -- le -- lu -- ia!
  Sis -- ter help to trim the sail,
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael, row,
  row that boat a -- shore!
  \wordsOne
  Jor -- dan's riv -- er is chil -- ly cold,
  Al -- le -- lu -- ia!
  Jor -- dan's riv -- er is chil -- ly cold,
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Mi -- chael row, row that boat a -- shore!
  \wordsOne
  \wordsOne
  Mi -- chael, row that boat, row that boat a -- shore!
  Row!
}

wordsBassSingleMidi = \lyricmode {
  \wordsOneMidi
  \wordsOneMidi
  "\nSis" "ter " "help " "to " "trim " "the " "sail, "
  "\nAl" le lu "ia! "
  "\nSis" "ter " "help " "to " "trim " "the " "sail, "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nMi" "chael, " "row, "
  "\nrow " "that " "boat " a "shore! "
  \wordsOneMidi
  "\nJor" "dan's " riv "er " "is " chil "ly " "cold, "
  "\nAl" le lu "ia! "
  "\nJor" "dan's " riv "er " "is " chil "ly " "cold, "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nAl" le lu "ia! "
  "\nMi" "chael " "row, " "row " "that " "boat " a "shore! "
  \wordsOneMidi
  \wordsOneMidi
  "\nMi" "chael, " "row " "that " "boat, " "row " "that " "boat " a "shore! "
  "\nRow! "
}

pianoRHoneA = \relative {
  r4 <b d>8 <g' b>~<g b> <b, d> <g' b>4 |
  r4 <a, d>8 <fis' a>~<fis a> <a, d> <fis' a>4 |
  \vo r4 <cis fis a> r4 <cis e g> \ov |
  <fis, a d fis>4 r4 r2 |
}

pianoRHoneB = \relative {
  \vo r4 <fis' a>4 r4 <fis a>4 |
  r4 <fis a>4 r4 <fis a>4 |
  \ov r4 <b, d>8 <g' b>~<g b> <b, d> <g' b>4 |
  r4 <a, d>8 <fis' a>~<fis a> <a, d> <fis' a>4 |
  \vo r4 <cis fis a> r <cis e g> |
  r4 <b e g>4 r4 <b e g>4  |
  r4 <cis fis a>4 r4 <cis e g>4  |
}

pianoRHoneC = \relative {
  \ov <fis a d fis>4 r4 r2 |
}

pianoRHoneD = \relative {
  \ov <fis a d fis>4 r4 r2 |
  \vo r4 <fis' a>4 r4 <fis a>4 |
  r4 <fis a>4 r4 <fis a>4 |
  \ov r4 <b, d>8 <g' b>~<g b> <b, d> <g' b>4 |
  r4 <a, d>8 <fis' a>~<fis a> <a, d> <fis' a>4 |
  \vo r4 <cis fis a> r <cis e g> |
  r4 <b e g>4 r4 <b e g>4  |
  r4 <cis fis a>4 r4 <cis e g>4  |
  \ov <fis, a d fis>4 r4 r2 |
  \vo r4 <fis' a>4 r4 <fis a>4 |
  r4 <fis a>4 r4 <fis a>4 |
  \ov r4 <b, d>8 <g' b>~<g b> <b, d> <g' b>4 |
  r4 <a, d>8 <fis' a>~<fis a> <a, d> <fis' a>4 |
  \vo r4 <cis fis a> r <cis e g> |
  r4 <b e g>4 r4 <b e g>4  |
  r4 <cis fis a>4 r4 <cis e g>4  |
}

pianoRHoneE = \relative {
  \ov <fis a d fis>4 r4 r2 |
}

pianoRHoneF = \relative {
  \ov <fis a d fis>4 r4 r2 |
  \vo r4 <fis' a>4 r4 <fis a>4 |
  r4 <fis a>4 r4 <fis a>4 |
  \ov r4 <b, d>8 <g' b>~<g b> <b, d> <g' b>4 |
  r4 <a, d>8 <fis' a>~<fis a> <a, d> <fis' a>4 |
  \vo r4 <cis fis a> r <cis e g> |
  r4 <b e g>4 r4 <b e g>4  |
  r4 <cis fis a>4 r4 <cis e g>4  |
  \ov <fis, a d fis>4 r4 r2 |
  \vo r4 <fis' a>4 r4 <fis a>4 |
  r4 <fis a>4 r4 <fis a>4 |
  \ov r4 <b, d>8 <g' b>~<g b> <b, d> <g' b>4 |
  r4 <a, d>8 <fis' a>~<fis a> <a, d> <fis' a>4 |
  \vo r4 <cis fis a> r <cis e g> |
  r4 <b e g>4 r2  |
  \ov <fis' a fis'>1 |
  <e g e'>1 |
  \stemDown
  r2 <d' fis a d>4 <d fis a d>4 |
  <d g b d>8 <d g b d>4 <d g b d>8~<d g b d>2 |
  r1 |
  r1 |
  r4 \ottava #1 <d' fis a d>8 \ottava #0 r8 r2 |
}

pianoRHone = \relative c' {
  \global
  \pianoRHoneA
  \pianoRHoneB
  \pianoRHoneC
  \pianoRHoneD
  \pianoRHoneE
  \pianoRHoneF
}

pianoRHoneSingle = {
  \global
  \pianoRHoneA
  \pianoRHoneB
  \pianoRHoneC
  \pianoRHoneB
  \pianoRHoneD
  \pianoRHoneE
  \pianoRHoneB
  \pianoRHoneD
%  \pianoRHoneE
  \pianoRHoneF
}

pianoRHtwoA = \relative {
  s1 | s1 | a2 g2 | s1 |
}

pianoRHtwoB = \relative {
  d'4. cis8~cis4. b8~b2 a2
  s1 |
  s1 |
  a2.~a8 g8~g1 |
  a2 g2 |
}

pianoRHtwoC = \relative {
  s1 |
}

pianoRHtwoD = \relative {
  s1 |
  d'4. cis8~cis4. b8~b2 a2
  s1 |
  s1 |
  a2.~a8 g8~g1 |
  a2 g2 |
  s1 |
  d'4. cis8~cis4. b8~b2 a2
  s1 |
  s1 |
  a2.~a8 g8~g1 |
  a2 g2 |
}

pianoRHtwoE = \relative {
  s1 |
}

pianoRHtwoF = \relative {
  s1 |
  d'4. cis8~cis4. b8~b2 a2
  s1 |
  s1 |
  a2.~a8 g8~g1 |
  a2 g2 |
  s1 |
  d'4. cis8~cis4. b8~b2 a2
  s1 |
  s1 |
  a2.~a8 g8~g2 s2 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
}

pianoRHtwo = \relative c' {
  \global \vt
  \pianoRHtwoA
  \pianoRHtwoB
  \pianoRHtwoC
  \pianoRHtwoD
  \pianoRHtwoE
  \pianoRHtwoF
}

pianoRHtwoSingle = {
  \global \vt
  \pianoRHtwoA
  \pianoRHtwoB
  \pianoRHtwoC
  \pianoRHtwoB
  \pianoRHtwoD
  \pianoRHtwoE
  \pianoRHtwoB
  \pianoRHtwoD
%  \pianoRHtwoE
  \pianoRHtwoF
}

pianoLHA = \relative {
  <g g,>4^\mp r <d d,>4 r |
  <d d,>4 r <a a,>4 r |
  <a a,>4 r <a a,>4 r |
  <d d,>4 <a a,> <b b,>4 <cis cis,> |
}

pianoLHB = \relative {
  <d d,>4^\p r <a a,>4 r |
  <d d,>4 r <a a,>4 r |
  <g' g,>4 r <d d,>4 r |
  <d d,>4 r <a a,> r |
  <fis' fis,>4 r <cis cis,>4 r |
  <e e,>4 r <b b,>4 r |
  <a a,>4 r <a a,>4 r |
}

pianoLHC = \relative {
  <d d,>4 <a a,> <b b,>4 <cis cis,>
}

pianoLHD = \relative {
  <d d,>4 <a a,> <b b,>4 <cis cis,>|
  <d d,>4 r <a a,>4 r |
  <d d,>4 r <a a,>4 r |
  <g' g,>4 r <d d,>4 r |
  <d d,>4 r <a a,> r |
  <fis' fis,>4 r <cis cis,>4 r |
  <e e,>4 r <b b,>4 r |
  <a a,>4 r <a a,>4 r |
  <d d,>4 <a a,> <b b,>4 <cis cis,>|
  <d d,>4 r <a a,>4 r |
  <d d,>4 r <a a,>4 r |
  <g' g,>4 r <d d,>4 r |
  <d d,>4 r <a a,> r |
  <fis' fis,>4 r <cis cis,>4 r |
  <e e,>4 r <b b,>4 r |
  <a a,>4 r <a a,>4 r |
}

pianoLHE = \relative {
  <d d,>4 <a a,>^\mf <b b,>4 <cis cis,>
}

pianoLHF = \relative {
  <d d,>4 <a a,>^\f <b b,>4 <cis cis,>|
  <d d,>4 r <a a,>4 r |
  <d d,>4 r <a a,>4 r |
  <g' g,>4 r <d d,>4 r |
  <d d,>4 r <a a,> r |
  <fis' fis,>4 r <cis cis,>4 r |
  <e e,>4 r <b b,>4 r |
  <a a,>4 r <a a,>4 r |
  <d d,>4 <a a,> <b b,>4 <cis cis,>|
  <d d,>4 r <a a,>4 r |
  <d d,>4 r <a a,>4 r |
  <g' g,>4 r <d d,>4 r |
  <d d,>4 r <a a,> r |
  <fis' fis,>4 r <cis cis,>4 r |
  <e e,>4 r4 r2 |
  <<{\vo <cis' a>1}\\{\vt r4 <a, a,>2.}>> |
  <<{\vo <cis' g>1}\\{\vt r4 <a, a,>2.}>> |
  \ov r2 <fis' a d>4 <fis a d>4 |
  <g b d>8 <g b d>4 <g b d>8~<g b d>2 |
  r1 |
  r1 |
  r4 <d, d,>8 r8 r2 |
}

pianoLH = \relative c' {
  \global \vt
  \pianoLHA
  \pianoLHB
  \pianoLHC
  \pianoLHD
  \pianoLHE
  \pianoLHF
}

pianoLHSingle = {
  \global \vt
  \pianoLHA
  \pianoLHB
  \pianoLHC
  \pianoLHB
  \pianoLHD
  \pianoLHE
  \pianoLHB
  \pianoLHD
%  \pianoLHE
  \pianoLHF
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "sa" \with {
        } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" { \voiceOne \soprano }
          \new Voice = "alto" { \voiceTwo \alto }
        >>
        \new Lyrics \with {
          alignAboveContext = "sa"
          \override VerticalAxisGroup.staff-affinity = #DOWN
        } \lyricsto "soprano" \sopranoVerseOne
        \new Lyrics \lyricsto "alto" \altoVerseOne
        \new Lyrics \lyricsto "alto" \altoVerseTwo
        
        
        \new Staff = "tb" \with {
        } <<
          \clef bass
          \new Voice = "tenor" { \voiceOne \tenor }
          \new Voice = "bass" { \voiceTwo \bass }
        >>
        \new Lyrics \with {
          alignAboveContext = "tb"
          \override VerticalAxisGroup.staff-affinity = #DOWN
        } \lyricsto "tenor" \tenorVerseOne
        \new Lyrics \lyricsto "bass" \bassVerseOne
        \new Lyrics \lyricsto "bass" \bassVerseTwo
      >>
      
      \new PianoStaff <<
        \new Staff = "right" \with {
        } <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Staff = "left" \with {
        } {
          \clef bass
          \new Voice \pianoLH
        }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "sa" \with {
        } <<
          \new Voice \RehearsalTrackSingle
          \new Voice = "soprano" { \voiceOne \sopranoSingle }
          \new Voice = "alto" { \voiceTwo \altoSingle }
        >>
        \new Lyrics \with {
          alignAboveContext = "sa"
          \override VerticalAxisGroup.staff-affinity = #DOWN
        } \lyricsto "soprano" \wordsSopSingle
        \new Lyrics \lyricsto "alto" \wordsAltoSingle
        
        
        \new Staff = "tb" \with {
        } <<
          \clef bass
          \new Voice = "tenor" { \voiceOne \tenorSingle }
          \new Voice = "bass" { \voiceTwo \bassSingle }
        >>
        \new Lyrics \with {
          alignAboveContext = "tb"
          \override VerticalAxisGroup.staff-affinity = #DOWN
        } \lyricsto "tenor" \wordsTenorSingle
        \new Lyrics \lyricsto "bass" \wordsBassSingle
      >>
      
      \new PianoStaff <<
        \new Staff = "right" \with {
        } <<
          \new Voice \pianoRHoneSingle
          \new Voice \pianoRHtwoSingle
          >>
        \new Staff = "left" \with {
        } {
          \clef bass
          \new Voice \pianoLHSingle
        }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "sa" \with {
        } <<
          \new Voice \RehearsalTrackSingle
          \new Voice = "soprano" { \voiceOne \sopranoSingle }
          \new Voice = "alto" { \voiceTwo \altoSingle }
        >>
        \new Lyrics \with {
          alignAboveContext = "sa"
          \override VerticalAxisGroup.staff-affinity = #DOWN
        } \lyricsto "soprano" \wordsSopSingle
        \new Lyrics \lyricsto "alto" \wordsAltoSingle
        
        
        \new Staff = "tb" \with {
        } <<
          \clef bass
          \new Voice = "tenor" { \voiceOne \tenorSingle }
          \new Voice = "bass" { \voiceTwo \bassSingle }
        >>
        \new Lyrics \with {
          alignAboveContext = "tb"
          \override VerticalAxisGroup.staff-affinity = #DOWN
        } \lyricsto "tenor" \wordsTenorSingle
        \new Lyrics \lyricsto "bass" \wordsBassSingle
      >>
      
      \new PianoStaff <<
        \new Staff = "right" \with {
        } <<
          \new Voice \pianoRHoneSingle
          \new Voice \pianoRHtwoSingle
          >>
        \new Staff = "left" \with {
        } {
          \clef bass
          \new Voice \pianoLHSingle
        }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "soprano" \with {
          instrumentName = "Soprano"
          shortInstrumentName = "S"
        } <<
          \new Voice \RehearsalTrackSingle
          \new Voice \sopranoSingle
          \addlyrics \wordsSopSingleSep
        >>
        \new Staff = "alto" \with {
          instrumentName = "Alto"
          shortInstrumentName = "A"
        } <<
          \new Voice \altoSingle
          \addlyrics \wordsAltoSingleSep
        >>
        \new Staff = "tenor" \with {
          instrumentName = "Tenor"
          shortInstrumentName = "T"
        } <<
          \clef "treble_8"
          \new Voice \tenorSingle
          \addlyrics \wordsTenorSingleSep
        >>
        \new Staff = "bass" \with {
          instrumentName = "Bass"
          shortInstrumentName = "B"
        } <<
          \clef bass
          \new Voice \bassSingle
          \addlyrics \wordsBassSingleSep
        >>
      >>
      
      \new PianoStaff <<
        \new Staff = "right" \with {
        } <<
          \new Voice \pianoRHoneSingle
          \new Voice \pianoRHtwoSingle
          >>
        \new Staff = "left" \with {
        } {
          \clef bass
          \new Voice \pianoLHSingle
        }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "soprano" \with {
          instrumentName = "Soprano"
          shortInstrumentName = "S"
        } <<
          \new Voice \RehearsalTrackSingle
          \new Voice \sopranoSingle
          \addlyrics \wordsSopSingleSep
        >>
        \new Staff = "alto" \with {
          instrumentName = "Alto"
          shortInstrumentName = "A"
        } <<
          \magnifyStaff #4/7
          \new Voice \altoSingle
          \addlyrics {\tiny \wordsAltoSingleSep}
        >>
        \new Staff = "tenor" \with {
          instrumentName = "Tenor"
          shortInstrumentName = "T"
        } <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice \tenorSingle
          \addlyrics {\tiny \wordsTenorSingleSep}
        >>
        \new Staff = "bass" \with {
          instrumentName = "Bass"
          shortInstrumentName = "B"
        } <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice \bassSingle
          \addlyrics {\tiny \wordsBassSingleSep}
        >>
      >>
      
      \new PianoStaff <<
        \new Staff = "right" \with {
        } <<
          \magnifyStaff #4/7
          \new Voice \pianoRHoneSingle
          \new Voice \pianoRHtwoSingle
          >>
        \new Staff = "left" \with {
        } {
          \magnifyStaff #4/7
          \clef bass
          \new Voice \pianoLHSingle
        }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "soprano" \with {
          instrumentName = "Soprano"
          shortInstrumentName = "S"
        } <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrackSingle
          \new Voice \sopranoSingle
          \addlyrics {\tiny \wordsSopSingleSep}
        >>
        \new Staff = "alto" \with {
          instrumentName = "Alto"
          shortInstrumentName = "A"
        } <<
          \new Voice \altoSingle
          \addlyrics \wordsAltoSingleSep
        >>
        \new Staff = "tenor" \with {
          instrumentName = "Tenor"
          shortInstrumentName = "T"
        } <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice \tenorSingle
          \addlyrics {\tiny \wordsTenorSingleSep}
        >>
        \new Staff = "bass" \with {
          instrumentName = "Bass"
          shortInstrumentName = "B"
        } <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice \bassSingle
          \addlyrics {\tiny \wordsBassSingleSep}
        >>
      >>
      
      \new PianoStaff <<
        \new Staff = "right" \with {
        } <<
          \magnifyStaff #4/7
          \new Voice \pianoRHoneSingle
          \new Voice \pianoRHtwoSingle
          >>
        \new Staff = "left" \with {
        } {
          \magnifyStaff #4/7
          \clef bass
          \new Voice \pianoLHSingle
        }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "soprano" \with {
          instrumentName = "Soprano"
          shortInstrumentName = "S"
        } <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrackSingle
          \new Voice \sopranoSingle
          \addlyrics {\tiny \wordsSopSingleSep}
        >>
        \new Staff = "alto" \with {
          instrumentName = "Alto"
          shortInstrumentName = "A"
        } <<
          \magnifyStaff #4/7
          \new Voice \altoSingle
          \addlyrics {\tiny \wordsAltoSingleSep}
        >>
        \new Staff = "tenor" \with {
          instrumentName = "Tenor"
          shortInstrumentName = "T"
        } <<
          \clef "treble_8"
          \new Voice \tenorSingle
          \addlyrics \wordsTenorSingleSep
        >>
        \new Staff = "bass" \with {
          instrumentName = "Bass"
          shortInstrumentName = "B"
        } <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice \bassSingle
          \addlyrics {\tiny \wordsBassSingleSep}
        >>
      >>
      
      \new PianoStaff <<
        \new Staff = "right" \with {
        } <<
          \magnifyStaff #4/7
          \new Voice \pianoRHoneSingle
          \new Voice \pianoRHtwoSingle
          >>
        \new Staff = "left" \with {
        } {
          \magnifyStaff #4/7
          \clef bass
          \new Voice \pianoLHSingle
        }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "soprano" \with {
          instrumentName = "Soprano"
          shortInstrumentName = "S"
        } <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrackSingle
          \new Voice \sopranoSingle
          \addlyrics {\tiny \wordsSopSingleSep}
        >>
        \new Staff = "alto" \with {
          instrumentName = "Alto"
          shortInstrumentName = "A"
        } <<
          \magnifyStaff #4/7
          \new Voice \altoSingle
          \addlyrics {\tiny \wordsAltoSingleSep}
        >>
        \new Staff = "tenor" \with {
          instrumentName = "Tenor"
          shortInstrumentName = "T"
        } <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice \tenorSingle
          \addlyrics {\tiny \wordsTenorSingleSep}
        >>
        \new Staff = "bass" \with {
          instrumentName = "Bass"
          shortInstrumentName = "B"
        } <<
          \clef bass
          \new Voice \bassSingle
          \addlyrics \wordsBassSingleSep
        >>
      >>
      
      \new PianoStaff <<
        \new Staff = "right" \with {
        } <<
          \magnifyStaff #4/7
          \new Voice \pianoRHoneSingle
          \new Voice \pianoRHtwoSingle
          >>
        \new Staff = "left" \with {
        } {
          \magnifyStaff #4/7
          \clef bass
          \new Voice \pianoLHSingle
        }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "soprano" \with {
          instrumentName = "Soprano"
          shortInstrumentName = "S"
          midiInstrument = "choir aahs"
        } <<
          \new Voice \RehearsalTrackSingle
          \new Voice \TempoTrack
          \new Voice \sopranoSingle
          \addlyrics \wordsSopSingleMidi
        >>
        \new Staff = "alto" \with {
          instrumentName = "Alto"
          shortInstrumentName = "A"
          midiInstrument = "choir aahs"
        } <<
          \new Voice \altoSingle
        >>
        \new Staff = "tenor" \with {
          instrumentName = "Tenor"
          shortInstrumentName = "T"
          midiInstrument = "choir aahs"
        } <<
          \clef "treble_8"
          \new Voice \tenorSingle
        >>
        \new Staff = "bass" \with {
          instrumentName = "Bass"
          shortInstrumentName = "B"
          midiInstrument = "choir aahs"
        } <<
          \clef bass
          \new Voice \bassSingle
        >>
      >>
      
      \new PianoStaff <<
        \new Staff = "piano" \with {
          midiInstrument = "acoustic grand"
        } <<
          \new Voice \pianoRHoneSingle
          \new Voice \pianoRHtwoSingle
          \new Voice \pianoLHSingle
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "soprano" \with {
          instrumentName = "Soprano"
          shortInstrumentName = "S"
          midiInstrument = "choir aahs"
        } <<
          \new Voice \RehearsalTrackSingle
          \new Voice \TempoTrack
          \new Voice \sopranoSingle
        >>
        \new Staff = "alto" \with {
          instrumentName = "Alto"
          shortInstrumentName = "A"
          midiInstrument = "choir aahs"
        } <<
          \new Voice \altoSingle
          \addlyrics \wordsAltoSingleMidi
        >>
        \new Staff = "tenor" \with {
          instrumentName = "Tenor"
          shortInstrumentName = "T"
          midiInstrument = "choir aahs"
        } <<
          \clef "treble_8"
          \new Voice \tenorSingle
        >>
        \new Staff = "bass" \with {
          instrumentName = "Bass"
          shortInstrumentName = "B"
          midiInstrument = "choir aahs"
        } <<
          \clef bass
          \new Voice \bassSingle
        >>
      >>
      
      \new PianoStaff <<
        \new Staff = "piano" \with {
          midiInstrument = "acoustic grand"
        } <<
          \new Voice \pianoRHoneSingle
          \new Voice \pianoRHtwoSingle
          \new Voice \pianoLHSingle
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-tenor
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "soprano" \with {
          instrumentName = "Soprano"
          shortInstrumentName = "S"
          midiInstrument = "choir aahs"
        } <<
          \new Voice \RehearsalTrackSingle
          \new Voice \TempoTrack
          \new Voice \sopranoSingle
        >>
        \new Staff = "alto" \with {
          instrumentName = "Alto"
          shortInstrumentName = "A"
          midiInstrument = "choir aahs"
        } <<
          \new Voice \altoSingle
        >>
        \new Staff = "tenor" \with {
          instrumentName = "Tenor"
          shortInstrumentName = "T"
          midiInstrument = "choir aahs"
        } <<
          \clef "treble_8"
          \new Voice \tenorSingle
          \addlyrics \wordsTenorSingleMidi
        >>
        \new Staff = "bass" \with {
          instrumentName = "Bass"
          shortInstrumentName = "B"
          midiInstrument = "choir aahs"
        } <<
          \clef bass
          \new Voice \bassSingle
        >>
      >>
      
      \new PianoStaff <<
        \new Staff = "piano" \with {
          midiInstrument = "acoustic grand"
        } <<
          \new Voice \pianoRHoneSingle
          \new Voice \pianoRHtwoSingle
          \new Voice \pianoLHSingle
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "soprano" \with {
          instrumentName = "Soprano"
          shortInstrumentName = "S"
          midiInstrument = "choir aahs"
        } <<
          \new Voice \RehearsalTrackSingle
          \new Voice \TempoTrack
          \new Voice \sopranoSingle
        >>
        \new Staff = "alto" \with {
          instrumentName = "Alto"
          shortInstrumentName = "A"
          midiInstrument = "choir aahs"
        } <<
          \new Voice \altoSingle
        >>
        \new Staff = "tenor" \with {
          instrumentName = "Tenor"
          shortInstrumentName = "T"
          midiInstrument = "choir aahs"
        } <<
          \clef "treble_8"
          \new Voice \tenorSingle
        >>
        \new Staff = "bass" \with {
          instrumentName = "Bass"
          shortInstrumentName = "B"
          midiInstrument = "choir aahs"
        } <<
          \clef bass
          \new Voice \bassSingle
          \addlyrics \wordsBassSingleMidi
        >>
      >>
      
      \new PianoStaff <<
        \new Staff = "piano" \with {
          midiInstrument = "acoustic grand"
        } <<
          \new Voice \pianoRHoneSingle
          \new Voice \pianoRHtwoSingle
          \new Voice \pianoLHSingle
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
