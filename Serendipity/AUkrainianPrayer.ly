\version "2.25.14"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Ukrainian Prayer"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Rutter"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Words of unknown authorship"
  meter       = "Free translation by John Rutter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

tick = {
  \once \set breathMarkType = #'tickmark
  \breathe
%  \revert breathMarkType
}

global = {
  \key d \major
  \time 3/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup \column {
    "Solenne ma non troppo lento"
    \line {\normal-weight \rhythm {{8}} = \rhythm {{8}} sempre = c.96}
  } 8=96
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s2. s4. s2 s2. s4. s2
  \textMark \markup { \box "1b" } s2. s4. s2.*4
  \textMark \markup { \box "2a" } s2. s4. s2 s2. s4. s2
  \textMark \markup { \box "2b" } s2. s s s s4. s2 s2.
  \textMark \markup { \box "3a" } s4. s1 s4. s2 s2. s2..
  \textMark \markup { \box "3b" } s1 s2.. s1 s s s
  \textMark \markup { \box "4a" } s2. s s s1 s
  \textMark \markup { \box "4b" } s1 s s4. s1
}

solo = \relative {
  R2. R4. R2 R2. R4. R2 |
  R2. R4. R2.*4 |
  R2. R4. R2 R2. R4. R2 | % 2a
  R2. R R R R4. R2 R2. |
  R4. R1 R4. R2 R2. R2.. | % 3a
  R1 R2.. R1 R R R |
  R2. R R R1 R | % 4a
  R1 | r4\fermata a'8^\markup "SOLO SOPRANO and/or TENOR SOLO" 4 8 8 8 | bes4 fis8 | a1\fermata |
}

dynamicsSolo = \relative {
  s2. s4. s2 R2. R4. R2 |
  R2. R4. R2.*4 |
  R2. R4. R2 R2. R4. R2 | % 2a
  R2. R R R R4. R2 R2. |
  R4. R1 R4. R2 R2. R2.. | % 3a
  R1 R2.. R1 R R R |
  R2. R R R1 R | % 4a
  R1 | r4 a'8\p 4 8 8 8 | bes4 fis8 | a1\fermata |
}

wordsSolo = \lyricmode {
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee.
}

wordsSoloMidi = \lyricmode {
  "Bo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee. "
}

dynamicsSop = {
  s2. s4. s2 | s4.\p s\< | s4\! s8\> | s s4.\! |
  s4.\mp s\< | s\> | s2.\< | s\mf | s4 s2\< | s4\f s2\> |
  s2.\! | s4. | s2 | s4.\mf s\< | s4\! s8\> | s8 s\! s4 | % 2a
  s2.\cresc | s | s\f | s | s4. | s2 | s2.\ff |
  s4. | s1 | s4. | s2 | s2.\mp | s4.\< s2\> | % 3a
  s1\! | s2.. | s1 | s2 s\mp\cresc | s1 | s\f\> |
  s4\mp s2\< | s4\mf s2\< | s4\f s2\> | s1\omit\p-\markup{\dynamic p \italic "molto legato"} | s | % 4a
  s2 s\pp | s1 | s4. | s4 s2.\ppp |
}

soprano = \relative {
  \global
  R2. | \time 3/8 R4. | \time 2/4 R2\fermata | \time 3/4 fis'8 4 8 8 8 \time 3/8 | g4 ees8 \time 2/4 | fis2 \tick \time 3/4 |
  a8 4 8 8 8 \time 3/8 | bes4 fis8 \time 3/4 | a2 8 8 | b4 2 \tick |4 4. 16 16 | cis4 2\fermata \breathe |
  R2. \time 3/8 | R4. \time 2/4 | R2\fermata \time 3/4 | <gis cis>8 4 8 <ais cis>8 8 \time 3/8 | <b d>4 b8 \time 2/4 | <ais cis>4 \tick 8 8 \time 3/4 | % 2a
  <b d>4 2 | 4 4. <b e>16 16 | <d fis>4 2\fermata \breathe | R2. \time 3/8 | R4. \time 2/4 | R2\fermata \time 3/4 | <fis a>8 4 8 8 8 \time 3/8 |
  <fis bes>4 fis8 \time 4/4 | <fis a>2 r \time 3/8 | R4. \time 2/4 | R2 \time 3/4 | d8^\markup "SOLO or FULL" 4 8 8 8 \time 7/8 | ees8(f ges f ees4) bes8 \time 4/4 | % 3a
  d2 r \time 7/8 | R2.. \time 4/4 | R1 | r2 d,4.^\markup FULL 8 | ees2 \breathe 4. 8 | g1\fermata \time 3/4 |
  g4-- 2-- | a4-- 2-- | 4-- 2--\fermata \time 4/4 | bes4(a g f) | g2. a4 | % 4a
  a2 \tick <d, fis> | <d fis>1\fermata ~ \time 3/8 | 4.~ \time 4/4 | 8 r8 4 2\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  dai nahm see -- li, vi -- ri, ee na -- dee -- yi,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  dai nahm see -- li, vi -- ri, ee na -- dee -- yi,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee.
  O(r)t -- che nash, O(r)t -- che nash.
  A -- meen, a -- meen, a -- meen, a -- meen,
  A -- meen, a -- meen, a -- meen.
}

wordsSopMidi = \lyricmode {
  "Bo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\ndai " "nahm " see "li, " vi "ri, " "ee " na dee "yi, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\ndai " "nahm " see "li, " vi "ri, " "ee " na dee "yi, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee. "
  "\nO(r)t" "che " "nash, " O(r)t "che " "nash. "
  "\nA" "meen, " a "meen, " a "meen, " a "meen, "
  "\nA" "meen, " a "meen, " a "meen. "
}

dynamicsAlto = {
  s2. s4. s2 | s4.\p s\< | s4\! s8\> | s s4.\! |
  s4.\mp s\< | s\> | s2.\< | s\mf | s4 s2\< | s4\f s2\> |
  s2.\! | s4. | s2 | s4.\mf s\< | s4\! s8\> | s8 s\! s4 | % 2a
  s2.\cresc | s | s\f | s\f | s4. | s2 | s2.\ff |
  s4. | s2 s8 s4.\p | s4. | s2 | s2.\< | s2..\mp | % 3a
  s2 s8 s4.\mp | s2.. | s2 s\p | s2 s\mp\cresc | s1 | s\f\> |
  s4\mp s2\< | s4\mf s2\< | s4\f s2\> | s1\omit\p-\markup{\dynamic p \italic "molto legato"} | s | % 4a
  s2 s\pp | s1 | s4. | s4 s2.\ppp |
}

alto = \relative {
  \global
  R2. \time 3/8 | R4. \time 2/4 | R2\fermata \time 3/4 | d'8 4 8 8 8 \time 3/8 | es4 c8 \time 2/4 | d2 \tick \time 3/4 |
  d8 4 8 8 8 | ees4 8 | d2 8 8 | dis4 2 \tick | e4 4. 16 16 | eis4 2\fermata \breathe |
  R2. | R4. | R2\fermata | eis8 4 8 fis fis | 4 <d fis>8 | <cis fis>4 \tick fis8 8 | % 2a
  fis4 2 | g4 4. <e g>16 16 | <fis a>4 2\fermata \breathe | a8 4 8 8 8 | bes4 fis8 | a2\fermata | <a d>8 4 8 8 8 |
  <bes ees>4 8 | <a d>2 r8 <fis a>8 8 8 | <fis bes>4 fis8 | <fis a>2 | 2.( | <fis bes>2.~8 | % 3a
  <fis a>2) r8 fis8 8 8 | g8(a bes a g4) ees8 | fis2 \breathe d4. 8 | 2 a4. b8 | c2 \breathe 4. 8 | ees1\fermata |
  ees4-- 2-- | f4-- 2-- | 4-- 2--\fermata | g2(d) | ees2. 4 | % 4a
  d2 \tick a | a1\fermata ~ | 4.~ | 8 r8 4 2\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  dai nahm see -- li, vi -- ri, ee na -- dee -- yi,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  dai nahm see -- li, vi -- ri, ee na -- dee -- yi,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee.
  Oo -- cry -- ee -- noo "(k)hra" -- nee.
  \markup\italic Hum
  Oo -- cry -- ee -- noo "(k)hra" -- nee.
  O(r)t -- che nash, O(r)t -- che nash, O(r)t -- che nash.
  A -- meen, a -- meen, a -- meen, a -- meen,
  A -- meen, a -- meen, a -- meen.
}

wordsAltoMidi = \lyricmode {
  "Bo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\ndai " "nahm " see "li, " vi "ri, " "ee " na dee "yi, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\ndai " "nahm " see "li, " vi "ri, " "ee " na dee "yi, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee. "
  "\nOo" cry ee "noo " "(k)hra"- "nee. "
  "\nHum "
  "\nOo" cry ee "noo " "(k)hra"- "nee. "
  "\nO(r)t" "che " "nash, " O(r)t "che " "nash, " O(r)t "che " "nash. "
  "\nA" "meen, " a "meen, " a "meen, " a "meen, "
  "\nA" "meen, " a "meen, " a "meen. "
}

dynamicsTenor = {
  s2. s4. s2 | s4.\p s\< | s4\! s8\> | s s4.\! |
  s4.\mp s\< | s\> | s2.\< | s\mf | s4 s2\< | s4\f s2\> |
  s2.\mf | s4. | s2 | s4.\mf s\< | s4\! s8\> | s8 s\! s4 | % 2a
  s2.\cresc | s | s\f | s | s4. | s2 | s2.\ff |
  s4. | s2 s8 s4.\p | s4. | s2 | s2.\< | s2..\mp | % 3a
  s1\! | s2.. | s2 s\p | s2 s\mp\cresc | s1 | s\f\> |
  s4\mp s2\< | s4\mf s2\< | s4\f s2\> | s1\omit\p-\markup{\dynamic p \italic "molto legato"} | s | % 4a
  s2 s\pp | s1 | s4. | s4 s2.\ppp |
}

tenor = \relative {
  \global
  R2. \time 3/8 | R4. \time 2/4 | R2\fermata \time 3/4 | a8 4 8 8 8 \time 3/8 | c4 g8 \time 2/4 | a2 \tick \time 3/4 |
  fis8 4 8 8 8 | 4 8 | 2 8 8 | 4 8 b4-> 8~ | 4. \tick 8~16 16 16 16 | cis4 2\fermata \breathe |
  c8 4 8 8 8 | d4 bes8 | cis2\fermata | 8 4 8 8 8 | d4 b8 | ais4 \tick cis8 8 | % 2a
  d4 2 | b4 4. cis16 16 | d4 2\fermata | R2. | R4. | R2\fermata | <d fis>8 4 8 8 8 |
  <dis fis>4 8 | <d fis>2 r8 d d d | ees4 8 | d2 | d2. | ees2~4. | % 3a
  d2. \breathe 4 | ees2~4. | d2 \breathe a4. 8 | bes2 a4. g8 | 2 \breathe aes4. 8 | <g bes>1\fermata |
  c4-- 2-- | 4-- 2-- | d4-- 2--\fermata | d4(c bes a) | bes2. c4 | % 4a
  a2 \tick <d, fis> | q1\fermata ~ | 4.~ | 8 r q4 2\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  dai nahm see -- li, see -- li, vi -- ri, ee na -- dee -- yi,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  dai nahm see -- li, vi -- ri, ee na -- dee -- yi,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee.
  Oo -- cry -- ee -- noo "(k)hra" -- nee.
  \markup\italic Hum _ _ _ _ _
  O(r)t -- che nash, O(r)t -- che nash, O(r)t -- che nash.
  A -- meen, a -- meen, a -- meen, a -- meen,
  A -- meen, a -- meen, a -- meen.
}

wordsTenorMidi = \lyricmode {
  "Bo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\ndai " "nahm " see "li, " see "li, " vi "ri, " "ee " na dee "yi, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\ndai " "nahm " see "li, " vi "ri, " "ee " na dee "yi, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee. "
  "\nOo" cry ee "noo " "(k)hra" "nee. "
  "\nHum " "" "" "" "" ""
  "\nO(r)t" "che " "nash, " O(r)t "che " "nash, " O(r)t "che " "nash. "
  "\nA" "meen, " a "meen, " a "meen, " a "meen, "
  "\nA" "meen, " a "meen, " a "meen. "
}

dynamicsBass = {
  s2.\mp | s4. | s2 | s4.\p s\< | s4\! s8\> | s s4.\! |
  s4.\mp s\< | s\> | s2.\< | s\mf | s4 s2\< | s4\f s2\> |
  s2.\! | s4. | s2 | s4.\mf s\< | s4\! s8\> | s8 s\! s4 | % 2a
  s2.\cresc | s | s\f | s | s4. | s2 | s2.\ff |
  s4. | s2 s8 s4.\p | s4. | s2 | s2.\< | s2..\mp | % 3a
  s1 | s2.. | s2 s\p | s2 s\mp\cresc | s1 | s\f\> |
  s4\mp s2\< | s4\mf s2\< | s4\f s2\> | s1\omit\p-\markup{\dynamic p \italic "molto legato"} | s | % 4a
  s2 s\pp | s1 | s4. | s4 s2.\ppp |
}

bass = \relative {
  \global
  fis8^\markup "SOLO or FULL" 4 8 8 8 \time 3/8 |
  g4 ees8 \time 2/4 |
  fis2\fermata \time 3/4 |
  <d fis>8^\markup FULL 4 8 8 8 \time 3/8 |
  <c g'>4 <ees g>8 \time 2/4 |
  <d fis>2 \tick \time 3/4 |
  <a d>8 4 8 8 8 | <bes ees>4 8 | <a d>2 d8 <d fis> | <b b'>4 <b fis'>2 | <e gis>4 4. 16 16 | <cis gis'>4 2\fermata \breathe | % 1b
  R2. | R4. | R2\fermata | <cis gis'>8 4 8 <fis ais>8 8 | <b, b'>4 <d fis>8 | fis4 \tick 8 8 | % 2a
  b4 2 | g4 4. 16 16 | <d a'>4 2\fermata \breathe | R2. | R4. | R2\fermata | <fis a>8 4 8 8 8 |
  <dis ais'>4 8 |
  <<
    {
      <fis a>2 \vo r8 a a a | bes4 8 | a2 | 2. | bes2~4. |
      a2. \breathe 4 |
      c2~4. | a2 \breathe fis4. 8 | g2 fis4.-- g8 | c,2 \breathe ees4. aes,8 | bes1\fermata |
    }
    \new Voice {
      \vt s2 r2 | R4. | R2 | R2. | R2.. |
      r2 r4 fis'_\mp | g2~4. | fis2 r | r d4. g,8 | c2 aes4. 8 | ees1\fermata |
    }
  >>
  \ov c'4-- 2-- | f4-- 2-- | d4-- 2--\fermata | g1 | % 4a
  <<{\vo g2. 4} \new Voice {\vt ees4(d c) c}>>
  <d fis>2 \tick a | <d, a'>1\fermata ~ | 4.~ | 8 r8 4 2\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  dai nahm see -- li, vi -- ri, ee na -- dee -- yi,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee,
  dai nahm see -- li, vi -- ri, ee na -- dee -- yi,
  Bo -- zh(e), Oo -- cry -- ee -- noo "(k)hra" -- nee.
  Oo -- cry -- ee -- noo "(k)hra" -- nee.
  \markup\italic Hum _ _ _ _ _
  O(r)t -- che nash, O(r)t -- che nash, O(r)t -- che nash.
  A -- meen, a -- meen, a -- meen, a -- meen,
  A -- meen, a -- meen, a -- meen.

}

wordsBassMidi = \lyricmode {
  "Bo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\ndai " "nahm " see "li, " vi "ri, " "ee " na dee "yi, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee, "
  "\ndai " "nahm " see "li, " vi "ri, " "ee " na dee "yi, "
  "\nBo" "zh(e), " Oo cry ee "noo " "(k)hra" "nee. "
  "\nOo" cry ee "noo " "(k)hra" "nee. "
  "\nHum " "" "" "" "" ""
  "\nO(r)t" "che " "nash, " O(r)t "che " "nash, " O(r)t "che " "nash. "
  "\nA" "meen, " a "meen, " a "meen, " a "meen, "
  "\nA" "meen, " a "meen, " a "meen. "
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mp | s4. | s2 | s4.\p s\< | s4\! s8\> | s2\! |
  s4.\mp s\< | s8 s4\> | s2.\< | s2.\mf | s4 s2\< | s4\f s2\> |
  s2.\mf | s4. | d2 | s4.\mf s\< | s4\! s8\> | s8 s\! s4 | % 2a
  s2.\cresc | s | s\f | s | s4. | s2 | s2.\ff |
  s4. | s2 s8 s4.\p | s4. | s2 | s4\mp s2\< | s4.\< s8 s4.\> | % 3a
  s2\! s8 s4.\mp | s2.. | s2 s\p | s2 s\mp\cresc | s1 | s1\f\> |
  s4\mp s2\< | s4\mf s2\< | s4\f s2\> | s1\omit\p-\markup{\dynamic p \italic "molto legato"} | s | % 4a
  s2 s\pp | s1 | s4. | s4 s2.\ppp |
}

#(set-global-staff-size 14.3)

\book {
  \paper {
    output-suffix = single
  }
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \soprano \alto
            \new Dynamics \dynamicsPiano
            \new Voice \tenor
            \new Voice \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-noacc
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-noacc
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%            \accidentalStyle Score.modern-cautionary
%          }
%          <<
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            midiInstrument = "acoustic grand piano"
%            \accidentalStyle Score.modern-cautionary
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-solo-noacc
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSolo
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsSop}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsSop}
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsSop}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop-noacc
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = solo} {\teeny \dynamicsSolo}
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsSop}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsSop}
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsSop}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto-noacc
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = solo} {\teeny \dynamicsSolo}
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsSop}
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsSop}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor-noacc
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = solo} {\teeny \dynamicsSolo}
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsSop}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsSop}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass-noacc
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = solo} {\teeny \dynamicsSolo}
            \new Voice \solo
            \addlyrics {\tiny \wordsSolo}
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsSop}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsSop}
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-solo
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
            \addlyrics \wordsSoloMidi
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \clef "bass"
            \new Voice \bass
          >>
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
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \clef "bass"
            \new Voice \bass
          >>
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \clef "bass"
            \new Voice \bass
          >>
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \clef "bass"
            \new Voice \bass
          >>
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"Solo"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
            \new Voice \solo
          >>
                                % Single Soprano Staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsSop
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsSop
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsSop
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
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
