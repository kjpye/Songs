\version "2.25.18"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He, watching over Israel!."
  subtitle    = "Elijah No. 29"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Felix Mendelssohn"
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

global = {
  \key d \major
  \time 4/4
}

TempoTrack = {
  \tempo "Allegro moderato" 4=126
  s1
  \set Score.tempoHideNote = ##t
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \textMark \markup { \box 5 }
  \textMark \markup\box "141a" s1*3
  \textMark \markup\box "141b" s1*4
  \textMark \markup\box "141c" s1*4
  \textMark \markup\box "142a" s1*4
  \textMark \markup\box "142b" s1*4
  \textMark \markup\box "142c" s1*4
  \textMark \markup\box "143a" s1*4
  \textMark \markup\box "143b" s1*4
  \textMark \markup\box "143c" s1*4
  \textMark \markup\box "144a" s1*4
  \textMark \markup\box "144b" s1*4
  \textMark \markup\box "144c" s1*4
  \textMark \markup\box "145a" s1*4
  \textMark \markup\box "145b" s1*4
  \textMark \markup\box "145c" s1*4
  \textMark \markup\box "146a" s1*4
  \textMark \markup\box "146b" s1*4
  \textMark \markup\box "146c" s1*5
  \textMark \markup\box "147a" s1*7
}

soprano = \relative {
  \global
  R1
  a'4^\p 8 8 b4. 8
  b4. 8 a2
  fis'4 d cis e % 141b
  d1
  R1
  r4 d cis b
  a2. g4 % 141c
  fis2 r
  R1
  R1
  R1 % 142a
  R1
  a4 8^\cresc 8 b4. 8
  b4. 8 a2
  fis'4^\p d cis e % 142b
  d2 a~
  a4 fis e g
  fis2 r
  R1 % 142c
  R1
  R1
  r2 fis4 gis
  a4^\< b8 cis d2^\sf % 143a
  d4(cis2) bis4
  cis4. 8 4 fis,
  b2 b^\cresc ~
  b4 d cis b % 143b
  b4(ais) b^\f cis
  d4 e8 fis g2^\sf
  g4(fis2) eis4
  fis4 b, e2~ % 143c
  e4 e d cis
  d4 r r2
  r2 e,4^\cresc fis
  gis4 a8 b cis2^\sf % 144a
  cis4(fis,2) eis4
  fis4 8 8 fis'2^\sf
  fis4(eis2) 4
  fis4^\f cis b a % 144b
  gis2 cis^\dim ~
  cis4 4 4 bis
  cis2 r
  a4^\p 8 8 b4. 8 % 144c
  b4. 8 a2
  fis'4 d cis e
  d2 fis,4 g^\<
  << % 145a
    {a4\! b8 cis d2 | d4(cis2) b4 }
    \new Voice {s2.. s8^\> | s4 s2.\! }
  >>
  a4. 8 4 g
  fis2 d'4^\f 8 8
  d4. 8 cis4. 8 % 145b
  cis2 b^\dim~
  b4 b a a
  a2(gis^\dim)
  g2 fis~ % 145c
  fis4^\p b a g
  fis2 g4(e)
  d2 d'4^\f 8 8
  d4. 8 c4. 8 % 146a
  c2 b^\dim ~
  b4 b a a
  a2(gis)
  g2^\dim fis~ % 146b
  fis4 b^\p a g
  fis2(g4) e
  d2 r
  a'1^\pp % 146c
  fis2 r4 d^\p a'2. g4
  fis1~
  fis4^\< (e) fis\! g
  a1^\cresc ~ % 147a
  a4^\dim (g a b
  cis2) d4^\pp (a)
  fis2 e
  d1
  R1
  R1\fermata
  \bar "|."
}

wordsSop = \lyricmode {
  He, watch -- ing o -- ver Is -- ra -- el,
  slum -- bers not, nor sleeps.
  He slum -- bers not, nor sleeps.

                                % 142
  He, watch -- ing o -- ver Is -- ra -- el,
  slum -- bers not, nor sleeps,
  slum -- bers not, nor sleeps. % 142b+++

  Shouldst thou, walk -- ing in grief, lan -- guish;
  He will quick -- en thee.
  He __ will quick -- en thee. __ % 143b+
  Shouldst thou, walk -- ing in grief, lan -- guish;
  He will,
  He __ will quick -- en thee. __ % 143c++

  Shouldst thou, walk -- ing in grief, lan -- guish;
  walk -- ing in grief, lan -- guish;
  He will quick -- en thee.
  He __ will quick -- en thee, __ % 144b end
  
  He, watch -- ing o -- ver Is -- ra -- el,
  slum -- bers not, nor sleeps,
  Shouldst thou, walk -- ing in grief, lan -- guish;
  He will quick -- en thee. % 145a+++
  He, watch -- ing o -- ver Is -- ra -- el,
  slum -- bers not, nor sleeps,
  He slum -- bers not,
  He slum -- bers not, % 145c+++
  He watch -- ing o -- ver Is -- ra -- el,
  slum -- bers not, nor sleeps,
  He slum -- bers not,
  He slum -- bers not, % 146b end

  sleeps not,
  He watch -- ing Is -- ra -- el
  slum -- bers not, nor sleeps.
}

wordsSopMidi = \lyricmode {
  "He, " watch "ing " o "ver " Is ra "el, "
  "\nslum" "bers " "not, " "nor " "sleeps. "
  "\nHe " slum "bers " "not, " "nor " "sleeps. "

                                % 142
  "\nHe, " watch "ing " o "ver " Is ra "el, "
  "\nslum" "bers " "not, " "nor " "sleeps, "
  "\nslum" "bers " "not, " "nor " "sleeps. " % 142b+++

  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish; "
  "\nHe " "will " quick "en " "thee. "
  "\nHe "  "will " quick "en " "thee. "  % 143b+
  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish; "
  "\nHe " "will, "
  "\nHe "  "will " quick "en " "thee. "  % 143c++

  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish; "
  "\nwalk" "ing " "in " "grief, " lan "guish; "
  "\nHe " "will " quick "en " "thee. "
  "\nHe "  "will " quick "en " "thee, "  % 144b end
  
  "\nHe, " watch "ing " o "ver " Is ra "el, "
  "\nslum" "bers " "not, " "nor " "sleeps, "
  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish; "
  "\nHe " "will " quick "en " "thee. " % 145a+++
  "\nHe, " watch "ing " o "ver " Is ra "el, "
  "\nslum" "bers " "not, " "nor " "sleeps, "
  "\nHe " slum "bers " "not, "
  "\nHe " slum "bers " "not, " % 145c+++
  "\nHe " watch "ing " o "ver " Is ra "el, "
  "\nslum" "bers " "not, " "nor " "sleeps, "
  "\nHe " slum "bers " "not, "
  "\nHe " slum "bers " "not, " % 146b end

  "\nsleeps " "not, "
  "\nHe " watch "ing " Is ra "el "
  "\nslum" "bers " "not, " "nor " "sleeps. "
}

alto = \relative {
  \global
  R1*8
  r2 fis'4^\p 8 8
  e4. 8 fis4. 8
  e2 r4 a
  gis4. 8^\cresc a4. 8 % 142a
  gis1
  e4 8^\cresc 8 fis4. 8
  e2. fis8(g)
  fis2^\p a~ % 142b
  a4 fis e g
  fis4 d cis e
  d2 r
  R1 % 142c
  r2 cis4 dis^\<
  eis4\! fis8 gis a2^\sf
  a4(gis fis) eis
  fis4. 8 4 b, % 143a
  eis4(fis2) 4
  gis4 cis, fis2~
  fis4 fis(eis) fis
  gis2(gis)~ % 143b
  gis4 fis fis2^\f
  fis4. d'8 cis4 b8 b
  ais2 b~
  b2~ ( b8 d cis b) % 143c
  a2 d,4 e
  fis4 g8 a b2^\sf
  b4(e,2) dis4
  e4 fis8(g) cis,4. 8 % 144a
  cis2 r
  r4 d'8^\f cis b4 8 8
  b2 cis4 d
  cis4^\f fis, gis fis % 144b
  eis2 r
  fis4^\dim dis eis a
  gis2 r
  r4 a2^\p 8 8 % 144c
  g4. 8 4. 8
  fis2 e4 g
  fis2 d4 e^\<
  << {fis2\! 4 4 | g2 g} % 145a
     \new Voice {s2.. s8^\> | s4 s2.\! }
   >>
  fis4 8 8 e4 cis
  d4(a' g) fis^\f
  e2. fis8(g) % 145b
  fis2 g^\dim ~
  g4 g fis fis
  fis2 e^\dim ~
  e2 d~ % 145c
  d4^\p 4 4 4
  d2 cis
  d4 4^\f g fis
  b2(a4.) 8 % 146a
  a2 g^\dim ~
  g4 g fis fis
  fis2 e~
  e2^\dim d~ % 146b
  d4 d^\p d d
  d2 cis
  d2 r
  a1^\pp % 146c
  a2 r
  r2 cis^\p
  d2. 4
  d^\<(e) fis\! g
  fis1^\cresc ~ ( % 147a
  fis4^\dim g2.~
  g2) fis^\pp
  d2 cis
  d1
  R1
  R1\fermata
%  \bar "|."
}

wordsAlto = \lyricmode {
  He, watch -- ing
  slum -- bers not, nor sleeps.
  He slum -- bers not, nor sleeps.
  He, watch -- ing o -- ver Is -- ra -- el,
  slum -- bers not,
  He slum -- bers not, nor sleeps.

  Shouldst thou, walk -- ing in grief, lan -- guish, % end 142
  He will quick -- en thee, __
  will quick -- en thee, __
  He will quick -- en thee;
  Shouldst thou, walk -- ing in grief, lan -- guish,
  Shouldst thou, walk -- ing in grief, lan -- guish, % end 143
  He will quick -- en thee,
  Shouldst thou, walk -- ing in grief, lan -- guish,
  He will quick -- en thee,
  He will quick -- en thee,

  He, watch -- ing o -- ver Is -- ra -- el, % 144c
  slum -- bers not,
  Shouldst thou, walk -- ing in grief, lan -- guish,
  He will quick -- en thee,
  He slum -- bers not, slum -- bers not, nor sleeps;
  He __ slum -- bers not, he slum -- bers not,
  He, watch -- ing Is -- ra -- el,
  slum -- bers not, nor sleeps.
  He slum -- bers not,
  He slum -- bers not,
  sleeps not, % 146c
  He, watch -- ing Is -- ra -- el,
  slum -- bers not, nor sleeps.
}

wordsAltoMidi = \lyricmode {
  "He, " watch "ing "
  "\nslum" "bers " "not, " "nor " "sleeps. "
  "\nHe " slum "bers " "not, " "nor " "sleeps. "
  "\nHe, " watch "ing " o "ver " Is ra "el, "
  "\nslum" "bers " "not, "
  "\nHe " slum "bers " "not, " "nor " "sleeps. "

  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish, " % end 142
  "\nHe " "will " quick "en " "thee, " 
  "\nwill " quick "en " "thee, " 
  "\nHe " "will " quick "en " "thee; "
  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish, "
  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish, " % end 143
  "\nHe " "will " quick "en " "thee, "
  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish, "
  "\nHe " "will " quick "en " "thee, "
  "\nHe " "will " quick "en " "thee, "

  "\nHe, " watch "ing " o "ver " Is ra "el, " % 144c
  "\nslum" "bers " "not, "
  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish, "
  "\nHe " "will " quick "en " "thee, "
  "\nHe " slum "bers " "not, " slum "bers " "not, " "nor " "sleeps; "
  "\nHe "  slum "bers " "not, " "he " slum "bers " "not, "
  "\nHe, " watch "ing " Is ra "el, "
  "\nslum" "bers " "not, " "nor " "sleeps. "
  "\nHe " slum "bers " "not, "
  "\nHe " slum "bers " "not, "
  "\nsleeps " "not, " % 146c
  "\nHe, " watch "ing " Is ra "el, "
  "\nslum" "bers " "not, " "nor " "sleeps. "
}

tenor = \relative {
  \global
  R1*5
  a4^\p 8 8 b4. 8 % 141b++
  b4. 8 a2
  fis'4 d cis e % 141c
  d2 r
  R1
  r4 d d^\cresc d
  d1~ % 142a
  d4(fis e) d
  cis4. 8 d2~
  d4 d cis4. 8
  d2^\p e4(g % 142b
  fis4) d cis e
  d4 a a a
  a2 fis4 gis^\<
  a4 b8\! cis d2^\sf % 142c
  d4(cis2) bis4
  c4. 8 4 fis,
  b2 a4 gis
  fis4 gis8 a b2^\sf~ % 143a
  b4(a2) 4
  gis4(a8 b) cis4. 8
  d4 4 2~
  d4 gis, cis2~ % 143b
  cis4 4^\f(b) ais
  b4 cis8 d e2^\sf~
  e2(d4) c
  b2.(cis8 d) % 143c
  cis2 d4 r
  a4 b8(c) fis,4 gis8(a)
  a4(gis2) a4
  b4(cis8 d gis,4) a8(b) % 144a
  b4(a) a^\f b
  cis4 d8 e fis2^\sf gis2. 4
  cis,4^\f 4 4 4 % 144b
  cis2 r
  a4^\dim a gis fis
  eis2 fis4^\p gis
  a4 b8 cis d2 % 144c
  d4(cis2) b4
  a4 4 4. 8
  a2 r
  a4 8 8 b4. 8 % 145a
  b4. 8 a2
  fis'4 d cis e
  d4(cis b) a^\f
  gis2 a % 145b
  a2(g4) d'^\dim
  cis2. d8(e)
  cis2(b^\dim)
  a2 4 b8(c) % 145c
  b2.^\p 4
  a4(d,) e(g)
  fis2 r4 fis'^\f
  e2. fis8(g) % 146a
  fis2(d4^\dim) d
  c2. fis8(e)
  dis2(b)
  a2^\dim 4 b8(c) % 146b
  a2.^\p 4
  a4(fis) e(g)
  fis2 r
  a1^\pp % 146c
  a2 r
  r2 a^\p
  a1
  a1^\< ~
  a4^\cresc a(b cis % 147a
  d1^\dim
  e2^\pp) d
  a2 g
  fis1
  R1
  R1\fermata
  \bar "|."
}

wordsTenor = \lyricmode {
  He, watch -- ing o -- ver Is -- ra -- el,
  slum -- bers not, nor sleeps.
  He slum -- bers not, nor sleeps. % 142a++
  He slum -- bers not, nor sleeps.
  slum -- bers not,
  He slum -- bers not, nor sleeps. % 142b+++

  Shouldst thou, walk -- ing in grief, lan -- guish,
  He will quick -- en thee;
  Shouldst thou, walk -- ing in grief, in grief, lan -- guish,
  He will quick -- en thee; __ % 143b+
  Shouldst thou, walk -- ing in grief, in grief, __ lan -- guish,
  He will quick -- en thee; __
  will quick -- en thee; __ % 144a++
  Shouldst thou, walk -- ing in grief, lan -- guish,
  He will quick -- en thee;
  He will quick -- en thee; % 144b+++
  Shouldst thou, walk -- ing in grief, lan -- guish,
  He will quick -- en thee; % 144c end

  He, watch -- ing o -- ver Is -- ra -- el,
  slum -- bers not, nor sleeps.
  He slum -- bers not,
  He slum -- bers not, __
  He slum -- bers not,
  He slum -- bers not,
  He slum -- bers not, __
  He slum -- bers not, __
  He slum -- bers not,
  He slum -- bers not,
  sleeps not,
  He watch -- ing slum -- bers not, nor sleeps.
}

wordsTenorMidi = \lyricmode {
  "He, " watch "ing " o "ver " Is ra "el, "
  "\nslum" "bers " "not, " "nor " "sleeps. "
  "\nHe " slum "bers " "not, " "nor " "sleeps. " % 142a++
  "\nHe " slum "bers " "not, " "nor " "sleeps. "
  "\nslum" "bers " "not, "
  "\nHe " slum "bers " "not, " "nor " "sleeps. " % 142b+++

  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish, "
  "\nHe " "will " quick "en " "thee; "
  "\nShouldst " "thou, " walk "ing " "in " "grief, " "in " "grief, " lan "guish, "
  "\nHe " "will " quick "en " "thee; "  % 143b+
  "\nShouldst " "thou, " walk "ing " "in " "grief, " "in " "grief, "  lan "guish, "
  "\nHe " "will " quick "en " "thee; " 
  "\nwill " quick "en " "thee; "  % 144a++
  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish, "
  "\nHe " "will " quick "en " "thee; "
  "\nHe " "will " quick "en " "thee; " % 144b+++
  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish, "
  "\nHe " "will " quick "en " "thee; " % 144c end

  "\nHe, " watch "ing " o "ver " Is ra "el, "
  "\nslum" "bers " "not, " "nor " "sleeps. "
  "\nHe " slum "bers " "not, "
  "\nHe " slum "bers " "not, " 
  "\nHe " slum "bers " "not, "
  "\nHe " slum "bers " "not, "
  "\nHe " slum "bers " "not, " 
  "\nHe " slum "bers " "not, " 
  "\nHe " slum "bers " "not, "
  "\nHe " slum "bers " "not, "
  "\nsleeps " "not, "
  "\nHe " watch "ing " slum "bers " "not, " "nor " "sleeps. "
}

bass = \relative {
  \global
  R1*10
  r2 fis4^\p 8 8 % 141c+++
  e4.^\cresc 8 fis4. 8 % 142a
  e2. 4
  a2 a
  g2. fis8(e)
  d2^\p a~ % 142b
  a2 a
  a2 a
  d2 r
  R1*4 % 142c
  R1 % 143a
  r2 cis4 dis
  eis4 fis8 gis a2^\sf
  a4(gis2) fis4
  eis2(e) ~ % 143b
  e4 e d cis
  b2. r4
  r2 b4^\f cis
  d4 e8 fis g2^\sf % 143c
  g4(fis2) e4
  d4. 8 dis4 dis
  e2(gis4 fis)
  e4. 8 eis4 eis % 144a
  fis2 4^\f gis
  a4 b8 cis d2^\sf
  d4(cis2) b4
  a4^\f a eis fis % 144b
  cis1~
  cis4^\dim 4 4 4
  cis2 r
  R1 % 144c
  r2 a4^\p 8 8
  a2 a
  d4(fis a) g
  fis2 b,( % 145a
  e2) a,
  a2. 4
  a1^\cresc ~
  a2. 4 % 145b
  d2(g4^\dim) fis
  e2 fis
  b,2 e4^\dim(d)
  cis2(d4) d % 145c
  g,2.^\p 4
  a2 a
  d4 fis^\f b a
  gis2 a % 146a
  d,2(g4) fis
  e2 fis
  b,2 e4^\dim(d)
  cis2(d4) d % 146b
  g,2.^\p 4
  a2 a
  d2 r
  a1^\pp % 146c
  d2 r
  r2 a^\p
  d4(e fis) g
  a2.^\< g4\!
  fis4^\cresc(e d cis) % 147a
  b1^\dim
  a1^\pp
  a2 a
  d1
  R1
  R1\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  He, watch -- ing slum -- bers not, nor sleeps.
  He slum -- bers not, nor sleeps. % 142b
  slum -- bers not, nor sleeps % 142b end

  Shouldst thou, walk -- ing in grief, lan -- guish;
  He __ will quick -- en thee;
  Shouldst thou, walk -- ing in grief, lan -- guish;
  He will quick -- en thee; __
  He will quick -- en thee;
  Shouldst thou, walk -- ing in grief, lan -- guish;
  He will quick -- en
  He __ will quick -- en thee

  He, watch -- ing o -- ver Is -- ra -- el,
  slum -- bers not, nor sleeps, __
  He slum -- bers not, nor sleeps,
  He slum -- bers not,
  He slum -- bers not,
  He slum -- bers not,
  He slum -- bers not, nor sleeps,
  He slum -- bers not,
  He slum -- bers not,
  sleeps not,

  He, watch -- ing Is -- ra -- el,
  slum -- bers not, nor sleeps.
}

wordsBassMidi = \lyricmode {
  "He, " watch "ing " slum "bers " "not, " "nor " "sleeps. "
  "\nHe " slum "bers " "not, " "nor " "sleeps. " % 142b
  "\nslum" "bers " "not, " "nor " "sleeps " % 142b end

  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish; "
  "\nHe "  "will " quick "en " "thee; "
  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish; "
  "\nHe " "will " quick "en " "thee; " 
  "\nHe " "will " quick "en " "thee; "
  "\nShouldst " "thou, " walk "ing " "in " "grief, " lan "guish; "
  "\nHe " "will " quick "en "
  "\nHe "  "will " quick "en " "thee "

  "\nHe, " watch "ing " o "ver " Is ra "el, "
  "\nslum" "bers " "not, " "nor " "sleeps, " 
  "\nHe " slum "bers " "not, " "nor " "sleeps, "
  "\nHe " slum "bers " "not, "
  "\nHe " slum "bers " "not, "
  "\nHe " slum "bers " "not, "
  "\nHe " slum "bers " "not, " "nor " "sleeps, "
  "\nHe " slum "bers " "not, "
  "\nHe " slum "bers " "not, "
  "\nsleeps " "not, "

  "\nHe, " watch "ing " Is ra "el, "
  "\nslum" "bers " "not, " "nor " "sleeps. "
}

ace  = \absolute { \tuplet 3/2 {a8_(cis' e')} \tuplet 3/2 {e'_(cis' a)} }
acf  = \absolute { \tuplet 3/2 {a8_(cis' fis')} \tuplet 3/2 {fis'_(cis' a)} }
ada  = \absolute { \tuplet 3/2 {a8_(d' a')} \tuplet 3/2 {a'_(d' a)} }
adf  = \absolute { \tuplet 3/2 {a8_(d' fis')} \tuplet 3/2 {fis'_(d' a)} }
adfp = \absolute { \tuplet 3/2 {a8\p_(d' fis')} \tuplet 3/2 {fis'_(d' a)} }
bde  = \absolute { \tuplet 3/2 {b8_(d' e')} \tuplet 3/2 {e'_(d' b)} }
bdf  = \absolute { \tuplet 3/2 {b8_(d' fis')} \tuplet 3/2 {fis'_(d' b)} }
bdgs = \absolute { \tuplet 3/2 {b8_(d' gis')} \tuplet 3/2 {gis'_(d' b)} }
beg  = \absolute { \tuplet 3/2 {b8_(e' g')} \tuplet 3/2 {g'_(e' b)} }
cea  = \absolute { \tuplet 3/2 {cis'8_(e' a')} \tuplet 3/2 {a'_(e' cis')} }
ceg  = \absolute { \tuplet 3/2 {cis'8_(e' g')} \tuplet 3/2 {g'_(e' cis')} }
deb  = \absolute { \tuplet 3/2 {d'8_(e' b')} \tuplet 3/2 {b'_(e' d')} }
dfb  = \absolute { \tuplet 3/2 {d'8_(fis' b')} \tuplet 3/2 {b'_(fis' d')} }
gsdes= \absolute { \tuplet 3/2 {gis8_(d' eis')} \tuplet 3/2 {eis'_(d' gis)} }


pianoRHoneA = {
  \global
  \ov
  \tuplet 3/2 {a8\omit\p^\markup\bold "Allegro moderato." _(d' fis')} \tuplet 3/2 {fis'_(d' a)} \adf
  \adf \bdf
  \beg \ceg
  \adf \ace % 141b
  \adf \adf
  \adf \bdf
  \beg \ceg
  \adf \ace % 141c
  \adf \tuplet 3/2 {b8\omit\<_(d' fis'_)} \tuplet 3/2 {fis'_(d' b)}
  \tuplet 3/2 {b8\omit\>_(d' e')} \tuplet 3/2 {e'_(d' b)} \tuplet 3/2 {b\!_(d' fis')} \tuplet 3/2 {fis'_(d' b)}
  \bde \ada
  b8*2/3\omit\cresc d' gis' gis' d' b \ada % 142a
  \bdgs \tuplet 3/2 {b8_(e' gis')} \tuplet 3/2 {<d' gis'>_(e' b)}
  cis'8*2/3\omit\cresc e' a' a' e' cis' \dfb
  \deb \tuplet 3/2 {cis'8\dim_(e' a')} \tuplet 3/2 {a'(a g')}
  <a fis'>8*2/3\omit\p d' fis' fis' d' a <a fis'> g' a' a' g' a % 142b
  <a d'>8*2/3\omit\dim fis' a' a' fis' a <a cis'> e' a' a' e' a
  \adf <a cis' e'>8 r <a cis' e' g'> r
  \adf \tuplet 3/2 {<fis a>_( d' fis')} \tuplet 3/2 {f'_(d' gis)}
  \acf \gsdes % 142c
  \tuplet 3/2 {gis_(d' eis')} \tuplet 3/2 {fis8_(cis' a)} \tuplet 3/2 {a_(cis' fis')} \tuplet 3/2 {<bis fis'>_( dis' a)}
  \tuplet 3/2 {gis8_( cis' eis')} \tuplet 3/2 {cis' _(gis cis')} \tuplet 3/2 {cis'_(fis' a)} \tuplet 3/2 {fis'_(cis' fis')}
  \tuplet 3/2 {d'_(fis' a')} \tuplet 3/2 {gis'_(fis' d')} \tuplet 3/2 {r8_(cis' fis')} \tuplet 3/2 {eis'_(cis' b)}
  \tuplet 3/2 {a8\cresc_(cis' fis')} \tuplet 3/2 {fis'_(cis' fis')} \tuplet 3/2 {<d' fis'>_(a' d'')} \tuplet 3/2 {<gis' d''>_(fis' d')} % 143a
  d''4(\tuplet 3/2 {cis''8)_(a' fis')} \tuplet 3/2 {cis'^\omit\<_(fis' a')} \tuplet 3/2 {bis'\!_(fis' a')}
  cis'8*2/3 gis' cis'' cis'' gis' eis' <cis' fis'> a' cis'' cis'' a' fis'
  d' fis' b' b' fis' d' d' eis' b' b'\omit\cresc fis' d'
  <d' gis'>8*2/3 b' d'' d'' b' gis' cis' g' cis'' b' g' cis' % 143b
  cis'8*2/3 g' b' ais' fis' ais' b'4 cis''
  d''4 e''8*2/3 b' fis'' cis'' e'' g'' <b' g''> e'' b'
  ais'8*2/3 cis'' g'' fis'' cis'' a' <d' b'>\omit\f fis' b'' <b' eis''> cis'' b'
%  \bar "|."
}

pianoRHoneB = \relative {
  <fis' b>8*2/3 d' fis fis d b e, b' e e b e, % 143c
  <e a>8*2/3 cis' e e cis a d, a' d cis a g
  fis8*2/3 a d d a fis~ <fis b>2\omit\sf
  b4(e,) e8*2/3 b' e <a, dis> b a
  gis8*2/3 b e e b g~<g cis>2\omit\sf % 144a
  cis4(fis,) cis8*2/3 fis a b, eis cis
  fis8*2/3 a cis fis, d' cis <gis b>\omit\sf d' fis fis d b
  gis8*2/3 b fis' eis b gis gis b e <d e> b gis
  <cis fis>4\omit\f <cis, fis cis'> <cis gis' b> <cis fis a> % 144b
  <cis eis>8*2/3\omit\dim gis' cis cis gis eis <cis eis> gis' cis cis gis eis
  <cis fis>4\omit\dim <cis fis cis'> <eis cis'> <dis fis bis>
  <eis gis cis>2\omit\p r
  cis8*2/3 fis a a fis cis d fis a a fis d % 144c
  <b d>8*2/3 e g g e g <a, cis> e' g g e g
  d8*2/3 fis a a fis d e g a a g e
  d8*2/3 fis a a fis d a d fis g e a,
  a8*2/3 d fis fis d a b d fis fis d b % 145a
  b8*2/3 e g g e g a, e' g g e g
  a,8*2/3 d fis fis d a a cis e e cis a
  a8*2/3\omit\cresc fis' a a fis d d b' d d b fis
  e8*2/3 b' d d b e, e a cis <fis, cis'> a g % 145b
  fis8*2/3 a cis cis a fis d\omit\dim g b b g d
  e8*2/3 g b b g e cis fis a <dis, a> fis e
  dis8*2/3 fis a a\omit\dim fis dis b e gis gis e b
  a8*2/3\omit\p e' g g e a, a d fis <b, fis'> d c % 145c
  b4 r r2
  <a' fis'>4\omit\p\omit\> (<fis d'>\! <e g cis> <g b cis e>)
  d'8*2/3\omit\f fis, a a fis d d b' d d b fis
  e8*2/3 b' d d b e, e a c <fis, c'> a g % 146a
  fis8*2/3 a c c a fis d\omit\dim g b b g d
  c8*2/3 g' b b g c, c fis a a fis e
  dis8*2/3 fis a a\omit\dim fis b, b e gis gis e b
  a8*2/3\omit\p e' g g e a, a d fis <b, fis'> d c % 146b
  b4 r r2
  <a' fis'>4\omit\p\omit\> <fis d'> <e g cis> <g a cis e>\!
  d'8*2/3 fis, a a fis d d\omit\< g b b g d
  d8*2/3\omit\> fis a a fis d\! cis e g g e cis % 146c
  d8*2/3 fis a a fis d d\omit\< g b b g d
  d8*2/3\omit\> fis a a fis d\! cis e g g\omit\pp e cis
  <fis, a d>4 \ov r r2
  R1*5
  a8*2/3\omit\pp d fis fis d a a d fis fis d a
  a8*2/3 d fis fis d a a d fis fis d a
  s1
}

pianoRHtwo = \relative {
  \global
  \vt
  s1*21
  s4 b s2 % 142c++
  s1
  s1 % 143a
  \tuplet 3/2 {eis8^(gis eis)} s4 s\omit\< a\!
  s1*3
  s2 b8*2/3 d, fis ais fis e % 143b+
  d8*2/3 fis b s2.
  s1*13
  s2 b,2 % 144c
  s1
  a2 s4 cis
  s1*7
  cis2 s % 145a++
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1*7
  s2 s\< % 141c+
  s2\> s\!
  s1
  s1\cresc % 142a
  s1
  s1\cresc
  s2 s\dim
  s1\p % 142b
  s1\dim
  d1
  d2 d\cresc
  s1*4
  s1\cresc % 143a
  s2 s4\< s\!
  s1
  s2. s4\cresc
  s1 % 143b
  s1
  s1
  s2 s\f
  s1 % 143c
  s1
  s2 s\sf
  s1
  s2 s\sf % 144a
  s1
  s2 s\sf
  s1
  s1\f s1\dim
  s1\dim
  s1\p
  s1*7 s1\cresc % 145+++
  s1 % 145b
  s2 s\dim
  s1
  s4 s2.\dim
  s1\p % 145c
  s1
  s4\p\> s2.\!
  s1\f
  s1 % 146a
  s2 s\dim
  s1
  s4 s2.\dim
  s1\p % 146b
  s1
  s2.\p\> s4\!
  s2 s\<
  s2\> s\! % 146c
  s2 s\<
  s2\> s4\! s\pp
  s1*6
  s1\pp % 147a++++
  s1
  s1
}

pianoLHone = \relative {
  \global
  \vo
  fis2\omit\p fis
  fis2 <fis a>
  <e g>2 <e g a>
  fis2 <e g> % 141b
  fis2 fis
  fis2 <fis a>
  <e g>2 <e g a>
  fis2 <e g> % 141c
  fis2 <e g>\omit\<
  <d e>2\omit\> <d fis>\!
  <d e>2 fis
  e2\omit\cresc fis % 142a
  e1
  a,2\omit\cresc a
  g2 4\omit\dim(fis8 e)
  <d d'>4\omit\p r <a a'> r % 142b
  q4\omit\dim r q r
  q4 r q r
  fis''2 s4\omit\cresc r
  s1 % 142c
  s1
  cis4(dis8 eis) <fis a>4(<gis b>8 a)
  b2 a4(gis)
  <fis, fis'>4\omit\cresc(gis'8 a) b2 % 143a
  b4(a) <cis,, cis'>4\omit\< <dis dis'>\!
  <eis eis'>4 <fis fis'>8 <gis gis'> <a a'>2
  q4(<gis gis'>2) <fis fis'>4\omit\cresc
  <eis eis'>2 <e e'>~ % 143b
  q4 q <d d'> <cis cis'>
  <b b'>4 cis''8(d) e2~
  e2 <b,, b'>4\omit\f <cis cis'>
  <d d'>4 <e e'>8 <fis fis'> <g g'>2 % 143c
  q4(<fis fis'>2) <e e'>4
  <d d'>2 \tuplet 3/2 {fis'8\omit\sf a b} \tuplet 3/2 {b a fis}
  \tuplet 3/2 {e8 a b} \tuplet 3/2 {b gis e} <gis, gis'>4 <fis fis'>
  <e e'>2 \tuplet 3/2 {gis'8\omit\sf b cis} \tuplet 3/2 {cis b gis} % 144a
  \tuplet 3/2 {fis8 b cis} \tuplet 3/2 {cis a fis} a4 s
  <a, a'>4 <b b'>8 <cis cis'> <d d'>2\omit\sf
  q4(<cis cis'>2) <b b'>4
  <a a'>4\omit\f q <eis eis'> <fis fis'> % 144b
  <cis cis'>2\omit\dim b''
  <cis, a'>4\omit\dim q <cis gis' b> <cis fis a>
  <cis eis gis>2\omit\p fis4(gis
  a2) s % 144c
  s1
  s2 g4(e)
  d4(fis) a(g)
  fis2 <fis a> % 145a
  g2 <e g>
  fis2 s
  s2 b4(a)
  s1*15 % 145b
  s4\omit\pp \tuplet 3/2 {d8 a fis} \tuplet 3/2 {g\omit\< b d} \tuplet 3/2 {d b g} % 146b+++
  \tuplet 3/2 {fis\omit\> a d} \tuplet 3/2 {d a fis\!} \tuplet 3/2 {e g a} \tuplet 3/2 {a g e} % 146c
  \tuplet 3/2 {fis8 a d} \tuplet 3/2 {d a fis} \tuplet 3/2 {g\omit\< b d} \tuplet 3/2 {d b g}
  \tuplet 3/2 {fis8\omit\> a d} \tuplet 3/2{d a fis} \tuplet 3/2 {e\! g a} \tuplet 3/2 {a\omit\pp g e}
  s1*6
  fis2\omit\pp fis % 147a++++
  fis2 fis
  <d fis a>1\fermata
  
  \bar "|."
}

pianoLHtwo = \relative {
  \global \vt
  <d, d'>4\omit\p r q r
  q4 r q r
  d'4 r d r
  d4 r a r % 141b
  <d, d'>4 r q r
  q4 r q r
  d'4 r d r
  d4 r a r % 141c
  <d, d'>4 r b'\omit\< r
  gis4\omit\> r a\! r
  gis4 r fis r
  e4\omit\cresc r fis r % 142a
  e4 r r2
  a,4\omit\cresc r a r
  g4 s s2\omit\dim
  s1\omit\p % 142b
  s1\omit\dim
  s1
  <d' d'>4 r q\omit\cresc r
  <cis cis'>4 r <b b'>\omit\f r % 142c
  <fis fis'>4 r q r
  cis'4 r cis' r
  cis4 r cis r
  s1*10
  s2 dis2\omit\sf % 143c++
  s1
  s2 eis\omit\sf % 144a
  fis4 s <fis, fis'> <gis gis'>
  s1
  s1
  s1 % 144b
  s1
  s1
  s2 r
  <fis fis'>4\omit\p r <b, b'> r % 144c
  <e e'>4 r <a, a'> r
  q4 r a'2
  d,4 r r2
  <d d'>4 r <b b'> r % 145a
  <e e'>4 r a r
  a4 r <a, a'> r
  q2\omit\cresc ~ a'
  <a gis'>2~ <a a'>4 <a, a'> % 145b
  <d d'>4 q(<g g'>\omit\dim <fis fis'>)
  <e e'>4 r <fis fis'> r
  r4 <b, b'>\omit\dim(<e e'> <d d'>)
  <cis cis'>4\omit\p r <d d'> r % 145c
  <g, g'>4 r r2
  <a a'>1\omit\p\omit\>
  <d d'>2\omit\f q
  q2 q~ % 146a
  q4 q\omit\dim(<g g'> <fis fis'>)
  <e e'>2 <fis fis'>
  r4 <b, b'>(<e e'> <d d'>)
  <cis cis'>4\omit\p r <d d'> r % 146b
  <g, g'>4 r r2
  <a a'>1\omit\p\omit\>
  <d d'>4\! s d'2\omit\<
  d2\omit\> d\! % 146c
  d2 d\omit\<
  d2\omit\> d\!
  d4\omit\pp r r2
  R1
  R1 % 147a
  R1
  R1
  R1
  <d, d'>4\omit\pp r q r
  q4 r q r
  d1\fermata
  
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff \with {
          instrumentName = Piano
        }
        <<
          \new Staff = rh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine {\pianoRHoneA \pianoRHoneB} \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff= tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff \with {
          instrumentName = Piano
        }
        <<
          \new Staff = rh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine {\pianoRHoneA \pianoRHoneB} \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff= tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics{\tiny  \wordsBass}
          >>
        >>
        \new PianoStaff \with {
          instrumentName = Piano
        }
        <<
          \new Staff = rh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine {\pianoRHoneA \pianoRHoneB} \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff= tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics{\tiny  \wordsBass}
          >>
        >>
        \new PianoStaff \with {
          instrumentName = Piano
        }
        <<
          \new Staff = rh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine {\pianoRHoneA \pianoRHoneB} \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff= tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics{\tiny  \wordsBass}
          >>
        >>
        \new PianoStaff \with {
          instrumentName = Piano
        }
        <<
          \new Staff = rh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine {\pianoRHoneA \pianoRHoneB} \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff= tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff \with {
          instrumentName = Piano
        }
        <<
          \new Staff = rh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine {\pianoRHoneA \pianoRHoneB} \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          } <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          } <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Staff = piano
          <<
            \new Dynamics \dynamicsPiano
            \new Voice \pianoRHoneA
            \new Voice \pianoRHoneB
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          } <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          } <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Staff = piano
          <<
            \new Dynamics \dynamicsPiano
            \new Voice \pianoRHoneA
            \new Voice \pianoRHoneB
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          } <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          } <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Staff = piano
          <<
            \new Dynamics \dynamicsPiano
            \new Voice \pianoRHoneA
            \new Voice \pianoRHoneB
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
          } <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
          } <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Staff = piano
          <<
            \new Dynamics \dynamicsPiano
            \new Voice \pianoRHoneA
            \new Voice \pianoRHoneB
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
