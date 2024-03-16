\version "2.25.13"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Abendlied"
%  subtitle    = "subtitle"
  subsubtitle = "Luke 24:29"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Josef Rheinberger (1839–1901)"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key f \major
  \time 4/4
  \tempo "Andante molto" 4=72
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \circle "1a" }
  \mark \markup { \box "1a" } s1*6
  \mark \markup { \box "1b" } s1*6
  \mark \markup { \box "2a" } s1*6
  \mark \markup { \box "2b" } s1*6
  \mark \markup { \box "3a" } s1*6
  \mark \markup { \box "3b" } s1*6
  \mark \markup { \box "4a" } s1*6
  \mark \markup { \box "4b" } s1*7
}

soprano = \relative c'' {
  \global
  c2. c4
  c1
  r4 c d e
  f2 f
  f2 e
  d2. d4 \break
  c2 c % 1b
  c2 c
  c2 c
  d1
  c1
  r4 g bes d
  d2 a % 2a
  bes2 d
  g1
  f1
  ees1
  d1
  r4 d2 d4 % 2b
  d4 g, a bes
  c1~
  c4 bes c d
  ees1~
  ees1~
  ees2 d % 3a
  c2. c4
  c2 c
  c2. c4
  c1
  r4 c d e
  f2 f % 3b
  f2 e
  r1
  r1
  r1
  r4 d2 d4
  c4 d e f % 4a
  f2(e)
  f4 f e d
  c2. c4
  bes4(a) g2
  f2 r
  r2 r4 f' % 4b
  f4(e d) e
  f2 f
  e2 d
  c2 bes4(a)
  g1
  f1\fermata
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1
  s4 s2.\<
  s1\!
  s1\>
  s1
  s1\!
  s1
  s1
  s1
  s1
  s4 s2.\f
  s1 % 2a
  s1
  s1\ff
  s1
  s4 s2.\dim
  s1
  s4 s2.\f % 2b
  s1
  s1
  s1
  s1
  s1
  s1 % 3a
  s1\dim
  s1
  s1
  s1
  s4 s2.\<
  s2 s\~ % 3b
  s1\>
  s1\!
  s1
  s1
  s4 s2.\f
  s1\< % 4a
  s1
  s4\! s2.\p
  s1
  s1
  s1
  s2. s4\f % 4b
  s1
  s2 s\ff
  s2 s\dim
  s1
  s1\pp
  s1
}

wordsSop = \lyricmode {
  Bleib bei uns, denn es will A- bend wer- den,
  bleib bei uns, denn es will A- bend wer- den.
  denn es will A- bend wer- den,
  A- bend wer- den, und der Tag hat sich ge- nei- __ get,
  sich ge- nei- __ get,
  sich ge- nei- get,
  bleib bei uns, denn es will A- bend wer- den,
  und der Tag hat sich ge- nei- __ get,
  O bleib bei uns,
  o bleib __ bei uns,
  o bleib __ bei uns,
  denn es will A- bend wer- den.
}

wordsSopMidi = \lyricmode {
  "Blei " "bei " "uns, " "denn " "es " "will " A "bend " wer "den, "
  "\nbleib " "bei " "uns, " "denn " "es " "will " A "bend " wer "den. "
  "\ndenn " "es " "will " A "bend " wer "den, "
  "\nA" "bend " wer "den, " "und " "der " "Tag " "hat " "sich " ge nei  "get, "
  "\nsich " ge nei  "get, "
  "\nsich " g nei "get, "
  "\nbleib " "bei " "uns, " "denn " "es " "will " A "bend " wer "den, "
  "\nund " "der " "Tag " "hat " "sich " ge nei  "get, "
  "\nO " "bleib " "bei " "uns, "
  "\no " "bleib "  "bei " "uns, "
  "\no " "bleib "  "bei " "uns, "
  "\ndenn " "es " "will " A "bend " wer "den. "
}

altoOne = \relative c'' {
  \global
  a2. a4
  a1
  r4 c c c
  c2 b
  c4 g c2~
  c2 bes
  bes2 g % 1b
  g2 a
  e2 f
  f1
  f1
  r1
  r4 d fes a % 2a
  a2 g
  g2(ees)
  f2 bes(
  bes4) bes c(bes)
  a1
  r1 % 2b
  r4 g2 g4
  a4 d, e fis
  g1~(
  g4 c2 bes4~
  bes4) a bes c
  bes1~( % 3a
  bes2. a4
  g2.) a8(bes)
  a2. a4
  a1
  r4 c c c
  c2 b % 3b
  c2 c
  r1
  r1
  r1
  r4 bes2 a4
  g2 f % 4a
  g4 g c2~
  c2 bes
  r1
  r4 d c bes
  a2 bes~(
  bes4 a) g(f) % 4b
  bes2. bes4
  a2 a
  c2 bes4(a)
  g2 f
  f2(e)
  f1\fermata
  \bar "|."
}

dynamicsAltoOne = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1
  s4 s2.\<
  s1\!
  s1\>
  s1
  s1\! s1
  s1
  s1
  s1
  s1
  s4 s2.\f
  s1
  s1
  s1
  s4 s2.\dim
  s1
  s4 s2.\f % 2b
  s1
  s1
  s1
  s1
  s1
  s1 % 3a
  s1\dim
  s1
  s1
  s1
  s4 s2.\<
  s2 s\!
  s1\>
  s1\!
  s1
  s1
  s4 s2.\f
  s1 % 4a
  s1\<
  s1\!
  s1
  s4 s2.\mf
  s2 s\f
  s2. s4\f % 4b
  s1
  s2 s\ff
  s2 s\dim
  s1
  s1\pp
  s1
}

wordsAltoOne = \lyricmode {
  Bleib bei uns, denn es will A- bend wer, den,
  bleib __ bei uns, denn es will A- bend wer- den.
  denn es will A- bend wer- den.
  A- bend wer- den,
  und der Tag hat sich ge- nei- __ get
  sich ge- nei- __ get, __
  bleib bei ns, denn es will A- bend wer- den.
  und der Tag hat sich ge- nei __ get.
  O bleib bei uns, bleib, __
  o __ bleib bei uns,
  den es will __ A- bend wer- den.
}

wordsAltoOneMidi = \lyricmode {
  "Bleib " "bei " "uns, " "denn " "es " "will " A "bend " "wer, " "den, "
  "\nbleib "  "bei " "uns, " "denn " "es " "will " A "bend " wer "den. "
  "\ndenn " "es " "will " A "bend " wer "den. "
  "\nA" "bend " wer "den, "
  "\nund " "der " "Tag " "hat " "sich " ge nei  "get "
  "\nsich " ge nei  "get, " 
  "\nbleib " "bei " "ns, " "denn " "es " "will " A "bend " wer "den. "
  "\nund " "der " "Tag " "hat " "sich " ge "nei "  "get. "
  "\nO " "bleib " "bei " "uns, " "bleib, " 
  "\no "  "bleib " "bei " "uns, "
  "\nden " "es " "will "  A "bend " wer "den. "
}

altoTwo = \relative c' {
  \global
  f2. f4
  e1
  r4 e f g
  f2 g
  g2 g
  r1
  r4 g2 f4 % 1b
  e4 c f a
  bes2 a
  bes1
  a1
  r1
  r1 % 2a
  r1
  r4 ees g bes
  bes2 f
  g1
  fis1
  r1 % 2b
  r1
  r1
  r4 g2 g4
  g4 c, d ees
  f1~
  f2 f % 3a
  r4 c c c
  g'2 c,~
  c4 a' g f
  e1
  r4 e f g
  f2 g % 3b
  g2 g
  r1
  r1
  r4 a2 a4
  a4 d, e f
  e2(a % 4a
  g1)
  f2 r
  r4 c' bes a
  g4(f) e2
  f2 r
  r4 c' bes a % 4b
  g2. g4
  f2 f
  a2 f
  e2 c
  c1
  c1\fermata
  \bar "|."
}

dynamicsAltoTwo = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1
  s4 s2.\<
  s1\!
  s1\>
  s1\!
  s4 s2.\f
  s1
  s1
  s1
  s1
  s1
  s1 % 2a
  s1
  s4 s2.\f
  s1
  s4 s2.\dim
  s1
  s1 % 2b
  s1
  s1
  s4 s2.\f
  s1
  s1
  s1 % 3a
  s4 s2.\dim
  s1
  s1
  s1
  s4 s2.\<
  s2 s\! % 3b
  s1\>
  s1\!
  s1
  s4 s2.\f
  s1
  s1 % 4a
  s1
  s1
  s4 s2.\p
  s1
  s1
  s4 s2.\f % 4b
  s1
  s2 s\ff
  s2 s\dim
  s1
  s1\pp
  s1
}

wordsAltoTwo = \lyricmode {
  Bleib bei uns, denn es will A- bend wer- den,
  bleib bei uns, denn es will A- bend wer- den.
  denn es will A- bend wer- den,
  und der Tag hat sich ge- nei- __ get, __
  hat sich ge- nei- get,
  o bleib bei uns,
  denn es will A- bend wer- den.
  und der Tag hat sich ge- nei- __ get.
  O bleib bei uns, __ bei uns,
  o bleib, o bleib bei uns,
  denn es will A- bend wer- den.
}

wordsAltoTwoMidi = \lyricmode {
  "Bleib " "bei " "uns, " "denn " "es " "will " A "bend " wer "den, "
  "\nbleib " "bei " "uns, " "denn " "es " "will " A "bend " wer "den. "
  "\ndenn " "es " "will " A "bend " wer "den, "
  "\nund " "der " "Tag " "hat " "sich " ge nei  "get, " 
  "\nhat " "sich " ge nei "get, "
  "\no " "bleib " "bei " "uns, "
  "\ndenn " "es " "will " A "bend " wer "den. "
  "\nund " "der " "Tag " "hat " "sich " ge nei  "get. "
  "\nO " "bleib " "bei " "uns, "  "bei " "uns, "
  "\no " "bleib, " "o " "bleib " "bei " "uns, "
  "\ndenn " "es " "will " A "bend " wer "den. "
}

tenorOne = \relative c' {
  \global
  r1
  c2. c4
  e2. e4 d4 d d d
  c2 e
  r1
  r1 % 1b
  r1
  r1
  r4 bes d f
  f2 c
  ees2(d4 c8 bes)
  a2 d % 2a
  d2 d
  bes2(ees~
  ees4) ees d2~(
  d4 c8 bes a2)
  d1
  r1 % 2b
  r1
  r1
  r1
  r1
  r4 f2 f4
  f4 bes, c d % 3a
  e2(f~
  4 e8 d e2)
  2 r
  c2. c4
  e2. e4
  d4 d d d % 3b
  c2 e
  r1
  r1
  r4 f2 e4
  d2. d4
  e2 f % 4a
  c1
  f,2 f
  g2 a
  bes2. c4
  f,4 f' e d
  c2 c % 4b
  c1
  a2 d
  c2 d
  e2 f
  c2.(bes4)
  a1\fermata
  \bar "|."
}

dynamicsTenorOne = {
  \override DynamicTextSpanner.style = #'none
  s1
  s1\p
  s1\<
  s4 s2.\!
  s1\>
  s1\!
  s1 % 1b
  s1
  s1
  s4 s2.\f
  s1
  s1
  s1 % 2a
  s1
  s1
  s1
  s4 s2.\dim
  s1
  s1 % 2b
  s1
  s1
  s1
  s1
  s4 s2.\f
  s1
  s4 s2.\dim
  s1
  s1
  s1
  s1\<
  s2 s\!
  s1\>
  s1\!
  s1
  s4 s2.\f
  s1
  s1 % 4a
  s1
  s2 s\p
  s1\<
  s1\!
  s4 s2.\f
  s1 % 4b
  s1
  s2 s\ff
  s2 s\dim
  s1
  s1\pp
  s1
}

wordsTenorOne = \lyricmode {
  Bleib bei uns, denn es will A- bend wer- den,
  denn es will A- bend wer- __ den,
  denn es will A- __ bend wer- __ den,
  und der Tag hat sich ge- bei- __ get,
  bleib bei uns, denn es will A- bend wer- den,
  und der Tag hat sich ge- nei- get,
  O bleib bei uns, bei uns,
  denn es will A- bend wer- den,
  denn es will A- bend wer- den.
}

wordsTenorOneMidi = \lyricmode {
  "Bleib " "bei " "uns, " "denn " "es " "will " A "bend " wer "den, "
  "\ndenn " "es " "will " A "bend " wer  "den, "
  "\ndenn " "es " "will " A  "bend " wer  "den, "
  "\nund " "der " "Tag " "hat " "sich " ge bei  "get, "
  "\nbleib " "bei " "uns, " "denn " "es " "will " A "bend " wer "den, "
  "\nund " "der " "Tag " "hat " "sich " ge nei "get, "
  "\nO " "bleib " "bei " "uns, " "bei " "uns, "
  "\ndenn " "es " "will " A "bend " wer "den, "
  "\ndenn " "es " "will " A "bend " wer "den. "
}

tenorTwo = \relative c' {
  \global
  r1
  a2. a4
  g2. c4
  a4 a b b
  g2 c
  r1
  r1 % 1b
  r4 g'2 f4
  e4 c2 d8(ees)
  d1
  r4 f, a c
  c2 g
  fis1 % 2a
  g2. bes4
  bes1~
  bes2 bes
  g2(a)
  a1
  r1 % 2b
  r1
  r4 d2 d4
  d4 g, a bes
  c1~
  c1
  bes2 bes4.(a8) % 3a
  g2 f4(a)
  bes2.(a8 g)
  a2 r
  r4 c bes a
  g2. c4
  a4 a b b % 3b
  g2 c
  r1
  r4 c2 c4
  c4 f, g a
  bes2 bes
  bes2(a4) f % 4a
  c'2.(bes4)
  a2 r
  r2 f
  g2. g4
  d'2 r
  r4 c, f a % 4b
  c2. c4
  f,2 a
  a2 d,
  g2 a
  c1
  c1\fermata
  \bar "|."
}

dynamicsTenorTwo = {
  \override DynamicTextSpanner.style = #'none
  s1
  s1\p
  s1\<
  s4 s2.\!
  s1\>
  s1\!
  s1
  s4 s2.\f
  s1
  s1
  s4 s2.\f
  s1
  s1 % 2a
  s1
  s1
  s1
  s4 s2.\dim
  s1
  s1 % 2b
  s1
  s4 s2.\f
  s1
  s1
  s1
  s1 % 3a
  s2 s\dim
  s1
  s1
  s1
  s1\<
  s2 s\! % 3b
  s1\>
  s1\!
  s4 s2.\f
  s1
  s1
  s1 % 4a
  s1
  s1
  s2 s\p
  s1
  s1
  s4 s2.\f
  s1
  s2 s\ff
  s2 s\dim
  s1
  s1\pp
  s1
}

wordsTenorTwo = \lyricmode {
  Bleib bei uns, denn es will A- bend wer- den,
  bleib bei uns, denn es __ will,
  denn es will A- bend wer- den,
  will A- __ bend wer- __ den,
  und der Tag hat sich ge- nei- __ get,
  hat sich ge- nei- __ get,
  o bleib bei uns,
  denn es will A- bend wer- den,
  und der Tag hat sich ge- neigt,
  hat sich __ ge- nei- __ get.
  O bleib bei uns,
  o bleib, o bleib bei uns,
  denn es will A- bend wer- den.
}

wordsTenorTwoMidi = \lyricmode {
  "Bleib " "bei " "uns, " "denn " "es " "will " A "bend " wer "den, "
  "\nbleib " "bei " "uns, " "denn " "es "  "will, "
  "\ndenn " "es " "will " A "bend " wer "den, "
  "\nwill " A  "bend " wer  "den, "
  "\nund " "der " "Tag " "hat " "sich " ge nei  "get, "
  "\nhat " "sich " ge nei  "get, "
  "\no " "bleib " "bei " "uns, "
  "\ndenn " "es " "will " A "bend " wer "den, "
  "\nund " "der " "Tag " "hat " "sich " ge "neigt, "
  "\nhat " "sich "  ge nei  "get. "
  "\nO " "bleib " "bei " "uns, "
  "\no " "bleib, " "o " "bleib " "bei " "uns, "
  "\ndenn " "es " "will " A "bend " wer "den. "
}

bass= \relative c {
  \global
  r1
  a2. a4
  c2. c4
  d4 d g g
  c,2 c
  r4 g'2 f4
  e4 c f a % 1b
  bes2 a
  g2 f
  bes,1
  f1
  r1
  r1 % 2a
  r4 g bes d
  ees1(
  bes2.) d4
  c1
  d1
  r1 % 2b
  r1
  r1
  r1
  r4 c'2 c4
  c4 f, g a
  bes2 bes, % 3a
  c2. c4
  c1
  f,2 r
  a2. a4
  c2. c4
  d4 d g g % 3b
  c,2 c
  r4 g'2 g4
  g4 c, d e
  f1
  bes,2 bes
  c2 c % 4a
  c1
  d2 d
  e2 f
  bes,2 c
  d2 g4(f)
  e2 f % 4b
  c2. c4
  d2 d
  a2 bes
  c2 c
  c1
  f,1\fermata
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1
  s1\p
  s1\<
  s4 s2.\!
  s1\<
  s4\! s2.\f
  s1 % 1b
  s1
  s1
  s1
  s1
  s1
  s1 % 2a
  s4 s2.\f
  s1
  s1
  s4 s2.\dim
  s1
  s1 % 2b
  s1
  s1
  s1
  s4 s2.\f
  s1
  s1 % 3a
  s2 s\dim
  s1
  s1
  s1
  s1\<
  s2 s\!
  s1\>
  s1\f
  s1
  s1
  s1
  s1 % 4a
  s1
  s2 s\p
  s1\<
  s1\!
  s2 s\f
  s1 % 4b
  s1
  s2 s\ff
  s2 s\dim
  s1
  s1\pp
  s1
}

wordsBass = \lyricmode {
  Bleib bei uns, denn es will A- bend wer- den,
  bleib bei uns, denn es will A- bend,
  A- bend wer- den,
  den es will A- __ bend wer den.
  und der Tag hat sich ge- nei- get,
  sich ge- nei- get,
  bleib bei uns,
  denn es will A- bend wer- den,
  und der Tag hat sich ge- nei- get,
  hat sich ge- nei- get.
  O bleib, o bleib bei uns,
  o bleib, o bleib bei uns,
  denn es will A- bend wer- den.
}

wordsBassMidi = \lyricmode {
  "Bleib " "bei " "uns, " "denn " "es " "will " A "bend " wer "den, "
  "\nbleib " "bei " "uns, " "denn " "es " "will " A "bend, "
  "\nA" "bend " wer "den, "
  "\nden " "es " "will " A  "bend " "wer " "den. "
  "\nund " "der " "Tag " "hat " "sich " ge nei "get, "
  "\nsich " ge nei "get, "
  "\nbleib " "bei " "uns, "
  "\ndenn " "es " "will " A "bend " wer "den, "
  "\nund " "der " "Tag " "hat " "sich " ge nei "get, "
  "\nhat " "sich " ge nei "get. "
  "\nO " "bleib, " "o " "bleib " "bei " "uns, "
  "\no " "bleib, " "o " "bleib " "bei " "uns, "
  "\ndenn " "es " "will " A "bend " wer "den. "
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \new ChoirStaff <<
                                % Single soprano staff
      \new Staff = soprano \with {
        instrumentName = #"Soprano"
        shortInstrumentName = "S"
      } <<
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
        \new Voice \soprano
        \addlyrics \wordsSop
      >>
                                % Single alto I staff
      \new Staff = "alto1" \with {
        instrumentName = #"Alto I"
        shortInstrumentName = #"A1"
      }
      <<
        \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoOne
        \new Voice \altoOne
        \addlyrics \wordsAltoOne
      >>
                                % Single alto II staff
      \new Staff = "alto2" \with {
        instrumentName = #"Alto II"
        shortInstrumentName = #"A2"
      }
      <<
        \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoTwo
        \new Voice \altoTwo
        \addlyrics \wordsAltoTwo
      >>
                                % Single tenor I staff
      \new Staff = "tenor1"\with {
        instrumentName = #"Tenor I"
        shortInstrumentName = #"T1"
      }
      <<
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorOne
        \new Voice \tenorOne
        \addlyrics \wordsTenorOne
      >>
                                % Single tenor II staff
      \new Staff = "tenor2" \with {
        instrumentName = #"Tenor II"
        shortInstrumentName = #"T2"
      }
      <<
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorTwo
        \new Voice \tenorTwo
        \addlyrics \wordsTenorTwo
      >>
                                % Single bass staff
      \new Staff = bass \with {
        instrumentName = #"Bass"
        shortInstrumentName = #"B"
      }
      <<
        \clef "bass"
        \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
        \new Voice \bass
        \addlyrics \wordsBass
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
    \new ChoirStaff <<
                                % Single soprano staff
      \new Staff = soprano \with {
        instrumentName = #"Soprano"
        shortInstrumentName = #"S"
      }
      <<
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
        \new Voice \soprano
        \addlyrics \wordsSop
      >>
                                % Single alto I staff
      \new Staff = "alto1" \with {
        instrumentName = #"Alto I"
        shortInstrumentName = #"A1"
      }
      <<
        \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoOne
        \new Voice \altoOne
        \addlyrics \wordsAltoOne
      >>
                                % Single alto II staff
      \new Staff = "alto2" \with {
        instrumentName = #"Alto II"
        shortInstrumentName = #"A2"
      }
      <<
        \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoTwo
        \new Voice = "altoTwo" \altoTwo
        \new Lyrics \lyricsto "altoTwo" \wordsAltoTwo
      >>
                                % Single tenor I staff
      \new Staff = "tenor1" \with {
        instrumentName = #"Tenor I"
        shortInstrumentName = #"T1"
      }
      <<
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorOne
        \new Voice \tenorOne
        \addlyrics \wordsTenorOne
      >>
                                % Single tenor II staff
      \new Staff = "tenor2" \with {
        instrumentName = #"Tenor II"
      }
      <<
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorTwo
        \new Voice \tenorTwo
        \addlyrics \wordsTenorTwo
      >>
                                % Single bass staff
      \new Staff = bass \with {
        instrumentName = #"Bass"
        shortInstrumentName = #"B"
      }
      <<
        \clef "bass"
        \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
        \new Voice \bass
        \addlyrics \wordsBass
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
    \new ChoirStaff <<
                                % Single soprano staff
      \new Staff = soprano \with {
        instrumentName = #"Soprano"
        shortInstrumentName = #"S"
      }
      <<
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
        \new Voice \soprano
        \addlyrics \wordsSop
      >>
                                % Single alto I staff
      \new Staff = "alto1" \with {
        instrumentName = #"Alto I"
        shortInstrumentName = #"A1"
      }
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = "alto1"} {\teeny \dynamicsAltoOne}
        \new Voice \altoOne
        \addlyrics {\tiny \wordsAltoOne}
      >>
                                % Single alto II staff
      \new Staff = "alto2" \with {
        instrumentName = #"Alto II"
        shortInstrumentName = #"A2"
      }
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = "alto2"} {\teeny \dynamicsAltoTwo}
        \new Voice = "altoTwo" \altoTwo
        \new Lyrics \lyricsto "altoTwo" {\tiny \wordsAltoTwo}
      >>
                                % Single tenor I staff
      \new Staff = "tenor1" \with {
        instrumentName = #"Tenor I"
        shortInstrumentName = #"T1"
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor1"} {\teeny \dynamicsTenorOne}
        \new Voice \tenorOne
        \addlyrics {\tiny \wordsTenorOne}
      >>
                                % Single tenor II staff
      \new Staff = "tenor2" \with {
        instrumentName = #"Tenor II"
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor2"} {\teeny \dynamicsTenorTwo}
        \new Voice \tenorTwo
        \addlyrics {\tiny \wordsTenorTwo}
      >>
                                % Single bass staff
      \new Staff = bass \with {
        instrumentName = #"Bass"
        shortInstrumentName = #"B"
      }
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
        \new Voice \bass
        \addlyrics {\tiny \wordsBass}
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
    output-suffix = "singlepage-alto1"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
                                % Single soprano staff
      \new Staff = soprano \with {
        instrumentName = #"Soprano"
        shortInstrumentName = #"S"
      }
      <<
        \magnifyStaff #4/7
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
        \new Voice \soprano
        \addlyrics {\tiny \wordsSop}
      >>
                                % Single alto I staff
      \new Staff = "alto1" \with {
        instrumentName = #"Alto I"
        shortInstrumentName = #"A1"
      }
      <<
        \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoOne
        \new Voice \altoOne
        \addlyrics \wordsAltoOne
      >>
                                % Single alto II staff
      \new Staff = "alto2" \with {
        instrumentName = #"Alto II"
        shortInstrumentName = #"A2"
      }
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = "alto2"} {\teeny \dynamicsAltoTwo}
        \new Voice = "altoTwo" \altoTwo
        \new Lyrics \lyricsto "altoTwo" {\tiny \wordsAltoTwo}
      >>
                                % Single tenor I staff
      \new Staff = "tenor1" \with {
        instrumentName = #"Tenor I"
        shortInstrumentName = #"T1"
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor1"} {\teeny \dynamicsTenorOne}
        \new Voice \tenorOne
        \addlyrics {\tiny \wordsTenorOne}
      >>
                                % Single tenor II staff
      \new Staff = "tenor2" \with {
        instrumentName = #"Tenor II"
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor2"} {\teeny \dynamicsTenorTwo}
        \new Voice \tenorTwo
        \addlyrics {\tiny \wordsTenorTwo}
      >>
                                % Single bass staff
      \new Staff = bass \with {
        instrumentName = #"Bass"
        shortInstrumentName = #"B"
      }
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
        \new Voice \bass
        \addlyrics {\tiny \wordsBass}
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
    output-suffix = "singlepage-alto2"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
                                % Single soprano staff
      \new Staff = soprano \with {
        instrumentName = #"Soprano"
        shortInstrumentName = #"S"
      }
      <<
        \magnifyStaff #4/7
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
        \new Voice \soprano
        \addlyrics {\tiny \wordsSop}
      >>
                                % Single alto I staff
      \new Staff = "alto1" \with {
        instrumentName = #"Alto I"
        shortInstrumentName = #"A1"
      }
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = "alto1"} {\teeny \dynamicsAltoOne}
        \new Voice \altoOne
        \addlyrics {\tiny \wordsAltoOne}
      >>
                                % Single alto II staff
      \new Staff = "alto2" \with {
        instrumentName = #"Alto II"
        shortInstrumentName = #"A2"
      }
      <<
        \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoTwo
        \new Voice = "altoTwo" \altoTwo
        \new Lyrics \lyricsto "altoTwo" \wordsAltoTwo
      >>
                                % Single tenor I staff
      \new Staff = "tenor1" \with {
        instrumentName = #"Tenor I"
        shortInstrumentName = #"T1"
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor1"} {\teeny \dynamicsTenorOne}
        \new Voice \tenorOne
        \addlyrics {\tiny \wordsTenorOne}
      >>
                                % Single tenor II staff
      \new Staff = "tenor2" \with {
        instrumentName = #"Tenor II"
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor2"} {\teeny \dynamicsTenorTwo}
        \new Voice \tenorTwo
        \addlyrics {\tiny \wordsTenorTwo}
      >>
                                % Single bass staff
      \new Staff = bass \with {
        instrumentName = #"Bass"
        shortInstrumentName = #"B"
      }
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
        \new Voice \bass
        \addlyrics {\tiny \wordsBass}
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
    output-suffix = "singlepage-tenor1"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
                                % Single soprano staff
      \new Staff = soprano \with {
        instrumentName = #"Soprano"
        shortInstrumentName = #"S"
      }
      <<
        \magnifyStaff #4/7
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
        \new Voice \soprano
        \addlyrics {\tiny \wordsSop}
      >>
                                % Single alto I staff
      \new Staff = "alto1" \with {
        instrumentName = #"Alto I"
        shortInstrumentName = #"A1"
      }
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = "alto1"} {\teeny \dynamicsAltoOne}
        \new Voice \altoOne
        \addlyrics {\tiny \wordsAltoOne}
      >>
                                % Single alto II staff
      \new Staff = "alto2" \with {
        instrumentName = #"Alto II"
        shortInstrumentName = #"A2"
      }
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = "alto2"} {\teeny \dynamicsAltoTwo}
        \new Voice = "altoTwo" \altoTwo
        \new Lyrics \lyricsto "altoTwo" {\tiny \wordsAltoTwo}
      >>
                                % Single tenor I staff
      \new Staff = "tenor1" \with {
        instrumentName = #"Tenor I"
        shortInstrumentName = #"T1"
      }
      <<
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorOne
        \new Voice \tenorOne
        \addlyrics \wordsTenorOne
      >>
                                % Single tenor II staff
      \new Staff = "tenor2" \with {
        instrumentName = #"Tenor II"
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor2"} {\teeny \dynamicsTenorTwo}
        \new Voice \tenorTwo
        \addlyrics {\tiny \wordsTenorTwo}
      >>
                                % Single bass staff
      \new Staff = bass \with {
        instrumentName = #"Bass"
        shortInstrumentName = #"B"
      }
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
        \new Voice \bass
        \addlyrics {\tiny \wordsBass}
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
    output-suffix = "singlepage-tenor2"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
                                % Single soprano staff
      \new Staff = soprano \with {
        instrumentName = #"Soprano"
        shortInstrumentName = #"S"
      }
      <<
        \magnifyStaff #4/7
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
        \new Voice \soprano
        \addlyrics {\tiny \wordsSop}
      >>
                                % Single alto I staff
      \new Staff = "alto1" \with {
        instrumentName = #"Alto I"
        shortInstrumentName = #"A1"
      }
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = "alto1"} {\teeny \dynamicsAltoOne}
        \new Voice \altoOne
        \addlyrics {\tiny \wordsAltoOne}
      >>
                                % Single alto II staff
      \new Staff = "alto2" \with {
        instrumentName = #"Alto II"
        shortInstrumentName = #"A2"
      }
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = "alto2"} {\teeny \dynamicsAltoTwo}
        \new Voice = "altoTwo" \altoTwo
        \new Lyrics \lyricsto "altoTwo" {\tiny \wordsAltoTwo}
      >>
                                % Single tenor I staff
      \new Staff = "tenor1" \with {
        instrumentName = #"Tenor I"
        shortInstrumentName = #"T1"
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor1"} {\teeny \dynamicsTenorOne}
        \new Voice \tenorOne
        \addlyrics {\tiny \wordsTenorOne}
      >>
                                % Single tenor II staff
      \new Staff = "tenor2" \with {
        instrumentName = #"Tenor II"
      }
      <<
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorTwo
        \new Voice \tenorTwo
        \addlyrics \wordsTenorTwo
      >>
                                % Single bass staff
      \new Staff = bass \with {
        instrumentName = #"Bass"
        shortInstrumentName = #"B"
      }
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
        \new Voice \bass
        \addlyrics {\tiny \wordsBass}
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
    \new ChoirStaff <<
                                % Single soprano staff
      \new Staff = soprano \with {
        instrumentName = #"Soprano"
        shortInstrumentName = #"S"
      }
      <<
        \magnifyStaff #4/7
        \new Voice \RehearsalTrack
        \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
        \new Voice \soprano
        \addlyrics {\tiny \wordsSop}
      >>
                                % Single alto I staff
      \new Staff = "alto1" \with {
        instrumentName = #"Alto I"
        shortInstrumentName = #"A1"
      }
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = "alto1"} {\teeny \dynamicsAltoOne}
        \new Voice \altoOne
        \addlyrics {\tiny \wordsAltoOne}
      >>
                                % Single alto II staff
      \new Staff = "alto2" \with {
        instrumentName = #"Alto II"
        shortInstrumentName = #"A2"
      }
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = "alto2"} {\teeny \dynamicsAltoTwo}
        \new Voice = "altoTwo" \altoTwo
        \new Lyrics \lyricsto "altoTwo" {\tiny \wordsAltoTwo}
      >>
                                % Single tenor I staff
      \new Staff = "tenor1" \with {
        instrumentName = #"Tenor I"
        shortInstrumentName = #"T1"
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor1"} {\teeny \dynamicsTenorOne}
        \new Voice \tenorOne
        \addlyrics {\tiny \wordsTenorOne}
      >>
                                % Single tenor II staff
      \new Staff = "tenor2" \with {
        instrumentName = #"Tenor II"
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = "tenor2"} {\teeny \dynamicsTenorTwo}
        \new Voice \tenorTwo
        \addlyrics {\tiny \wordsTenorTwo}
      >>
                                % Single bass staff
      \new Staff = bass \with {
        instrumentName = #"Bass"
        shortInstrumentName = #"B"
      }
      <<
        \clef "bass"
        \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
        \new Voice \bass
        \addlyrics \wordsBass
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
    \unfoldRepeats
                                % \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S1"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \RehearsalTrack
          \new Dynamics \dynamicsSop
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSopMidi
        >>
                                % Single alto I staff
        \new Staff = "alto1" \with {
          instrumentName = #"Alto I"
          shortInstrumentName = #"A1"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAltoOne
          \new Voice \altoOne
        >>
                                % Single alto II staff
        \new Staff = "alto2" \with {
          instrumentName = #"Alto II"
          shortInstrumentName = #"A2"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAltoTwo
          \new Voice \altoTwo
        >>
                                % Single tenor I staff
        \new Staff = "tenor1" \with {
          instrumentName = #"Tenor I"
          shortInstrumentName = #"T1"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenorOne
          \new Voice \tenorOne
        >>
                                % Single tenor II staff
        \new Staff = "tenor2" \with {
          instrumentName = #"Tenor II"
          shortInstrumentName = #"T1"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenorTwo
          \new Voice \tenorTwo
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Dynamics \dynamicsBass
          \new Voice \bass
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
    output-suffix = "midi-alto1"
  }
  \score {
    \unfoldRepeats
                                % \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S1"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \RehearsalTrack
          \new Dynamics \dynamicsSop
          \new Voice = "soprano" \soprano
        >>
                                % Single alto I staff
        \new Staff = "alto1" \with {
          instrumentName = #"Alto I"
          shortInstrumentName = #"A1"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAltoOne
          \new Voice \altoOne
          \addlyrics \wordsAltoOneMidi
        >>
                                % Single alto II staff
        \new Staff = "alto2" \with {
          instrumentName = #"Alto II"
          shortInstrumentName = #"A2"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAltoTwo
          \new Voice \altoTwo
        >>
                                % Single tenor I staff
        \new Staff = "tenor1" \with {
          instrumentName = #"Tenor I"
          shortInstrumentName = #"T1"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenorOne
          \new Voice \tenorOne
        >>
                                % Single tenor II staff
        \new Staff = "tenor2" \with {
          instrumentName = #"Tenor II"
          shortInstrumentName = #"T1"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenorTwo
          \new Voice \tenorTwo
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Dynamics \dynamicsBass
          \new Voice \bass
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
    output-suffix = "midi-alto2"
  }
  \score {
    \unfoldRepeats
                                % \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S1"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \RehearsalTrack
          \new Dynamics \dynamicsSop
          \new Voice = "soprano" \soprano
        >>
                                % Single alto I staff
        \new Staff = "alto1" \with {
          instrumentName = #"Alto I"
          shortInstrumentName = #"A1"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAltoOne
          \new Voice \altoOne
        >>
                                % Single alto II staff
        \new Staff = "alto2" \with {
          instrumentName = #"Alto II"
          shortInstrumentName = #"A2"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAltoTwo
          \new Voice \altoTwo
          \addlyrics \wordsAltoTwoMidi
        >>
                                % Single tenor I staff
        \new Staff = "tenor1" \with {
          instrumentName = #"Tenor I"
          shortInstrumentName = #"T1"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenorOne
          \new Voice \tenorOne
        >>
                                % Single tenor II staff
        \new Staff = "tenor2" \with {
          instrumentName = #"Tenor II"
          shortInstrumentName = #"T1"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenorTwo
          \new Voice \tenorTwo
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Dynamics \dynamicsBass
          \new Voice \bass
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
    output-suffix = "midi-tenor1"
  }
  \score {
    \unfoldRepeats
                                % \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S1"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \RehearsalTrack
          \new Dynamics \dynamicsSop
          \new Voice = "soprano" \soprano
        >>
                                % Single alto I staff
        \new Staff = "alto1" \with {
          instrumentName = #"Alto I"
          shortInstrumentName = #"A1"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAltoOne
          \new Voice \altoOne
        >>
                                % Single alto II staff
        \new Staff = "alto2" \with {
          instrumentName = #"Alto II"
          shortInstrumentName = #"A2"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAltoTwo
          \new Voice \altoTwo
        >>
                                % Single tenor I staff
        \new Staff = "tenor1" \with {
          instrumentName = #"Tenor I"
          shortInstrumentName = #"T1"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenorOne
          \new Voice \tenorOne
          \addlyrics \wordsTenorOneMidi
        >>
                                % Single tenor II staff
        \new Staff = "tenor2" \with {
          instrumentName = #"Tenor II"
          shortInstrumentName = #"T1"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenorTwo
          \new Voice \tenorTwo
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Dynamics \dynamicsBass
          \new Voice \bass
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
    output-suffix = "midi-tenor2"
  }
  \score {
    \unfoldRepeats
                                % \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S1"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \RehearsalTrack
          \new Dynamics \dynamicsSop
          \new Voice = "soprano" \soprano
        >>
                                % Single alto I staff
        \new Staff = "alto1" \with {
          instrumentName = #"Alto I"
          shortInstrumentName = #"A1"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAltoOne
          \new Voice \altoOne
        >>
                                % Single alto II staff
        \new Staff = "alto2" \with {
          instrumentName = #"Alto II"
          shortInstrumentName = #"A2"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAltoTwo
          \new Voice \altoTwo
        >>
                                % Single tenor I staff
        \new Staff = "tenor1" \with {
          instrumentName = #"Tenor I"
          shortInstrumentName = #"T1"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenorOne
          \new Voice \tenorOne
        >>
                                % Single tenor II staff
        \new Staff = "tenor2" \with {
          instrumentName = #"Tenor II"
          shortInstrumentName = #"T1"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenorTwo
          \new Voice \tenorTwo
          \addlyrics \wordsTenorTwoMidi
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Dynamics \dynamicsBass
          \new Voice \bass
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
    \unfoldRepeats
                                % \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S1"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \RehearsalTrack
          \new Dynamics \dynamicsSop
          \new Voice = "soprano" \soprano
        >>
                                % Single alto I staff
        \new Staff = "alto1" \with {
          instrumentName = #"Alto I"
          shortInstrumentName = #"A1"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAltoOne
          \new Voice \altoOne
        >>
                                % Single alto II staff
        \new Staff = "alto2" \with {
          instrumentName = #"Alto II"
          shortInstrumentName = #"A2"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAltoTwo
          \new Voice \altoTwo
        >>
                                % Single tenor I staff
        \new Staff = "tenor1" \with {
          instrumentName = #"Tenor I"
          shortInstrumentName = #"T1"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenorOne
          \new Voice \tenorOne
        >>
                                % Single tenor II staff
        \new Staff = "tenor2" \with {
          instrumentName = #"Tenor II"
          shortInstrumentName = #"T1"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenorTwo
          \new Voice \tenorTwo
          \addlyrics \wordsTenorTwoMidi
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Dynamics \dynamicsBass
          \new Voice \bass
          \addlyrics \wordsBassMidi
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
