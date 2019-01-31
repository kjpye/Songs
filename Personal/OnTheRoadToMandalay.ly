\version "2.19.80"

global = {
  \time 4/4
  \key bes \major
  \tempo 4 = 120
  \partial 4
}

tempotrack = {
  \time 4/4
  \tempo 4 = 120
  \partial 4
  s4 s1
}

melodyOne = \relative c' {
  r4
  r1
}

melodyTwo = \relative c' {
  r1
  r1
  r1
  \key des \major
  r1 % 5
  r2 r4 des8. ees16
  f4. f8 4 4
  f4 bes2 aes8. ges16
  f4 des8(ees) f4. 8
  f2. des8. ees16 % 10
  f4. 8 4 4
  f4 bes2 aes8 ges
  f4 des des c
  bes2. bes8. 16
  aes4. 8 c4 ees % 15
  fes4 des2 8 ees
  fes4. 8 ees4 des
  aes'2. 8 8
  aes4. des,8 4 4
  des4 ges2 8 8 % 20
  ges4. 8 4 4
  f2. 8 8
  f4 f f f
  f2.-\fermata bes8-\fermata a-\fermata
  \key bes \major
  g4. d8 4 4 % 25
  d2. bes8. e16
  g4 d d d
  ees2. d8. c16
  bes4. c8 d4 ees
  f4 g a bes % 30
  bes4 d c bes
  c2.-\fermata
  d8. c16
  bes4 bes a a
  c4(g2) fis8. g16 % 35
  bes4 a g a
  f2. d8. c16
  bes4. c8 d4 ees
  f4 g a bes
}

melodyR = \relative c'' {
  bes4 g c4.-\fermata bes8 % 40
  bes2 r
}

melodyRR = \relative c'' {
  ees2 d
  c2..-\fermata bes8
  bes1 % 45
  r1-\fermata
}

trebleOne = \relative c' {
  <ees f a d>8.-\fermata <ees f a c>16 % 0
  <bes d f bes>4 \times 2/3 { q8 q q} <a d f a>4 q
}

trebleTwo = \relative c' {
  <c ees g c>4 <g c ees g>2 <ges c ees ges>4 
  <f bes d f>8-- <g g'>-- <a a'>-- <bes bes'>--
  <<
    { \voiceOne c'4-- ~ c8.-\fermata bes16 }
    \new Voice {\voiceTwo <c, ees f>4 }
  >> \oneVoice
  <bes d f bes>1-\fermata
  \key des \major
  <f bes des f>4 \times 2/3 {q8 q q} q4 q % 5
  q4 \times 2/3 {q8 q q} q4 <bes des>8. <ces ees>16
  <f, des' f>4 \times 2/3 {q8 q q} <g ees' f>4 <a ees' f>
  <f des' f>4 \times 2/3 {<bes des f bes>8 q q} q4 <aes c ees aes>8. <ges bes ees ges>16
  <f bes des f>4 <f bes des>8 <a c ees> <es des f>4 <a ees f>
  <f bes des f>4 \times 2/3 {q8 q q} <f a ees' f>4 <bes des>8. <c ees>16 % 10
  <f, des' f>4 \times 2/3 {q8 q q} <g ees' f>4 <a ees' f>
  <f des' f>4 \times 2/3 {<bes des f bes>8 q q} q4 <aes ces ees aes>8 <ges bes ees ges>
  <f bes des f>8 <g g'> <a a'> <bes bes'> <des f des'>4 <ees f c>
  <bes des f bes>2. r4
  r4 <c ees ges aes>-\arpeggio <c' ees ges aes>-\arpeggio <c, ees ges aes>-\arpeggio % 15
  r4 <fes g bes des>4-\arpeggio \ottava #1 <fes' g bes des>-\arpeggio \ottava #0 <fes, g bes des>-\arpeggio
  r4 q-\arpeggio \ottava #1 <fes' g bes des>-\arpeggio \ottava #0 <fes, g bes des>-\arpeggio
  r4 <c ees ges aes>-\arpeggio <c' ees ges aes>-\arpeggio <c, ees ges aes>-\arpeggio
  <aes ces aes'>4 \times 2/3 {q8 q q} q4 q
  q4 \times 2/3 {<ges bes ges'>8 q q} q4 q % 20
  q4 \times 2/3{q8 q q} q4 q
  <f a c f>4 \times 2/3 {q8 q q} q4 q
  q4 q <g bes d g> q
  <a ees' f a>2.-\fermata <bes d f bes>8-\fermata <a d f a>-\fermata
  \key bes \major
  <g bes d g>4 \times 2/3 {<des bes' des>8 q q} <d a' d>4 <d g d'> % 25 
%  <g bes d g>4 \change Staff = "bass" \times 2/3 {<des bes' des>8 q q} <d a' d>4 <d g d'> % 25 
  <d f d'>4 \times 2/3 {q8 q q} q4 q
  <d bes' d>4 \times 2/3 {q8 q q} 4 <d g d'> % \change Staff = "treble"
  <f bes ees>4 \times 2/3 {<g bes ees>8 q q} <a c ees>4 <f d>8. <ees c'>16 % 30
%  <f bes ees>4 \times 2/3 {<g bes ees>8 q q} <a c ees>4 \change Staff = "bass" <f d>8. <ees c'>16 % 30
  <d a'>4. <f c'>8 <bes d>4 \< <c ees>
%  <d a'>4. <f c'>8 \change Staff = "treble" <bes d>4 \< <c ees>
  <d f>4 <cis e g> <cis e a> <cis e bes'>
  <bes e g bes>4 <e g d'> <c f c'> <c e bes'> \!
  <c ees g c>4 \times 2/3 {q8 q q} <c ees f c'>4-\fermata <ees f a d>8. <ees f a c>16
  <bes d f bes>4 q <a d f a> q % 35
  <c ees g c>4 <g c ees g>2 <ais c' ees fis>8. <g c ees g>16
  <bes ees g bes>4 <a ees' f a> <g ees' g> <a ees' f a>
  <f bes f'>4 <g bes e g> <a e f a> <f d'>8. <ees c'>16
  <d bes'>4. <f c'>8 <bes d>4 <c ees>
  <bes d f>4 <bes cis e g> <cis ees a> <cis e bes'>
}

trebleR = \relative c' {
  <bes ees g bes>4 <bes ees g>
  <<
    { \voiceOne c'4.-\fermata bes8 }
    { \new Voice {\voiceTwo <c, ees g>4 <c ees f a> }} % slur?
  >>
  <bes d f bes>4 \times 2/3 {q8 q q} <a d f a>4 \times 2/3 {q8 q q}
}

trebleRR = \relative c' {
  <ees g bes ees>2 <d g bes d>
  <<
    { \voiceOne c'2.. bes8}
    { \new Voice { \voiceTwo <c, ees g>2 <c ees f a> } }
  >>
  <bes d f bes>4 \times 2/3 {q8 q q} <bes ees g bes>16 <bes bes'> <c c'> <d d'> <ees g bes ees> <f f'> <g g'> <a a'>
  <bes d f bes>2.-\fermata r4
}

bassOne = \relative c' {
  d8. c16
  <bes,,, bes'>4 <bes'' d f> <d,, d'> <a'' d f>
}

bassTwo = \relative c' {
  <c,, c'>4 <a'' c ees> <ees, ees'> <c'' ees>
  <f,, f'>2
  <<
    { \voiceOne bes''4 a-\fermata }
    { \new Voice { \voiceTwo f2 } }
  >>
  <bes,, f' d'>4-\arpeggio \times 2/3 {f'8 f f} bes,2-\fermata
  \key des \major
  <bes bes'>1 % 5
  q1
  bes4 f' c f
  <d bes'>4 \times 2/3 {<bes' des f>8 q q} q4 <ees,, ees'>
  <f f'>1
  <bes bes'>4 <des des'> <c c'> <f, f'> % 10
  bes4 f' c f
  <bes bes'>4 \times 2/3 {<bes des f>8 q q} q4 <ees,, ees'>
  <f f'>2 <f'' bes>4 <f a>
  <bes f'>4 \times 2/3 {f8 f f} bes,4 r
  <<
    { \voiceOne <c ees ges aes>4-\arpeggio q-\arpeggio \ottava #1 <c' ees ges aes>-\arpeggio \ottava 0 <c, ees ges aes>-\arpeggio % 15
      <fes g bes des>4-\arpeggio q-\arpeggio \ottava #1 <fes' g bes des>-\arpeggio \ottava #0 <fes, g bes des>
      q4-\arpeggio q4-\arpeggio \ottava 1 <fes' g bes des> \ottava 0 <fes, g bes des>
      <c ees ges aes>4-\arpeggio q4-\arpeggio \ottava 1 <c' ees ges aes>-\arpeggio \ottava #0 <c, ees ges aes>-\arpeggio
    }
    { \new Voice \voiceTwo
      {
	<aes, ees'>1 % 15
	<aes aes'>1
	q1
	<aes ees'>1
      }
    }
  >> \oneVoice
  <f' des'>4 \times 2/3 {q8 q q} q4 q % 19
  q4 \times 2/3 {q8 q q} q4 q % 20
  <<
    { \voiceOne bes4 \times 2/3 {bes8 bes bes} ees4 des }
    { \new Voice { \voiceTwo ees,1 } }
  >> \oneVoice
  <f c'>4 \times 2/3 {q8 q q} q4 q
  <ees c'>4 q <d bes'> q
  <<
    { \voiceOne a'2.-\fermata }
    { \new Voice { \voiceTwo c,4 f,2-\fermata } }
  >> \oneVoice r4-\fermata
  \key bes \major
  <bes f'>2 <f f'> % 25
  <bes f'>2 <f f'>
  <bes f'>2 <f f'>
  <c' c'>2 <f, f'>
  <<
    { \voiceTwo \ottava #-1 bes1 ~
      bes1} \ottava #0
    { \new Voice { \voiceOne bes''4 bes a g
		 <c, c'>4 bes' a g} }
  >> \oneVoice
  bes4 \times 2/3 {bes8 bes bes} a4-\fermata d8. c16
  <bes,,, bes'>4 <bes'' d f> <d,, d'> <a'' d f>
  <c,, c'>4 <g'' c ees> <c,, c'> <g'' c ees>
  <f, f'>4 <ees'' f> <f,, f'> <ees'' f>
  <d, d'> <des des'> <c c'> <f, f'>
  \ottava #-1 \repeat tremolo 8 {bes,16 bes'}
  \repeat tremolo 4 {bes,16 bes'} \ottava #0 a''4 g
  <c,,, c'>4 <c'' f> <f,, f'> <f'' a>
}

bassR = \relative c' {
  <bes,,, bes'>4 <bes'' d f> <d,, d'> <a'' d f>
  <c,, c'>4 <g'' c ees> <ees, ees'> <c'' ees>
}
bassRR = \relative c {
  <c,, c'>2 <c'' f>
  <f,, f'>2 <f'' a>
  <bes,, bes'>4 <bes' d f> <bes, bes'> <bes' ees g>
  <bes f' d'>2.-\arpeggio-\fermata r4
}

KfirstVerse = \lyricmode {
  \set stanza = "1."
  By the old Moul- mein Pa- go- da, look- in' east- ward to the sea,
  There's a Bur- ma girl a- set- tin', and I know she thinks o' me;
  For the wind is in the palm- trees, and the tem- ple- bells they say:
  "\"Come" you back, you Brit- ish sol- dier; come you back to Man- da- "lay!\""
  Come you back to Man- da- lay,
  Come you back to Man- da- lay,
  Where the old Flo- til- la lay:
  Can't you 'ear their pad- dles chunk- in' from Ran- goon to Man- da- lay?
}

SfirstVerse = \lyricmode {
  \set stanza = "1."
  By the old Moul- mein Pa- go- da, look- in' east- ward to the sea,
  There's a Bur- ma girl a- set- tin', and I know she thinks o' me;
  For the wind is in the palm- trees, and the tem- ple- bells they say:
  "\"Come" you back, you Brit- ish sol- dier; come you back to Man- da- "lay!\""
  Come you back to Man- da- lay,
  Come you back to Man- da- lay,
  Where the old Flo- til- la lay:
  Can't you 'ear their pad- dles chunk- in' from Ran- goon to Man- da- lay?
}

Kchorus = \lyricmode {
  On the road to Man- da- lay,
  Where the fly- in'- fish- es play,
  An' the dawn comes up like thun- der out- er Chi- na 'crost the Bay!
}

Schorus = \lyricmode {
  On the road to Man- da- lay,
  Where the fly- in'- fish- es play,
  An' the dawn comes up like thun- der out- er Chi- na 'crost the Bay!
}

KsecondVerse = \lyricmode {
  \set stanza = "2."
  'Er _ pet- ti- coat was yal- ler an' 'er lit- tle cap was green,
  An' 'er name was Su- pi- yaw- "lat −" jes' the same as Thee- baw's Queen,
  An' I seed her first a- smo- kin' of a whack- in' white che- root,
  An' a- wast- in' Christ- ian kis- ses on an 'eath- en i- dol's foot:
  On an 'eath- en i- dol's foot:
  Bloom- in' i- dol made o' "mud −"
  Wot they called the Great Gawd "Budd −"
  Pluck- y lot she cared for i- dols when I kissed 'er where she stud!
}

SsecondVerse = \lyricmode {
  \set stanza = "2."
  'Er _ pet- ti- coat was yal- ler an' 'er lit- tle cap was green,
  An' 'er name was Su- pi- yaw- "lat −" jes' the same as Thee- baw's Queen,
  An' I seed her first a- smo- kin' of a whack- in' white che- root,
  An' a- wast- in' Christ- ian kis- ses on an 'eath- en i- dol's foot:
  On an 'eath- en i- dol's foot:
  Bloom- in' i- dol made o' mud
  Wot they called the Great Gawd Budd
  Pluck- y lot she cared for i- dols when I kissed 'er where she stud!
}

KthirdVerse = \lyricmode {
  \set stanza = "3."
  When the mist was on the rice- fields an' the sun was drop- pin' slow,
  She'd _ git 'er lit- tle ban- jo an' she'd sing "\"Kul-" la- lo- "lo!\""
  With 'er arm up- on my shoul- der an' 'er cheek a- gin' my cheek
  We _ use- ter watch the steam- ers an' the hath- is pil- in' teak.
  The _ hath- is pil- in' teak.
  El- e- phints a- pil- in' teak
  In the sludg- y, squdg- y creek,
  Where the si- lence 'ung that 'eav- y you was 'arf a- fraid to speak!
}

KfourthVerse = \lyricmode {
  \set stanza = "4."
  But _ that's all shove be'- ind "me −" long a- go an' fur a- way,
  An' there ain't no 'bus- ses run- nin' from the Bank to Man- da- lay;
  An' I'm learn- in' 'ere in Lon- don what the ten- year sol- dier tells:
  "\"If" you've 'eard the East a- call- in', you won't nev- er 'eed naught "else.\""
  You won't nev- er 'eed naught "else.\""
  No! you won't 'eed no- thin' else
  But them spic- y gar- lic smells,
  An' the sun- shine an' the palm- trees an' the tink- ly tem- ple- bells;
}

KfifthVerse = \lyricmode {
  \set stanza = "5."
  I am sick o' wast- in' leath- er on these grit- ty pav- in'- stones,
  An' the blast- ed Heng- lish driz- zle wakes the fe- ver in my bones;
  Tho' I walks with fif- ty 'ouse- maids out- er Chel- sea to the Strand,
  An' they talks a lot o' lov- in', but wot do they un- der- stand?
  But wot do they un- der- stand?
  Beef- y face an' grub- by "'and −"
  Law! wot do they un- der- stand?
  I've a neat- er, sweet- er mai- den in a clean- er, green- er land!
}

KsixthVerse = \lyricmode {
  \set stanza = "6."
  Ship me some- wheres east of Su- ez, where the best is like the worst,
  Where there aren't no Ten Com- mand- ments an' a man can raise a thirst;
  For the tem- ple- bells are call- in', an' it's there that I would be
  By the old Moul- mein Pa- go- da, look- ing laz- y at the sea;
  Look- ing laz- y at the sea;
  On the road to Man- da- lay,
  Where the old Flo- til- la lay,
  With our sick be- neath the awn- ings when we went to Man- da- lay!
}

SthirdVerse = \lyricmode {
  \set stanza = "3."
  Ship me some- wheres east of Su- ez, where the best is like the worst,
  Where there aren't no Ten Com- mand- ments an' a man can raise a thirst;
  For the tem- ple- bells are call- in', an' it's there that I would "be −"
  By the old Moul- mein Pa- go- da, look- ing laz- y at the sea;
  Look- ing laz- y at the sea;
  On the road to Man- da- lay,
  Where the old Flo- til- la lay,
  Can't you 'ear their pad- dles chunk- in' from Ran- goon to Man- da- lay?
}

MKfirstVerse = \lyricmode {
  "By " "the " "old " "Moul" "mein " "Pa" "go" "da, " "look" "in' " "east" "ward " "to " "the " "sea,"
  "/There's " "a " "Bur" "ma " "girl " "a-" "set" "tin', " "and " "I " "know " "she " "thinks " "o' " "me;"
  "/For " "the " "wind " "is " "in " "the " "palm-" "trees, " "and " "the " "tem" "ple-" "bells " "they " "say:"
  "/\"Come " "you " "back, " "you " "Brit" "ish " "sol" "dier; " "come " "you " "back " "to " "Man" "da" "lay!\""
  "/Come " "you " "back " "to " "Man" "da" "lay,"
  "/Come " "you " "back " "to " "Man" "da" "lay,"
  "/Where " "the " "old " "Flo" "til" "la " "lay:"
  "/Can't " "you " "'ear " "their " "pad" "dles " "chunk" "in' " "from " "Ran" "goon " "to " "Man" "da" "lay?"
}

MSfirstVerse = \lyricmode {
  "By " "the " "old " "Moul" "mein " "Pa" "go" "da, " "look" "in' " "east" "ward " "to " "the " "sea,"
  "/There's " "a " "Bur" "ma " "girl " "a" "set" "tin', " "and " "I " "know " "she " "thinks " "o' " "me;"
  "/For " "the " "wind " "is " "in " "the " "palm" "trees, " "and " "the " "tem" "ple" "bells " "they " "say:"
  "/\"Come " "you " "back, " "you " "Brit" "ish " "sol" "dier; " "come " "you " "back " "to " "Man" "da" "lay!\""
  "/Come " "you " "back " "to " "Man" "da" "lay,"
  "/Come " "you " "back " "to " "Man" "da" "lay,"
  "/Where " "the " "old " "Flo" "til" "la " "lay:"
  "/Can't " "you " "'ear " "their " "pad" "dles " "chunk" "in' " "from " "Ran" "goon " "to " "Man" "da" "lay?"
}

MKchorus = \lyricmode {
  "\\On " "the " "road " "to " "Man" "da" "lay,"
  "/Where " "the " "fly" "in' " "fish" "es " "play,"
  "/An' " "the " "dawn " "comes " "up " "like " "thun" "der " "out" "er " "Chi" "na " "'crost " "the " "Bay!"
}

MSchorus = \lyricmode {
  "\\On " "the " "road " "to " "Man" "da" "lay,"
  "/Where " "the " "fly" "in' " "fish" "es " "play,"
  "/An' " "the " "dawn " "comes " "up " "like " "thun" "der " "out" "er " "Chi" "na " "'crost " "the " "Bay!"
}

MKsecondVerse = \lyricmode {
  "\\'Er " "" "pet" "ti" "coat " "was " "yal" "ler " "an' " "'er " "lit" "tle " "cap " "was " "green,"
  "/An' " "'er " "name " "was " "Su" "pi" "yaw" "lat − " "jes' " "the " "same " "as " "Thee" "baw's " "Queen,"
  "/An' " "I " "seed " "her " "first " "a-" "smo" "kin' " "of " "a " "whack" "in' " "white " "che" "root,"
  "/An' " "a-" "wast" "in' " "Christ" "ian " "kis" "ses " "on " "an " "'eath" "en " "i" "dol's " "foot:"
  "/On " "an " "'eath" "en " "i" "dol's " "foot."
  "/Bloom" "in' " "i" "dol " "made " "o' " "mud −"
  "/Wot " "they " "called " "the " "Great " "Gawd " "Budd −"
  "/Pluck" "y " "lot " "she " "cared " "for " "i" "dols " "when " "I " "kissed " "'er " "where " "she " "stud!"
}

MSsecondVerse = \lyricmode {
  "\\'Er " "" "pet" "ti" "coat " "was " "yal" "ler " "an' " "'er " "lit" "tle " "cap " "was " "green,"
  "/An' " "'er " "name " "was " "Su" "pi" "yaw" "lat − " "jes' " "the " "same " "as " "Thee" "baw's " "Queen,"
  "/An' " "I " "seed " "her " "first " "a-" "smo" "kin' " "of " "a " "whack" "in' " "white " "che" "root,"
  "/An' " "a-" "wast" "in' " "Christ" "ian " "kis" "ses " "on " "an " "'eath" "en " "i" "dol's " "foot:"
  "/On " "an " "'eath" "en " "i" "dol's " "foot."
  "Bloom" "in' " "i" "dol " "made " "o' " "mud"
  "/Wot " "they " "called " "the " "Great " "Gawd " "Budd"
  "/Pluck" "y " "lot " "she " "cared " "for " "i" "dols " "when " "I " "kissed " "'er " "where " "she " "stud!"
}

MKthirdVerse = \lyricmode {
  "\\When " "the " "mist " "was " "on " "the " "rice" "fields " "an' " "the " "sun " "was " "drop" "pin' " "slow,"
  "/She'd " "" "git " "'er " "lit" "tle " "ban" "jo " "an' " "she'd " "sing " "\"Kul" "la" "lo" "lo!\""
  "/With " "'er " "arm " "up" "on " "my " "shoul" "der " "an' " "'er " "cheek " "a" "gin' " "my " "cheek"
  "/We " "" "use" "ter " "watch " "the " "steam" "ers " "an' " "the " "hath" "is " "pil" "in' " "teak."
  "/The " "" "hath" "is " "pil" "in' " "teak."
  "/El" "e" "phints " "a" "pil" "in' " "teak"
  "/In " "the " "sludg" "y, " "squdg" "y " "creek,"
  "/Where " "the " "si" "lence " "'ung " "that " "'eav" "y " "you " "was " "'arf " "a" "fraid " "to " "speak!"
}

MKfourthVerse = \lyricmode {
  "\\But " "" "that's " "all " "shove " "be'" "ind " "me − " "long " "a" "go " "an' " "fur " "a" "way,"
  "/An' " "there " "ain't " "no " "'bus" "ses " "run" "nin' " "from " "the " "Bank " "to " "Man" "da" "lay;"
  "/An' " "I'm " "learn" "in' " "'ere " "in " "Lon" "don " "what " "the " "ten-" "year " "sol" "dier " "tells:"
  "\\\"If " "you've " "'eard " "the " "East " "a-" "call" "in', " "you " "won't " "nev" "er " "'eed " "naught " "else.\""
  "/You " "won't " "nev" "er " "'eed " "naught " "else.\""
  "/No! " "you " "won't " "'eed " "no" "thin' " "else "
  "/But " "them " "spic" "y " "gar" "lic " "smells,"
  "/An' " "the " "sun" "shine " "an' " "the " "palm " "trees " "an' " "the " "tink" "ly " "tem" "ple " "bells;"
}

MKfifthVerse = \lyricmode {
  "\\I " "am " "sick " "o' " "wast" "in' " "leath" "er " "on " "these " "grit" "ty " "pav" "in' " "stones,"
  "/An' " "the " "blast" "ed " "Heng" "lish " "driz" "zle " "wakes " "the " "fe" "ver " "in " "my " "bones;"
  /"Tho' " "I " "walks " "with " "fif" "ty " "'ouse" "maids " "out" "er " "Chel" "sea " "to " "the " "Strand,"
  "/An' " "they " "talks " "a " "lot " "o' " "lov" "in', " "but " "wot " "do " "they " "un" "der" "stand?"
  "/But " "wot " "do " "they " "un" "der" "stand?"
  "/Beef" "y " "face " "an' " "grub" "by " "'and −"
  "/Law! " "wot " "do " "they " "un" "der" "stand?"
  "/I've " "a " "neat" "er, " "sweet" "er " "mai" "den " "in " "a " "clean" "er, " "green" "er " "land!"
}

MKsixthVerse = \lyricmode {
  "\\Ship " "me " "some" "wheres " "east " "of " "Su" "ez, " "where " "the " "best " "is " "like " "the " "worst,"
  "/Where " "there " "aren't " "no " "Ten " "Com" "mand" "ments " "an' " "a " "man " "can " "raise " "a " "thirst;"
  "/For " "the " "tem" "ple " "bells " "are " "call" "in', " "an' " "it's " "there " "that " "I " "would " "be"
  "/By " "the " "old " "Moul" "mein " "Pa" "go" "da, " "look" "ing " "laz" "y " "at " "the " "sea;"
  "/Look" "ing " "laz" "y " "at " "the " "sea;"
  "/On " "the " "road " "to " "Man" "da" "lay,"
  "/Where " "the " "old " "Flo" "til" "la " "lay,"
  "/With " "our " "sick " "be" "neath " "the " "awn" "ings " "when " "we " "went " "to " "Man" "da" "lay!"
}

MSthirdVerse = \lyricmode {
  "\\Ship " "me " "some" "wheres " "east " "of " "Su" "ez, " "where " "the " "best " "is " "like " "the " "worst,"
  "/Where " "there " "aren't " "no " "Ten " "Com" "mand" "ments " "an' " "a " "man " "can " "raise " "a " "thirst;"
  "/For " "the " "tem" "ple" "bells " "are " "call" "in', " "an' " "it's " "there " "that " "I " "would " "be −"
  "/By " "the " "old " "Moul" "mein " "Pa" "go" "da, " "look" "ing " "laz" "y " "at " "the " "sea;"
  "/Look" "ing " "laz" "y " "at " "the " "sea;"
  "/On " "the " "road " "to " "Man" "da" "lay,"
  "/Where " "the " "old " "Flo" "til" "la " "lay,"
  "/Can't " "you " "'ear " "their " "pad" "dles " "chunk" "in' " "from " "Ran" "goon " "to " "Man" "da" "lay?"
}

\book {
  \header {
    title = "On the Road to Mandalay"
    composer = "Oley Speaks"
    poet = "Rudyard Kipling"
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody {
	  \global \melodyOne \repeat volta 6 { \melodyTwo } \alternative { {\melodyR} {\melodyRR} }
	}
	\addlyrics { \KfirstVerse \Kchorus Chi- na 'crost the Bay! }
	\addlyrics   \KsecondVerse
	\addlyrics   \KthirdVerse
	\addlyrics   \KfourthVerse
	\addlyrics   \KfifthVerse
	\addlyrics   \KsixthVerse
	\context PianoStaff {
	  <<
	    \new Staff = treble {
	      \global \trebleOne \repeat volta 6 \trebleTwo \alternative { \trebleR \trebleRR }
	    }
	    \new Staff = bass {
	      \clef bass
	      \global \bassOne \repeat volta 6 \bassTwo \alternative { \bassR \bassRR }
	    }
	  >>
	}
      >>
    }
  \layout {}
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody \unfoldRepeats {
	  \global \melodyOne \repeat volta 6 { \melodyTwo } \alternative { {\melodyR} {\melodyRR} }
	}
	\addlyrics { \MKfirstVerse  \MKchorus
                     \MKsecondVerse \MKchorus
                     \MKthirdVerse  \MKchorus
                     \MKfourthVerse \MKchorus
	             \MKfifthVerse  \MKchorus
	             \MKsixthVerse  \MKchorus
		   }
	\context PianoStaff {
	  <<
	    \new Staff = treble \unfoldRepeats {
	      \global \trebleOne \repeat volta 6 \trebleTwo \alternative { \trebleR \trebleRR }
	    }
	    \new Staff = bass \unfoldRepeats {
	      \clef bass
	      \global \bassOne \repeat volta 6 \bassTwo \alternative { \bassR \bassRR }
	    }
	  >>
	}
      >>
    }
  \midi {}
  }
}

\book {
  \header {
    title = "On the Road to Mandalay"
    composer = "Oley Speaks"
    poet = "Rudyard Kipling"
  }

  \score { % Three verse Oley Speaks version
    \context GrandStaff {
      <<
	\new Staff = melody {
	  \global \melodyOne \repeat volta 3 { \melodyTwo } \alternative { {\melodyR} {\melodyRR} }
	}
	\addlyrics { \SfirstVerse \Schorus Chi- na 'crost the Bay! }
	\addlyrics   \SsecondVerse
	\addlyrics   \SthirdVerse
	\context PianoStaff {
	  <<
	    \new Staff = treble {
	      \global \trebleOne \repeat volta 3 \trebleTwo \alternative { \trebleR
								   \trebleRR }
	    }
	    \new Staff = bass {
	      \clef bass
	      \global \bassOne \repeat volta 3 \bassTwo \alternative { \bassR \bassRR }
	    }
	  >>
	}
      >>
    }
  \layout {}
  }

  \score { % Midi 3-verse
    \context GrandStaff {
      <<
	\new Staff = melody \unfoldRepeats {
	  \global \melodyOne \repeat volta 6 { \melodyTwo } \alternative { {\melodyR} {\melodyRR} }
	}
	\addlyrics { \MSfirstVerse  \MSchorus
                     \MSsecondVerse \MSchorus
                     \MSthirdVerse  \MSchorus
		     }
	\context PianoStaff {
	  <<
	    \new Staff = treble \unfoldRepeats {
	      \global \trebleOne \repeat volta 6 \trebleTwo \alternative { \trebleR \trebleRR }
	    }
	    \new Staff = bass \unfoldRepeats {
	      \clef bass
	      \global \bassOne \repeat volta 6 \bassTwo \alternative { \bassR \bassRR }
	    }
	  >>
	}
      >>
    }
  \midi {}
  }
}

