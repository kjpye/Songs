\version "2.26.0"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Blame it on the Bossa Nova"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Barry Mann & Cynthia Weil"
  arranger    = "Arr. Kirby Shaw"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key des \major
  \time 4/4
}

TempoTrack = {
  \tempo "Medium Bossa Nova" 4=158
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "2a" } s1*3 \break
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "2c" } s1*3
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "3c" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "4c" } s1*3
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1*2
  \textMark \markup { \box "5c" } s1*3
  \textMark \markup { \box "6a" } s1*3
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*3
  \textMark \markup { \box "7c" } s1*3
  \textMark \markup { \box "8a" } s1*3
  \textMark \markup { \box "8b" } s1*3
  \textMark \markup { \box "8c" } s1*3
  \textMark \markup { \box "9a" } s1*3
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "9c" } s1*3
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1*3
  \textMark \markup { \box "10c" } s1*3
  \repeat volta 2 {
    \textMark \markup { \box "11a" } s1*3
    \textMark \markup { \box "11b" } s1*3
    \textMark \markup { \box "11c" } s1
    \alternative { {s1} {\textMark \markup\box "12a" s1} }
  }
  s1*2
  \textMark \markup { \box "12b" } s1*3
  \textMark \markup { \box "12c" } s1*3
}

ChordTrack = \chordmode {
  des1 ges des2/aes ges4./aes aes8:7 | des1 des s | aes s s |
  s1 | des | s1*3 | ges1 | s des aes | % 3
  des2.. ges8/aes des1 ges4.:6/aes ees8:m7sus s2 | ges2/aes aes4:9 aes:7 des2. ges4:6/aes des1 | ges4.:6/aes ees8:m7sus s2 | ges2/aes aes4:9 aes:7 des2. ges4:6/aes |
  des2 ees4:m7 des:2/f ges1 s | des2 s8 ges4:6/aes des8 s1 | ges4.:6/aes r8 s2 aes1:7  ees4. r8 s2 |
  des1 aes s | des s aes | s des2 ges4. des8 | s8 r2.. | % 6
  des1 ges f:m7 | bes:7 ees s | bes s s |
  s1 ees s | s s aes | s ees bes |
  ees2. aes4/bes ees1 aes4.:6/bes f8:m7sus s2 | aes2/bes bes4:9 bes:7 ees2. aes4:6/bes ees1 | aes4.:6/bes f8:m7sus s2 aes2/bes bes4:9 bes:7 ees2. aes4:6/bes | % 9
  ees2 f4:m7 ees:2/g aes1 s | ees2 s8 aes/bes s ees s1 aes4.:6/bes r8 s2 | bes1:7 ees4. r8 s2 ees1 |
  \repeat volta 2 {
    bes1 s ees | s bes s | ees2 aes4. ees8 |
    \alternative { {s1} {s2 s8 ees4.} }
  }
  aes1:6/bes f:m7 | aes2:6/bes s8 r4. bes2:7 aes4./bes ees8 s1 | aes1 ees2 aes4./bes ees8 s2 ees:2 |
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s4 s2.\mf |
}

womenCommon = \relative {
  \global
  R1*3 |
  r4 aes8 8 des ees4 f8~ | 4 r r2 | r4 aes,8 8 ges' f4 ees8~ |
  ees4 r r2 | r4 aes,8 8 c des4 ees8~ | 4 r r2 |
  r4 aes,8 8 f'(des) ees4 | des2~\glissando f4 r | | r aes,8 8 des ees4 f8~ | % 3a
  f4 r r2 | r4 des8 8 f aes4 bes8~ | 1~ |
  \phrasingSlurDashed bes2.\( des4\) \phrasingSlurSolid | bes8-> aes4 f8~4 r8 aes | ges-> ees4. des8 c4 des8~ |
  des2. r4 | s1*8 | % 4
  s1*8 |
  s1*9 |
  R1*3 | % 7a
  r4 bes8 8 ees f4 g8~ \section \key ees \major | g4 r r2 | r4 bes,8 8 aes' g4 f8~ |
  f4 r r2 | r4 bes,8 8 d ees4 f8~ | 4 r r2 |
  r4 bes, g'8(ees) f4 | ees2\glissando~g4 r | r bes,8 8 ees f4 g8~ | % 8a
  g4 r r2 | s1*5 |
  s1*9 | % 9
  s1*9 |
}

wordsWomen = \lyricmode {
  I was at a dance when he caught my eye,
  stand -- in’ all a -- lone,
  look -- in’ sad and shy.
  We be -- gan to dance,
  sway -- in’ to and fro,
  and soon I knew
  I’d nev -- er let him go.

  Now, I’m glad to say
  I’m his bride to be,
  and we’re gon -- na raise
  a fam -- i -- ly
  And when our kids ask
  how it came a -- bout,
  I’m gon -- na say to them,
  with -- out a doubt:
}

wordsWomenMidi = \lyricmode {
  "I " "was " "at " "a " "dance " "when " "he " "caught " "my " "eye, "
  "\nstand" "in’ " "all " a "lone, "
  "\nlook" "in’ " "sad " "and " "shy. "
  "\nWe " be "gan " "to " "dance, "
  "\nsway" "in’ " "to " "and " "fro, "
  "\nand " "soon " "I " "knew "
  "\nI’d " nev "er " "let " "him " "go. "

  "\nNow, " "I’m " "glad " "to " "say "
  "\nI’m " "his " "bride " "to " "be, "
  "\nand " "we’re " gon "na " "raise "
  "\na " fam i "ly "
  "\nAnd " "when " "our " "kids " "ask "
  "\nhow " "it " "came " a "bout, "
  "\nI’m " gon "na " "say " "to " "them, "
  "\nwith" "out " "a " "doubt: "
}

soprano = \relative {
  s1*9 | s1*9 |
  s1 | r4 aes'8 8 8 8 8 8 | ges4 aes r2 | % 4a
  r4 aes8 8 bes aes4 f8~ | 4 r r2 | r4 aes8 8 8 8 8 8 |
  ges4 aes r2 | r4 aes8 8 bes aes4 f8~ | 4 r r2 |
  r4 des'8 8 8 8 8 8 | bes4 des bes8 ges4 ees8~ | 4 r8 bes'8 8 8 8 8 | % 5a
  aes4 des aes8 ges4 f8~ | 4 \*6aes8 |
  ges4 aes r2 | r4 r8 aes f(des) ees4 | des r r2 |
  R1 | r4 aes'4 4 r8 8 | bes4 aes8 bes~8 aes r4 | % 6a
  r4 aes4 4 r8 8 | bes4 aes8 bes~8 aes r4 | r8 ees aes4 4 r8 8 |
  bes4 aes8 bes~8 aes r4 | r r8 aes des8 4 8 | R1 |
  s1*9 | % 7
  s1*3 | % 8a
  s1 | r4 ees,8 8 g bes4 c8~ | 1~ |
  \phrasingSlurDashed c2.\(ees4\) \phrasingSlurSolid | c8-> bes4 g8~4 r8 bes | aes4 f ees8 d4 ees8~ |
  ees2. r4 | r \*6 bes'8 | aes4 bes r2 | % 9a
  r4 bes8 8 c bes4 g8~ | 4 r r2 | r4 \*6 bes8 |
  aes4 bes r2 | r4 bes8 8 c bes4 g8~ | 4 r r2 |
  r4 \*6 ees'8 | c4 ees c8 aes4 f8~ | 4 r8 \*5 c'8 | % 10a
  bes4 ees bes8 aes4 g8~ | 4 \*6 bes8 | aes4 bes r2 |
  r4 r8 bes g(ees) f4 | ees r r2 | R1 |
  \repeat volta 2 {
    r4 bes'4 4 r8 8 | c4 bes8 c~8 bes r4 | r bes4 4 r8 8 | % 11a
    c4 bes8 c~8 bes r4 | r8 f bes4 4 r8 8 | c4 bes8 c~8 bes r4 |
    r4 r8 bes ees8 4 8 |
    \alternative {
      { R1 }
      {r4 \*6 bes8 |} % 12a
    }
  }
  aes4 bes2. | R1 |
  R1 | r4 r8 bes ees8 4 8~ | 1~ | % 12b
  ees1 | r4 r8 bes ees8 4 8 | R1 |
  \bar "|."
}

wordsSop = \lyricmode {
  Blame it on the Bos -- sa No -- va,
  with it’s mag -- ic spell.
  Blame it on the Bos -- sa No -- va,
  that he did so well.
  Oh, it all be -- gan with just one lit -- tle dance,
  but then it end -- ed up a big ro -- mance.
  Blame it on the Bos -- sa No -- va,
  the dance of love.
  No, no, the Bos -- sa No -- va.
  No, no, the Bos -- sa No -- va.
  Uh yeah, yeah, the Bos -- sa No --va.
  The dance of love.

  how it came a -- bout,
  I’m gon -- na say to them,
  with -- out a doubt:
  Blame it on the Bos -- sa No -- va,
  with it’s mag -- ic spell,
  Blame it on the Bos -- sa No -- va,
  that he did so well.
  Oh, it all be -- gan with just one lit -- tle dance,
  but then it end -- ed up a big ro -- mance.
  Blame it on the Bos -- sa No -- va,
  the dance of love.
  \repeat volta 2 {
    No, no, the Bos -- sa No -- va.
    No, no, the Bos -- sa No -- va.
    Uh yeah, yeah, the Bos -- sa No -- va.
    The dance of love.
    \alternative { {} {
      Blame it on the Bos -- sa
    }
                 }
  }
  No -- va,
  the dance of love,
  the dance of love!
}

wordsSopMidi = \lyricmode {
  "\nBlame " "it " "on " "the " Bos "sa " No "va, "
  "\nwith " "it’s " mag "ic " "spell. "
  "\nBlame " "it " "on " "the " Bos "sa " No "va, "
  "\nthat " "he " "did " "so " "well. "
  "\nOh, " "it " "all " be "gan " "with " "just " "one " lit "tle " "dance, "
  "\nbut " "then " "it " end "ed " "up " "a " "big " ro "mance. "
  "\nBlame " "it " "on " "the " Bos "sa " No "va, "
  "\nthe " "dance " "of " "love. "
  "\nNo, " "no, " "the " Bos "sa " No "va. "
  "\nNo, " "no, " "the " Bos "sa " No "va. "
  "\nUh " "yeah, " "yeah, " "the " Bos "sa " No"va. "
  "\nThe " "dance " "of " "love. "

  "\nhow " "it " "came " a "bout, "
  "\nI’m " gon "na " "say " "to " "them, "
  "\nwith" "out " "a " "doubt: "
  "\nBlame " "it " "on " "the " Bos "sa " No "va, "
  "\nwith " "it’s " mag "ic " "spell, "
  "\nBlame " "it " "on " "the " Bos "sa " No "va, "
  "\nthat " "he " "did " "so " "well. "
  "\nOh, " "it " "all " be "gan " "with " "just " "one " lit "tle " "dance, "
  "\nbut " "then " "it " end "ed " "up " "a " "big " ro "mance. "
  "\nBlame " "it " "on " "the " Bos "sa " No "va, "
  "\nthe " "dance " "of " "love. "
  \repeat volta 2 {
    "\nNo, " "no, " "the " Bos "sa " No "va. "
    "\nNo, " "no, " "the " Bos "sa " No "va. "
    "\nUh " "yeah, " "yeah, " "the " Bos "sa " No "va. "
    "\nThe " "dance " "of " "love. "
    \alternative { {} {
      "\nBlame " "it " "on " "the " Bos "sa "
    }
                 }
  }
  "\nNo" "va, "
  "\nthe " "dance " "of " "love, "
  "\nthe " "dance " "of " "love! "
}

alto = \relative {
  \global
  s1*9 | s1*9 |
  s1 | r4 aes'8 8 8 8 8 8 | ees4 ges r2 | % 3a
  r4 ges8 8 8 4 des8~ | 4 r r2 | r4 aes'8 8 8 8 8 8 |
  ees4 ges r2 | r4 ges8 8 8 4 des8~ | 4 r r2 |
  r4 f8 f ges8 8 f f | ges4 4 8 ees4 des8~ | 4 r8 \*5 ges | % 4a
  f4 4 ees8 4 des8~ | 4 \*6 aes'8 |
  ees4 ges r2 | r4 r8 aes f(des) ees4 | des r r2 |
  R1 | r4 <c ees>4^\markup div. 4 r8 8 | 4 8 8~8 8 r4 | % 5a
  r4 <des f>4 4 r8 8 | 4 8 8~8 8 r4 | r8 ees <c ees>4 4 r8 8 |
  q4 8 8~8 8 r4 | r r8 f ges8 4 f8 | R1 |
  s1*9 | % 7
  s1*3 | % 8a
  s1 | r4 ees8 8 g bes4 c8~ | 1~ |
  \phrasingSlurDashed c2.\(aes4\) \phrasingSlurSolid | g8-> 4 ees8~4 r8 ees | d4 4 c8 bes4 8~ |
  bes2. r4 | r \*6 bes'8 | f4 aes r2 | % 9a
  r4 aes8 8 8 4 ees8~ | 4 r r2 | r4 \*6 bes'8 |
  f4 aes r2 | r4 aes8 8 8 4 ees8~ | 4 r r2 |
  r4 g8 g aes8 8 g g | aes4 4 8 f4 ees8~ | 4 r8 \*5 aes8 | % 10a
  g4 g f8 4 ees8~ | 4 \*6 bes'8 | f4 aes r2 |
  r4 r8 bes g(ees) f4 | ees r r2 | R1 |
  \repeat volta 2 {
    r4 <d f>4 4 r8 8 | 4 8 8~8 8 r4 | r <ees g>4 4 r8 8 | % 11a
    q4 8 8~8 8 r4 | r8 f <d f>4 4 r8 8 | 4 8 8~8 8 r4 |
    r4 r8 g aes8 4 g8 |
    \alternative { {R1} {r4 \*6 bes8} }
  }
  f4 aes2. | R1 | % 12a+
  R1 | r4 r8 bes aes8 4 g8~ | 1( |
  aes1) | r4 r8 bes aes8 4 g8 | R1 |
}

dynamicsMen = {
  s1*4 | s4 s2.\mf |
}

menCommon = \relative {
  R1*3 |
  R1 | r4 aes8 8 f ges4 aes8~ | 4 r r2 |
  r4 aes8 8 ges f4 ees8~ | 4 r r2 | r4 aes8 8 8 bes4 c8~ |
  c4 r r2 | r4 aes8 8 4 ges | f2~\glissando aes | % 3a
  r4 aes8 8 f ges4 aes8~ | 2. r4 | r des,8 8 ges aes4 bes8~ |
  \phrasingSlurDashed bes2.\(ges4\) \phrasingSlurSolid | f8-> 4 aes8~4 r8 aes | bes-> ges4. 8 4 f8~ |
  f2. r4 | s1*8 | % 4
  s1*8 | s1*9 |
  R1*3 | % 7a
  R1 \section \key ees \major | r4 bes8 8 g aes4 bes8~ | 2. r4 |
  r4 bes8 8 aes g4 f8~ | 2. r4 | r bes8 8 8 c4 d8~ |
  d2. r4 | r bes4 4 aes | g2\glissando~ bes | % 8a
  r4 bes8 8 g aes4 bes8~ | 2. r4 | s1 |
  s1*3 |
  s1*9 | % 9
}

wordsMen = \lyricmode {
  I was at a dance
  when she caught my eye,
  stand -- in’ all a -- lone,
  look -- in’ sad and shy. % 3a
  We be -- gan to dance,
  sway -- in’ to and fro,
  and soon I knew
  I’d nev -- er let her go.

  Now I’m glad to say
  She’s my bride to be,
  and we’re gon -- na
  raise a fam -- i -- ly.
  And when our kids ask
}

wordsMenMidi = \lyricmode {
  "I " "was " "at " "a " "dance "
  "\nwhen " "she " "caught " "my " "eye, "
  "\nstand" "in’ " "all " a "lone, "
  "\nlook" "in’ " "sad " "and " "shy. " % 3a
  "\nWe " be "gan " "to " "dance, "
  "\nsway" "in’ " "to " "and " "fro, "
  "\nand " "soon " "I " "knew "
  "\nI’d " nev "er " "let " "her " "go. "

  "\nNow " "I’m " "glad " "to " "say "
  "\nShe’s " "my " "bride " "to " "be, "
  "\nand " "we’re " gon "na "
  "\nraise " "a " fam i "ly. "
  "\nAnd " "when " "our " "kids " "ask "
}

tenor = \relative {
  \global
  s1*9 | s1*9 |
  s1 | r4 aes8 8 8 8 8 8 | des4 4 r2 | % 4a
  r4 des8 8 ees8 4 bes8~ | 4 r r2 | r4 aes8 8 8 8 8 8 |
  des4 4 r2 | r4 8 8 ees8 4 bes8~ | 4 r r2 |
  r4 \*6 des8 | 4 4 8 4 bes8~ | 4 r8 \*5 des | % 5a
  des4 4 8 4 bes8~ | 4 \*6 aes8 |
  des4 4 r2 | r4 r8 aes^\markup Unis. f(des) ees4 | des r r2 |
  r4 f8 8 8 aes4 8( | ees4) r r2 | r4 8 8 8 aes4 8( | % 6a
  f4) r r2 | r4 f8 8 8 aes4 8( | ees4) r r2 |
  R1 | r4 r8 aes8 des8 4 8 | R1 |
  s1*9 | % 7
  s1*3 | % 8a
  s1*2 | r4 ees,8 8 aes bes4 c8~ |
  \phrasingSlurDashed c2.\(ees4\) \phrasingSlurSolid | 8-> 4 bes8~4 r8 bes | 4 4 8 aes4 g8~ |
  g2. r4 | r \*6 bes8 | ees4 4 r2 | % 9a
  r4 ees8 8 f8 4 c8~ | 4 r r2 | r4 \*6 bes8 |
  ees4 4 r2 | r4 ees8 8 f8 4 c8~ | 4 r r2 |
  r4 \*6 ees8 | 4 4 8 4 c8~ | 4 r8 \*5 ees8 | % 10a
  ees4 4 8 4 c8~ | 4 \*6 bes8 | ees4 4 r2 |
  r4 r8 bes g(ees) f4 | ees r r2 | r4 g8 g g bes4 8~ |
  \repeat volta 2 {
    f4 r r2 | r4 f8 8 8 bes4 8( | g4) r r2 | % 11a
    r4 g8 8 8 bes4 8( | f4) r r2 | R1 |
    r4 r8 bes8 ees8 4 8 |
    \alternative { {r4 g,8 8 8 bes4 8~ |} {r4 \*6 bes8 |} }
  }
  ees4 2. | R1 | % 12a+
  R1 | r4 r8 bes ees8 4 8~ | 1~ |
  ees1 | r4 r8 bes8 ees8 4 8 | R1 |
}


wordsTenorSep = \lyricmode {
  Blame it on the Bos -- sa No -- va,
  with it’s mag -- ic spell.
  Blame it on the Bos -- sa No -- va,
  that he did so well.
  Oh, it all be -- gan with just one lit -- tle dance,
  but then it end -- ed up a big ro -- mance.
  Blame it on the Bos -- sa No -- va,
  the dance of love.
  Now, was it the moon
  or the stars a -- bove?
  Now, was it the tune?
  The dance of love.

  how it came a -- bout,
  I’m gon -- na say to them,
  with -- out a doubt:
  Blame it on the Bos -- sa No -- va,
  with it’s mag -- ic spell,
  Blame it on the Bos -- sa No -- va,
  that he did so well.
  Oh, it all be -- gan with just one lit -- tle dance,
  but then it end -- ed up a big ro -- mance.
  Blame it on the Bos -- sa No -- va,
  the dance of love.
  Now, was it the moon
  \repeat volta 2 {
    or the stars a -- bove?
    Now, was it the tune?
    The dance of love.
    \alternative { {
      Now, was it the moon
    } {
      Blame it on the Bos -- sa
    } }
  }
  No -- va,
  the dance of love,
  the dance of love!
}

wordsTenorMidi = \lyricmode {
  "\nBlame " "it " "on " "the " Bos "sa " No "va, "
  "\nwith " "it’s " mag "ic " "spell. "
  "\nBlame " "it " "on " "the " Bos "sa " No "va, "
  "\nthat " "he " "did " "so " "well. "
  "\nOh, " "it " "all " be "gan " "with " "just " "one " lit "tle " "dance, "
  "\nbut " "then " "it " end "ed " "up " "a " "big " ro "mance. "
  "\nBlame " "it " "on " "the " Bos "sa " No "va, "
  "\nthe " "dance " "of " "love. "
  "\nNow, " "was " "it " "the " "moon "
  "\nor " "the " "stars " a "bove? "
  "\nNow, " "was " "it " "the " "tune? "
  "\nThe " "dance " "of " "love. "

  "\nhow " "it " "came " a "bout, "
  "\nI’m " gon "na " "say " "to " "them, "
  "\nwith" "out " "a " "doubt: "
  "\nBlame " "it " "on " "the " Bos "sa " No "va, "
  "\nwith " "it’s " mag "ic " "spell, "
  "\nBlame " "it " "on " "the " Bos "sa " No "va, "
  "\nthat " "he " "did " "so " "well. "
  "\nOh, " "it " "all " be "gan " "with " "just " "one " lit "tle " "dance, "
  "\nbut " "then " "it " end "ed " "up " "a " "big " ro "mance. "
  "\nBlame " "it " "on " "the " Bos "sa " No "va, "
  "\nthe " "dance " "of " "love. "
  "\nNow, " "was " "it " "the " "moon "
  \repeat volta 2 {
    "\nor " "the " "stars " a "bove? "
    "\nNow, " "was " "it " "the " "tune? "
    "\nThe " "dance " "of " "love. "
    \alternative { {
      "\nNow, " "was " "it " "the " "moon "
    } {
      "\nBlame " "it " "on " "the " Bos "sa "
    } }
  }
  "\nNo" "va, "
  "\nthe " "dance " "of " "love, "
  "\nthe " "dance " "of " "love! "
}

wordsTenor = \lyricmode {
  \*59 \skip 1

  Now, was it the moon
  or the stars a -- bove?
  Now, was it the tune?
  \*4 \skip 1

  how it came a -- bout,
  "" \*68 \skip 1

  Now, was it the moon
  \repeat volta 2 {
    or the stars a -- bove?
    Now, was it the tune?
    The dance of love.
    \alternative { {
      Now, was it the moon
    } {
      \*6 ""
    } }
  }
  \*18 ""
}

bass = \relative {
  \global
  s1*9 | s1*9 |
  s1 | r4 aes8 8 8 8 8 8 | bes4 4 r2 | % 4a
  r4 bes8 8 c8 4 aes8~ | 4 r r2 | r4 aes8 8 8 8 8 8 |
  bes4 4 r2 | r4 8 8 c8 4 aes8~ | 4 r r2 |
  r4 aes8 8 bes8 8 aes8 8 | bes4 4 8 4 ges8~ | 4 r8 \*5 bes | % 5a
  aes4 4 bes8 4 aes8~ | 4 \*6 aes8 |
  bes4 4 r2 | r4 r8 aes^\markup Unis. f(des) ees4 | des r r2 |
  r4 f8 8 8 aes4 8( | ees4) r r2 | r4 8 8 8 aes4 8( | % 6a
  f4) r r2 | r4 f8 8 8 aes4 8( | ees4) r r2 |
  R1 | r4 r8 aes8 bes8 4 aes8 | R1 |
  s1*9 | % 7
  s1*3 | % 8a
  s1*2 | r4 ees8 8 aes bes4 c8~ |
  \phrasingSlurDashed c2.\(4\) \phrasingSlurSolid 8-> bes4 g8~4 r8 g | f4 aes4 8 4 g8~ |
  g2. r4 | r \*6 bes8 | c4 c r2 | % 9a
  r4 c8 8 d8 4 bes8~ | 4 r r2 | r4 \*6 bes8 |
  c4 4 r2 | r4 c8 8 d8 4 bes8~ | 4 r r2 |
  r4 bes8 8 c c bes8 8 | c4 4 8 4 aes8~ | 4 r8 \*5 c8 | % 10a
  bes4 4 c8 4 bes8~ | 4 \*6 bes8 | c4 c r2 |
  r4 r8 bes8 g(ees) f4 | ees r r2 | r4 g8 8 8 bes4 8~ |
  \repeat volta 2 {
    f4 r r2 | r4 f8 8 8 bes4 8( | g4) r r2 | % 11a
    r4 g8 8 8 bes4 8( | f4) r r2 | R1 |
    r4 r8 bes8 c8 4 bes8 |
    \alternative { {r4 g8 8 8 bes4 8~ |} {r4 \*6 bes8 |} }
  }
  c4 2. | R1 | % 12a+
  R1 | r4 r8 bes c8 4 bes8~ | 1( |
  c1) | r4 r8 bes8 c8 4 bes8 | R1 |
}

wordsBass = \lyricmode {
}

pianoRH = \relative {
  \global
  f8 aes des f r <des f> <des f aes>4-. |
  ges,8 bes des ges r <des ges> <des ges bes>4-. |
  <des f aes>8 bes' aes <bes, des ges> r f' <ges, c ees>4-. |
  <f aes des>4-. r r2 | <aes des f>8 aes des f r q8 4-. | % 2b
  <aes, des f>8 aes des f r q8 4-. |
  \*2{<aes, c ees>8 aes c ees r q8 4-. |} <c ees aes>8 c ees aes r q8 4-. | % 2c
  <c, ees aes>8 c ees aes r q8 4-. | % 3a
  \*2{<aes, des f>8 aes des f r q8-. 4-. |}
  <f, aes des>8 f aes des r q8-. 4-. | % 3b
  <aes des f>8 aes des q r q q4-. |
  <bes des ges>8 bes des q r q q4-. |
  <des ges bes>8 des ges q r q q4-. | % 3c
  <des f aes>8 des f q r q q4-. |
  <c ees aes>8 c ees q r q q4-. |
  <aes, des f>8 aes d q r f <bes, des ges aes>4-^ | <f aes des>-^ r r2 | % 4a
  <bes des ees aes>8 ges' ees <bes des ges aes>8~2 |
  q4. aes'8 <c, ges' bes>4-. <c ges' aes>-. | % 4b
  <aes des f>8 aes d q8~8 f <bes, des ees ges>4-. | <aes des f>1 |
  <bes des ees aes>8 ges' ees <bes des ges aes>8~2 | % 4c
  a4. aes'8 <c, ges' bes>4-. <c ges' aes>-. |
  <aes des f>8 aes des q8~8 f <bes, des ees ges>4-. |
  <aes des f>4. f'8 <bes, des ges>4 <des ees aes> | % 5a
  <des ges bes>8 des ges q8~2~ | 2. 4-. |
  <des f aes>8 des f q r <bes, des ees ges> [ r  <aes des f>~ ] | % 5b
  q4. des8 aes des q4-. |
  <bes des ees aes>8 ges' ees8 8 r f [ r ges ] | % 5c
  <c, ges' aes>4-^ r r2 | <f, aes des>4. f'8~8 aes bes aes |
  <f aes des>4-^ r r2 | <aes, c ees>8 aes c ees r q4. | % 6a
  <c ees aes>8 c ees q8 r q4. |
  <aes, des f>8 aes des f r q4. | <des f aes>8 f aes des r <f, aes des>4. | % 6b
  <aes, c ees>8 aes c ees r q4. |
  <c ees aes>8 c ees <c ees bes'> r <c ees aes>4. | % 6c
  <aes des f>8 des f aes <ges bes des>8-. 4 <f aes des>8-. |
  r8 aes [ r ges ] f4-. ees-. |
  f,8 aes des f r <des f> <des f aes>4-. | % 7a
  ges,8 bes des ges r <des ges> <des ges bes>4-. |
  <ees aes>8 bes' aes g r g <ees f>4-. |
  <d aes' bes>4-^ r r <aes bes> \section \key ees \major | % 7b
  \*2{<bes ees g>8 bes ees g r q8 4-. |}
  \*2{<bes, d f>8 bes d f r q8 4-. |} | % 7c
  \*2{<d f bes>8 d f bes r q8 4-. |}
  \*2{<bes, ees g>8 bes ees g r q8 4-.|} % 8a+
  <g, bes ees>8 g bes ees r q8 4-. | % 8b
  <bes ees g>8 bes g q r q8 4-. |
  <c ees aes>8 c ees q r q8 4-. |
  <ees aes c>8 ees aes q r q8 4-. | % 8c
  <ees g bes>8 ees g q r q8 4-. |
  <d f bes>8 d f q r f d <g, bes ees>~ |
  q8 bes ees <bes ees g> r bes' c bes | % 9a
  <g bes ees>4-^ r r2 | <c, ees f bes>8 aes' f <c ees aes bes>8~2 |
  q4. bes'8 <d, aes' c>4-. <d aes' bes>-. | % 9b
  <bes ees g>8 bes ees q8~8 g <c, ees f aes>4-. | <bes ees g>1 |
  <c ees f bes>8 aes' f <c ees aes bes>8~2 | % 9c
  <c ees aes bes>4. bes'8 <d, aes' c>4-. <d aes' bes>-. |
  <bes ees g>8 bes ees q8~8 g <c, ees f aes>4-. |
  <bes ees g>4. g'8 <c, ees aes>4 <ees f bes> | % 10a
  <ees aes c>8 ees a q8~2~ | 2. 4-. |
  <ees g bes>8 ees g q r <c, ees f aes> [ r <bes ees g>~ ] | % 10b
  q4. ees8 bes ees q4-. | <c ees f bes>8 aes' f f r g [ r aes ] |
  <d, aes' bes>4-^ r r2 | <g, bes ees>4. g'8~8 bes c bes | % 10c
  <g bes ees>4-^ r r2 |
  \repeat volta 2 {
    <bes, d f>8 bes d f r q4. | <d f bes>8 d f q8 r q4. | % 11a
    <bes, ees g>8 bes ees g r q4. |
    <ees g bes>8 g bes ees r <g, bes ees>4. | % 11b
    <bes, d f>8 bes d f r q4. | <d f bes>8 d f <d f c'> r <d f bes>4. |
    <bes ees g>8 ees g bes <aes c ees>8-. 4 <g bes ees>8-. |
    \alternative {
      {R1}
      {r2 r8 ees' g, [ aes ] |}
    }
  }
  <c, ees f bes>8 aes' f <c ees aes bes> r q4. | % 12a+
  <f aes c ees>8 c' bes q8 r q4. |
  <c ees f aes>8 f ees <c ees f aes> r f g aes | % 12b
  <d, aes' bes>4-^ bes,-- <aes' c ees>8-. 4 <g bes ees>8->~ |
  q8 bes c q r q4. |
  <aes c ees>8 f' c q r q4. | % 12c
  <bes ees g bes>4-^ r8 bes <aes c ees>-. 4-> <g bes ees>8-^ |
  r2 <f, g bes ees>4-^ r |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf |
}

pianoLH = \relative {
  \global
  <des, des'>4-. r r q-. | <ges, ges'>4-. r r q-. |
  <aes aes'>8 [ r r q ] r4 q-. |
  <des des'>4-. r r2 | \*2{des4. f8~4 aes |} % 2b
  \*3{aes,4. c8~4 ees} | % 2c
  aes,4. c8~4 ees | \*4{des4. f8~4 aes|} % 3a..
  \*2{ges4. bes,8~4 des |} % 3b++
  des4. f8~4 aes | aes,4. c8~4 ees | % 3c+
  des4. f8~4 aes-^ | bes,-^ r r2 | aes4. ees'8~8 8 aes,8 8~ | % 4a
  aes4. 8 ees'4 aes, | des4. aes'8~8 8 aes,4 | des4. 8 8 f, ges g |
  aes4. ees'8~8 8 aes,8 8~ | 4. 8 ees'4 aes, | des4. aes'8~8 8 aes,4 |
  des4. 8 ees4 f | ges4. des8~8 8 ges,8 8~ | 4. 8 bes4 des | % 5a
  des4. aes'8~8 8 des,8 8~ | 4. 8 f,4 ges8 g |
  aes4. ees'8 r f [ r ges ] | aes4-^ r r2 | des,4. f8~8 aes bes aes |
  des,4-^ r r2 | \*2{aes4. c8~8 ees f ees |} % 6a
  \*2{des4. f8~8 aes bes aes |} \*2{aes,4. c8~8 ees f ees |}
  des4. 8 ges-. 4 des8-. | r8 aes' [ r ges ] f4-. ees-. | % 6c+
  <des des'>4-. r r q-. | <ges, ges'>4-. r r q-. | % 7a
  <f f'>8 [ r r q ] r4 q-. |
  bes4-^ r r bes' \section \key ees \major | % 7b
  \*2{ees,4. g8~4 bes |}
  \*4{bes,4. d8~4 f |} % 7c
  \*4{ees4. g8~4 bes4 |} % 8a+
  \*2{aes4. c,8~4 ees4 |} % 8b++
  ees4. g8~4 bes | bes,4. d8~4 f |
  ees4. g8~8 bes c bes | ees,4-^ r r2 | bes4. f'8~8 8 bes,8 8~ | % 9a
  bes4. 8 f'4 bes, | ees4. bes'8~8 8 bes,4 | ees4. 8 8 g, aes a |
  bes4. f'8~8 8 bes,8 8~ | 4. 8 f'4 bes, | ees4. bes'8~8 8 bes,4 |
  ees4. 8 f4 g | aes4. ees8~8 8 aes,8 8~ | 4. 8 c4 ees | % 10a
  ees4. bes'8~8 8 ees,8 8~ | 4. 8 g,4 aes8 a | bes4. f'8 r bes [ r aes ] |
  bes4-^ r r2 | ees,4. g8~8 bes c bes | ees,4-^ r r2 |
  \repeat volta 2 {
    \*2 {bes4. d8~8 f g f |} \*2 {ees4. g8~8 bes c bes |} % 11a
    \*2 {bes,4. d8~8 f g f |} % 11b+
    ees4. 8 aes8-. 4 ees8-. | % 11c
    \alternative {
      {R1}
      {r2 r8 ees g, aes |}
    }
  }
  bes8 [ r r bes ] r bes4. | f'8 [ r r f ] r f4. | % 12a+
  bes,8 [ r r bes ] r f' g aes | bes4-^ bes,-- bes'8-. 4 ees,8->~ | % 12b
  4. g8~8 bes c bes |
  aes4. c,8~8 ees f ees | 4-^ r8 8 bes'8-. 4-> ees,8-^ | % 12c
  r2 <ees, ees'>4-^ r |
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Combine soprano/alto staff
          \new Staff = women \with {
%            instrumentName = #"Soprano"
%            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
            printPartCombineTexts = ##f
          }
          <<
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics \wordsWomen
            \new NullVoice \soprano \addlyrics \wordsSop
            \new Voice \partCombine \soprano \alto
          >>
                                % combines tenor/bass staff
          \new Staff = men \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
            printPartCombineTexts = ##f
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \menCommon
            \addlyrics \wordsMen
            \new NullVoice \tenor \addlyrics \wordsTenor
            \new Voice \partCombine \tenor \bass
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat-sop
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics \wordsWomen
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsTenorSep}
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat-alto
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \womenCommon
            \addlyrics \wordsWomen
            \new Voice \alto
            \addlyrics \wordsSop
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsTenorSep}
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat-tenor
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \menCommon
            \addlyrics \wordsMen
            \new Voice \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsTenorSep}
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat-bass
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \menCommon
            \addlyrics \wordsMen
            \new Voice \bass
            \addlyrics \wordsTenorSep
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics \wordsWomen
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsTenorSep}
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-alto
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \womenCommon
            \addlyrics \wordsWomen
            \new Voice \alto
            \addlyrics \wordsSop
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsTenorSep}
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-tenor
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \menCommon
            \addlyrics \wordsMen
            \new Voice \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsTenorSep}
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bass
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \menCommon
            \addlyrics \wordsMen
            \new Voice \bass
            \addlyrics \wordsTenorSep
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics \wordsWomen
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsTenorSep}
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \womenCommon
            \addlyrics \wordsWomen
            \new Voice \alto
            \addlyrics \wordsSop
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsTenorSep}
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \menCommon
            \addlyrics \wordsMen
            \new Voice \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsTenorSep}
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \womenCommon
            \addlyrics {\tiny \wordsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsMen
            \new Voice \menCommon
            \addlyrics {\tiny \wordsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \menCommon
            \addlyrics \wordsMen
            \new Voice \bass
            \addlyrics \wordsTenorSep
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-women
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics \wordsWomenMidi
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \womenCommon
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \menCommon
%            \addlyrics \wordsMenMidi
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \menCommon
            \new Voice \bass
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
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

\book {
  \paper {
    output-suffix = midi-men
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
%            \addlyrics \wordsWomenMidi
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \womenCommon
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \menCommon
            \addlyrics \wordsMenMidi
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \menCommon
            \new Voice \bass
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
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

\book {
  \paper {
    output-suffix = midilearn-women
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
            \addlyrics \wordsWomenMidi
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \womenCommon
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \menCommon
%            \addlyrics \wordsMenMidi
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \menCommon
            \new Voice \bass
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "violin"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
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

\book {
  \paper {
    output-suffix = midilearn-men
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \womenCommon
%            \addlyrics \wordsWomenMidi
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \womenCommon
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \menCommon
            \addlyrics \wordsMenMidi
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \menCommon
            \new Voice \bass
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "violin"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRH
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
