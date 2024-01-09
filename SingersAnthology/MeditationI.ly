\version "2.25.11"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Meditation I"
  subtitle    = \markup{from \italic Shenandoah}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Gary Geld"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Peter Udell"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \tempo Moderato 4=104
  \set Score.tempoHideNote = ##t
  s4 s1*5 |
  s2 \tempo 4=35 s4 \tempo 4=104 s4 | s1*3 | % 237b
  s1 | s4 \tempo 4=105 s4 \tempo 4=106 s4 \tempo 4=107 s4 | % 237c
  \tempo 4=108 s4 \tempo 4=109 s4 \tempo 4=110 s4 \tempo 4=111 s4 |
  \tempo 4=112 s4 \tempo 4=104 s2. | s1 |
  s1*5 | % 237d
  s1*10 | \tempo 4=107 s1*6 | \tempo 4=104 s1*2 | % 238
  \tempo 4=96 s1*2 s2. \tempo 4=26 s4 | \tempo 4=104 s1*2 | % 239a
  s1*8 | \tempo 4=101 s1*6 | \tempo 4=96 s1*2 |
  \tempo 4=100 s1*2 s4 \tempo 4=104 s2. | s1 | % 240a
  \tempo 4=107 s1 | s \tempo 4=100 s1*2 |
  \tempo 4=104 s1*6 \tempo 4=100 s1*2 \tempo 4=104 s1*2 |
  s1*6 | \tempo 4=100 s1*2 \tempo 4=104 s1 \tempo 4=100 s2 s8 \tempo 4=50 s4. | % 241ab
  \tempo 4=90 s1*2 | \tempo 4=99 s1*3 |
  \tempo 4=100 s4 \tempo 4=101 s4 \tempo 4=102 s4 \tempo 4=103 s4 |
  \tempo 4=101 s1*2 \tempo 4=100 s1 \tempo 4=96 s2. \tempo 4=32 s4 |
  \tempo 4=110 s1*8 | \tempo 4=90 s1*2 s2. \tempo 4=85 s4 s2 \tempo 4=42 s4 \tempo 4=85 s | s1*7 | % 242
  s1*2 \tempo 4=80 s1*5 \tempo 4=104 s1*4 \tempo 4=100 s1 s2. \tempo 4=25 s4 |
  \tempo 4=104 s1*2 \tempo 4=100 s1 \tempo 2=100 s1*4 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "237a" } s4 s1*5
  \mark \markup { \box "237b" }    s1*4
  \mark \markup { \box "237c" }    s1*5
  \mark \markup { \box "237d" }    s1*5
  \mark \markup { \box "238a" }    s1*5
  \mark \markup { \box "238b" }    s1*5
  \mark \markup { \box "238c" }    s1*4
  \mark \markup { \box "238d" }    s1*4
  \mark \markup { \box "239a" }    s1*5
  \mark \markup { \box "239b" }    s1*4
  \mark \markup { \box "239c" }    s1*4
  \mark \markup { \box "239d" }    s1*4
  \mark \markup { \box "239e" }    s1*4
  \mark \markup { \box "240a" }    s1*4
  \mark \markup { \box "240b" }    s1*4
  \mark \markup { \box "240c" }    s1*5
  \mark \markup { \box "240d" }    s1*5
  \mark \markup { \box "241a" }    s1*5
  \mark \markup { \box "241b" }    s1*5
  \mark \markup { \box "241c" }    s1*5
  \mark \markup { \box "241d" }    s1*5
  \mark \markup { \box "242a" }    s1*5
  \mark \markup { \box "242b" }    s1*5
  \mark \markup { \box "242c" }    s1*5
  \mark \markup { \box "242d" }    s1*4
  \mark \markup { \box "243a" }    s1*5
  \mark \markup { \box "243b" }    s1*4
  \mark \markup { \box "243c" }    s1*5
  \mark \markup { \box "243d" }    s1*6
}

dynamicsMelody = {
  s4 s1*116
  s1\f | s | s\f | s | s1*15 |
}

melody = \relative {
  \global
  r4 | R1*5 |
  r2^\markup CHARLIE: r4\fermata bes4 \section | % 237b
  ees bes'4 4 4 | 4 aes8 g ees f4 ees16 f | g8 8 8 8 8 8 f ees |
  d2~8 r r4 | R1 | R | R \section \key g \major \time 2/2 R |
  r2 r4 d \section | 4. g8 4. a8 | 4. b8 4. a8 | 4. b8 4. a8 | 4. b8 2 |
  d,4 e2.~ | 4 r r e | 4. a8 4. b8 | 4. cis8 2 | b4. cis8 4. b8 | % 238a
  b4. cis8 2 | b4. cis8 4. b8 | 4. cis8 2 | des4 ees2.~2~8 r ees4 |
  e8 e c c a a e' e | d d a a g g d' d | c c g g fis8 8 fis'8 8 | d2~4 r |
  g,8^\markup\italic "[Ad lib]" a bes c b a4 \caesura d,8 | g a bes c bes8 a4. \caesura | g8^\markup\italic "a tempo" g f f d d f4 | g2~8 r r d |
  g8^\markup\italic "[Ad lib. slowly]" g d d g4 d | g2~8 r r d | g a bes c bes a \caesura g8\fermata[f\fermata] | g1^\markup\italic "[a tempo]" ~ | 4 r r2 \section \key c \major \break | % 239a
  R1*4 |
  R1*4 \break |
  c2^\markup\italic "(sings:)" ^\markup "A little broader" 4 4 | bes4.(aes8 g2) | r4 c c d | bes2~4 r |
  r4 c c c | bes4.(aes8 g2) | r4^\markup\italic rall. c b a | g2 r \section |
  \break R1*4 \break | % 240a
  aes4^\markup\italic "(Sings:)" ^\markup "A little faster" bes8 c f,4 g8 aes | g4 aes8 bes ees,4 g | b4^\markup\italic rall. c b8(g) d4 | r fis g2 |
  c2^\markup\italic "a tempo" 4 4 | bes4.(aes8 g2) | r4 c c d | bes2~4 r | r c c c |
  bes4.(aes8 g2) | b4^\markup\italic rall. g e a | g2~4 r \section | g8^\markup\italic "a tempo" 4 8 f4 r8 f | g4 8 8 f4 r |
  g8 4 8 f4 8 8 | g2. 8 8 | a a a a g4 g | a8 8 4 g4. 8 | bes4 4 aes4 8 8 | % 241a
  bes4 4 aes4. 8 | c4^\markup{Broader \italic "(More deliberate)"} aes c aes | c aes c \caesura bes8 c \section | des8^\markup\italic "a tempo" c bes aes g4 f8 ees | aes2^\markup\italic rall. 8 bes4.\fermata |
  c8^\markup Slowly b a g fis4 e8 d | f2~8 r r4 \section | R1^\markup{Moderato \italic "(Slower than before"} | R | R |
  R1^\markup\italic{\halign #LEFT "accel. to…"} | aes4^\markup\italic "(Sings:)" ^\markup "Tempo I" bes8 c f,4 a | g4 aes8 bes ees,4 g \time 4/4 | b4^\markup\italic rit. c b g | a^\markup\italic "molto rit." a g2 \section |
  c2^\markup{"Meno mosso" \italic "(Sempre in 4)"} 4 4 | bes4.(aes8 g2) | r4 c c d | bes2~4 r | r c c c | % 242a
  bes4.(aes8) g2 | r4 c b a | r c b \caesura \override NoteHead.style = #'cross e,8^\markup\italic "(Spoken:)" e | a4^\markup Slowly \revert NoteHead.style r4 r2 | a8^\markup\italic "(Sung:)" b4.~4 r |
  \after 2. ^\markup\italic rall. R1 | r2 r4\fermata \caesura r4^\markup\italic "(Spoken)" \section | s1 | r2 r4 des,4 | ges des ges aes8 bes |
  b4 ais8 gis fis4. 8 | b e, e e e^\markup\italic "cresc. poco a poco"  e e e | 2. 8 8 | b'4 e,8 8 4 8 8 |
  cis'4 fis,8 8 4. 8 | ees'8-> des-> c-> bes-> aes-> ges-> f-> ees-> | f2^\markup{Slowly \italic "(With determination)"} r \section \key ees \major bes4 4 4 4 | 4 aes8 g ees f4. | % 243a
  g4 g g g | g f8 ees f2 | g4^\markup Stringendo d d g | a8 d,8 4 4 g8 a |
  b4 a8 g8 4 a8 b | c4 bes8 aes8 4 bes8 c | d2.^\markup Broadly c8 bes | d2. c8\fermata bes\fermata | ees1~ ^\markup\italic "a tempo" |
  ees1~ | 1~ ^\markup Maestoso \section \time 2/2 1~ ^\markup "L'istesso in 2" 1~ | 1~ | 4 r r2 |
  \bar "|."
}

spoken = {
  r4 r1*9 |
  r2. c4 | r1*3 | c1 |
  r1*28 |
  c8 4 8 4 4 | 8 4 8 4 4 | 4 8 8 4 8 8 | 2 2 | % 239b
  c8 4 8 4 8 8 | 8 4 8 2 | 4 4 4 4 | 1 |
  r1*8 |
  c4. 4. 4 | 8 4 8 2 | 4 4 4 4 | 4 4 4 4 | % 240a
  r1*24 |
  r1 | r2. c4 | 1 | 1 | 1 | % 241c
  c1 | r1*15 |
  r2. c4 | 1 | r1*26 |
}

words = \lyricmode {
  They'll say we made life here in Vir -- gin -- ia,
  and we owe the com -- mon -- wealth a thing or two. __
  Re -- mem -- ber how it used to be
  when it was on -- ly you and me, Mar -- tha? __
  Re -- mem -- ber when we did -- n't know how to make po -- ta -- toes grow,
  back a hun -- dred years a -- go, Mar -- tha? __
  We set -- tled in a cor -- ner of the Shen -- an -- do -- ah Val -- ley
  and we start -- ed on a pen -- ny and a crumb. __
  You were sweet as clo -- ver, and I was green all o -- ver…
  Ev -- 'ry -- where ex -- cept -- in' my thumb. __
  I think of how it used to be, __
  the way we strug -- gled, Mar -- tha, you and me. __
  Ja -- cob and James __ and Ap -- ril rains. __
  and frost and snow __ and grow -- in' pains.
  Seems we could grow more than beans by the ac -- re;
  Wel -- come Na -- than and John.
  Ja -- cob and James. __ Na -- than and John. __
  Bles -- sed are those heav -- en smiles up -- on. __
  Root out the weeds, the stumps and the rocks;
  Hook up the mule and the plow.
  Got a Jen -- ny and a Hen -- ry An -- der -- son now;
  An ap -- ple tree with a fruit -- ed bowl
  A lov -- in' wife with child a -- gain.
  And I'm think -- in' I should sleep with the cow,
  Mar -- tha, yon -- der in the barn with the cow. __
  Get out the den -- im, roll up the ging -- ham,
  name him Ro -- bert, he's a boy.
  Ja -- cob and James, __ Na -- than and John, __
  Jen -- ny and Hen -- ry and Ro -- bert…
  and then You were gone, Mar -- tha. __
  My blood, my sweat, and my tears in this farm,
  and no one's gon -- na come a -- long and say
  that I owe an -- y part, not the ti -- ni -- est part
  to an -- y -- one in an -- y sin -- gle way!
  This farm don't be -- long to Vir -- gin -- ia.
  My sons bleed but not for the south.
  This land here is An -- der -- son land
  by the strength of my hand and the sweat on my brow,
  for as long as the Lord will al -- low! __
}

wordsMidi = \lyricmode {
  "They'll " "say " "we " "made " "life " "here " "in " Vir gin "ia, "
  "\nand " "we " "owe " "the " com mon "wealth " "a " "thing " "or " "two. " 
  "\nRe" mem "ber " "how " "it " "used " "to " "be "
  "\nwhen " "it " "was " on "ly " "you " "and " "me, " Mar "tha? " 
  "\nRe" mem "ber " "when " "we " did "n't " "know " "how " "to " "make " po ta "toes " "grow, "
  "\nback " "a " hun "dred " "years " a "go, " Mar "tha? " 
  "\nWe " set "tled " "in " "a " cor "ner " "of " "the " Shen an do "ah " Val "ley "
  "\nand " "we " start "ed " "on " "a " pen "ny " "and " "a " "crumb. " 
  "\nYou " "were " "sweet " "as " clo "ver, " "and " "I " "was " "green " "all " o "ver… "
  "\nEv" 'ry "where " ex cept "in' " "my " "thumb. " 
  "\nI " "think " "of " "how " "it " "used " "to " "be, " 
  "\nthe " "way " "we " strug "gled, " Mar "tha, " "you " "and " "me. " 
  "\nJa" "cob " "and " "James "  "and " Ap "ril " "rains. " 
  "\nand " "frost " "and " "snow "  "and " grow "in' " "pains. "
  "\nSeems " "we " "could " "grow " "more " "than " "beans " "by " "the " ac "re; "
  "\nWel" "come " Na "than " "and " "John. "
  "\nJa" "cob " "and " "James. "  Na "than " "and " "John. " 
  "\nBles" "sed " "are " "those " heav "en " "smiles " up "on. " 
  "\nRoot " "out " "the " "weeds, " "the " "stumps " "and " "the " "rocks; "
  "\nHook " "up " "the " "mule " "and " "the " "plow. "
  "\nGot " "a " Jen "ny " "and " "a " Hen "ry " An der "son " "now; "
  "\nAn " ap "ple " "tree " "with " "a " fruit "ed " "bowl "
  "\nA " lov "in' " "wife " "with " "child " a "gain. "
  "\nAnd " "I'm " think "in' " "I " "should " "sleep " "with " "the " "cow, "
  "\nMar" "tha, " yon "der " "in " "the " "barn " "with " "the " "cow. " 
  "\nGet " "out " "the " den "im, " "roll " "up " "the " ging "ham, "
  "\nname " "him " Ro "bert, " "he's " "a " "boy. "
  "\nJa" "cob " "and " "James, "  Na "than " "and " "John, " 
  "\nJen" "ny " "and " Hen "ry " "and " Ro "bert… "
  "\nand " "then " "You " "were " "gone, " Mar "tha. " 
  "\nMy " "blood, " "my " "sweat, " "and " "my " "tears " "in " "this " "farm, "
  "\nand " "no " "one's " gon "na " "come " a "long " "and " "say "
  "\nthat " "I " "owe " an "y " "part, " "not " "the " ti ni "est " "part "
  "\nto " an y "one " "in " an "y " sin "gle " "way! "
  "\nThis " "farm " "don't " be "long " "to " Vir gin "ia. "
  "\nMy " "sons " "bleed " "but " "not " "for " "the " "south. "
  "\nThis " "land " "here " "is " An der "son " "land "
  "\nby " "the " "strength " "of " "my " "hand " "and " "the " "sweat " "on " "my " "brow, "
  "\nfor " "as " "long " "as " "the " "Lord " "will " al "low! " 
}

wordsSpoken = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "Well, if anyone here owes anyone here: — Virginia should be owin' me and…" "…you"
  I took an ax and I chopped us a clearin',
  hung us a door on a maple frame.
  Raised up a roof, got us out of the weather;
  then came Jacob and James.
  You brought me drink and I planted an acre,
  sowed us the seed we "were countin'"
  Now, "send for the Doc, no," "I best go and bring 'im."
  "Pour me a drink and I'll "  "drink for joy."
  And… "me… I got twenty-eight years in this farm,"
}

wordsSpokenMidi = \lyricmode {
  "Well, if anyone here owes anyone here: — Virginia should be owin' me and… "
  "\n…you " "I " "took " "an " "ax " "and " "I " "chopped " "us " "a " "clearin', "
  "\nhung " "us " "a " "door " "on " "a " "maple " "frame. "
  "\nRaised " "up " "a " "roof, " "got " "us " "out " "of " "the " "weather; "
  "\nthen " "came " "Jacob " "and " "James. "
  "\nYou " "brought " "me " "drink " "and " "I " "planted " "an " "acre, "
  "\nsowed " "us " "the " "seed " "we " "were countin' "
  "\nNow, " 
  "send for the Doc, no, " "I best go and bring 'im. "
  "Pour me a drink and I'll "  "drink for joy."
  "And… " "me… I got twenty-eight years in this farm,"
}

pianoRHone = \relative {
  \global
  bes4( | ees bes') 4-- 4-- | bes(aes8 g ees \vo f4.) | g'4(d') 4 4 |
  d4(c8 bes c bes4.) | bes,4 a8 bes c2 |
  \vt s2 <g' bes d g>4\fermata \arpeggio r4 \section | % 237b
  \ov <g,, bes ees>2-- q-- | q-- <aes c ees>8~^(<aes d f>4) r8 |
  <g bes ees g>2 \vo <ees' g>4(<d f>8 <c ees>) |
  \ov <g b d>4\arpeggio g'8(b) <g b d>4\arpeggio <d d'>( | % 237c
  \vo <g g'> <d' d'>) q q | q <c c'>8 <bes bes'> <c c'> <bes bes'>4. |
  q4(<a a'>8 <g g'>) 4(<f f'>) \section \key g \major \time 2/2 |
  r4 <b, d> r q |
  r4 q r q \section | r q r q | r q r q | r q r q | r q r q | % 237d
  r4 <b d e> r <d d'>( | e'2.) r4 | <b, b'>2(<a a'>) | <b b'>(<a a'>) | <b b'>(<a a'>) | % 238a
  \repeat unfold 3 {<b b'>2(<cis cis'>)} | \ov \repeat unfold 2 {<des des'>(<ees ees'>) | } % 238b
  \vo r4^\markup\italic "[Poco più mosso]" <a, c e> r q | % 238c
  <f' a d>8-.[r <d fis a>-.] r <b d g>-.[r <fis' b d>-.] r |
  <e g c>8-.[r <c e a>-.] r <c d fis>-.[r <a' c fis>-.] r |
  \ov r4 <b, d fis a>-.-> <b d e g>-- ->~8 r |
  <g des' f g>2 r \caesura | q r \caesura | % 238d
  <fis' a d>8-.[r <d fis a>-.] r <b d g>-.[r <fis' b d>-.] r |
  r4 <bes, d g>-. q-- r |
  <a b d g>2~8 r r4 | % 239a
  \vo r \tuplet 3/2 {d'4 8(} g4--) r |
  \ov <c,, e>2~^(<c eis>4) \caesura <a c g'>8\fermata <a c f>\fermata |
  r4 <b d g> r q | r q r <b f' g> \section \key c \major |
  g'8^\markup\italic "(Spoken:)" g'4 f8 e4 d8 c | a f'4 e8 d4 c | b c8 d g,4 a8 b | c4 c' g2 | % 239b
  g,8 g'4 f8 e4 d8 c | a f'4 e8 d4 c | b c8 d g,4 a8 b | <e, g c>4 r <c e g c>2\arpeggio \section | % 239c
  \vo <aes' c>2-- q-- | % 239d
  \ov <d, g bes>4. <c f aes>8 \vo <bes ees g>2 |
  s4 <aes' c>2--(<bes d>4) |
  f2(ees) |
  <ees aes c ees>4 <aes c>2 4 | % 239e
  <g bes>4. <f aes>8 g(bes c ees) |
  \ov <e, g c e>4\arpeggio r <fis, c' d fis>2-- |
  r4 <b d g>-- q-- <b f' g>-- \section |
  g'8(g'4) f8(e4) d8 c | a8(f'4->) e8(d4-> c4) | % 240a
  b4--(c8 d) <b, g'>4--(<c a'>8 <d b'>) | <e c'>4(c''-.->) g-- g,, |
  <c ees aes c>2-- <d aes' bes d> | <d g bes d>-- <ees g c ees>-- | % 240b
  <d g b d>4-. r r2 | r4 <c d fis>-. <b d g>2-- |
  <c' ees aes c>4 <c, ees aes> <d aes' c> <aes' c d f> | % 240c
  <d, g bes>4. <c f aes>8 <bes ees g>4 <g bes ees> |
  <aes c ees>4 <c ees aes> <d aes' c> <f bes d> |
  r4 <f aes bes f'> r <ees g bes ees> |
  <aes, c ees>4(<c ees f aes> <d f aes c> <aes' c f>) |
  <d, g bes>4.(<c f aes>8 <bes ees g>4 <g c ees>) | % 240d
  <g b d>4 r <c e a>-- r |
  r4 <g' b e>8. 16 <b d g>4-- ~8 r \section |
  \vo <ees, g>4-- r <d f>-- r |
  <ees g^\laissezVibrer>-- r <d f^\laissezVibrer>-- r |
  <ees g^\laissezVibrer>4-- r <d f^\laissezVibrer>-- r | % 241a
  \ov r4 <g, c ees g>8.-> g16 r4 q-> \vo |
  <f' a^\laissezVibrer>4-- r <ees g^\laissezVibrer>-- r |
  <f a^\laissezVibrer>4-- r <ees g^\laissezVibrer>-- r |
  <fis ais^\laissezVibrer>4-- r <e gis^\laissezVibrer>-- r |
  <fis ais^\laissezVibrer>4-- r \ov <gis, b e gis\laissezVibrer>-- r | % 241b
  <c ees aes c>4--(<aes aes'>) <c ees aes c>--(<aes aes'>) |
  <c ees aes c>4--(<aes aes'>) <c e aes c> \caesura r \section |
  <aes bes des f>4--\arpeggio r <g bes des ees>--\arpeggio r |
  <aes c ees aes>4--\arpeggio \vo r aes'8(bes4.\fermata) |
  \ov <c, e g c>8 r r4 <c d fis>8 r r4 | % 241c
  r4 <c f a>(<d g b>2) \section |
  g8-.[g'-. r f-.] e-.[r d-. c-.] |
  a8-.[f'-. r e-.] d-.[r c-.] r |
  b8-.[r c-. d-.] g,-.[r a-. b-.] |
  c8-.[r c'-.] r g-. r r4 | % 241d
  <c,, ees aes>4 <g' bes>8 <aes c> f4 <d f aes> |
  g4 <f aes>8 <g bes> ees4 <c ees g> \time 4/4 |
  <d g b>4 <d a' c> <d g b> <b d g> |
  <a c e>4 <c e a> <b d g> r\fermata \section |
  <c' ees aes c>4-> <ees, f aes c> <d f aes c> q | % 242a
  \vo bes'4.(aes8 g2) \ov |
  r4 <ees f aes c> <d f aes c> <f aes bes d> |
  \vo bes2. r4 \ov |
  r4 <ees, f aes c> <d f aes c> q |
  \vo bes'4. aes8 \ov <c, ees g>4 r | % 242b
  r4 <e g c>-> <e g b>-> <e g a>-> |
  r4 <e g c>(<dis fis b>) \caesura d8(e |
  a4) <des, f a c>2.-- |
  r2 b''8(bes fis) a( |
  aes8 e g fis d) f(e c) | % 242c
  \vo ees4(d2\fermata) \caesura r4 \section |
  <ees g bes>1 | <f aes des> | <ges bes des> |
  <fis b dis>2. r4 \ov | % 242d
  <b,, e b'>4-. q2-- q4-. |
  \vo r4 b'8. 16 e4 r \ov |
  <b, e b'>4 2 4 |
  <cis fis cis'>4 2 4 | % 243a
  <ees aes ees'>4->~8 r r2 |
  r4 <aes bes d f>-> <g bes ees g>-> <aes d f aes>-> \section \key ees \major |
  \lh <ees, g bes> \ss \rh \vo<ees'' g bes> \hs \lh <ees,, g bes> \ss \rh \vo <ees'' g bes> |
  \hs \lh <ees,, g bes> \ss \rh \vo <c'' ees f bes> \hs \lh <ees, f aes c> \ss \rh \vo <bes' d f bes> |
  bes,8(c) c(d) d(ees) ees(f) | % 243b
  r2 r4 <f, bes d f>4--(~ |
  <g b d g>4-.) q-. r q-. |
  <c e a>4-. q-. r q-. |
  <b d g b>2 2 | % 243c
  <c ees aes c>2 2 |
  <des f aes des>2. <ees c' ees>8 <des bes' des> |
  <d f aes d>2~8 r\fermata <d f aes c>8\fermata <d f aes bes>\fermata |
  <ees g bes ees>1~ |
  <ees ees'>1 | % 243d
  r4 <<{\vo aes'-> f-> aes->} \new Voice {\vf aes,4-> f4.-> c'8->}>> \section \time 2/2 |
  \ov <ees, g bes ees>1~ | 1 | <g bes ees g>1-> | q4-^ r r2 |
%  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s4 | s1 | s2 s8 f'(aes c | b2) s | aes g | g4(a8 g g4 f) |
  \vo <d g d'>2.^\fermata r4 \section | % 237b
  \vt s1 | s | s2 a |
  s1 | r4 s r s | s1 | s2 r \section | \key g \major a2 g | % 237c
  a2 g \section | a g | a g | a g | a g | % 237d
  a2(gis) | e'4 \once\arpeggioBracket <d e>\arpeggio r q | r <cis e> r q | r q r q | r q r q | % 238a
  r4 <e a> r q | r q r q | r q r q | s1 | s |
  g,2 fis! | a_\markup\italic "L.H." g | g(fis) | s1 |
  s1*4 |
  s1 | r4 \tuplet 3/2 {d'4 8(} g4--) r | s1*3 \section | % 239a
  s1*8 | % 239bc
  ees2(d) | s2 b'8(c ees g | <aes, c ees aes>4) s d, f | r <g bes> r q | % 239d
  r4 e(d f | c ees) 2 | s1 | s | % 239e
  s1*13 | % 240abc
  s1 | s | s \section | r4 <g, c ees>-> r <f bes d>-> | % 240d
  r4 <g c e>-> r <f bes d>-> |
  r4 <g c ees>-> r <f bes d>-> | s1 | % 241a
  r4 <a c f> r <g bes ees> |
  r4 <a c f> r <g bes ees> |
  r4 <ais cis fis> r <gis b e> |
  s1*4 | s2 <d' ges> | % 241b
  s1*5 | % 241c
  s1*5 | % 241d
  s1 | r4 <d g> r ees | s1 | r4 <ees aes> r <ees g> | s1 | % 242a
  r4 <d g> s2 | s1*4 |
  s1 | <aes' bes>2. r4 \section | s1*3 |
  s1*4 |
  s1*5 | % 243a
  s1*4 |
  s1 | s | r8 aes des aes' ges f r4 | s1 | r4 bes,-> 4-> 4-> |
  <g bes>4 aes8 g aes bes4. | <f, aes c ees>1-^ \section | s1*4 |
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\p | s1*5 |
  s1 | s\p | s | s |
  s2. s4\pp | s1-\markup\italic "poco accel." | s1 | s4 s2.-\markup\italic rit. | s1\p |
  s1*5 |
  s1*5 | % 238a
  s1*3 | s2 s\< | s2 s\! |
  s1\p | s1*3 |
  s1-\markup\italic "ad lib" | s1 | s\omit\p-\markup{\dynamic p \italic "(Sempre - In 2)"} | s1 |
  s1 | s | s2\< s\! | s1\f | s | % 239a
  s1\p | s1*3 |
  s1*3 | s2 s\mf |
  s1*4 | s1 | s | s-\markup\italic rall. | s1 |
  s1\p^\markup\italic "Rubato - Colla voce" | s | s4 s2.-\markup\italic "a tempo" | s1 | % 240a
  s1 | s | s-\markup\italic rall. | s |
  s1\omit\f-\markup{\dynamic f \italic "a tempo"} | s1*4 |
  s1 | s\omit\mf-\markup{\dynamic mf \italic rall.} | s | s\omit\f-\markup{\dynamic f \italic "a tempo"} | s |
  s1*5 | % 241a
  s1*3 | s1\omit\p-\markup{\dynamic p \italic "a tempo"} | s-\markup\italic rall.
  s1-\markup\italic "colla voce" | s | s-\markup\italic lightly | s | s |
  s1*3 | s1\omit\f-\markup{\dynamic f \italic rit.} | s2.-\markup\italic "molto rit." s4\ff |
  s1*5 | % 242a
  s1 | s | s4 s\p\> s2\pp | s4 s2.\p\> | s2\! s\mf |
  s2 s8 s4-\markup\italic rall. s8\mp | s2. s4\pp | s1\pp | s | s |
  s1 | s2\mp s\omit\cresc-\markup\italic "cresc. poco a poco" | s1 | s |
  s1 | s\f | s4 s\ff s2\> | s1\f | s | % 2443a
  s1\p\< | s2\> s\! | s1 | s |
  s1 | s | s\ff | s | s2\omit\f-\markup{\dynamic f \italic "a tempo"} s\< |
  s2 s8 s4.\! | s2 s\< | s1\ff | s2 s-\markup\italic rit. | s1\< | s\!-\markup\dynamic fffz |
}

pianoLHone = \relative {
  \global \voiceOne
  r4 | ees'2 des | <aes c>1 |
  <<{<b d>1} \new Voice {\once \hideNotes d2^\markup L.H. \showStaffSwitch \change Staff = pianorh a'}>> |
  <bes, d>2 \parenthesize f'4(ees8 d) | \ov <e, bes' des>2(<d a' c>) |
  <g, d' bes'>2.\fermata r4 \section | % 237b
  <ees ees'>2-- <des des'>-- | <c c'>-- <bes bes'>8~4 r8 | <ees ees'>2 f |
  <g d'>4\arpeggio g'8(b) <g b d>4\arpeggio r | % 237c
  \once\hideNotes a4 \ss \rh <b d g> \lh \once\hideNotes a \rh <a d fis> |
  <aes bes d f> ges' f ees8 d | des4 r \lh <a c>2 \section \key g \major |
  \ov <g, d'>4 r d r |
  q4 r q r \section | q r d r | q r d r | q r d r | q r d r | % 237d
  b'4 r e, r | \vo a'2(gis) \ov | \repeat unfold 6 {<a, e'>4 r e r} | % 238a
  \vo r4 <f' aes> r q | r q r q | % 238b+++
  \ov a,4 r d, r | b' r e, r | a r d, r | r <b' fis'>-. -> <e g>4-- -> ~8 r |
  <ees, bes'>2 r \caesura | q r \caesura | <d d'>4 r q r | <g g'> r r2 | % 238d
  <b, b'>2~8 r r4 | R1 | % 239a
  <a' g'>2(<d fis>4) \caesura <d, d'>8\fermata q\fermata |
  <g g'>2-- <f f'>-- | <e e'>-- <d d'>-- \section \key c \major |
  <c c'>4 <g'' c e> g, q | f <a' c f> f, q | g <g' b f'> g, q | c <g' c e> g, q | % 239b
  <c, c'>4 <g'' c e> g, q | f <a' c f> f, q | g <g' b f'> g, q | c r <c e g>2\arpeggio \section | % 239c
  f,4 <aes' c> bes, q | ees, <g' bes> bes,, q | f' r bes, r | ees r bes r | % 239d
  f'4 <f' aes c> bes,, <d' aes' c> | ees, <ees' g bes> \vo g8(bes c ees) | % 239e
  \ov <a,, e' c'>4\arpeggio r <d, d'>2-- | r4 <f f'>-- <e e'>-- <d d'>-- \section | % 239e
  <c c'>4 <e' g c> g, <g' c e> | f, <a' c f> f, q | g <f' g b> g, q | % 240a
  c4 <e g c> g, g32(a b c d e f g |
  <f, aes'>2) <bes aes'> | <ees f bes> <a, a'> | % 240b
  <d g b>4-. r r2 | <d, d'>4 r r g |
  <f f'>4 r <bes, bes'> <f'' aes d> | % 240c
  ees,(bes') bes,(bes') |
  f4 <f' aes> <bes,, bes'> <f'' aes> |
  <ees, ees'>4 bes'' <bes,, bes'> bes'' |
  <f, c' f>4 <f' aes> <bes,, bes'> <f'' aes d> |
  ees,4 ees' bes(a) | <d, d'> r <d' fis>-- r | % 240d
  <g, g'>4 e''8. 16 g4-- ~8 r \section |
  bes,,,4 bes'-> aes, aes'-> | bes, bes'-> aes, aes'-> |
  bes,4 bes'-> aes, aes'-> | bes, bes'-> bes, bes'-> | % 241a
  ees,4 ees' des, des' | ees, ees' des, des' | e, e' d, d' |
  e,4 e' <d, d'> b | <ees ees'>2 <g g'> | <f f'> <e e'>4 \caesura r \section | % 241b
  <des des'>4--\arpeggio r <ees ees'>--\arpeggio r |
  <aes ees'>--\arpeggio r \vo <fes' aes>2\fermata |
  \ov <a, a'>8 r r4 \vo a'8 \ov r r4 | r <f a>4(<g b>2) \section | % 241c
  <c,, c'>4-. <g'' c e>-. g,-. q-. | f-. <a' c f>-. f,-. q-. |
  g4 <f' g b>-. g,-. q-. |
  c4-. <g' c e>-. q-. g, | <f f'> r <bes, bes'> r | % 241d
  <ees ees'>4 r bes' a \time 4/4 | <d, d'>4 4 4 4 |
  <d' g> <d fis> <g, g'> g-^\fermata \section |
  <f f'>4 <f' aes c> <bes,, bes'> <f'' aes c> | % 242a
  <ees, ees'>4 <g' bes> <bes,, bes'> <g'' bes> |
  <f, f'>4 <f' aes c> <bes,, bes'> <f'' aes bes d> |
  <ees, ees'> <aes' bes> <bes,, bes'> <g'' bes> |
  <f, f'> <f' aes c> <bes,, bes'> <f'' aes c> |
  <ees, ees'>4 <g' bes> q <bes,, bes'>-> | % 242b
  <a a'>4-> a''-> b-> c-> | <d,, d'>-- a''(aes) \caesura r |
  r4 <ees g>2.-- | R1 |
  R1 | \vo <aes bes>2. \caesura bes4( \section | % 242c
  ees4 bes \rh ees8 f g4 | aes g8 f ees4) des( | ges des ges aes8 bes |
  b4 ais8 gis fis4.) r8 \lh | % 242d
  \ov <e, gis>4 2 4 | <a, e' a>4 2 4 | <gis gis'>4 2 4 |
  <fis cis' ais'>4 2 4 | % 243a
  <aes ees' c'>4-> ~8 r r2 |
  r4 <bes, bes'>-> q-> q-> \section \key ees \major |
  \vt <ees bes'>4 \ss \rh <ees'' g bes> \hs \lh \vt <des,, des'> \ss \rh <des'' ees g bes> |
  \hs \lh \vt <c,, c'> \ss \rh <c'' ees aes bes> \hs \lh \vt <bes,, bes'> \rh <bes'' d f aes> |
  \lh \ov <ees,, ees'>4(<d d'> <c c'> <bes bes'>) | % 243b
  <a a'>2-- <bes bes'>8-> <c c'>-> <bes bes'>-> <aes aes'>-> |
  <g g'>4-. q-. r q-. |
  <d' d'>4-. q-. r q-. |
  \vo g'2 \once\arpeggioBracket <f g>\arpeggio | % 243c
  \ov <ees, ees'>4. 8 <aes aes'>8-> <ges ges'>-> <f f'>-> <ees ees'>-> |
  <des des'>2. \vo aes''4 |
  \ov <bes, f' aes>8 bes f' c' bes s8 \vo <f aes c>8\fermata <f aes bes>\fermata |
  \ov <ees, ees'>2 <des des'> |
  \vo r4 <f' aes>8 <ees g> <f aes> <g bes>4. | % 243d
  \ov <bes,, bes'>1-^ \section \time 2/2 |
  \vo <ees' g bes>1~ | q1 | <ees g bes ees>1-> |
  \parenthesize <g bes ees>4 r r2 |
%  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  r4 | <ees g>1 | ees2.(d4) | g2(fis | f <ees bes'>) | s1 |
  s1 \section | s1*3 | % 237b
  s1 | \ov g,2 a | \once\tiny bes4 r <ees g bes>2\arpeggio | <e g bes>4-. r \vt d2 \section \key g \major | s1 | % 237c
  s1 \section | s1*4 | % 237d
  s1 | b4 r e, r | s1*3 | % 238a
  s1*3 | <des des'>4 r aes' r | q r aes r |
  s1*4 |
  s1*4 |
  s1*17 | % 239abcd
  s1 | s2 bes4 r | s1 | s | % 239e
  s1*3 | s2. r4 | % 240a -- Why a rest here???
  s1*14 |
  s1*9 | s2 r\fermata | s2 <d, d'>8 s s4 | s1*9 | % 241
  s1*10 | % 242ab
  s1 | e2~4\fermata \caesura s \section | s1*3 | % 242c
  r2 r4 <b b'>4-> | s1*3 |
  s1*5 | % 243a
  s1*4 |
  g'2 f | s1 | s2. f4 | s2 s8 \vo <bes, bes'>4. | s1 |
  <c c'>1 | s \section \time 2/2 | % 243d
  \vt ees4-> bes-> ees-> bes-> | ees-> bes-> ees-> bes-> |
  \parenthesize ees1-> | <ees ees'>4-^ r r2 |
%  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \words
            \new NullVoice = spoken \spoken
            \new Lyrics \with {
              alignAboveContext = melody
            } \lyricsto spoken \wordsSpoken
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff =pianolh \with {
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        printKeyCancellation = ##f
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \words
            \new NullVoice = spoken \spoken
            \new Lyrics \with {
              alignAboveContext = melody
            } \lyricsto spoken \wordsSpoken
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff =pianolh \with {
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        printKeyCancellation = ##f
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \words
            \new NullVoice = spoken \spoken
            \new Lyrics \with {
              alignAboveContext = melody
            } \lyricsto spoken \wordsSpoken
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff =pianolh \with {
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        printKeyCancellation = ##f
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
  \bookOutputSuffix "midi"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsMidi
            \new NullVoice = spoken \spoken
            \new Lyrics \with {
              alignAboveContext = melody
            } \lyricsto spoken \wordsSpokenMidi
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
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
