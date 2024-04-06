\version "2.25.14"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Penny Lane"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Lennon & Paul McCartney"
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

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4-\markup \bold \upright "Bright swing feeling"
  s1*3
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "2a" } s4 s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "3a" } s1*4
  \repeat volta 2 {
    \textMark \markup { \box "3b" } s1*2
    \textMark \markup { \box "4a" } s1*2
    \textMark \markup { \box "4b" } s1*3
    \textMark \markup { \box "5a" } s1*3
    \textMark \markup { \box "5b" } s1*3
    \textMark \markup { \box "6a" } s1*2
  }
  \alternative {
    {
      s1
    }
    {
      \textMark \markup { \box "6b" } s1
    }
  }
  s1
  \textMark \markup { \box "7a" } s1*2
  \textMark \markup { \box "7b" } s1*2
  \textMark \markup { \box "8a" } s1*3
  \textMark \markup { \box "8b" } s1*2
  \textMark \markup { \box "9a" } s1*2
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1*3
  \textMark \markup { \box "11a" } s1*3
  \textMark \markup { \box "11b" } s1*4
  \textMark \markup { \box "12a" } s1*3
  \textMark \markup { \box "12b" } s1*4
}

ChordTrack = \tripletFeel 8 \chordmode {
  s4
  bes2 g:m
  c2:m f:7
  bes2 g:m
  c2:m7 f:7 % 2b
  bes2 g:m
  bes1:m7
  c1:m7.5- % 3a
  ges1:maj7
  f1:7
  s1 \repeat volta 2 {
    bes2 g:m % 3b
    c2:m7 f:7
    bes2 g:m % 4a
    bes1:m7
    g1:m7.5- % 4b
    ges1
    f1:7
    ees1 % 5a
    aes1
    c2:m aes
    des2 des:maj7 % 5b
    ees2 ees4:9sus ees:7
    aes1
    c2:m aes % 6a
    des1
  }
  \alternative {{a2:0 f:7}{a1:0}}
  bes2 g:m % 6b+
  c2:m f:7 % 7a
  bes2 g:m
  bes1:m7 % 7b
  g1:m7.5-
  ges1 % 8a
  f1:7
  s1
  bes2 g:m % 8b
  c2:m f:7
  bes2 g:m % 9a
  bes1:m7
  g1:m7.5- % 9b
  ges1
  f1:7
  ges1 % 10a
  aes1
  c2:m aes
  des1 % 10b
  s1
  aes1
  c2:m aes % 11a
  des1
  a2:0 f:7
  bes1 % 11b
  d2:m bes
  ees1
  s1
  bes4 c:m/bes bes c:m/bes % 12a
  bes4 c:m/bes ces c:m/bes
  ees4 c:m/ees ees2
  s1 % 12b
  s1
  bes
  s4 f:7 bes
}

sopranoA = \tripletFeel 8 \relative {
  \global
  r4
  R1
  r2 r4 bes'8 c \bar "||"
  d8 c bes a bes a g f
  g8 f ees4~8 f bes c % 2b
  d8 c bes a bes f bes aes~
  aes2 r8 f bes c
  c8 bes bes4 bes c8 des~ % 3a
  des2 r8 bes c des~
  des8 bes c4 r2
  r2 r4 bes8 c |
}

sopranoB = \tripletFeel 8 \relative {
    d''8 c bes a bes a g f | % 3b
    g8 f ees4~8 f bes c
    d8 c bes a bes f g bes % 4a
    aes2 r
    g1( % 4b
    ges1 |
    f1 |
    ees2) r4 c'8 des | % 5a
    ees4. des8 c des4 ees8~ |
    ees4. des8 c bes4 aes8~ |
    aes1 % 5b
    R1
    \tag #'verseBoth {ees'4. des8 c  des4 ees8~ | ees4. des8 c bes4 aes8~ | aes4 bes c des |}
    \tag #'verseOne  {ees4.  des8 c  des4 ees8~ | ees4. des8 c bes4 aes8~ | aes4 bes c des |}
    \tag #'verseTwo  {r2          c8 des4 ees8~ | ees4. des8 c bes4 aes8~ | aes4 bes d des |}
%    des8 c bes4 aes8~ % 6a
%    aes4 bes c des |
  }

sopranoC = \tripletFeel 8 \relative {
  c''4 a f8 f bes c |
}

sopranoD = \relative {
  c''4 a r2 % 6b
}

sopranoE = \tripletFeel 8 \relative {
  f'2 d'4. bes8
  c8 bes g4. r8 r4 % 7a
  f2 d'4. bes8
  c4(bes) r2 % 7b
  \override Glissando.style = #'zigzag
  r4 bes2.(\glissando
  d2.) r4 % 8a
  r2 r8 bes c des~
  des8 bes c4 r bes8 c
  d8 c bes a bes a g f % 8b
  g8 f ees4 r8 f bes c
  d8 c bes a bes f g bes % 9a
  aes2 r8 f bes c
  c8 bes bes4 bes c8 des~ % 9b
  des2 r8 bes c des~
  des8 bes c4 r c8 g
  bes2 r4 c8 des % 10a
  ees4. des8 c des4 ees8~
  ees4. des8 c bes4 aes8~
  aes1(\glissando % 10b
  f'2.) r4
  ees4. des8 c des4 ees8~
  ees4. des8 c bes4 aes8~ % 11a
  aes4 bes c des
  c4 a f8 r d' ees
  f4. ees8 d ees4 f8~ % 11b
  f4. ees8 d c4 bes8~
  \set glissandoMap = #'((0 . 0) (0 . 1))
  bes1(\glissando
  <ees g>2.) r4
  <d f>4. <c ees>8 <bes d> <c ees>4 <d f>8~ % 12a
  q4. <c ees>8 <bes d> <a c>4 bes8~
  bes1(\glissando
  <ees g>1~ % 12b
  q4) r f8 ees \tuplet 3/2 {f8( cis d~}
  d4) r r2
  R1
}

soprano = \relative {
  \sopranoA
  \repeat volta 2 {
    \keepWithTag #'verseBoth \sopranoB
  }
  \alternative {
    {
      \sopranoC
    }
    {
      \sopranoD
    }
  }
  \sopranoE
  \bar "|."
}

sopranoSingle = \relative {
  \sopranoA
  \keepWithTag #'verseOne \sopranoB
  \sopranoC
  \keepWithTag #'verseTwo \sopranoB
  \sopranoD
  \sopranoE
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s4
  s1
  s2 s4 s\mf
  s1*8
  \repeat volta 2 {
    s1*12
    s1\f
    s1*2
  }
  \alternative {{s1}{s1}}
  s1*3
  s2\> s2\!
  s4 s2.\mf
  s1 % 8a
  s2 s8 s4.\f
  s1*16
  s2\> s8 s\! s4\mf
  s1 % 11b
  s1
  s1\cresc
  s1
  s1\ff % 12a
  s1*6
}

wordsSopOne = \lyricmode {
  Pen -- ny Lane:
  There is a bar -- ber show -- ing pho -- to -- graphs __
  of ev -- 'ry head he's had the plea -- sure to know __
  And all the peo -- ple that come and go __
  stop and say __ hel -- lo.
  On the
}

wordsSopOneEmpty = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _

}

wordsSopTwoA = \lyricmode {
  cor -- ner is a bank -- er with a mo -- tor car, __
  The lit -- tle chil -- dren laugh at him be -- hind his back.
  Oh __
}

wordsSopTwoB = \lyricmode {
  Lane: there is a fire -- man with an ho -- ur -- glass, __
  and in his pock -- et is a por -- trait of the queen,
  Oh __
}

wordsSopThree = \lyricmode {
  Pen -- ny Lane is in my ears __
  and in my eyes. __
}

wordsSopThreeEmpty = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
}

wordsSopFourA = \lyricmode {
  Wet be -- neath the blue __ sub -- ur -- ban skies. __
  I sit and…

  mean -- while back in Pen -- ny
}

wordsSopFourB = \lyricmode {
  full of fish __ and fin -- ger pies __ in sum -- mer
}

wordsSopFive = \lyricmode {
  mean -- while.

  There in the round -- a -- bout
  Flow'rs from a tray. __
  Oh __
  she is an -- y -- way,
  Pen -- ny Lane:
  the bar -- ber shaves a -- noth -- er cus -- tom -- er.
  We see the bank -- er sit -- ting, wait -- ing for a trend.
  And then the fi -- re -- man rush -- es in __
  from the pour -- ing rain, ver -- y strange!
  Pen -- ny Lane is in my ears __ and in my eyes. __
  Wet be -- neath the blue __ sub -- ur -- ban skies. __
  I sit and… mean -- while back…
  Pen -- ny Lane is in my ears __ and in my eyes. __
  Wet be -- neath the blue __ sub -- ur -- ban skies. __
  Pen -- ny Lane. __
}

wordsSopFirst  = { \wordsSopOne
                   \wordsSopTwoA
                   \wordsSopThree
                   \wordsSopFourA
                 }
wordsSopSecond = \lyricmode {
                   \wordsSopOneEmpty
                   \wordsSopTwoB
                   \wordsSopThreeEmpty
                   _ _
                   \wordsSopFourB
                   _ _ _ _ _ _
                   \wordsSopFive
                   }
wordsSopSingle = { \wordsSopOne
                   \wordsSopTwoA
                   \wordsSopThree
                   \wordsSopFourA
                   \wordsSopTwoB
                   \wordsSopThree
                   \wordsSopFourB
                   \wordsSopFive
                 }
                
wordsSopMidi = \lyricmode {
  "Pen" "ny " "Lane: "
  "\nThere " "is " "a " bar "ber " show "ing " pho to "graphs " 
  "\nof " ev "'ry " "head " "he's " "had " "the " plea "sure " "to " "know " 
  "\nAnd " "all " "the " peo "ple " "that " "come " "and " "go " 
  "\nstop " "and " "say "  hel "lo. "
  "\nOn " "the " cor "ner " "is " "a " bank "er " "with " "a " mo "tor " "car, " 
  "\nThe " lit "tle " chil "dren " "laugh " "at " "him " be "hind " "his " "back. "
  "\nOh " 
  "\nPen" "ny " "Lane " "is " "in " "my " "ears " 
  "\nand " "in " "my " "eyes. " 
  "\nWet " be "neath " "the " "blue "  sub ur "ban " "skies. " 
  "\nI " "sit " "and… "

  "\nmean" "while " "back " "in " Pen "ny " "Lane: "
  "\nthere " "is " "a " fire "man " "with " "an " ho ur "glass, "
  "\nand " "in " "his " pock "et " "is " "a " por "trait " "of " "the " "queen, "
  "\nOh " 
  "\nPen" "ny " "Lane " "is " "in " "my " "ears " 
  "\nand " "in " "my " "eyes. " 
  "\nfull " "of " "fish "  "and " fin "ger " "pies "  "in " sum "mer "
  "\nmean" "while. "

  "\nThere " "in " "the " round a "bout "
  "\nFlow'rs " "from " "a " "tray. " 
  "\nOh " 
  "\nshe " "is " an y "way, "
  "\nPen" "ny " "Lane: "
  "\nthe " bar "ber " "shaves " a noth "er " cus tom "er. "
  "\nWe " "see " "the " bank "er " sit "ting, " wait "ing " "for " "a " "trend. "
  "\nAnd " "then " "the " fi re "man " rush "es " "in " 
  "\nfrom " "the " pour "ing " "rain, " ver "y " "strange! "
  "\nPen" "ny " "Lane " "is " "in " "my " "ears "  "and " "in " "my " "eyes. " 
  "\nWet " be "neath " "the " "blue "  sub ur "ban " "skies. " 
  "\nI " "sit " "and… " mean "while " "back… "
  "\nPen" "ny " "Lane " "is " "in " "my " "ears "  "and " "in " "my " "eyes. " 
  "\nWet " be "neath " "the " "blue "  sub ur "ban " "skies. " 
  "\nPen" "ny " "Lane. " 
}

altoA = \tripletFeel 8 \relative {
  \override Glissando.style = #'zigzag
  \global
  r4
  R1
  R1
  d'2 d
  ees2 ees % 2b
  d2 d
  des1
  des1 % 3a
  des1
  ees2 r8 des ees f~
  f8 ees f4 r2
}

altoB = \tripletFeel 8 \relative {
  d''8 c bes a bes a g f % 3b
  ees8 d c4~c8 f bes c
  d8 c bes a bes f g g % 4a
  f2 r
  g1( % 4b
  ges1
  f1
  ees2) r4 c'8 bes % 5a
  aes4. aes8 aes aes4 g8~
  g4. g8 aes g4 f8~
  f1 % 5b
  R1
  \tag #'verseBoth { aes4. aes8 aes  aes4 g8~ | g4. g8 aes8 g4 f8~ | f4 des4 ees f | }
  \tag #'verseOne  { aes4. aes8 aes  aes4 g8~ | g4. g8 aes8 g4 f8~ | f4 des4 ees f | }
  \tag #'verseTwo  { r2         aes8 aes4 g8~ | g4. g8 aes8 g4 f8~ | f4 des4 ees f | }
}

altoC = \tripletFeel 8 \relative {
  ees'4 ees f8 f bes c
}

altoD = \relative {
  ees'4 ees r2 % 6b
}

altoE = \tripletFeel 8 \relative {
  f'2 g4. d8
  ees8 d c4. r8 r4 % 7a
  f2 g4. d8
  des2 r % 7b
  r4 des2.\glissando(
  ges2.) r4 % 8a
  r2 r8 bes c a~
  a8 g a4 r bes8 c
  d8 c bes a bes a g f % 8b
  g8 f ees4 r8 f bes c
  d8 c bes a bes f g bes % 9a
  aes2 r8 f bes c
  c8 bes bes4 bes c8 bes8~ % 9b
  bes2 r8 bes c a~
  a8 g a4 r a8 g
  g2 r4 g8 g % 10a
  aes4. aes8 aes aes4 g8~
  g4. g8 aes g4 f8~
  f1\glissando( % 10b
  aes2.) r4
  aes4. aes8 aes aes4 g8~
  g4. g8 aes g4 f8~ % 11a
  f4 des ees f
  ees4 ees ees8 r f g
  bes4. bes8 bes bes4 a8~ % 11b
  a4. a8 bes a4 g8~(
  g1\glissando
  bes2.) r4
  bes4. f8 f g4 a8~ % 12a
  a4. g8 f f4 g8~(
  g1\glissando
  bes1~ % 12b
  bes4) r bes8 bes bes4~
  bes4 r r2
  R1
  \bar "|."
}

alto = \relative {
  \altoA
  \repeat volta 2 {
    \keepWithTag #'verseBoth \altoB
  }
  \alternative {
    {
      \altoC
    }
    {
      \altoD
    }
  }
  \altoE
  \bar "|."
}

altoSingle = \relative {
  \altoA
  \keepWithTag #'verseOne \altoB
  \altoC
  \keepWithTag #'verseTwo \altoB
  \altoD
  \altoE
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4
  s1
  s1
  s1\mf
  s1*7
  \repeat volta 2 {
    s1\f % 3b
    s1*11
    s1\f % 5b++
    s1*2
  }
  \alternative {{s2.\< s4\!}{s1}}
  s1*4
  s4 s2.\mf % 7b+
  s1 % 8a
  s2 s8 s\f s4
  s1*16
  s2\> s8 s\! s4\mf % 11a++
  s1 % 11b
  s1
  s1\cresc
  s1
  s1\ff % 12a
  s1*6
}

wordsAltoA = \lyricmode {
  Hrmm Hrmm Hrmm Hrmm Hrmm
  Hrmm Hrmm Hrmm Hrmm Hrmm
  stop and say __ hel -- lo,
}

wordsAltoAempty = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
}


wordsAltoBone = \lyricmode {
  cor -- ner is a bank -- er with a mo -- tor car, __
  The lit -- tle chil -- dren laugh at him be -- hind his back.
  Oh __
  Pen -- ny Lane is in my ears __  and in my eyes. __
  Wet be -- neath the blue __ sub -- ur -- ban skies. __
  I sit and…
}

wordsAltoBtwoA = \lyricmode {
  Lane: there is a fire -- man with an ho -- ur -- glass, __
  and in his pock -- et is a por -- trait of the queen,
  _ _ _ _ _ _ _ _ _ _
  _ _
  _ _ full of fish __ and fin -- ger pies __
  in sum -- mer
}

wordsAltoBtwoB = \lyricmode {
  Lane: there is a fire -- man with an ho -- ur -- glass, __
  and in his pock -- et is a por -- trait of the queen,
  Oh __
  Pen -- ny Lane is in my ears __  and in my eyes. __
  full of fish __ and fin -- ger pies __
  in sum -- mer
}

wordsAltoC = \lyricmode {
  mean -- while back in Pen -- ny
}

wordsAltoCempty = \lyricmode {
  _ _ _ _ _ _
}

wordsAltoD = \lyricmode {
  mean -- while.
}

wordsAltoDempty = \lyricmode {
  _ _
}

wordsAltoE = \lyricmode {
  There in the round -- a -- bout
  Flow'rs from a tray. __
  Oh __
  she is an -- y -- way.
  Pen -- ny Lane; the bar -- ber shaves an -- oth -- er cus -- tom -- er.
  We see the bank -- er sit -- ting, wait -- ing for a trend,
  And then the fi -- re -- man rush -- es in __
  from the pour -- ing rain,
  ve -- ry strange!
  Pen -- ny Lane is in my ears __ and in my eyes. __
  Wet be -- neath the blue __ sub -- ur -- ban skies. __
  I sit and… mean -- while back…
  Pen -- ny Lane is in my ears __ and in my eyes. __
  Wet be -- neath the blue __ sub -- ur -- ban skies. __
  Pen -- ny Lane. __
}

wordsAltoOne = \lyricmode {
  \wordsAltoA
  \wordsAltoBone
  \wordsAltoC
  \wordsAltoDempty
  \wordsAltoE
}

wordsAltoTwo = \lyricmode {
  \wordsAltoAempty
  _ \wordsAltoBtwoA
  \wordsAltoCempty
  \wordsAltoD
}

wordsAltoSingle = \lyricmode {
  \wordsAltoA
  \wordsAltoBone
  \wordsAltoC
  \wordsAltoBtwoB
  \wordsAltoD
  \wordsAltoE
}

wordsAltoMidi = \lyricmode {
  "\nHrmm " "Hrmm " "Hrmm " "Hrmm " "Hrmm "
  "\nHrmm " "Hrmm " "Hrmm " "Hrmm " "Hrmm "
  "\nstop " "and " "say "  hel "lo, "
  "\ncor" "ner " "is " "a " bank "er " "with " "a " mo "tor " "car, " 
  "\nThe " lit "tle " chil "dren " "laugh " "at " "him " be "hind " "his " "back. "
  "\nOh " 
  "\nPen" "ny " "Lane " "is " "in " "my " "ears "   "and " "in " "my " "eyes. " 
  "\nWet " be "neath " "the " "blue "  sub ur "ban " "skies. " 
  "\nI " "sit " "and… "
  "\nmean" "while " "back " "in " Pen "ny "
  "\nLane: " "there " "is " "a " fire "man " "with " "an " ho ur "glass, " 
  "\nand " "in " "his " pock "et " "is " "a " por "trait " "of " "the " "queen, "
  "\nOh " 
  "\nPen" "ny " "Lane " "is " "in " "my " "ears "   "and " "in " "my " "eyes. " 
  "\nfull " "of " "fish "  "and " fin "ger " "pies " 
  "\nin " sum "mer "
  "\nmean" "while. "
  "\nThere " "in " "the " round a "bout "
  "\nFlow'rs " "from " "a " "tray. " 
  "\nOh " 
  "\nshe " "is " an y "way. "
  "\nPen" "ny " "Lane; " "the " bar "ber " "shaves " an oth "er " cus tom "er. "
  "\nWe " "see " "the " bank "er " sit "ting, " wait "ing " "for " "a " "trend, "
  "\nAnd " "then " "the " fi re "man " rush "es " "in " 
  "\nfrom " "the " pour "ing " "rain, "
  "\nve" "ry " "strange! "
  "\nPen" "ny " "Lane " "is " "in " "my " "ears "  "and " "in " "my " "eyes. " 
  "\nWet " be "neath " "the " "blue "  sub ur "ban " "skies. " 
  "\nI " "sit " "and… " mean "while " "back… "
  "\nPen" "ny " "Lane " "is " "in " "my " "ears "  "and " "in " "my " "eyes. " 
  "\nWet " be "neath " "the " "blue "  sub ur "ban " "skies. " 
  "\nPen" "ny " "Lane. " 
}

tenorA = \tripletFeel 8 \relative {
  \override Glissando.style = #'zigzag
  \global
  r4
  R1
  R1
  f2 bes
  g2 a % 2b
  f2 bes
  f1
  f1 % 3a
  bes1
  a2 r8 a a a~
  a8 a a4 r2
}

tenorB = \tripletFeel 8 \relative {
  \override Glissando.style = #'zigzag
  d'2( bes % 3b
  g2 a\glissando
  d2 bes\glissando % 4a
  des2)
  \tag #'verseBoth { << {\vt r8 \teeny f, \normalsize } \new Voice {\vo r4} >> bes8 c }
  \tag #'verseOne  {                                                                r4     bes8 c }
  \tag #'verseTwo  {               r8        f,                                            bes8 c }
  \ov c8 bes bes bes bes4 c8 des~ % 4b
  des4 r r8 bes c des~
  des8 bes c4
  \tag #'verseBoth {r c8 g bes4 r}
  \tag #'verseOne  {r c8 g bes4 r}
  \tag #'verseTwo  {r2     r     }
     r4 c8 des % 5a
  ees4. des8 c des4 ees8~
  ees4. des8 c bes4 aes8~
  aes1 % 5b
  R1
  \tag #'verseBoth { ees'4. des8 c  des4 ees8~ | ees4. des8 c bes4 aes8~ | aes4 aes aes aes }
  \tag #'verseOne  { ees'4. des8 c  des4 ees8~ | ees4. des8 c bes4 aes8~ | aes4 aes aes aes }
  \tag #'verseTwo  { r2          c8 des4 ees8~ | ees4. des8 c bes4 aes8~ | aes4 aes aes aes }
}

tenorC = \tripletFeel 8 \relative {
  \override Glissando.style = #'zigzag
  a'4 a r2
}


tenorD = \tripletFeel 8 \relative {
  \override Glissando.style = #'zigzag
  a4 a f8 f bes c % 6b
}

tenorE = \tripletFeel 8 \relative {
  \override Glissando.style = #'zigzag
  d'8 c bes a bes a g f
  g8 f ees4~ees8 f bes c % 7a
  d8 c bes a bes f g bes
  aes2 r8 f bes c % 7b
  c8 bes bes bes bes4 c8 des8~
  des2 r8 bes c des~ % 8a
  des8 bes c4 r2
  r2 r4 d8 ees
  f8 ees d c d f d d % 8b
  ees8 d c4 r8 f g g
  f8 ees d c d d d d % 9a
  des2 r8 f bes, c
  c8 bes bes4 bes c8 des~ % 9b
  des2 r8 bes c des~
  des8 des ees4 r ees8 ees
  ees2 r4 ees8 ees % 10a
  ees4. des8 c des4 ees8~
  ees4. des8 c bes4 aes8~(
  aes1\glissando % 10b
  f'2.) r4
  ees4. des8 c des4 ees8~
  ees4. des8 c bes4 aes8~ % 11a
  aes4 aes aes aes
  a4 a a8 r d ees
  f4. ees8 d ees4 f8~ % 11b
  f4. ees8 d c4 bes8~(
  \set glissandoMap = #'((0 . 0) (0 . 1))
  bes1\glissando
  <ees g>2.) r4
  f4. ees8 d ees4 f8~ % 12a
  f4. ees8 d c4 bes8~(
  bes1\glissando
  <ees g>1~ % 12b
  q4) r f8 ees \tuplet 3/2 {f8(cis d~}
  d4) r r2
  R1
  \bar "|."
}

tenor = \relative {
  \tenorA
  \repeat volta 2 {
    \keepWithTag #'verseBoth \tenorB
  }
  \alternative {{ \tenorC } { \tenorD } }
  \tenorE
  \bar "|."
}

tenorSingle = \relative {
  \tenorA
  \keepWithTag #'verseOne \tenorB
  \tenorC
  \keepWithTag #'verseTwo \tenorB
  \tenorD
  \tenorE
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4
  s1
  s1
  s1\mf
  s1*7
  \repeat volta 2 {
    s1*12
    s1\f % 5b++
    s1 % 6a
    s1
  }
  \alternative {{s2\> s\!}{s1}}
  s1*3
  s2\> s8\! s4.\mf % 7b
  s1*3
  s2. s4\f % 8a++
  s1*15
  s2\> s8 s\! s4\mf % 11a++
  s1 % 11b
  s1
  s1\cresc
  s1
  s1\ff % 12a
  s1*6
}

wordsTenorA = \lyricmode {
  Hrmm Hrmm Hrmm Hrmm Hrmm
  Hrmm Hrmm Hrmm Hrmm Hrmm
  stop and say __ hel -- lo.
}

wordsTenorAempty = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
}

wordsTenorBone = \lyricmode {
  And the bank -- er ne -- ver wears a “mac” __
  in the pour -- ing rain,
  ve -- ry strange!
  Pen -- ny Lane is in my ears __  and in my eyes. __
  Wet be -- neath the blue __ sub -- ur -- ban skies. __
  I sit and…
}

wordsTenorBtwoA = \lyricmode {
  He likes to keep his fi -- re en -- gine clean, __
  it's a clean __ ma -- chine,
  _ _ _
  _ _ _ _ _ _ _
  _ _ _ _
  _ _ full of fish __ and fin -- ger pies __
  in sum -- mer
}

wordsTenorBtwoB = \lyricmode {
  Oh __
  He likes to keep his fi -- re en -- gine clean, __
  it's a clean __ ma -- chine,
  Pen -- ny Lane is in my ears __
  and in my eyes. __
  full of fish __ and fin -- ger pies __
  in sum -- mer
}

wordsTenorC = \lyricmode {
  mean -- while,
}

wordsTenorCempty = \lyricmode {
  _ _
}

wordsTenorD = \lyricmode {
  mean -- while back be -- hind the
}

wordsTenorDempty = \lyricmode {
  _ _ _ _ _ _
}

wordsTenorE = \lyricmode {
  shel -- ter in the mid -- dle of the round -- a -- bout __
  a pret -- ty nurse is sell -- ing pop -- pies from a tray. __
  And tho' she feels as if she's in a play__
  she is an -- y -- way.
  Pen -- ny Lane; the bar -- ber shaves an -- oth -- er cus -- tom -- er.
  We see the bank -- er sit -- ting, wait -- ing for a trend,
  And then the fi -- re -- man rush -- es in __
  from the pour -- ing rain,
  ve -- ry strange!
  Pen -- ny Lane is in my ears __ and in my eyes. __
  Wet be -- neath the blue __ sub -- ur -- ban skies. __
  I sit and… mean -- while back…
  Pen -- ny Lane is in my ears __ and in my eyes. __
  Wet be -- neath the blue __ sub -- ur -- ban skies. __
  Pen -- ny Lane. __
}

wordsTenorOne = \lyricmode {
  \wordsTenorA
  "\nOh" _ \wordsTenorBone
  \wordsTenorC
  \wordsTenorDempty
  \wordsTenorE
}

wordsTenorTwo = \lyricmode {
  \wordsTenorAempty
  _ \wordsTenorBtwoA
  \wordsTenorCempty
  \wordsTenorD
}

wordsTenorSingle = \lyricmode {
  \wordsTenorA
  Oh __ \wordsTenorBone
  \wordsTenorC
  \wordsTenorBtwoB
  \wordsTenorD
  \wordsTenorE
}

wordsTenorMidi = \lyricmode {
  "Hrmm " "Hrmm " "Hrmm " "Hrmm " "Hrmm "
  "\nHrmm " "Hrmm " "Hrmm " "Hrmm " "Hrmm "
  "\nstop " "and " "say "  hel "lo. "
  "\nOh " 
  "\nAnd " "the " bank "er " ne "ver " "wears " "a " "“mac” " 
  "\nin " "the " pour "ing " "rain, "
  "\nve" "ry " "strange! "
  "\nPen" "ny " "Lane " "is " "in " "my " "ears "   "and " "in " "my " "eyes. " 
  "\nWet " be "neath " "the " "blue "  sub ur "ban " "skies. " 
  "\nI " "sit " "and… "
  "\nmean" "while, "
  "\nOh " 
  "\nHe " "likes " "to " "keep " "his " fi "re " en "gine " "clean, " 
  "\nit's " "a " "clean "  ma "chine, "
  "\nPen" "ny " "Lane " "is " "in " "my " "ears " 
  "\nand " "in " "my " "eyes. " 
  "\nfull " "of " "fish "  "and " fin "ger " "pies " 
  "\nin " sum "mer "
  "\nmean" "while " "back " be "hind " "the "
  "\nshel" "ter " "in " "the " mid "dle " "of " "the " round a "bout " 
  "\na " pret "ty " "nurse " "is " sell "ing " pop "pies " "from " "a " "tray. " 
  "\nAnd " "tho' " "she " "feels " "as " "if " "she's " "in " "a " "play__ "
  "\nshe " "is " an y "way. "
  "\nPen" "ny " "Lane; " "the " bar "ber " "shaves " an oth "er " cus tom "er. "
  "\nWe " "see " "the " bank "er " sit "ting, " wait "ing " "for " "a " "trend, "
  "\nAnd " "then " "the " fi re "man " rush "es " "in " 
  "\nfrom " "the " pour "ing " "rain, "
  "\nve" "ry " "strange! "
  "\nPen" "ny " "Lane " "is " "in " "my " "ears "  "and " "in " "my " "eyes. " 
  "\nWet " be "neath " "the " "blue "  sub ur "ban " "skies. " 
  "\nI " "sit " "and… " mean "while " "back… "
  "\nPen" "ny " "Lane " "is " "in " "my " "ears "  "and " "in " "my " "eyes. " 
  "\nWet " be "neath " "the " "blue "  sub ur "ban " "skies. " 
  "\nPen" "ny " "Lane. " 
}

bassA= \tripletFeel 8 \relative {
  \global
  \override Glissando.style = #'zigzag
  r4
  R1
  R1
  bes,2 g
  c2 <\tweak font-size #-2 f, f'> % 2b
  bes2 g
  bes1
  g1 % 3a
  ges1
  f2 r8 f' f f~
  f8 f f4 r2
}

bassBboth = \tripletFeel 8 \relative {
  bes2( g % 3b
  ees2 f\glissando
  bes2 g\glissando % 4a
  bes,2) << {\vo r8 \teeny f'8 \normalsize} \new Voice  {\vt r4} >> bes8 c
  c8 bes bes bes bes4 c8 bes~ % 4b
  bes4 r r8 bes c bes~
  bes8 a bes4 r a8 g
  g4 r r c8 bes % 5a
  c4. bes8 aes bes4 c8~
  c4. bes8 aes g4 f8~
  f1 % 5b
  R1
  c'4. bes8 aes bes4 c8~
  c4. bes8 aes g4 f8~ % 6a
  f4 f f f
}


bassBone = \tripletFeel 8 \relative {
  bes2( g % 3b
  ees2 f\glissando
  bes2 g\glissando % 4a
  bes,2) r4     bes'8 c
  c8 bes bes bes bes4 c8 bes~ % 4b
  bes4 r r8 bes c bes~
  bes8 a bes4 r a8 g
  g4 r r c8 bes % 5a
  c4. bes8 aes bes4 c8~
  c4. bes8 aes g4 f8~
  f1 % 5b
  R1
  c'4. bes8 aes bes4 c8~
  c4. bes8 aes g4 f8~ % 6a
  f4 f f f
}


bassBtwo = \tripletFeel 8 \relative {
  bes2( g % 3b
  ees2 f\glissando
  bes2 g\glissando % 4a
  bes,2) r8 f'8 bes8 c
  c8 bes bes bes bes4 c8 bes~ % 4b
  bes4 r r8 bes c bes~
  bes8 a bes4 r2
  r2 r4 c8 bes % 5a
  c4. bes8 aes bes4 c8~
  c4. bes8 aes g4 f8~
  f1 % 5b
  R1
  r2 aes8 bes4 c8~
  c4. bes8 aes g4 f8~ % 6a
  f4 f f f
}

bassC = \relative {
  fis4 fis r2
}

bassD = \tripletFeel 8 \relative {
  fis4 fis f8 f bes c % 6b
}

bassE = \tripletFeel 8 \relative {
  d'8 c bes a bes a g f
  g8 f ees4~8 f bes c % 7a
  d8 c bes a bes f g g
  f2 r8 f bes8 c % 7b
  c8 bes bes bes bes4 c8 bes~
  bes2 r8 bes c a~ % 8a
  a8 g a4 r2
  r2 r4 f8 c
  bes8 c d f g a bes c % 8b
  bes8 a g4 r8 f ees c
  bes8 c d f g a bes g % 9a
  f2 r8 f bes c
  c8 bes bes4 bes c8 bes~ % 9b
  bes2 r8 bes ges f~
  f8 f f4 r f8 f
  ees2 r4 bes'8 bes % 10a
  c4. bes8 aes bes4 c8~
  c4. bes8 aes g4 f8~
  f1\glissando( % 10b
  des'2.) r4
  c4. bes8 aes bes4 c8~
  c4. bes8 aes g4 f8~ % 11a
  f4 f f f
  fis4 fis f8 r bes c
  d4. c8 bes c4 d8~ % 11b
  d4. c8 bes a4 g8~
  g1\glissando(
  bes2.) r4
  bes4. bes8 bes bes4 d8~ % 12a
  d4. c8 bes a4 g8~
  g1\glissando(
  bes1~ % 12b
  bes4) r g8 g g4(
  bes4) r r2
  R1
  \bar "|."
}

bass = {
  \bassA
  \repeat volta 2 {
    \bassBboth
  }
  \alternative {
    {
      \bassC
    }
    {
      \bassD
    }
  }
  \bassE
}

bassSingle = {
  \bassA
  \bassBone
  \bassC
  \bassBtwo
  \bassD
  \bassE
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4
  s1
  s1
  s1\mf
  s1*7
  \repeat volta 2 {
    s1*12
    s1\f % 5b++
    s1 % 6a
    s1
  }
  \alternative {{s2\> s\!}{s1}}
  s1*3
  s2\> s8\! s4.\mf % 7b
  s1*3
  s2. s4\f % 8a++
  s1*15
  s2\> s8 s\! s4\mf % 11a++
  s1 % 11b
  s1
  s1\cresc
  s1
  s1\ff % 12a
  s1*6
}

wordsBassA = \lyricmode {
  Hrmm Hrmm Hrmm Hrmm Hrmm
  Hrmm Hrmm Hrmm Hrmm Hrmm
  stop and say __ hel -- lo.
}

wordsBassAempty = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
}

wordsBassBone = \lyricmode {
  And the bank -- er ne -- ver wears a “mac” __
  in the pour -- ing rain,
  ve -- ry strange!
  Pen -- ny Lane is in my ears __  and in my eyes. __
  Wet be -- neath the blue __ sub -- ur -- ban skies. __
  I sit and…
}

wordsBassBtwoA = \lyricmode {
  He likes to keep his fi -- re en -- gine clean, __
  it's a clean __ ma -- chine,
  _ _ _
  _ _ _ _ _ _ _
  _ _ _ _
  _ _ full of fish __ and fin -- ger pies __
  in sum -- mer
}

wordsBassBtwoB = \lyricmode {
  Oh __
  He likes to keep his fi -- re en -- gine clean, __
  it's a clean __ ma -- chine,
  Pen -- ny Lane is in my ears __
  and in my eyes. __
  full of fish __ and fin -- ger pies __
  in sum -- mer
}

wordsBassC = \lyricmode {
  mean -- while,
}

wordsBassCempty = \lyricmode {
  _ _
}

wordsBassD = \lyricmode {
  mean -- while back be -- hind the
}

wordsBassDempty = \lyricmode {
  _ _ _ _ _ _
}

wordsBassE = \lyricmode {
  shel -- ter in the mid -- dle of the round -- a -- bout __
  a pret -- ty nurse is sell -- ing pop -- pies from a tray. __
  And tho' she feels as if she's in a play__
  she is an -- y -- way.
  Pen -- ny Lane; the bar -- ber shaves an -- oth -- er cus -- tom -- er.
  We see the bank -- er sit -- ting, wait -- ing for a trend,
  And then the fi -- re -- man rush -- es in __
  from the pour -- ing rain,
  ve -- ry strange!
  Pen -- ny Lane is in my ears __ and in my eyes. __
  Wet be -- neath the blue __ sub -- ur -- ban skies. __
  I sit and… mean -- while back…
  Pen -- ny Lane is in my ears __ and in my eyes. __
  Wet be -- neath the blue __ sub -- ur -- ban skies. __
  Pen -- ny Lane. __
}

wordsBassOne = \lyricmode {
  \wordsBassA
  "\nOh" _ \wordsBassBone
  \wordsBassC
  \wordsBassDempty
  \wordsBassE
}

wordsBassTwo = \lyricmode {
  \wordsBassAempty
  _ \wordsBassBtwoA
  \wordsBassCempty
  \wordsBassD
}

wordsBassSingle = \lyricmode {
  \wordsBassA
  Oh __ \wordsBassBone
  \wordsBassC
  \wordsBassBtwoB
  \wordsBassD
  \wordsBassE
}

wordsBassMidi = \lyricmode {
  "Hrmm " "Hrmm " "Hrmm " "Hrmm " "Hrmm "
  "\nHrmm " "Hrmm " "Hrmm " "Hrmm " "Hrmm "
  "\nstop " "and " "say "  hel "lo. "
  "\nOh " 
  "\nAnd " "the " bank "er " ne "ver " "wears " "a " "“mac” " 
  "\nin " "the " pour "ing " "rain, "
  "\nve" "ry " "strange! "
  "\nPen" "ny " "Lane " "is " "in " "my " "ears "   "and " "in " "my " "eyes. " 
  "\nWet " be "neath " "the " "blue "  sub ur "ban " "skies. " 
  "\nI " "sit " "and… "
  "\nmean" "while, "
  "\nOh " 
  "\nHe " "likes " "to " "keep " "his " fi "re " en "gine " "clean, " 
  "\nit's " "a " "clean "  ma "chine, "
  "\nPen" "ny " "Lane " "is " "in " "my " "ears " 
  "\nand " "in " "my " "eyes. " 
  "\nfull " "of " "fish "  "and " fin "ger " "pies " 
  "\nin " sum "mer "
  "\nmean" "while " "back " be "hind " "the "
  "\nshel" "ter " "in " "the " mid "dle " "of " "the " round a "bout " 
  "\na " pret "ty " "nurse " "is " sell "ing " pop "pies " "from " "a " "tray. " 
  "\nAnd " "tho' " "she " "feels " "as " "if " "she's " "in " "a " "play__ "
  "\nshe " "is " an y "way. "
  "\nPen" "ny " "Lane; " "the " bar "ber " "shaves " an oth "er " cus tom "er. "
  "\nWe " "see " "the " bank "er " sit "ting, " wait "ing " "for " "a " "trend, "
  "\nAnd " "then " "the " fi re "man " rush "es " "in " 
  "\nfrom " "the " pour "ing " "rain, "
  "\nve" "ry " "strange! "
  "\nPen" "ny " "Lane" "is " "in " "my " "ears "  "and " "in " "my " "eyes. " 
  "\nWet " be "neath " "the " "blue "  sub ur "ban " "skies. " 
  "\nI " "sit " "and… " mean "while " "back… "
  "\nPen" "ny " "Lane " "is " "in " "my " "ears "  "and " "in " "my " "eyes. " 
  "\nWet " be "neath " "the " "blue "  sub ur "ban " "skies. " 
  "\nPen" "ny " "Lane. " 
}

pianoRH = \tripletFeel 8 \relative {
  \global
  bes''8 c
  <f, d'>8 c' bes a bes a g f
  <ees g>4 <ees bes'> <ees a c> r \bar "||"
  <f, bes d>4-. q-. <g bes d>-. q-.
  <g bes ees>4-. q-. <a c ees>-. q-. % 2b
  <f bes d>4-. q-. <g bes d>-. q-.
  <f aes des>4-. q-. <aes d f>-. q-.
  <bes des f>4-. q-. <f bes des>-. q-. % 3a
  <bes des f>8.-. ees16(<bes des>8.-.) ees16(q4) <des, ges bes>
  <ees f a>4-. q-. q-. <ees a c>-.
  <f a ees'>4-. q-. <a ees' f> r
  \repeat volta 2 {
    <f bes d>4-. q-. q-. q-. % 3b
    <g bes ees>4-. q-. <a ees' f>-. q-.
    <bes d f>4-. q-. <bes d g>-. q-. % 4a
    r4 <aes des f aes>4-> q2->
    r4 <des, f bes>2 <f bes des>4 % 4b
    <ges bes des>8 ees' q ees~4 <des, ges bes>
    r4 <c ees a>2 <ees a c>4
    <ees g bes>8 c' q c~4 <bes, ees g> % 5a
    s1
    s1
    s1 % 5b
    s1
    <ees aes c>4-. q-. q-. q-.
    <ees g c>4-. <ees g>-. <ees aes c>-. <ees g bes>-. % 6a
    <f aes des>1\arpeggio
  }
  \alternative {
    {
      r4 <ees a c>2.
    }
    {
      r4 <ees a c>2. % 6b
    }
  }
  <bes' d>4 q8 f q g q g
  <c ees>4 q8 g a2 % 7a
  r8 f <bes d> f q g q g
  r4 <f aes des f>2 <des f aes>4 % 7b
  r4 <des f bes> r <f bes des>
  r8 <bes des> ees f~2 % 8a
  r8 <ees, g> a <ees c'>~q bes' g a
  <ees a>8 g q4. f8 <d bes'>4
  <bes d f>2 <f' d'>4. bes8 % 8b
  <ees, g c>2 <a ees' f>
  <bes, d f>2 <f' d'>4. bes8 % 9a
  <f aes des>4 <aes des f>2 <f aes des>4
  r8 <f bes des> ees' <g, des' f>~4 <f bes c> % 9b
  <ges bes des>8 ees' q4 <f, bes des f> <ges bes>
  r4 <ees a c> r <ees f a>
  <ees g bes>4 <g ees'>8 f' <bes, ees g>2 % 10a
  <c ees aes>8 g' q4 s2
  s1
  <aes, des f>8 g' r <aes, des f aes> r <aes des f bes>4. % 10b
  r8 <c f aes c>4. <bes bes'>8 <aes aes'>4 f'8
  <c ees aes>8 g' q4 s2
  s1 % 11a
  <des f aes>1\arpeggio
  r4 <ees, g c>2.->
  <f bes d>4 q q q % 11b
  <f a d>4 <a c> <f bes d> <f a c>
  <ees g bes>8 c' r <g bes d>~q ees' r <bes d f>~
  q8 g' r <ees g bes>~q c' r <d, f bes d>~
  q4 <ees g c ees> <d f bes d> <c ees g c> % 12a
  <d f c ees>4 <ees g c ees> <d f bes d> <c ees g c>
  <bes ees g bes> <c ees g c> <d d'>8 <ees ees'> <bes bes'> <aes aes'>
  <g bes ees g>4\arpeggio bes8 c ees f g bes % 12b
  <g ees'>2 <bes,, ees g>
  \tuplet 3/2 {<d' f>8 bes q} g'4 <d f a>8\arpeggio-. bes'(f-.) ees
  d4 \tuplet 3/2 {<a ees' f>8 g' a} <d, f bes>4 r
  \bar "|."
}

pianoRHone = \tripletFeel 8 \relative {
  \global
  \vo
  s4
  s1*10
  \repeat volta 2 {
    s1*8
    aes'1 % 5a+
    g2 aes
    r8 <f aes> bes c~2 % 5b
    r8 <g bes> c des~2
    s1*3
  }
  \alternative {{s1}{s1}}
  s1*15
  s2 aes' % 10a+
  g2 aes
  s1 % 10b
  s1
  s2 aes
  g2 aes % 11a
  s1*13
}

pianoRHtwo = \tripletFeel 8 \relative {
  \global
  \vt
  s4
  s1*10
  \repeat volta 2 {
    s1*8
    <c' ees>4-. q-. q-. q-. % 5a+
    q4-. q-. q-. q-.
    s2 <f a>4-. q-. % 5b
    s2 <f aes>4 <g bes>
    s1*3
  }
  \alternative {{s1}{s1}}
  s1*15
  s2 <c ees>4 q % 10a+
  q4-. q-. q-. q-.
  s1 % 10b
  s1
  s2 q4 q
  q4 q q q % 11a
  s1*13
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\f
  s1
  s1
  s1\mf
  s1*7
  \repeat volta 2 {
    s1*11
    s8 s\< s2. % 5b+
    s1\f
    s1
    s1
  }
  \alternative {{s4 s2\> s4\!}{s1}}
  s1*3
  s2\> s\! % 7b
  s1\mf
  s1 % 8a
  s2 s\<
  s1\f
  s1*15
  s2 s\> % 11a++
  s1\mf % 11b
  s1
  s2 s\cresc
  s2. s8 s\ff
  s1*7
}

pianoLH = \tripletFeel 8 \relative {
  \global
  \ov
  r4
  bes,4 f' g bes8 b
  c8 bes g ges f4 r
  bes,4 a g f
  c4 g'8 c f,4 f % 2b
  bes4 a g f
  bes,4 f'8 aes bes4 bes8 a
  g4. g8 g4. g8 % 3a
  ges4 ges ges ges
  f4. c'8 f,4 f
  c'4. bes16 g c4 f,
  \repeat volta 2 {
    bes4. a8 g4. f8 % 3b
    ees4 c8 g' f4 c'
    bes4. a8 g4. f8 % 4a
    <bes, bes'>2.-> f'4
    g4 r g g % 4b
    ges4 r ges ges
    f4 r f f
    ees4 r ees ees % 5a
    aes4. 8 4. 8
    c4. bes8 aes4. aes8
    des,4. aes'8 des,4. aes'8 % 5b
    ees4. bes'8 ees,4. bes'8
    aes4. 8 4. ees8
    c4. g'8 aes4. ees8 % 6a
    des4 aes' f'2
  }
  \alternative {
    {
      r4 ges f8 ees d c
    }
    {
      r4 ges' f8 ees d c % 6b
    }
  }
  bes4 a g f
  ees4 c f8 ees d c % 7a
  bes4 aes' g f
  <bes, bes'>4. f'8 bes4. f8 % 7b
  g4. 8 4. 8
  ges4 4 4 4 % 8a
  f4 f f f
  f4 f f f
  bes4 a g f % 8b
  ees4 c f c'
  bes4 a g f % 9a
  <bes, bes'>4. f'8 bes4. f8
  g4 g bes g % 9b
  ges4. 8 4. 8
  f4. c'8 f,4. 8
  ees4 bes' ees bes % 10a
  aes4 4 4 8 bes
  c4. g8 aes4. ees8
  des4 4 4 4 % 10b
  des4 4 4 4
  aes'4 4 4 8 bes
  c4. g8 aes4. ees8 % 11a
  des4 aes' f'2
  r4 ges4 f8 ees d c
  bes4. 8 4. f8 % 11b
  d4. a'8 bes4. f8
  ees4 4 4 4
  ees8 bes' ees, bes' ees, bes' ees, bes'
  bes,4. 8 4. f'8 % 12a
  bes4. f8 bes,4. 8
  ees4 ees8 bes' ees,4 bes'
  ees,4 bes'8 c ees f g bes % 12b
  ees4 bes ees,2
  bes'1~
  bes4 r r <bes,, bes'>->
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
      <<
        \new ChoirStaff <<

                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSopFirst
            \addlyrics \wordsSopSecond
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          } <<
            \clef "bass"
            \new Dynamics \dynamicsBass
            \new Voice \keepWithTag #'verseBoth \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh <<
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
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    <<
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \sopranoSingle
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          } <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorSingle
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh <<
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
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \sopranoSingle
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorSingle
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh <<
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
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \sopranoSingle
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \altoSingle
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenorSingle
            \addlyrics {\tiny \wordsTenorSingle}
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
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh <<
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
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          } <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \sopranoSingle
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenorSingle
            \addlyrics {\tiny \wordsTenorSingle}
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
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh <<
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
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          } <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \sopranoSingle
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \altoSingle
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenorSingle
            \addlyrics \wordsTenorSingle
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
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh <<
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
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          } <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \sopranoSingle
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \altoSingle
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenorSingle
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh <<
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
    output-suffix = midi-sop
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames = guitar { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Dynamics \dynamicsSop
            \new Voice \sopranoSingle
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsTenor
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsBass
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames = guitar { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
            }<<
            \new Voice \TempoTrack
            \new Dynamics \dynamicsSop
            \new Voice \sopranoSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \altoSingle
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff  = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsTenor
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsBass
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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

\book {
  \paper {
    output-suffix = midi-tenor
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames = guitar { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Dynamics \dynamicsSop
            \new Voice \sopranoSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff  = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsTenor
            \new Voice \tenorSingle
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsBass
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
    \unfoldRepeats
    \articulate
    <<
      <<
        \new ChordNames = guitar { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Dynamics \dynamicsSop
            \new Voice \sopranoSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsAlto
            \new Voice \altoSingle
          >>
                                % Single tenor staff
          \new Staff  = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsTenor
            \new Voice \tenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \dynamicsBass
            \new Voice \bassSingle
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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
