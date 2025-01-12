\version "2.25.21"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "You Don’t Have to Say You Love Me"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "P. Donaggio"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup {\italic "Original Italian Lyrics by" "V. Pallavicini"}
  meter       = \markup {\italic "English Lyrics by" "Vicki Wickham & Simon Napier-Bell"}
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
}

TempoTrack = {
  \global
  \tempo Moderately 4=100
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "54a" s1*3
  \textMark \markup\box "54b" s1*2
  \textMark \markup\box "54c" s1*2
  \textMark \markup\box "54d" s1*3
  \textMark \markup\box "54e" s1*3
  \textMark \markup\box "55a" s1*2
  \textMark \markup\box "55b" s1*2
  \textMark \markup\box "55c" s1*2
  \textMark \markup\box "55d" s1*2
  \textMark \markup\box "55e" s1*2
  \textMark \markup\box "56a" s1*2
  \textMark \markup\box "56b" s1*2
  \textMark \markup\box "56c" s1*3
  \textMark \markup\box "56d" s1*3
  \textMark \markup\box "56e" s1*2
  \textMark \markup\box "57a" s1*2
  \textMark \markup\box "57b" s1*3
  \textMark \markup\box "57c" s1*2
  \textMark \markup\box "57d" s1*3
  \textMark \markup\box "57e" s1*3
}

ChordTrack = \chordmode {
  s1*3 | bes2.:m bes4:m7 ees1:7 | aes des | bes:m g2.:m7^5 g4:7^9 c1:7 | f:m bes2.:m bes4:m7 ees1:7 |
  aes1 des | bes:m g:m7^5 | c:7 f2 d:m | g:m c:7 f d:m | g:m7 c:7 d a:m |
  d1:m g:m7 | c s4 r2. | bes2.:m bes4:m7 ees1:7 aes | des bes:m c2:7 c4:7-9 c:7+5 | f1:m f2 d:m |
  g2:m c:7 f d:m | g:m7 c:9 f1 d | d2 e:m a:m d:7 | g e:m a:m7 d:7 g d:m6 | g d:m6 g1 s |
}

melody = \relative {
  \global
  R1*2 | r4 f'8 g aes4. c8 \section |
  des4~\tuplet 3/2 {4 c8} bes2~ | 4 ees,8 f g4 bes |
  c4. bes8 aes2~ | 8 des, des ees f4 aes |
  bes4. aes8 g4. aes8 | bes4. aes8 g4. aes8 | g1 |
  r4 f8 g aes4 c | des4~\tuplet 3/2 {4 c8} bes2~ | 4 ees,8 f g4 bes |
  c4. bes8 aes2~ | 4 des,8 ees f4 aes | % 55a
  bes4. aes8 g4. aes8 | bes4. aes8 g4 bes |
  c2. r4 \section \key f \major | \tuplet 3/2 {f,4 g8} \tuplet 3/2 {a4 f8} \tuplet 3/2 {bes4 a8} \tuplet 3/2 {g4 f8} |
  \tuplet 3/2 {g4 a8} \tuplet 3/2 {g4 a8} c,2 | \tuplet 3/2 {a'4 bes8} \tuplet 3/2 {c4 a8} \tuplet 3/2 {d4 c8} \tuplet 3/2 {bes4 a8}
  bes4 \tuplet 3/2 {c8 bes c} bes4~\tuplet 3/2 {4 a8} | \tuplet 3/2 {c4 a8~} \tuplet 3/2 {4 8} \tuplet 3/2 {c4 a8~} \tuplet 3/2 {4 8} |
  d8 a4 g8 \tuplet 3/2 {4 f8~} \tuplet 3/2 {8 8 8} | f g4 a8 \tuplet 3/2 {bes4 8~} \tuplet 3/2 {bes c d} | % 56a
  c1~ | 8 r f, f \tuplet 3/2 {f4 g8} \tuplet 3/2 {aes4 c8} \key aes \major \section |
  des4~\tuplet 3/2 {4 c8} bes2~ | 4 ees,8 f g4 bes | c4. bes8 aes2~ |
  aes4 des,8 ees f4 aes | bes4. aes8 g4. aes8 | c4. aes8 g4. aes8 |
  f1 \section \key f \major \tuplet 3/2 {f4 g8} \tuplet 3/2 {a4 f8} \tuplet 3/2 {bes4 a8} \tuplet 3/2 {g4 f8} |
  \tuplet 3/2 {g4 a8} \tuplet 3/2 {g4 a8} c,2 | \tuplet 3/2 {a'4 bes8} \tuplet 3/2 {c4 bes8} \tuplet 3/2 {d4 c8}\tuplet 3/2 {bes4 a8} | % 57a
  bes4 \tuplet 3/2 {c8 bes c} bes4~\tuplet 3/2 {4 a8} | c4 2~\tuplet 3/2 {4 a8} | d4 2. \section \key g \major |
  \tuplet 3/2 {g,4 a8} \tuplet 3/2 {b4 g8} \tuplet 3/2 {c4 b8} \tuplet 3/2 {a4 g8} | \tuplet 3/2 {a4 b8} \tuplet 3/2 {a4 b8} d,2 |
  \tuplet 3/2 {b'4 c8} \tuplet 3/2 {d4 b8} \tuplet 3/2 {e4 d8} \tuplet 3/2 {c4 b8} | c4 \tuplet 3/2 {d8 c d} c4~\tuplet 3/2 {4 b8} d4 2~\tuplet 3/2 {4 b8} |
  d4 2~\tuplet 3/2 {4 b8} | d4 2.~ | 2~8 r r4 |
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  When I said I need -- ed you __
  You said you would al -- ways stay __
  It was -- n’t me who changed but you
  and now you’ve gone a -- way.
  Don’t you see that now __ you’ve gone __
  And I’m left here on my own __
  That I have to fol -- low you and
  beg you to come home.
  You don’t have to say you love me
  just be close at hand,
  You don’t have to stay for -- ev -- er
  I will un -- der -- stand, __
  Be -- lieve me, __ be -- lieve me __
  I can’t help but love you __
  But be -- lieve me I’ll nev -- er __ tie you down. __

  Left a -- lone with just a mem -- o -- ry __
  Life seems dead and quite un -- real, __
  All that’s left is lone -- li -- ness
  there’s no -- thing left to feel.

  You don’t have to say you love me
  just be close at hand,
  You don’t have to stay for -- ev -- er
  I will un  -- der -- stand,
  Be -- lieve me, __ be -- lieve me.

  You don’t have to say you love me
  just be close at hand,
  You don’t have to stay for -- ev -- er
  I will un  -- der -- stand,
  Be -- lieve me, __ be -- lieve me, __
  be -- lieve me. __
}

midiWords = \lyricmode {
  "When " "I " "said " "I " need "ed " "you " 
  "\nYou " "said " "you " "would " al "ways " "stay " 
  "\nIt " was "n’t " "me " "who " "changed " "but " "you "
  "\nand " "now " "you’ve " "gone " a "way. "
  "\nDon’t " "you " "see " "that " "now "  "you’ve " "gone " 
  "\nAnd " "I’m " "left " "here " "on " "my " "own " 
  "\nThat " "I " "have " "to " fol, "low " "you " "and "
  "\nbeg " "you " "to " "come " "home. "
  "\nYou " "don’t " "have " "to " "say " "you " "love " "me "
  "\njust " "be " "close " "at " "hand, "
  "\nYou " "don’t " "have " "to " "stay " for ev "er "
  "\nI " "will " un der "stand, " 
  "\nBe" "lieve " "me, "  be "lieve " "me " 
  "\nI " "can’t " "help " "but " "love " "you " 
  "\nBut " be "lieve " "me " "I’ll " nev "er "  "tie " "you " "down. " 

  "\nLeft " a "lone " "with " "just " "a " mem o "ry " 
  "\nLife " "seems " "dead " "and " "quite " un "real, " 
  "\nAll " "that’s " "left " "is " lone li "ness "
  "\nthere’s " no "thing " "left " "to " "feel. "

  "\nYou " "don’t " "have " "to " "say " "you " "love " "me "
  "\njust " "be " "close " "at " "hand, "
  "\nYou " "don’t " "have " "to " "stay " for ev "er "
  "\nI " "will " un der "stand, "
  "\nBe" "lieve " "me, "  be "lieve " "me. "

  "\nYou " "don’t " "have " "to " "say " "you " "love " "me "
  "\njust " "be " "close " "at " "hand, "
  "\nYou " "don’t " "have " "to " "stay " for ev "er "
  "\nI " "will " un der "stand, "
  "\nBe" "lieve " "me, "  be "lieve " "me, " 
  "\nbe" "lieve " "me. " 
}

pianoRHone = \relative {
  \global
  bes'4.(aes8 g4.) aes8^( \vo | bes4. aes8 g4. aes8 | \ov <aes, c f>8) r f'(g aes4. c8 \section |
  \vo des4~\tuplet 3/2 {4 c8} bes2~ | 4) ees,8(f g4 bes |
  c4. bes8 aes2~ | 8) des,(des ees f4 aes |
  \ov bes4. aes8 g4.) aes8( | bes4. aes8 g4. aes8 | \vo g1) |
  r4 f8(g aes4 c | des4~\tuplet 3/2 {4 c8} bes2~ | 4) ees,8(f g4 bes |
  c4. bes8 aes2~ | 4) des,8(ees f4 aes | % 55a
  \ov bes4. aes8 g4.) aes8(| bes4. aes8 g4 bes \vo |
  c2.) r4 \section \key f \major | \tuplet 3/2 {f,4 g8} \tuplet 3/2 {a4 f8} \tuplet 3/2 {bes4 a8} \tuplet 3/2 {g4 f8} |
  \tuplet 3/2 {g4 a8} \tuplet 3/2 {g4 a8} c,2 | \tuplet 3/2 {a'4 bes8} \tuplet 3/2 {c4 a8} \tuplet 3/2 {d4 c8} \tuplet 3/2 {bes4 a8}
  bes4 \tuplet 3/2 {c8 bes c} \ov <d, e bes'>4~\tuplet 3/2 {4 <c e a>8} | % 55e
  \tuplet 3/2 {<f a c>4 <c f a>8~} \tuplet 3/2 {4 8} \tuplet 3/2 {<e a c>4 <c e a>8~} \tuplet 3/2 {4 8} |
  <f a d>8 <d f a>4 <a e' g>8 \tuplet 3/2 {4 <a d f>8~} \tuplet 3/2 {8 8 8} | % 56a
  \vo f'8 g4 a8 \tuplet 3/2 {bes4 8~} \tuplet 3/2 {bes c d} |
  c1~ | 8 r f,(f \tuplet 3/2 {f4 g8} \tuplet 3/2 {aes4 c8} \key aes \major \section |
  des4~\tuplet 3/2 {4 c8} bes2~ | 4) ees,8(f g4 bes | c4. bes8 aes2~ |
  aes4) des,8(ees f4 aes | \ov bes4. aes8 g4.) aes8( | c4. aes8 g4. aes8 \vo |
  f1) \section \key f \major \tuplet 3/2 {f4 g8} \tuplet 3/2 {a4 f8} \tuplet 3/2 {bes4 a8} \tuplet 3/2 {g4 f8} |
  \tuplet 3/2 {g4 a8} \tuplet 3/2 {g4 a8} c,2 | \tuplet 3/2 {a'4 bes8} \tuplet 3/2 {c4 bes8} \tuplet 3/2 {d4 c8}\tuplet 3/2 {bes4 a8} | % 57a
  bes4 \tuplet 3/2 {c8 bes c} bes4~\tuplet 3/2 {4 a8} | c4 2~\tuplet 3/2 {4 a8} | d4 2. \section \key g \major |
  \tuplet 3/2 {g,4 a8} \tuplet 3/2 {b4 g8} \tuplet 3/2 {c4 b8} \tuplet 3/2 {a4 g8} | \tuplet 3/2 {a4 b8} \tuplet 3/2 {a4 b8} d,2 |
  \tuplet 3/2 {b'4 c8} \tuplet 3/2 {d4 b8} \tuplet 3/2 {e4 d8} \tuplet 3/2 {c4 b8} | % 57d
  c4 \tuplet 3/2 {d8 c d} \ov <e, fis c'>4~\tuplet 3/2 {4 <d fis b>8} \vo |
  d'4 2~\tuplet 3/2 {4 b8} |
  d4 2~\tuplet 3/2 {4 b8} | d4 2.~ | 2~8 r r4 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s1 | <des' f>2 <bes e> | s1 \section |
  r2 r4 \tuplet 3/2 {aes'8 f des} | g4 r r2 |
  r2 r4 \tuplet 3/2 {g8 ees c} | f8 r r4 r2 |
  s1 | s | \tuplet 3/2 {e8 bes c} \tuplet 3/2 {des c bes} \tuplet 3/2 {f' ees bes} \tuplet 3/2 {des c bes} |
  aes4 r r2 | r2 r4 \tuplet 3/2 {aes'8 f des} | g4 r r2 |
  r2 r4 \tuplet 3/2 {g8 ees c} | f4 r r2 | % 55a
  s1 | s |
  \repeat unfold 4 \tuplet 3/2 {<e bes'>8 8 8} | \section \key f \major <a, c>2 <d f>4 <a d> |
  <bes d>2 <e, bes'> | <c' f> <f a>4 <d f> |
  <d f>2 s | s1 |
  s1 | <bes d>4. <bes d f>8 <d f>2 | % 56a
  \repeat unfold 4 \tuplet 3/2 {<e g>8 8 8} | q8 r r4 r2 \section \key aes \major |
  r2 r4 \tuplet 3/2 {aes8 f des} | g4 r r2 | r2 r4 \tuplet 3/2 {g8 ees c} |
  f4 r r2 | s1 | s |
  \tuplet 3/2 {r8 <aes, c> q} \repeat unfold 3 \tuplet 3/2 {q q q} | % 56e
  \section \key f \major <a c>2 <d f>4 <a d> |
  <bes d>2 <e, bes'> | <c' f> <f a>4 <d f> | % 57a
  <d f>2 s | \tuplet 3/2 {<c f a>8 8 8} q4 \tuplet 3/2 {8 8 8} \tuplet 3/2 {4 <c f>8} | \tuplet 3/2 {<d fis a>8 8 8} q4 \tuplet 3/2 {8 8 8} 4 \section \key g \major |
  <b d>2 <e g>4 <b e> | <c e>2 <fis, c'> |
  <d' g>2 <g b>4 <e g> | 2 s | \tuplet 3/2 {<d g b>8 8 8} 4 \tuplet 3/2 {<d f a>8 8 8} 4 |
  \tuplet 3/2 {<d g b>8 8 8} 4 \tuplet 3/2 {<d f a>8 8 8} 4 | % 57e
  \tuplet 3/2 {<d g b>8 8 8} 4 \tuplet 3/2 {8 8 8} 4 |
  \tuplet 3/2 {<d g b>8 8 8} \tuplet 3/2 {8 8 8} 8 r r4 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s | s4 s2.\mp |
  s1*14 | s8 s2..\< | s1\mf | % 55c
  s1*7 | s4 s2.\mp | % 56b
  s1*7 | s1\mf | % 56e
  s1*9 | \after 2... \omit\f s1\omit\cresc-\markup\italic "poco cresc." |
  s1*3 |
}

pianoLH = \relative {
  \global
  \tuplet 3/2 {bes,8 f' bes} \tuplet 3/2 {des bes f} \tuplet 3/2 {des' bes f} \tuplet 3/2 {des' bes f} |
  \tuplet 3/2 {g,8 des' f} \tuplet 3/2 {bes f des} \tuplet 3/2 {c des c} c,4 |
  f8 r r4 r2 \section |
  \tuplet 3/2 {bes8 f' bes} \tuplet 3/2 {des bes f} \tuplet 3/2 {des' bes f} bes,4 | % 54b
  \tuplet 3/2 {ees,8 ees' g} \tuplet 3/2 {bes g ees} \tuplet 3/2 {des' g, ees} \tuplet 3/2 {des' g, ees} |
  \tuplet 3/2 {aes,8 ees' aes} \tuplet 3/2 {c aes ees} \tuplet 3/2 {c' aes ees} aes,4 | % 54c
  \tuplet 3/2 {des,8 des' f} \tuplet 3/2 {aes f des} \tuplet 3/2 {aes' f des} \tuplet 3/2 {aes' f des} |
  \tuplet 3/2 {bes8 f' bes} \tuplet 3/2 {des bes f} \tuplet 3/2 {des' bes f} \tuplet 3/2 {des' bes f} | % 54d
  \tuplet 3/2 {g,8 des' f} \tuplet 3/2 {bes f des} \tuplet 3/2 {bes' f des} \tuplet 3/2 {bes' f des} |
  <c g'>2 c, |
  <f c'>4 r r2 | % 54e
  \tuplet 3/2 {bes8 f' bes} \tuplet 3/2 {des bes f} \tuplet 3/2 {des' bes f} bes,4 |
  \tuplet 3/2 {ees,8 ees' g} \tuplet 3/2 {des g, ees} \tuplet 3/2 {des' g, ees} \tuplet 3/2 {des' g, ees}
  \tuplet 3/2 {aes8 ees' aes} \tuplet 3/2 {c aes ees} \tuplet 3/2 {c' aes ees} aes,4 | % 55a
  \tuplet 3/2 {des,8 des' f} \tuplet 3/2 {aes f des} \tuplet 3/2 {aes' f des} \tuplet 3/2 {aes' f des}
  \tuplet 3/2 {bes8 f' bes} \repeat unfold 3 \tuplet 3/2 {des8 bes f} | % 55b
  \tuplet 3/2 {g,8 des' f} \repeat unfold 3 \tuplet 3/2 {bes f des} |
  c4~\tuplet 3/2 {4 g8} c4 \tuplet 3/2 {c,8-> des-> e->} \section \key f \major | % 55c
  f4~\tuplet 3/2 {8 8 e} d4~\tuplet 3/2 {8 8 f} |
  g4~\tuplet 3/2 {8 8 8} \tuplet 3/2 {c d c} \tuplet 3/2 {c, d e} | % 55d
  f4~\tuplet 3/2 {8 8 e} d4~\tuplet 3/2 {8 8 f} |
  g4~\tuplet 3/2 {8 8 8} c,4~\tuplet 3/2 {8 d e} | % 55e
  f4~\tuplet 3/2 {8 8 8} e4~\tuplet 3/2 {8 8 8}
  d4. a8 d4~\tuplet 3/2 {8 8 8} | % 56a
  g4 g \tuplet 3/2 {8 8 8} \tuplet 3/2 {8 8 8} |
  \repeat unfold 4 \tuplet 3/2 {c,8 8 8} | % 56b
  c8 r r4 r2 \section \key aes \major |
  \tuplet 3/2 {bes'8 f' bes} \tuplet 3/2 {des bes g} \tuplet 3/2 {des' bes g} bes,4 | % 56c
  \tuplet 3/2 {ees,8 ees' g} \repeat unfold 3 \tuplet 3/2 {des'8 g, ees} |
  \tuplet 3/2 {aes,8 ees' aes} \tuplet 3/2 {c aes ees} \tuplet 3/2 {c' aes ees} aes,4 |
  \tuplet 3/2 {des,8 des' f} \repeat unfold 3 \tuplet 3/2 {aes f des} | % 56d
  \tuplet 3/2 {bes8 f' bes} \repeat unfold 3 \tuplet 3/2 {des bes f} |
  \tuplet 3/2 {c8 bes' c} \tuplet 3/2 {e c bes} \tuplet 3/2 {des bes e,} \tuplet 3/2 {c' bes e,} |
  f,4~\tuplet 3/2 {4 c8} f4 \tuplet 3/2 {c8 d ees} \section \key f \major | % 56e
  f4~\tuplet 3/2 {8 8 e} d4~\tuplet 3/2 {8 8 f} |
  g4~\tuplet 3/2 {8 8 8} \tuplet 3/2 {c d c} \tuplet 3/2 {c, d e} | % 57a
  f4~\tuplet 3/2 {8 8 e} d4~\tuplet 3/2 {8 8 f} |
  g4~\tuplet 3/2 {8 8 8} c,4~\tuplet 3/2 {8 d e} | % 57b
  g4~\tuplet 3/2 {8 8 c} g4~\tuplet 3/2 {8 8 e} |
  d4~\tuplet 3/2 {8 8 a} d4~\tuplet 3/2 {8 e fis} \section \key g \major |
  g4~\tuplet 3/2 {8 8 fis} e4~\tuplet 3/2 {8 8 g} % 57c
  a4~\tuplet 3/2 {8 8 8} \tuplet 3/2 {d e d} \tuplet 3/2 {d, e fis} |
  g4~\tuplet 3/2 {8 8 fis} e4~\tuplet 3/2 {8 8 g} | % 57d
  a4~\tuplet 3/2 {8 8 8} d,4~\tuplet 3/2 {8 e fis} |
  g4~\tuplet 3/2 {8 8 d} f4~\tuplet 3/2 {8 8 d} |
  g4~\tuplet 3/2 {8 8 d} f4~\tuplet 3/2 {8 8 d} | % 57e
  g4~\tuplet 3/2 {8 8 d} g4~\tuplet 3/2 {8 8 d} |
  g4~\tuplet 3/2 {8 8 d} g r r4 |
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny\dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames = guitar \with {
          midiInstrument = "Acoustic Guitar (Nylon)"
        }
        \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \dynamicsPiano
            \new Voice \melody
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
