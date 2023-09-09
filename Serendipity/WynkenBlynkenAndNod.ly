\version "2.24.2"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Wynken, Blynken and Nod"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Donna Gartman Schultz"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Eugene Field"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 2/2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Gently 4=120
  s1*6 |
  s1*10 | % 4
  s1*4 | s2.. | s1*5 |
  s1*9 | % 6
  s1*6 s2.. s1*2 | s4 \tempo 4=115 s2. | \tempo 4=100 s1 |
  s1 | s | s2. | s1 | s2. | s | s | s1 | s | s | s2. | s1 | s | s2. | s | s1 | s | s2.. | % 8
  \tempo 4=120 s1*9 |
  s1*9 | % 10
  s1 | s | s2.. | s1 | \tempo 4=110 s1 | \tempo 4=120 s1 | % 11a
  s1 | s2 \tempo 4=105 s | s1 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "4a" } s1*4
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "4c" } s1*3
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1 s2.. s1*2
  \textMark \markup { \box "5c" } s1*3
  \textMark \markup { \box "6a" } s1*3
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "7a" } s1*4
  \textMark \markup { \box "7b" } s1*2 s2..
  \textMark \markup { \box "7c" } s1*4
  \textMark \markup { \box "8a" } s1*2 s2.
  \textMark \markup { \box "8b" } s1 s2.*2
  \textMark \markup { \box "8c" } s2. s1*2
  \textMark \markup { \box "8d" } s1 s2. s1
  \textMark \markup { \box "8e" } s1 s2.*2
  \textMark \markup { \box "8f" } s1*2 s2..
  \textMark \markup { \box "9a" } s1*3
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "9c" } s1*3
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1*3
  \textMark \markup { \box "10c" } s1*3
  \textMark \markup { \box "11a" } s1*2 s2..
  \textMark \markup { \box "11b" } s1*3
  \textMark \markup { \box "11c" } s1*3
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1 | s | s\p | s1*3 |
  s1*10 | % 4
  s1*4 | s2.. | s1*5 |
  s1*4 | s2. s4\mp | s1*3 | s2. s4\mf | % 6
  s1 | s | s\f | s1*3 | s2 s4.\> | s1\! | s | s | s^\markup\upright\bold "More slowly, with rubato" |
  s1*2 | s2. | % 8a
  s1 | s2.^\markup\upright{"(" \note {8} #UP = \note {8} #UP ) } | s |
  s2.^\markup\upright{"(" \note {8} #UP = \note {8} #UP ) } | s1 | s |
  s1 | s2. | s1 |
  s1 | s2.^\markup\upright{"(" \note {8} #UP = \note {8} #UP ) } | s^\markup\upright{"(" \note {8} #UP = \note {8} #UP ) } |
  s1 | s | s2.. |
  s1^\markup\italic "a tempo" | s1*8 | % 9
  s1*9 |
  s1 | s | s2 s4.\< | % 11a
  s1\! | s2\omit\p-\markup{\dynamic p \italic rit.} s8 s4.\> | s1\!-\markup\italic "a tempo" |
  s1*3 |
}

soprano = \relative {
  \global \voiceOne
\set Timing.beamExceptions = #'()
\set Staff.beatStructure = 2,2,2,2
  R1 | R | a'4 8 8~8 8 4 |
  c4 8 8~4 a8(c) | d4 8 8 c bes~4 | c2. r4 |
  bes4 8 d g, g bes4 | a c8 f,~2 | g4 8 8 4 a | c,2. r4 | % 4a
  a'8 8 8 8~8 f a4 | c8 8 8 8~4 f, | d'4 4 c8 bes~4 |
  c2. r8 c | bes4 d c bes8 8 | a c~4 f,4. 8 |
  g4 8 8 8 f g4 | a1 | f4 f d'8 4 8 | % 5a
  \tuplet 3/2 {c4(a) g} f4. 8 \time 7/8 |
  \set Staff.beatStructure = 2,2,3
  bes4 4 8 a g \time 2/2 | a1 | R |
  R1*3 |
  R1*3 | % 6a
  R1 | r2 r4 c | a8 8~4 4 f8 a |
  c8 8~4 4 f, | d'4 8 8 c c bes4 | c2 r4 c |
  bes4 d c bes | a8 a c4 f,4. r8 | g8 4 8 8(f) g4 | a2. r4 | % 7a
  f4 8 8 d'4 8 8 | \tuplet 3/2 {c4 a g} f2 \time 7/8 | bes4 4 8 a g \time 2/2 |
  a1 | R | R | \time 4/4 a4 4 4 4 |
  c4 c c a8 c | d4 8 8 c4 bes \time 3/4 | c2 4 \time 4/4 | % 8a
  bes4 8 d c4 bes8 8 \time 6/8 | a4 c8 f,4. | g8 f f g g a \time 3/4 |
  c,2 4 \time 4/4 | a'4 4 \tuplet 3/2 {a f a} | c4. 8 4. f,8 |
  d'4 4 c bes \time 3/4 | c2 4 \time 4/4 | bes4 d \tuplet 3/2 {c bes bes} |
  a4 c f,4. 8 \time 6/8 g8 g g g f g \time 3/4 | a2 g4 \time 4/4 |
  f4 f \tuplet 3/2 {d' d d} | \tuplet 3/2 {c a g} f2 \time 7/8 | bes4 4 8[a g] \time 2/2 |
  a2. r4 | R1 | a8 8 8 8~8 8 4 | % 9a
  c8 8 8 8~4 a8(c) | d4 8 8 c bes~4 | c2. 8 8 |
  bes4 8 d c4 bes | a c f,4 8 8 | g4 4 8 a~4 |
  c,2. 4 | a'8 8~4 2 | c8 8~4 4 f, | % 10a
  d'8 8 4 c bes | c2. 4 | bes d c4. bes8 |
  a8 a c4 f,4 8 8 | g4 8 8 \tuplet 3/2 {4(f) g} | a2. g8 8 |
  f4 4 d'4. 8 | \tuplet 3/2 {c4 a g} f2 \time 7/8 | bes4 4 8 a g \time 2/2 | % 11a
  c1 | bes4 4 8 a4 g8 | f1 |
  R1*3 |
  \bar "|."
}

wordsWomen = \lyricmode {
  Wyn -- ken, Blyn -- ken and Nod one night __
  sailed __ off in a wood -- en __ shoe, __
  Sailed on a riv -- er of crys -- tal light __
  in -- to a sea of dew.
  “Where are you go -- ing and what do you wish?” __
  the old moon asked the __ three; __
  “We've come to fish for the her -- ring __ fish __
  that live in this beau -- ti -- ful sea; __
  Nets of sil -- ver and gold __ have we,” __
  said Wyn -- ken, Blyn -- ken and Nod.

  The lit -- tle __ stars were the her -- ring fish
  that lived in the beau -- ti -- ful sea.
  “Now cast __ your nets __ where -- ev -- er you wish, __
  Nev -- er a -- fraid __ are we!”
  So cried the stars to the fish -- er -- men three, __
  Wyn -- ken, Blyn -- ken, and Nod.

  All night long their nets they threw
  to the stars in the twink -- ling foam, __
  Then down from the skies __ came the wood -- en shoe __
  bring -- ing the fish -- er -- men home,
  'Twas all so pret -- ty a sail, it seemed
  as if __ it __ could not be; __
  And some folk thought 'twas a dream they'd dreamed __
  of sail -- ing that beau -- ti -- ful sea, __
  but I shall name you the fish -- er -- men three; __
  Wyn -- ken, Blyn -- ken, \set associatedVoice = alto and Nod. __

  Wyn -- ken and Blyn -- ken are two lit -- tle eyes __
  and __ Nod is a lit -- tle __ head, __
  and the old wood -- en shoe that sailed the skies
  is a wee one's trun -- dle __ bed;
  So shut your __ eyes while we __ sing of
  won -- der -- ful sights that be, __
  And you shall see the beau -- ti -- ful things
  as you rock in the mist -- y sea. __
  Where the old shoe rocked the fish -- er -- men three: __
  Wyn -- ken, Blyn -- ken, and Nod,
  Wyn -- ken, Blyn -- ken, and Nod.
}

wordsWomenSep = \lyricmode {
  Wyn -- ken, Blyn -- ken and Nod one night __
  sailed __ off in a wood -- en __ shoe, __
  Sailed on a riv -- er of crys -- tal light __
  in -- to a sea of dew.
  “Where are you go -- ing and what do you wish?” __
  the old moon asked the __ three; __
  “We've come to fish for the her -- ring __ fish __
  that live in this beau -- ti -- ful sea; __
  Nets of sil -- ver and gold __ have we,” __
  said Wyn -- ken, Blyn -- ken and Nod.

  The lit -- tle __ stars were the her -- ring fish
  that lived in the beau -- ti -- ful sea.
  “Now cast __ your nets __ where -- ev -- er you wish, __
  Nev -- er a -- fraid __ are we!”
  So cried the stars to the fish -- er -- men three, __
  Wyn -- ken, Blyn -- ken, and Nod.

  All night long their nets they threw
  to the stars in the twink -- ling foam, __
  Then down from the skies __ came the wood -- en shoe __
  bring -- ing the fish -- er -- men home,
  'Twas all so pret -- ty a sail, it seemed
  as if __ it __ could not be; __
  And some folk thought 'twas a dream they'd dreamed __
  of sail -- ing that beau -- ti -- ful sea, __
  but I shall name you the fish -- er -- men three; __
  Wyn -- ken, Blyn -- ken, and Nod. __

  Wyn -- ken and Blyn -- ken are two lit -- tle eyes __
  and __ Nod is a lit -- tle __ head, __
  and the old wood -- en shoe that sailed the skies
  is a wee one's trun -- dle __ bed;
  So shut your __ eyes while we __ sing of
  won -- der -- ful sights that be, __
  And you shall see the beau -- ti -- ful things
  as you rock in the mist -- y sea. __
  Where the old shoe rocked the fish -- er -- men three: __
  Wyn -- ken, Blyn -- ken, and Nod,
  Wyn -- ken, Blyn -- ken, and Nod.
}

wordsWomenMidi = \lyricmode {
  "Wyn" "ken, " Blyn "ken " "and " "Nod " "one " "night " 
  "\nsailed "  "off " "in " "a " wood "en "  "shoe, " 
  "\nSailed " "on " "a " riv "er " "of " crys "tal " "light " 
  "\nin" "to " "a " "sea " "of " "dew. "
  "\n“Where " "are " "you " go "ing " "and " "what " "do " "you " "wish?” " 
  "\nthe " "old " "moon " "asked " "the "  "three; " 
  "\n“We've " "come " "to " "fish " "for " "the " her "ring "  "fish " 
  "\nthat " "live " "in " "this " beau ti "ful " "sea; " 
  "\nNets " "of " sil "ver " "and " "gold "  "have " "we,” " 
  "\nsaid " Wyn "ken, " Blyn "ken " "and " "Nod. "

  "\nThe " lit "tle "  "stars " "were " "the " her "ring " "fish "
  "\nthat " "lived " "in " "the " beau ti "ful " "sea. "
  "\n“Now " "cast "  "your " "nets "  where ev "er " "you " "wish, " 
  "\nNev" "er " a "fraid "  "are " "we!” "
  "\nSo " "cried " "the " "stars " "to " "the " fish er "men " "three, " 
  "\nWyn" "ken, " Blyn "ken, " "and " "Nod. "

  "\nAll " "night " "long " "their " "nets " "they " "threw "
  "\nto " "the " "stars " "in " "the " twink "ling " "foam, " 
  "\nThen " "down " "from " "the " "skies "  "came " "the " wood "en " "shoe " 
  "\nbring" "ing " "the " fish er "men " "home, "
  "\n'Twas " "all " "so " pret "ty " "a " "sail, " "it " "seemed "
  "\nas " "if "  "it "  "could " "not " "be; " 
  "\nAnd " "some " "folk " "thought " "'twas " "a " "dream " "they'd " "dreamed " 
  "\nof " sail "ing " "that " beau ti "ful " "sea, " 
  "\nbut " "I " "shall " "name " "you " "the " fish er "men " "three; " 
  "\nWyn" "ken, " Blyn "ken, " "and " "Nod. " 

  "\nWyn" "ken " "and " Blyn "ken " "are " "two " lit "tle " "eyes " 
  "\nand "  "Nod " "is " "a " lit "tle "  "head, " 
  "\nand " "the " "old " wood "en " "shoe " "that " "sailed " "the " "skies "
  "\nis " "a " "wee " "one's " trun "dle "  "bed; "
  "\nSo " "shut " "your "  "eyes " "while " "we "  "sing " "of "
  "\nwon" der "ful " "sights " "that " "be, " 
  "\nAnd " "you " "shall " "see " "the " beau ti "ful " "things "
  "\nas " "you " "rock " "in " "the " mist "y " "sea. " 
  "\nWhere " "the " "old " "shoe " "rocked " "the " fish er "men " "three: " 
  "\nWyn" "ken, " Blyn "ken, " "and " "Nod, "
  "\nWyn" "ken, " Blyn "ken, " "and " "Nod. "
}

alto = \relative {
  \global \voiceTwo
  R1 | R | f'4 8 8~8 8 4 |
  e4 8 8~4 4 | f4 8 8 g e~4 | a(g f) r |
  g4 f8 8 e e e4 | f4 g8 e(~4 d) | 4 8 8 4 4 bes2. r4 | % 4a
  f'8 8 8 8~8 8 4 | e8 8 8 8~4 f | f f g8 8~4 |
  g4.(f8~4) r8 f | d4 f g e8 8 | g e~4 4(d8) 8 |
  d4 8 8 8 8 4 | 4(b cis e) | e d f8 4 8 | % 5a
  \tuplet 3/2 {e2 4} 4(d8) 8 \time 7/8 | f4 d e8 8 8 \time 2/2 | f1 | R1 |
  s1*3 |
  s1*3 | % 6a
  R1 | r2 r4 c | f8 8~4 4 8 8 |
  e8 8~4 4 f | bes4 8 8 8 8 4 | a2 r4 f |
  d8(e) f4 e8(f) g4  f8 8 e4 4(d8) r | g8 4 8 8(f) g4 | a2. r4 | % 7a
  d,4 8 8 4 8 8 | \tuplet 3/2 {c4 c e} e(d) \time 7/8 | d4 4 e8 8 8 \time 2/2 |
  f1 | R | R \time 4/4 | a4 a g g |
  f4 f e4 8 8 | f4 bes8 8 g4 f \time 3/4 | g(f) e \time 4/4 | % 8a
  a8(g) f d g(f) g c, \time 6/8 | g'8 f e e(d4) | d8 d d d d d \time 3/4 |
  bes2 c4 \time 4/4 g' f \tuplet 3/2 {e d d} | a'4. g8 f4. e8 |
  d8(e) f(a) g4 f \time 3/4 g(f) f \time 4/4 | a8(g) f4 \tuplet 3/2 {g f e} |
  g8(f) e4 e(d8) d \time 6/8 | d8 d d d d d \time 3/4 | d4(cis) a \time 4/4 |
  e'4 d \tuplet 3/2 {d d d} | \tuplet 3/2 {e e e} e(d) \time 7/8 | d4 bes d8[e c] \time 2/2 |
  g'2(f4) r | R1 | f8 f f f~f f f4 | % 9a
  e8 8 8 8~4 4 | f4 8 8 g e~4 | a(g f) 8 8 |
  g4 f8 8 e4 4 | f g e d8 8 | 4 4 8 8~4 |
  c2. 4 | f8 8~4 2 | e8 8~4 4 f | % 10a
  f8 8 4 g g | 4.(f8~4) 4 | d f g4. e8 |
  f8 f e4 e d8 d | 4 8 8 \tuplet 3/2 {d2 4} | d(b cis) e8 8 |
  e4 d f4. d8 | \tuplet 3/2 {c4 c e} e(d) \time 7/8 | f4 d e8 8 8 \time 2/2 | % 11a
  f2(e) | d4 d e8 4 c8 | f1 |
  R1*3 |
  \bar "|."
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  s1 | s | s\p | s1*3 |
  s1*10 | % 4
  s1*4 | s2.. | s1 | s2. s4\mp | s1*3 |
  s1*9 | % 6
  s1*6 | s2.. | s1*4 |
  s1*2 | s2. | % 8a
  s1 | s2. | s |
  s2. | s1 | s |
  s1 | s2. | s1 |
  s1 | s2. | s |
  s1 | s | s2.. |
  s1^\markup\italic "a tempo" | s1*8 | % 9
  s1*9 |
  s1 | s | s2.. | % 11a
  s1 | s2\omit\p-\markup{\dynamic p \italic rit.} s | s1-\markup\italic "a tempo" |
  s1*3 |
}

tenor = \relative {
  \global \voiceOne
  \set Timing.beamExceptions = #'()
  \set Staff.beatStructure = 2,2,2,2
  R1 | R | c'4 8 8~8 8 4 |
  a4 8 8~4 4 | bes4 8 d c c~4 | 2. r4 |
  d4 8 bes c c c4 | 4 8 a~2 | g4 8 8 4 4 | f4.(e8~4) r | % 4a
  c'8 8 8 8~8 8 4 | a8 8 8 8~4 c | bes4 4 d8 8~4 |
  e2. r8 a, | bes4 4 c4 8 8 | 8 a~4 4. 8 |
  g4 8 8 8 8 4 | e2(g) | a4 4 bes8 4 8 | % 5a
  \tuplet 3/2 {a2 g4} a4. 8 \time 7/8 |
  \set Staff.beatStructure = 2,2,3
  g4 4 8 c c \time 2/2 | c1 | r2 r4 c, |
  a'4 4 4. 8 | c8 8~4 4 a8 c | d4 8 8 c bes~4 |
  c2. 8 8 | bes4 d c bes | a c f,2 | % 6a
  g8 8~8 8 4 a | g2 r | R1 |
  R1*3 |
  R1*4 | % 7a
  a4 8 8 f4 8 8 | \tuplet 3/2 {e4 a g} a2 \time 7/8 | g4 4 8 c c \time 2/2 |
  c1 | R | R \time 4/4 | R |
  r2 r4 a8 8 | d(e) f f f4 d \time 3/4 | e(d) c \time 4/4 | % 8a
  d4 8 bes c4 8 8 \time 6/8 4 a8 4. | g8 a a g g f \time 3/4 |
  f4(e) c \time 4/4 | c'4 4 \tuplet 3/2 {c c c} | e4. 8 d4. 8 |
  d8(c) d(f) e4 d \time 3/4 | e(d) d \time 4/4 | d bes \tuplet 3/2 {c c c} |
  c4 a4 4. 8 \time 6/8 g a g f g f \time 3/4 | e2 4 \time 4/4 |
  a4 4 \tuplet 3/2 {f a g} | \tuplet 3/2 {g c bes} a2 \time 7/8 | f4 4 8[g bes] \time 2/2 |
  a2. r4 | R1 | c8 8 8 8~8 8 4 | % 9a
  a8 8 8 8~4 4 | bes4 8 d c c~4 | 2. 8 8 |
  d4 8 bes c4 c | c c a4 8 8 | g4 4 8 f~4 |
  f4.(e8~4) c | c'8 8~4 2 | a8 8~4 4 c | % 10a
  bes8 8 4 d d | e2. a,4 | bes4 4 c4. 8 |
  c8 8 a4 4 8 8 | g4 8 8 \tuplet 3/2 {2 4} | e2(g4) a8 8 |
  a4 4 bes4. f8 | \tuplet 3/2 {e4 a g} a2 \time 7/8 | g4 4 8 c bes \time 2/2 | % 11a
  a2(g) | 4 f g8 c4 8 | f1 |
  R1*3 |
  \bar "|."
}

wordsMen = \lyricmode {
  Wyn -- ken, Blyn -- ken and Nod one night __
  sailed __ off in a wood -- en __ shoe, __
  Sailed on a riv -- er of crys -- tal light __
  in -- to a sea of dew.
  “Where are you go -- ing and what do you wish?” __
  the old moon asked the __ three; __
  “We've come to fish for the her -- ring __ fish __
  that live in this beau -- ti -- ful sea; __
  Nets of sil -- ver and gold __ have we,” __
  said Wyn -- ken, Blyn -- ken and Nod.

  The old moon laughed and sang a __ song,
  as they rocked in the wood -- en shoe;
  And the wind \set associatedVoice = bass that sped __ them all night long __
  ruf -- fled the waves of dew;

  So cried the stars to the fish -- er -- men three, __
  Wyn -- ken, Blyn -- ken, and Nod.

%  All night long their nets they threw
  \set associatedVoice = tenor to the stars __ in the twink -- ling foam, __
  \set associatedVoice = bass Then down from the skies __ came the wood -- en shoe __
  \set associatedVoice = tenor bring -- ing the fish -- er -- men home, __
  'Twas all so pret -- ty a sail, it seemed
  as if __ it __ could not be; __
  And some folk thought 'twas a dream they'd dreamed __
  of sail -- ing that beau -- ti -- ful sea, __
  but I shall name you the fish -- er -- men three; __
  Wyn -- ken, Blyn -- ken, and Nod. __

  Wyn -- ken and Blyn -- ken are two lit -- tle eyes __
  and Nod is a lit -- tle __ head, __
  and the old wood -- en shoe that sailed the skies
  is a wee one's trun -- dle __ bed;
  So shut your __ eyes while we __ sing of
  won -- der -- ful sights that be, __
  And you shall see the beau -- ti -- ful things
  as you rock in the mist -- y sea. __
  Where the old shoe rocked the fish -- er -- men three: __
  Wyn -- ken, Blyn -- ken, and Nod,
  Wyn -- ken, Blyn -- ken, and Nod.
}

wordsMenSep = \lyricmode {
  Wyn -- ken, Blyn -- ken and Nod one night __
  sailed __ off in a wood -- en __ shoe, __
  Sailed on a riv -- er of crys -- tal light __
  in -- to a sea of dew.
  “Where are you go -- ing and what do you wish?” __
  the old moon asked the __ three; __
  “We've come to fish for the her -- ring __ fish __
  that live in this beau -- ti -- ful sea; __
  Nets of sil -- ver and gold __ have we,” __
  said Wyn -- ken, Blyn -- ken and Nod.

  The old moon laughed and sang a __ song,
  as they rocked in the wood -- en shoe;
  And the wind that sped __ them all night long __
  ruf -- fled the waves of dew;

  So cried the stars to the fish -- er -- men three, __
  Wyn -- ken, Blyn -- ken, and Nod.

%  All night long their nets they threw
  to the stars __ in the twink -- ling foam, __
  Then down from the skies __ came the wood -- en shoe __
  bring -- ing the fish -- er -- men home, __
  'Twas all so pret -- ty a sail, it seemed
  as if __ it __ could not be; __
  And some folk thought 'twas a dream they'd dreamed __
  of sail -- ing that beau -- ti -- ful sea, __
  but I shall name you the fish -- er -- men three; __
  Wyn -- ken, Blyn -- ken, and Nod. __

  Wyn -- ken and Blyn -- ken are two lit -- tle eyes __
  and Nod is a lit -- tle __ head, __
  and the old wood -- en shoe that sailed the skies
  is a wee one's trun -- dle __ bed;
  So shut your __ eyes while we __ sing of
  won -- der -- ful sights that be, __
  And you shall see the beau -- ti -- ful things
  as you rock in the mist -- y sea. __
  Where the old shoe rocked the fish -- er -- men three: __
  Wyn -- ken, Blyn -- ken, and Nod,
  Wyn -- ken, Blyn -- ken, and Nod.
}

wordsMenMidi = \lyricmode {
  "Wyn" "ken, " Blyn "ken " "and " "Nod " "one " "night " 
  "\nsailed "  "off " "in " "a " wood "en "  "shoe, " 
  "\nSailed " "on " "a " riv "er " "of " crys "tal " "light " 
  "\nin" "to " "a " "sea " "of " "dew. "
  "\n“Where " "are " "you " go "ing " "and " "what " "do " "you " "wish?” " 
  "\nthe " "old " "moon " "asked " "the "  "three; " 
  "\n“We've " "come " "to " "fish " "for " "the " her "ring "  "fish " 
  "\nthat " "live " "in " "this " beau ti "ful " "sea; " 
  "\nNets " "of " sil "ver " "and " "gold "  "have " "we,” " 
  "\nsaid " Wyn "ken, " Blyn "ken " "and " "Nod. "

  "\nThe " "old " "moon " "laughed " "and " "sang " "a "  "song, "
  "\nas " "they " "rocked " "in " "the " wood "en " "shoe; "
  "\nAnd " "the " "wind " "that " "sped "  "them " "all " "night " "long " 
  "\nruf" "fled " "the " "waves " "of " "dew; "

  "\nSo " "cried " "the " "stars " "to " "the " fish er "men " "three, " 
  "\nWyn" "ken, " Blyn "ken, " "and " "Nod. "

%  All night long their nets they threw
  "\nto " "the " "stars "  "in " "the " twink "ling " "foam, " 
  "\nThen " "down " "from " "the " "skies "  "came " "the " wood "en " "shoe " 
  "\nbring" "ing " "the " fish er "men " "home, " 
  "\n'Twas " "all " "so " pret "ty " "a " "sail, " "it " "seemed "
  "\nas " "if "  "it "  "could " "not " "be; " 
  "\nAnd " "some " "folk " "thought " "'twas " "a " "dream " "they'd " "dreamed " 
  "\nof " sail "ing " "that " beau ti "ful " "sea, " 
  "\nbut " "I " "shall " "name " "you " "the " fish er "men " "three; " 
  "\nWyn" "ken, " Blyn "ken, " "and " "Nod. " 

  "\nWyn" "ken " "and " Blyn "ken " "are " "two " lit "tle " "eyes " 
  "\nand " "Nod " "is " "a " lit "tle "  "head, " 
  "\nand " "the " "old " wood "en " "shoe " "that " "sailed " "the " "skies "
  "\nis " "a " "wee " "one's " trun "dle "  "bed; "
  "\nSo " "shut " "your "  "eyes " "while " "we "  "sing " "of "
  "\nwon" der "ful " "sights " "that " "be, " 
  "\nAnd " "you " "shall " "see " "the " beau ti "ful " "things "
  "\nas " "you " "rock " "in " "the " mist "y " "sea. " 
  "\nWhere " "the " "old " "shoe " "rocked " "the " fish er "men " "three: " 
  "\nWyn" "ken, " Blyn "ken, " "and " "Nod, "
  "\nWyn" "ken, " Blyn "ken, " "and " "Nod. "
}

bass = \relative {
  \global \voiceTwo
  R1 | R | f4 8 8~8 8 4 |
  a4 8 8~4 4 | bes4 8 8 e, g~4 | f(e d) r |
  g4 8 8 8 8 4 | f e8 d~2 | bes4 8 8 4 4 | c2. r4 | % 4a
  f8 8 8 8~8 8 4 | a8 8 8 8~4 4 | bes4 4 8 8~4 |
  a2. r8 8 | g4 f e8(f) g g | f4 e d4. c8 |
  bes4 8 8 8 8 4 | a1 | d4 8(c) bes8 4 8 | % 5a
  \tuplet 3/2 {a2 c4} d4. 8 \time 7/8 |bes4 4 c8 8 8 \time 2/2 | f1 | r2 r4 c |
  a'4 4 4. 8 | c8 8~4 4 a8 c | bes4 8 8 g8 8~4 |
  a2. f8 8 | g4 f e8(f) g4 | f e e(d8 c) | % 6a
  bes8 8~8 8 4 4 | c2 r | R1 |
  R1*3 |
  R1*4 | % 7a
  d4 8 c bes4 8 8 | \tuplet 3/2 {a4 a c} d4.(c8) \time 7/8 | bes4 4 c8 8 8 \time 2/2 |
  f1 | R | R \time 4/4 | R |
  r2 r4 a8 8 | g4 8 8 4 4 \time 3/4 | a2 4 \time 4/4 | % 8a
  g4 8 8 e(d) e e \time 6/8 | f4 a8 d,4(c8) | bes8 8 8 8 8 8 \time 3/4 |
  c2 4 \time 4/4 | f f \tuplet 3/2 {f f f} | a4. 8 4. 8 |
  bes8(c) bes4 4 4 \time 3/4 | a2 4 \time 4/4 | g4 g \tuplet 3/2 {e d c} |
  f4 8(e) d4. c8 \time 6/8 | bes8 8 8 8 8 8 \time 3/4 | a2 e'4 \time 4/4 |
  d4 8(c) \tuplet 3/2 {bes4 4 4} | \tuplet 3/2 {a a c} d4.(c8) \time 7/8 | bes4 g c8[8 8] \time 2/2 |
  f2. r4 | R1 | f8 8 8 8~8 8 4 | % 9a
  a8 8 8 8~4 4 | bes4 8 8 e, g~4 | f(e d) 8 8 |
  g4 8 8 4 4 | f e d c8 8 | bes4 4 8 8~4 |
  c2. 4 | f8 8~4 2 | a8 8~4 4 4 | % 10a
  bes8 8 4 4 4 | a2. 4 | g4 f e8(f) g4 |
  f8 8 e4 d4 8 c | bes4 8 8 \tuplet 3/2 {2 4} | a2. cis8 8 |
  d4 8(c) bes4. 8 | \tuplet 3/2 {a4 a c} d4.(c8) \time 7/8 bes4 4 c8[8 8] \time 2/2 | % 11a
  d2(c) | bes4 g c8 4 r8 | R1 |
  R1*3 |
  \bar "|."
}

pianoRHone = \relative {
  \global \voiceOne
  a'1 | a | a |
  c1 | s | s |
  bes2. c4 | a1 | bes2. f4 | g2. c8 bes | % 4a
  a1 | c | s |
  s1*3 |
  bes1 | a | f2 s | % 5a
  s1 \time 7/8 |
  \set Staff.beatStructure = 2,2,3
  s2.. \time 2/2 | a1 | a |
  a1 | c | s |
  s1*9 | % 6
  s1*4 | % 7a
  f,2. c'8 bes | s1 \time 7/8 | s2.. \time 2/2 |
  s1*3 \time 4/4 | s1 |
  s1 | s \time 3/4 | s2. | % 8a
  s1 \time 6/8 | s2. | s \time 3/4 |
  s2. \time 4/4 | s1 | s |
  s1 \time 3/4 | s2. \time 4/4 | s1 |
  s1 \time 6/8 | s2. \time 3/4 | s2. \time 4/4 |
  s1 | s \time 7/8 | s2.. \time 2/2 |
  a1 | a | a | % 9a
  c1 | s | s |
  bes2. c8 bes | a1 | bes2. f4 |
  g2. c8 bes | a1 | c | % 10a
  s1*3 |
  s1 | bes2 s | a s |
  f2 s | s1 \time 7/8 | s2.. \time 2/2 | % 11a
  a2 s | s1 | s |
  s1*3 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  g'8 c, g' f~f c f c | g' c, g' f~f c f c | g' c, g' f~f c f c |
  bes'8 e, bes' a~a e a e | \oneVoice c' d, c' bes~8 c, c' bes | a c, g' a~a c, g' a |
  \voiceTwo a8 d, a' g~g c, c' bes | g c, g' f~f c f c | a' d, a' g~g d f d | f c f e~e c c' bes | % 4a
  g8 c, g' f~f c f c | bes' e, bes' a~a e a e | c' d, c' bes~8 d, a' g~ |
  \oneVoice g8 c, g' f~f c f a | g d f g e c c' bes | a c, g' a~a c, g' a |
  \voiceTwo a8 d, a' g~g d f d~ | d b d e cis a a' g | e a, e' d~ \oneVoice d d c' bes | % 5a
  \tuplet 3/2 {a4 c, e} f a,8 d \time 7/8 | g d f g~g c, g' \time 2/2 \voiceTwo | g c, g' f~f c f c | g' c, g' f~f c f c |
  g'8 c, g' f~f c f c | bes' e, bes' a~a e c' a | \oneVoice bes g f d e c c' bes |
  a8 c, g' a~a c, g' a | bes d, f g e c c' bes | a a16 bes a8 g f g a c | % 6a
  d8 bes c a bes g a f | g4 c8 f d f e g | a c16 c c8 bes a g f a |
  r8 c16 d c8 bes a g f a | r d,16 e f8 a g a, c' bes | r a16 bes a8 g f d16 e f8 a |
  g8 bes,16 c d8 f e c c' bes | r a16 bes a8 g f e d16 e f8 | g f d c bes a g bes | a g e d cis a a' g | % 7a
  \voiceTwo e8 a, e' d~d d c' bes | \oneVoice \tuplet 3/2 {a4 c, e} f a,8 d \time 7/8 | g d f g e c g' \time 2/2 |
  r8 c16 d c8 bes a g f a | r c16 d c8 bes a g f a | r d,16 e f8 a g c, c' bes \time 4/4 | a4 r r2 |
  R1 | R | R2. | % 8a
  R1 | R2. | R |
  R2. | R1 | R |
  R1 | R2. | R1 |
  R1 | R2. | R |
  R1 | R | R2.. |
  \voiceTwo g8 c, g' f~f c f c | g' c, g' f~f c f c | g' c, g' f~f c f c | % 9a
  bes'8 e, bes' a~a e a e | \voiceOne c' d, c' bes~8 c, c' bes | a c, g' a~a c, g' a |
  \voiceTwo a8 d, a' g~g c, c' bes | g c, g' f~f c f c | a' d, a' g~g d f d |
  f8 c f e~e c c' bes | g c, g' f~f c f c | bes' e, bes' a~a e a e | % 10a
  \oneVoice c'8 d, c' bes~8 d, a' g~ | g c, g' f~f c f a | g d f g e c c' bes |
  a8 c, g' a~a c, g' a | \voiceTwo a d, a' g~ \tuplet 3/2 {4 f d~} | 8 b d e cis a a' g |
  e8 a, e' d~d d c' bes | \tuplet 3/2 {a4 c, e} f a,8 d \time 7/8 | g d f g~g c, g' \time 2/2 | % 11a
  g8 c, g' f~f c e a \oneVoice | <d, bes'>4 r r2 | r8 c'16 d c8 bes a bes c f, |
  r8 c'16 d c8 bes a bes c f, | r d16 e f8 a g c, c' bes | a4 <g' c> <e a>2\fermata |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p | s1*5 |
  s1*10 | % 4
  s1*4 | s2.. | s1*5 |
  s1*9 | % 6
  s1 | s | s\< | s\! | s\f | s | s2 s4.\> | s1\mp | s | s4 s2.-\markup\italic rit. | s4 s2.-\markup\italic "a capella" |
  s1 | s | s2. | s1 | s2. | s | s | s1 | s | s | s2. | s1 | s | s2. | s | s1 | s | s2.. | % 8
  s1\omit\p-\markup{\dynamic p \italic "a tempo"} | s1*8 |
  s1*9 | % 10
  s1 | s | s2.. | % 11a
  s4. s\< s4\> | s1\omit\p-\markup{\dynamic p \italic rit.} | s\omit\pp-\markup{\dynamic pp \italic "a tempo"} |
  s1 | s2 s-\markup\italic rit. | s1 |
}

pianoLHone = \relative {
  \global
  \repeat unfold 3 {f,8 c' a'2 c,4 | }
  a8 e' c'2 e,4 | bes8 f' a4 c,8 g' bes4 | f,8 c' a'4 d,,8 a' f'4 |
  g,8 d' bes'4 c, bes' | f,8 c' a'4 d,,8 a' f'4 | g,8 d' bes'2 a4 | c,4. g'8~4 c,, | % 4a
  f8 c' a'2 c,4 | a8 e' c'2 e,4 | bes8 f' bes2 f4 |
  a,8 e' c'2 a,4 | bes8 g'4. c,4 bes' | f,8 c' a'4 d,,8 a' f'4 |
  g,8 d' bes'2 d,4 | a8 e' g2 a,4 | d,8 a' f'4 bes,8 f'4. | % 5a
  \tuplet 3/2 {a,4 e' g} d,8 a' f'4 \time 7/8 | bes,8 g'4. c, \time 2/2 | f,8 c' a'2 c,4 | f,8 c' a'2 c,4 |
  f,8 c' a'2 c,4 | a8 e' c'2 e,4 | bes f' c g' |
  f,4 a' d,, f' | g, bes' c, g' | \voiceOne f e r c' | % 6a
  r4 f2 d4 \oneVoice | <c, bes'>4 r r \clef treble <c' bes'> | f c'2 f,4 |
  e4 c'2 d,4 | bes8 f' bes4 c,8 g' bes4 | f8 c' e, c' d, a'4. |
  d,8 bes'4. e,8 d'4. | a8 e' g, e' f, c' e, c' | d,4 bes'2 a4 \clef bass | a,4 a,2 g'4 | % 7a
  d,8 a' f'4 bes,8 f'4. | \tuplet 3/2 {a,4 e' g} d,8 a' f'4 \time 7/8 | bes,8 g'4. c, \time 2/2 |
  f4 c'2 f,4 | a e'2 a,4 | bes,8 f' bes4 c,8 g' bes4 | \time 4/4 f4 r r2 |
  R1 | R | R2. | % 8a
  R1 | R2. | R |
  R2. | R1 | R |
  R1 | R2. | R1 |
  R1 | R2. | R |
  R1 | R | R2.. |
  f,8 c' a'2 c,4 | f,8 c' a'2 c,4 | f,8 c' a'2 c,4 | % 9a
  a8 e' c'2 e,4 | bes8 f' a4 c,8 g' bes4 | f,8 c' a'4 d,,8 a' f'4 |
  g,8 d' bes'4 c, bes' | f,8 c' a'4 d,,8 a' f'4 | g,8 d' bes'2 a4 |
  c,4. g'8~4 c,, | f8 c' a'2 c,4 | a8 e' c'2 e,4 | % 10a
  bes8 f' bes2 f4 | a,8 e' c'2 a,4 | bes g' c, bes' |
  f,8 c' a'4 d,,8 a' f'4 | g,8 d' bes'4~ \tuplet 3/2 {2 d,4} | a8 e' g2 a,4 |
  d,8 a' f'4 bes,8 f'4. | \tuplet 3/2 {a,4 e' g} d,8 a' f'4 \time 7/8 | bes,8 g'4. c, \time 2/2 | % 11a
  d,8 a' f'4 a,8 e' g4 | <g, d' f> r r2 | f'4 c'2 a4 |
  a4 e'2 a,4 | bes,8 f' bes4 c,8 g' bes4 | f,8 c' a'2.\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s1*6 |
  s1*10 | % 4
  s1*4 | s2.. | s1*5 |
  s1 | s | f4 e d2 | % 6a
  g1 | s | s |
  s1*3 |
%  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice \soprano
            \addlyrics \wordsWomen
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \tenor
            \new Voice \bass
            \new NullVoice \tenor
            \addlyrics \wordsMen
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    }
  }
}

#(set-global-staff-size 20)

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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice \soprano
            \addlyrics \wordsWomen
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice \tenor
            \new Voice \bass
            \new NullVoice \tenor
            \addlyrics \wordsMen
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sop"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsWomenSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} {\teeny \dynamicsMen}
            \new Voice \tenor
            \new Voice \bass
            \new NullVoice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-alto"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomenSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsWomen
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} {\teeny \dynamicsMen}
            \new Voice \tenor
            \new Voice \bass
            \new NullVoice \tenor
            \addlyrics {\tiny \wordsMen}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-tenor"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice \soprano
            \addlyrics {\tiny \wordsWomenSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsMenSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics {\tiny \wordsMenSep}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-bass"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} {\teeny \dynamicsWomen}
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice \soprano
            \addlyrics {\tiny \wordsWomen}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics {\tiny \wordsMenSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsMenSep
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    }
  }
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
            \addlyrics \wordsWomenMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
  \bookOutputSuffix "midi-men"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \dynamicsWomen
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsMenMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \dynamicsMen
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
