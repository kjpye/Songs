\version "2.25.11"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Armadillo"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Donald Swann"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Michael Flanders"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 4/4
}

TempoTrack = {
  \tempo "A tender moderato" 4=120
  s1*12
  \once\set Score.tempoHideNote = ##t \tempo "rit." 4=110 s1
  \tempo "Meno mosso" 4=96 s1*7
  \set Score.tempoHideNote = ##t \tempo "Tempo I" 4=120 s1*15
  s2 \tempo "rit." 4=110 s | \tempo "Meno mosso" 4=96 s1*8
  \tempo "Quite quickly" 4=140 s1*4
  \once\set Score.tempoHideNote = ##f \tempo "Middle tempo" 4=112 s1*8
  s2 \tempo "rit." 4=100 s
  \once\set Score.tempoHideNote = ##f \tempo "Meno mosso" 4=96 s1*3
  \tempo "rit." 4=90 s2 \tempo 4=30 s4 \tempo 4=90 s |
  \tempo "a tempo" 4=96 s1*8 |
  s4 \tempo 4=32 s8. \tempo 4=96 s16 s2 |
  \tempo "Tempo I" 4=120 s1 | s2 \tempo "poco rit" 4=110 s2 | s1 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "154a" } s1*4
  \mark \markup { \box "154b" } s1*3
  \mark \markup { \box "154c" } s1*3
  \mark \markup { \box "155a" } s1*3
  \mark \markup { \box "155b" } s1*3
  \mark \markup { \box "155c" } s1*3
  \mark \markup { \box "155d" } s1*4
  \mark \markup { \box "156a" } s1*3
  \mark \markup { \box "156b" } s1*3
  \mark \markup { \box "156c" } s1*3
  \mark \markup { \box "156d" } s1*3
  \mark \markup { \box "157a" } s1*3
  \mark \markup { \box "157b" } s1*3
  \mark \markup { \box "157c" } s1*3
  \mark \markup { \box "157d" } s1*4
  \mark \markup { \box "158a" } s1*4
  \mark \markup { \box "158b" } s1*3
  \mark \markup { \box "158c" } s1*3
  \mark \markup { \box "158d" } s1*3
  \mark \markup { \box "159a" } s1*3
  \mark \markup { \box "159b" } s1*3
  \mark \markup { \box "159c" } s1*3
  \mark \markup { \box "159d" } s1*3
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s2. s4\mp | s1*6 |
  s1 | s | s2. s4\p | s1*10 | % 155
  s2. s4\mp | s1*11 |
  s1*3 | s1\cresc | s1 | s2. s4\dim | s2 s8 s4.\mp | s1*6 | % 157
  s1*8 s2.. s8\p | s1*4 |
  s1*5 | s2. s4\p | s1*6 | % 159
}

melody = \relative {
  \global
  R1*3 | s2 r4 dis'8 8 |
  b8 8 gis' fis fis e e dis | cis b b b b4 8 8 | gis'8 8 8 8 8 b a gis |
  fis2 r4 cis8 8 | 8 8 8 8 dis16 16 8 r dis | eis8 8 8 8 fis4 8 e |
  dis8 8 8 8 gis fis dis e | cis4 r r2 | r2 r4 b8 8 | % 155a
  e8 dis e fis e16 b8. 8 8 | fis' e fis gis b,4 gis'8 fis | e16 b8. gis'8 fis gis16 e8. fis16 gis8. |
  fis2 r4 b8 a | gis fis gis a b gis fis e | fis e fis gis a cis,8 8 8 |
  b8 8 8 8 8 8 cis8. b16 | e2 r | R1 | R |
  r2 r4 b8 8 | 8 8 gis' fis8 8 e e dis | cis b b b b4 8 8 | % 156a
  gis'8 8 8 8 16 b8. a8 gis | fis2 r4 r8 cis | 8 8 8 8 dis16 8. 8 8 |
  eis8 8 8 8 fis4 r8 e16 e | dis8 8 8 8 gis fis dis e | cis2 r4 cis |
  dis8 8 8 8 e e e e | cis8 8 8 8 dis4 8 8 | gis8 8 a a gis8 8 cis, dis |
  e16 fis8. d8 e cis4 \breathe b8 8 | e dis e fis e16 b8. 8. 16 | fis'8. e16 fis8 gis b,4 gis'8 fis | % 157a
  e8 b gis' fis gis8. e16 fis8 gis | fis2. b8 a | gis16 fis8. gis16 a8. b16 gis8. fis8 e |
  fis8 e fis gis a cis,8 8 8 | b b b b b16 8. cis8. b16 | e2 r4 r4*15/16 s64^\markup{\halign #RIGHT \italic "(dramatic recitation)"} |
  R1*4 |
  R1*4 | % 158a
  R1*3 |
  R1 | r2 r4 r8 ais, | dis8 8 8 8 e16 8. 8 8 |
  cis8 8 b ais dis4 8 8 | gis8 8 cis8 8 gis-- \caesura 8 cis, dis | e fis d e cis4\fermata r4*15/16 s64^\markup{\halign #RIGHT \italic "(spoken)"} |
  R1 | r2 r4 gis'8 fis | e16 b8. gis'8 fis gis16 e8. fis8. gis16 | % 159a
  fis2 r4 b8 a | gis fis gis a b gis dis e | fis e fis gis a16 cis,8. \caesura 8 8 |
  b8 8 8 8 16 8. cis8. b16 | e2 r4 cis8 8 | b b b'8.\fermata gis16 fis e8. cis8. b16 |
  e2. r4 | R1 | R1 |
  \bar "|."
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

words = \lyricmode {
  \set stanza = "1."
  I was ta -- king com -- pass bear -- ings
  for the Or -- dn -- ance Sur -- vey
  By an Ar -- my train -- ing Camp on Salis -- bury Plain;
  I had packed up my the -- o -- do -- lite,
  was call -- ing it a day,
  When I heard a voice that sang a sad re -- frain:
  ‘Oh my dar -- ling Ar -- ma -- dil -- lo
  Let me tell you of my love,
  Lis -- ten to my Ar -- ma -- dil -- lo roun -- de -- lay.
  Be my fel -- low on my pil -- low
  Un -- der -- neath this weep -- ing wil -- low,
  Be my dar -- ling Ar -- ma -- dil -- lo all the day.’

  I was some -- what dis -- con -- cer -- ted by this cu -- ri -- ous af -- fair
  For a sin -- gle Ar -- ma -- dil -- lo, you will own,
  On Salis -- bury Plain, in sum -- mer, is com -- pa -- ra -- tive -- ly rare
  And a pair of them is prac -- ti -- cally un -- known.
  Drawn by that mel -- low so -- lo
  There I fol -- lowed on my bike,
  To dis -- co -- ver what these Ar -- ma -- dil -- lo Lo -- vers would be like:
  ‘Oh my dar -- ling Ar -- ma -- dil -- lo,
  How de -- light -- ful it would be
  If for us those sil -- ver wed -- ding bells would chime;
  Let the or -- ange blos -- som bil -- low,
  You need on -- ly say “I will”— oh,
  Be my dar -- ling Ar -- ma -- dil -- lo all the time.’

  I left him to his sing -- ing,
  Cy -- cled home with -- out a pause…
  Ne -- ver tell  a man the truth
  A -- bout the one that he a -- dores!

  Sing -- ing wil -- low, wil -- low, wil -- low down the way,
  And I seem to hear it still.
  Oh vive l'a -- mour, vive l'Ar -- ma -- dil -- lo
  'Be my dar -- ling Ar -- ma -- dil -- lo all the day,
  Be my dar -- ling Ar -- ma -- dil -- lo all the day.'
}

wordsMidi = \lyricmode {
  "I " "was " ta "king " com "pass " bear "ings "
  "\nfor " "the " Or dn "ance " Sur "vey "
  "\nBy " "an " Ar "my " train "ing " "Camp " "on " Salis "bury " "Plain; "
  "\nI " "had " "packed " "up " "my " the o do "lite, "
  "\nwas " call "ing " "it " "a " "day, "
  "\nWhen " "I " "heard " "a " "voice " "that " "sang " "a " "sad " re "frain: "
  "\n‘Oh " "my " dar "ling " Ar ma dil "lo "
  "\nLet " "me " "tell " "you " "of " "my " "love, "
  "\nLis" "ten " "to " "my " Ar ma dil "lo " roun de "lay. "
  "\nBe " "my " fel "low " "on " "my " pil "low "
  "\nUn" der "neath " "this " weep "ing " wil "low, "
  "\nBe " "my " dar "ling " Ar ma dil "lo " "all " "the " "day.’\n"

  "\nI " "was " some "what " dis con cer "ted " "by " "this " cu ri "ous " af "fair "
  "\nFor " "a " sin "gle " Ar ma dil "lo, " "you " "will " "own, "
  "\nOn " Salis "bury " "Plain, " "in " sum "mer, " "is " com pa ra tive "ly " "rare "
  "\nAnd " "a " "pair " "of " "them " "is " prac ti "cally " un "known. "
  "\nDrawn " "by " "that " mel "low " so "lo "
  "\nThere " "I " fol "lowed " "on " "my " "bike, "
  "\nTo " dis co "ver " "what " "these " Ar ma dil "lo " Lo "vers " "would " "be " "like: "
  "\n‘Oh " "my " dar "ling " Ar ma dil "lo, "
  "\nHow " de light "ful " "it " "would " "be "
  "\nIf " "for " "us " "those " sil "ver " wed "ding " "bells " "would " "chime; "
  "\nLet " "the " or "ange " blos "som " bil "low, "
  "\nYou " "need " on "ly " "say " "“I " "will”— " "oh, "
  "\nBe " "my " dar "ling " Ar ma dil "lo " "all " "the " "time.’"

  "\nI " "left " "him " "to " "his " sing "ing, "
  "\nCy" "cled " "home " with "out " "a " "pause… "
  "\nNe" "ver " "tell "  "a " "man " "the " "truth "
  "\nA" "bout " "the " "one " "that " "he " a "dores! "

  "\nSing" "ing " wil "low, " wil "low, " wil "low " "down " "the " "way, "
  "\nAnd " "I " "seem " "to " "hear " "it " "still. "
  "\nOh " "vive " l'a "mour, " "vive " l'Ar ma dil "lo "
  "\n'Be " "my " dar "ling " Ar ma dil "lo " "all " "the " "day, "
  "\nBe " "my " dar "ling " Ar ma dil "lo " "all " "the " "day.' "
}

alignerSpoken = {
  s1*43 |
  s2. c4 |
  c2 c | c c | c c | c1 | % 157d
  s1 | s | s2. c4 | c c c c | % 158a
  c2 c | c c | c1 |
  s1*5 | s2. c4 |
  c4 c c c | c c c s | s1 | % 159a
  s1*9 |
}

spoken = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  "Then I" "saw them, in a" "hollow, by a" "yellow muddy" "bank— One"
  "Armadillo" "singing… to an" "armour-plated Tank!"
  "Should I" "tell him?" "Gaunt and" rusting, "with the"
  "willow tree" "above, This—a-" "bandoned on" "manœuvres—is the" "object of your love!"

  "On the" "breeze that" follows sunset "I could" "hear that" "sad" "refrain"
}

spokenMidi = \lyricmode {
  "\nThen I " "saw them, in a " "hollow, by a " "yellow muddy " "bank— One "
  "Armadillo " "singing… to an " "armour-plated Tank!"
  "\nShould I " "tell him? " "Gaunt and " "rusting, " "with the "
  "\nwillow tree " "above, This—a-" "bandoned on " "manœuvres—is the " "object of your love!"

  "On the " "breeze that " "follows " "sunset " "I could " "hear that " "sad " "refrain "
}

pianoRHone = \relative {
  \global \ov
  gis8(<b' e gis b>8 8 8 <b dis gis b>8 8 8 8 |
  <b b'>16 <e a>8.~8 <b e a>16 b' \vo <b, a'>2) \ov |
  gis,8(<b e gis b>8 8 8 <dis gis b>8 8 <gis b> q |
  <b, b'>16 <e a>8.~8 16 b' q4) \vo r |
  \ov <gis, e'>4(<gis' gis'>8. <fis fis'>16 \vo <e e'>4. <dis dis'>8 | % 154b
  <cis cis'>2 <b b'>) |
  \ov <gis e' gis>4 <e' e'>8(<dis dis'> <d gis b d>4 <b dis>) |
  <a cis fis a>4(<a' cis fis a> <a' cis fis a>2) | % 154c
  r4 <a,, cis fis a> r q |
  r4 <b cis eis gis> r \vo fis'8 e |
  s2 \ov <bis gis'> | % 155a
  cis4->\laissezVibrer <cis' e a>(<b gis'> <a cis fis> |
  <gis cis e>4 <fis gis dis'> <e cis'>8 <a, e'> <a b dis>4) |
  <gis e'>2 <gis' b>4 <b, e> | % 155b
  <cis a'>4 <cis e> <dis fis> <gis b>8 <fis a> |
  <e gis>4 <fis b> <e b'> <cis e fis> |
  <cis e a>4(<cis' e> <b dis b'>2) | % 155c
  <b, d fis a>4( <b' d fis a> <b d e gis> <b, d e gis>) |
  <cis fis>4(<b cis gis'> <a cis a'> <ais cis>) |
  <a b e>4 <a' b e> <a, b dis>2 | % 155d
  \vo gis8^(\vt<b' e gis b> q q <b dis gis b> q q q |
  <b b'>16 <e fis a>8.~8 <b e a>16 b' e,4 dis) |
  \ov gis,,8(<b e gis b> q q <dis gis b> q <gis b> q |
  <b, b'>16 <e a>8.~8 16 b' q4) <b, dis>8 a | % 156a
  <gis e'>4 s4 \vt r4 <gis' b> |
  r4 <e gis> r q \ov |
  <gis e' gis>4 <e' e'>8(<dis dis'> <d gis b d>4 <b d>) | % 156b
  <a cis fis a>4(<a' cis fis a> \ottava #1 <a' cis fis a>2) \ottava #0 |
  r4 <a,,, cis fis a> r q |
  r4 <b cis eis gis> r <cis e> | % 156c
  <cis dis>2 <bis gis'> |
  cis4(cis' cis') r |
  dis,,2(e | cis4 b8 ais dis2) | <cis gis'>4(<cis a'> <cis gis'> \vo cis8 dis | % 156d
  \ov <gis, cis e>4 <fis bis dis> \vo cis' \ov <fis, a bis>) | % 157a
  \vo r4 s r s |
  \ov <cis' a'>4 e <b dis fis>2 |
  <b gis'>4 <b fis'> <gis cis e> <ais e'> | % 157b
  <a cis e>4 \ottava #1 <e''' a cis e> <cis fis a cis> <b dis fis b> |
  <a d fis a>4 <fis a dis> <e fis b e> \ottava #0 <b e gis> |
  <cis fis>4 <b cis gis'> <a cis a'> <ais, cis> | % 157c
  <a b e>2 <a b dis> |
  <gis e'>2. e'4 |
  e2(dis | gis g) | g(fis | b) r |
  r2 r4 bes'8._\p(16 | % 158a
  ees8. d16 ees8. f16 ees bes8.) 8.(16 |
  f'8. ees16 f8. g16 bes,4) g'8(f |
  ees16 bes8. g'8 f g16 ees8. f g16 |
  f1) ~ | f~ | f2. \ottava #1 bes8.( aes16 | % 158b
  g8. f16 g8. aes16 bes g8.) f8.(ees16 | % 158c
  f8. ees16 f8. g16 aes4) \ottava #0 bes,,,4 |
  dis2(e |
  cis4 b8 ais) dis2 | % 158d
  <cis gis'>4 <dis fis cis'> <cis gis'>-- \vo cis8 dis \ov |
  <gis, cis e>4 <fis bis dis> \clef bass \vo cis'4 \ov <dis, a' b>\fermata |
  \clef treble \vo e''8. dis16 e8. fis16 e b8. 8. 16 | % 159a
  fis'8. e16 fis8. gis16 b,4 \ov <dis, gis b> |
  <e gis>4 <fis b> <e gis> <ais, e' fis> |
  <a cis e fis>4(<e' a> <dis b'>2) | % 159b
  <b d fis a>4 <b' d fis a> <gis b d e gis>2 |
  <cis, fis>4 <b c gis'> <a c a'> <ais cis> |
  <a b e>2 <a b dis> | % 159c
  <gis e'>4 <gis' b dis gis>(<e gis cis e> <a, cis e>) |
  b4 <b d b'>\fermata <a cis e fis> <a cis e>8. <b dis>16 |
  <gis e'>8 <b' e gis b> q q <b dis gis b> q q q | % 159d
  <b b'>16 <e a>8.~8 16 b' \vo e,4(dis) \ov |
  <gis, b e gis>1 |
}

pianoRHtwo = \relative {
  \global \vt
  s1 | s2 e''4 dis | s1 | s2. <b, dis>8 a |
  s2 r4 <gis' b>4 | r4 <e gis> r q | s1 |
  s1 | s | s2. cis4( |
  \ov <cis dis>2) \vt s | s1 | s | % 155a
  s1*3 |
  s1*3 |
  s1 | s | s2 \vo <b' a'>2 | s1 |
  s1 | s4 <gis gis'>8.( <fis fis'>16 \vo <e e'>4. <dis dis'>8 | <cis cis'>2 <b b'>) | % 156a
  s1*3 |
  s1*3 |
  s1 | s | s2. \vt a4 |
  s2 e8 a s4 | gis2*1/2 ( <e' gis b>4) b2*1/2 ( <e gis>4) | s1 | % 157a
  s1*3 |
  s1*3 |
  s1*4 |
  s1*4 | % 158a
  s1*3 |
  s1*3 |
  s1 | s2. a,4 | s2 e8 a s4 \clef treble |
  gis'4 4 4 4 | a a <dis, a'> s | s1 | % 159a
  s1*3 |
  s1*3 |
  s1 | s2 <b' a'>2 | s1 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf\< | s\> | s\mp\< | s4\! s\> s\! s\mp |
  s1*3 |
  s1 s-\markup\italic cant. | s1 |
  s1 | s4\omit\f-\markup{\italic poco \dynamic f} s2.\> | s2.\! s4\p | % 155a
  s1*3 |
  s1*3 |
  s1 | s4\mf s2.\< | s4\! s2\> s4\! | s4\mp s2.\<
  s4\! s2\> s4\mp | s1*2 | % 156a
  s1 | s | s-\markup\italic cant. |
  s1*3 |
  s1 | s | s-\markup\italic legato
  s1*3 | % 157a
  s1 | s4\f s2.\omit\ff-\markup {\concat {\dynamic ff \upright " QUASI BELLS (" \dynamic f ")"}} | s2. s4\dim |
  s2 s4-\markup\italic "colla voce" s\mp | s1*2 |
  s1\omit\cresc-\markup\italic "poco cresc." | s1*3 |
  s1*4 | % 158a
  s1*2 | s2. s4\pp |
  s1 | s2. s4\parenthesize\p | s1 |
  s1*3 |
  s1 | s2. s4\mp | s1 | % 159a
  s1*3 |
  s1 | s4 s\mf\> s\! s\pp | s1 |
  s1\< | s16\sf s4..\> s2\! | s1\p |
}

pianoLH = \relative {
  \global
  <e, b'>4 <gis' b e> <b, gis'> dis' |
  <fis,, cis' e>4 <cis'' e> <b, fis' a> dis' |
  <e,, b'>4 gis' <b, gis'> dis' |
  <e,, cis' e>4 <fis' cis'> <<{\vo <fis a> r} \new Voice {\vt b,2}>> \ov |
  \repeat unfold 2 {<e, b'>4 b'' <b, gis'> b' |} % 154b
  <e,, b'>4 b'' <f, d'> gis' |
  <fis, cis'>(fis' fis'2) | % 154c
  cis,4.(8 dis4. 8 |
  <gis, eis'>4. eis'8 <a, fis'>2) |
  <ais fisis'>2 <gis fis'> | % 155a
  <cis, cis'>4 \clef treble <cis'' e a> <b dis gis> <a cis fis> |
  <gis cis e>4 \clef bass <fis gis dis'> <e gis cis>8 <fis, cis'> <b, b'>4 |
  <e b'>4 b'' <b, gis'>2 | % 155b
  <fis e'>4 a' <b, a'>2 |
  <e b'>4 <dis b'> <cis gis' b> <fis ais> |
  <b, fis' a>4(<fis'' a> <b, fis' a>2) | % 155c
  <b, fis' a>2 <e, e'> |
  <a e'>4 <gis eis'> <fis fis'> <g e'> |
  <fis e'>2 <b, b'> | % 155d
  <e b'>4 <gis' b e> <b, gis'> dis' |
  <fis,, cis' e>4 <cis'' e> <b, fis' a> b' |
  <e,, b'>4 gis' <b, gis'> dis' |
  <fis,, cis' e>4 <fis' cis'> <<{\vo <fis a>} \new Voice {\vt b,}>> \ov r4 | % 156a
  <e, b'>4 b'' <b, gis'> b' |
  <e,, b'>4 b'' <b, gis'> b' |
  <e,, b'>4 b'' <f, d'> gis' | % 156b
  <fis, cis'>4(fis' fis'2) |
  cis,4.(8 dis4. 8 |
  <gis, eis'>4. eis'8 <a, fis'>2) | % 156c
  <ais fisis'>2 <gis fis'> |
  <cis, cis'>2. r4 |
  <dis dis'>2(<e e'> | % 156d
  cis'4 b8 ais dis2) |
  <e gis>4 <fis a> <e gis> <fis, cis'> |
  gis2 <cis, gis'>8 fis <b, fis'>4 | % 157a
  <e b'>4 b'' <b, gis'> b' |
  <fis, e'>4 <a' cis> <b, a'>2 |
  <e, e'>4 <dis dis'> <cis cis'> <fis cis'> | % 157b
  <b, b'>4 \clef treble <cis''' e fis a> <a cis e fis> <a b dis> |
  < a b d fis>4 <fis a b dis> <e gis b dis> <d e gis> \clef bass |
  <a cis e fis>4 <gis cis eis> <fis cis'> <g, e'> | % 157c
  <fis cis'>2 <b, b'> |
  <e, e'>4(e''2.) |
  <e, e'>2(<dis dis'> | % 157d
  <gis gis'>2 <g g'>) |
  q2(<fis fis'> |
  <b b'>2) r |
  \ottava #-1
  \repeat tremolo 8 {bes,,16^\sfp bes'^\markup\italic trem.} | % 158a
  \repeat unfold 7 \repeat tremolo 8 {bes,16 bes'} | % 158a
  \repeat tremolo6 {bes,16 bes'} \ottava #0 bes'4 | % 158c+
  <dis, dis'>2 <e e'> |
  <cis cis'>4 <b b'>8 <ais ais'> <dis dis'>2 | % 158d
  <e' gis>4 <a cis> <e gis> <gis, cis'> |
  gis4 4 <cis, gis'>8 <fis cis'> <b, fis'>4\fermata |
  <e b'>4 <gis' b e> <b, gis'> <gis' b e> | % 159a
  <fis, cis' e>4 <cis'' e> <b, fis' a> b' |
  <e, b'>4 <dis b'> <cis gis'> <fis, cis'> |
  <b, b'>4 cis'' b2 | % 159b
  <b, fis'>2 <e, e'> |
  <a e'>4 <gis eis'> <fis cis'> <g eis'> |
  <fis e'>2 <b, b'> | % 159c
  <e b'>4 <b' gis' dis'>\arpeggio(<cis gis' cis>) <fis, e'> |
  <gis e'>4 <f' gis>\fermata <fis, e'> <b, b'> |
  e4 gis' <b, gis'> dis' | % 159d
  <fis,, cis' e>4 <cis'' e> <b, fis' a>2 |
  <e, b'>1 |
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix single
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \words
            \new NullVoice \alignerSpoken
            \addlyrics \spoken
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 % \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix singlepage
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
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \words
            \new NullVoice \alignerSpoken
            \addlyrics \spoken
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 % \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix midi
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsMidi
            \new NullVoice \alignerSpoken
            \addlyrics \spokenMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
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
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 % \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
    \midi {}
  }
}
