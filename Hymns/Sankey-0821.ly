\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sing On!"
  subtitle    = "Sankey No. 821"
  subsubtitle = "C. C. No. 259"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Carrie M. Wilson."
  meter       = \markup\smallCaps "7.6. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*5
  \textMark \markup { \box \bold "B" }    s1*5
  \textMark \markup { \box \bold "C" }    s1*6
  \textMark \markup { \box \bold "D" }    s1*5
  \textMark \markup { \box \bold "E" }    s1*5
  \textMark \markup { \box \bold "F" }    s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 | 4. a8 bes4 a | 2 g4 c, | f4. 8 g4 f | c'2. 4 | d4. 8 c4 4 |
  c4.(bes8) a4 4 | g4. e'8 4 d | c2. 4 | d c bes a | c4.(bes8) a4 4 |
  a4. e8 f4 d | e2. 4 | f4. 8 4 bes | a2 c4 4 | 4. bes8 a4 g | f2. r4 |
  \section \sectionLabel \markup\smallCaps Chorus.
  \apart a2 g8. f16 g8. a16 | f2 c \auto | c'2 b8. c16 d8. c16 | c2(a) | g2 8. a16 bes8. c16 |
  a4(c) f f | e4. d8 c4 b | c2. r4 | a2 g8. f16 g8. a16 | f2 c |
  c'2 b8. c16 d8. c16 | 2(a) g2 8. a16 b8. c16 | a4(c) f d | c4. 8 4 e, | f2.
}

alto = \relative {
  \autoBeamOff
  f'4 | 4. 8 4 4 | 2 e4 c | 4. 8 4 d | e2. 4 | 4. 8 f4 f |
  e2 f4 4 | e4. g8 4 f | e2. 4 | 4 f g f | e2 f4 a |
  a4. e8 f4 d | cis2. 4 | d4. 8 4 4 | c2 f4 f | e4. g8 f4 e | f2. r4 \section |
  R1 | R | a2 gis8. a16 bes8. a16 | 2(f) | e2 8. f16 g8. e16 |
  f4(a) a a | g4. 8 4 f | e2. r4 | f4 4 c8. 16 8. 16 | 2 2 |
  a'2 gis8. a16 bes8. a16 | 2(f) | e2 8. f16 g8. e16 | f4(a) a f | 4. 8 e4 c | 2.
}

tenor = \relative {
  \autoBeamOff
  a4 | 4. c8 d4 c | 2 4 bes | a4. 8 bes4 b | c2. 4 | 4. 8 4 4 |
  c2 4 4 | 4. 8 4 b | c2. 4 | 4 4 4 4 | 2 4 a |
  a4. e8 f4 d | a'2. 4 | 4. 8 bes4 f | 2 a4 4 | g4. c8 4 bes | a2. r4 \section |
  \apart c2 bes8. a16 bes8. c16 | a2 2 \auto | R1 | R | c2 8. 16 8. 16 |
  c2 4 4 | 4. f8 e4 d | c2. r4 | c c bes8. a16 bes8. c16 | a2 2 |
  c2 8. 16 8. 16 | f2(c) | 2 8. 16 8. 16 | 2 4 bes | a4. 8 g4 bes | a2.
}

bass = \relative {
  \autoBeamOff
  f4 | 4. 8 4 4 | c2 4 e | f4. 8 e4 d | c2. c'4 | b4. 8 a4 4 |
  g2 f4 4 | g4. 8 4 g, | c2. c'4 | bes a e f | c2 f4 a |
  a4. e8 f4 d | a2. 4 | d4. 8 bes4 4 | f'2 4 4 | c4. 8 4 4 | f2. r4 \section |
  R1 | R | R | R | c2 8. 16 8. 16 |
  f2 4 4 | g4. 8 4 4 | c4(bes a g) | f4 4 8. 16 8. 16 | 2 2 |
  f2 8. 16 8. 16 | 1 | c2 8. 16 8. 16 | f2 4 bes, | c4. 8 4 4 | f2.
}

chorus = \lyricmode {
  Sing on: oh, bliss -- ful mu -- sic!
  With ev -- 'ry note you raise
  My heart is filled with rap -- ture,
  My soul is lost in praise! __
  Sing on: oh, bliss -- ful mu -- sic!
  With ev -- 'ry note you raise
  My heart is filled with rap -- ture,
  My soul is lost in praise!
}

chorusMen = \lyricmode {
  \repeat unfold 52 \skip 1
  \repeat unfold 20 \skip 1
  Sing on: bliss -- ful, bliss -- ful mu -- sic!
  \repeat unfold 19 \skip 1
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Sing on, ye joy -- ful pil -- grims,
  Nor think the mo -- ments long;
  My faith is heav'n -- ward ri -- sing
  With ev -- 'ry tune -- ful song!
  Lo, on the mount of bless -- ing,
  The glo -- rious mount, I stand,
  And look -- ing o -- ver Jor -- dan,
  I see the pro -- mised land!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sing on, ye joy -- ful pil -- grims!
  While her on earth we stay.
  Let songs of home and Je -- sus
  Be -- guile each fleet -- ing day:
  Sing on the grans old sto -- ry
  Of His re -- deem -- ing love—
  The ev -- er -- last -- ing cho -- rus
  That fills the realms a -- bove.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sing on, ye joy -- ful pil -- grims!
  The time will not be long,
  Till in our Fa -- ther's king -- dom
  We sing a no -- bler song!
  Where those we love are wait -- ing
  To greet us om the shore,
  We'll meet be -- yond the riv -- er,
  Where sur -- ges roll no more.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Sing " "on, " "ye " joy "ful " pil "grims, "
  "\nNor " "think " "the " mo "ments " "long; "
  "\nMy " "faith " "is " heav'n "ward " ri "sing "
  "\nWith " ev "'ry " tune "ful " "song! "
  "\nLo, " "on " "the " "mount " "of " bless "ing, "
  "\nThe " glo "rious " "mount, " "I " "stand, "
  "\nAnd " look "ing " o "ver " Jor "dan, "
  "\nI " "see " "the " pro "mised " "land! "
  "\nSing " "on: " "oh, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! " 
  "\nSing " "on: " "oh, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise!\n"

  \set stanza = "2."
  "\nSing " "on, " "ye " joy "ful " pil "grims! "
  "\nWhile " "her " "on " "earth " "we " "stay. "
  "\nLet " "songs " "of " "home " "and " Je "sus "
  "\nBe" "guile " "each " fleet "ing " "day: "
  "\nSing " "on " "the " "grans " "old " sto "ry "
  "\nOf " "His " re deem "ing " "love— "
  "\nThe " ev er last "ing " cho "rus "
  "\nThat " "fills " "the " "realms " a "bove. "
  "\nSing " "on: " "oh, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! " 
  "\nSing " "on: " "oh, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise!\n"

  \set stanza = "3."
  "\nSing " "on, " "ye " joy "ful " pil "grims! "
  "\nThe " "time " "will " "not " "be " "long, "
  "\nTill " "in " "our " Fa "ther's " king "dom "
  "\nWe " "sing " "a " no "bler " "song! "
  "\nWhere " "those " "we " "love " "are " wait "ing "
  "\nTo " "greet " "us " "om " "the " "shore, "
  "\nWe'll " "meet " be "yond " "the " riv "er, "
  "\nWhere " sur "ges " "roll " "no " "more. "
  "\nSing " "on: " "oh, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! " 
  "\nSing " "on: " "oh, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Sing " "on, " "ye " joy "ful " pil "grims, "
  "\nNor " "think " "the " mo "ments " "long; "
  "\nMy " "faith " "is " heav'n "ward " ri "sing "
  "\nWith " ev "'ry " tune "ful " "song! "
  "\nLo, " "on " "the " "mount " "of " bless "ing, "
  "\nThe " glo "rious " "mount, " "I " "stand, "
  "\nAnd " look "ing " o "ver " Jor "dan, "
  "\nI " "see " "the " pro "mised " "land! "
%  "\nSing " "on: " "oh, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! " 
  "\nSing " "on: " bliss "ful, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise!\n"

  \set stanza = "2."
  "\nSing " "on, " "ye " joy "ful " pil "grims! "
  "\nWhile " "her " "on " "earth " "we " "stay. "
  "\nLet " "songs " "of " "home " "and " Je "sus "
  "\nBe" "guile " "each " fleet "ing " "day: "
  "\nSing " "on " "the " "grans " "old " sto "ry "
  "\nOf " "His " re deem "ing " "love— "
  "\nThe " ev er last "ing " cho "rus "
  "\nThat " "fills " "the " "realms " a "bove. "
%  "\nSing " "on: " "oh, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! " 
  "\nSing " "on: " bliss "ful, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise!\n"

  \set stanza = "3."
  "\nSing " "on, " "ye " joy "ful " pil "grims! "
  "\nThe " "time " "will " "not " "be " "long, "
  "\nTill " "in " "our " Fa "ther's " king "dom "
  "\nWe " "sing " "a " no "bler " "song! "
  "\nWhere " "those " "we " "love " "are " wait "ing "
  "\nTo " "greet " "us " "om " "the " "shore, "
  "\nWe'll " "meet " be "yond " "the " riv "er, "
  "\nWhere " sur "ges " "roll " "no " "more. "
%  "\nSing " "on: " "oh, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! " 
  "\nSing " "on: " bliss "ful, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Sing " "on, " "ye " joy "ful " pil "grims, "
  "\nNor " "think " "the " mo "ments " "long; "
  "\nMy " "faith " "is " heav'n "ward " ri "sing "
  "\nWith " ev "'ry " tune "ful " "song! "
  "\nLo, " "on " "the " "mount " "of " bless "ing, "
  "\nThe " glo "rious " "mount, " "I " "stand, "
  "\nAnd " look "ing " o "ver " Jor "dan, "
  "\nI " "see " "the " pro "mised " "land! "
  "\nSing " "on: " "oh, " bliss "ful " mu "sic! "
%  With ev -- 'ry note you raise
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! " 
  "\nSing " "on: " bliss "ful, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise!\n"

  \set stanza = "2."
  "\nSing " "on, " "ye " joy "ful " pil "grims! "
  "\nWhile " "her " "on " "earth " "we " "stay. "
  "\nLet " "songs " "of " "home " "and " Je "sus "
  "\nBe" "guile " "each " fleet "ing " "day: "
  "\nSing " "on " "the " "grans " "old " sto "ry "
  "\nOf " "His " re deem "ing " "love— "
  "\nThe " ev er last "ing " cho "rus "
  "\nThat " "fills " "the " "realms " a "bove. "
  "\nSing " "on: " "oh, " bliss "ful " mu "sic! "
%  With ev -- 'ry note you raise
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! " 
  "\nSing " "on: " bliss "ful, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise!\n"

  \set stanza = "3."
  "\nSing " "on, " "ye " joy "ful " pil "grims! "
  "\nThe " "time " "will " "not " "be " "long, "
  "\nTill " "in " "our " Fa "ther's " king "dom "
  "\nWe " "sing " "a " no "bler " "song! "
  "\nWhere " "those " "we " "love " "are " wait "ing "
  "\nTo " "greet " "us " "om " "the " "shore, "
  "\nWe'll " "meet " be "yond " "the " riv "er, "
  "\nWhere " sur "ges " "roll " "no " "more. "
  "\nSing " "on: " "oh, " bliss "ful " mu "sic! "
%  With ev -- 'ry note you raise
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! " 
  "\nSing " "on: " bliss "ful, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Sing " "on, " "ye " joy "ful " pil "grims, "
  "\nNor " "think " "the " mo "ments " "long; "
  "\nMy " "faith " "is " heav'n "ward " ri "sing "
  "\nWith " ev "'ry " tune "ful " "song! "
  "\nLo, " "on " "the " "mount " "of " bless "ing, "
  "\nThe " glo "rious " "mount, " "I " "stand, "
  "\nAnd " look "ing " o "ver " Jor "dan, "
  "\nI " "see " "the " pro "mised " "land! "
%  Sing on: oh, bliss -- ful mu -- sic!
%  With ev -- 'ry note you raise
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! " 
  "\nSing " "on: " bliss "ful, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise!\n"

  \set stanza = "2."
  "\nSing " "on, " "ye " joy "ful " pil "grims! "
  "\nWhile " "her " "on " "earth " "we " "stay. "
  "\nLet " "songs " "of " "home " "and " Je "sus "
  "\nBe" "guile " "each " fleet "ing " "day: "
  "\nSing " "on " "the " "grans " "old " sto "ry "
  "\nOf " "His " re deem "ing " "love— "
  "\nThe " ev er last "ing " cho "rus "
  "\nThat " "fills " "the " "realms " a "bove. "
%  Sing on: oh, bliss -- ful mu -- sic!
%  With ev -- 'ry note you raise
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! " 
  "\nSing " "on: " bliss "ful, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise!\n"

  \set stanza = "3."
  "\nSing " "on, " "ye " joy "ful " pil "grims! "
  "\nThe " "time " "will " "not " "be " "long, "
  "\nTill " "in " "our " Fa "ther's " king "dom "
  "\nWe " "sing " "a " no "bler " "song! "
  "\nWhere " "those " "we " "love " "are " wait "ing "
  "\nTo " "greet " "us " "om " "the " "shore, "
  "\nWe'll " "meet " be "yond " "the " riv "er, "
  "\nWhere " sur "ges " "roll " "no " "more. "
%  Sing on: oh, bliss -- ful mu -- sic!
%  With ev -- 'ry note you raise
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! " 
  "\nSing " "on: " bliss "ful, " bliss "ful " mu "sic! "
  "\nWith " ev "'ry " "note " "you " "raise "
  "\nMy " "heart " "is " "filled " "with " rap "ture, "
  "\nMy " "soul " "is " "lost " "in " "praise! "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
\layout {}
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiTenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
