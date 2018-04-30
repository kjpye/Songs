 \version "2.18.2"

global = {
  \time 6/8
  \key bes \major
  \tempo 4. = 120
}

melody = \relative c' {
  \global
  s2.*8^\markup{\bold Moderato}
  \repeat volta 3 {
    r2.
    r2. % 10
    r2.
    r4 r8 r4 f8
    bes4 c8 bes4 g8
    a8 g f~f4 f8
    g8 a g cis,4 d8 % 15
    g4 r8 r4 d8 % page 61
    e4 ees8 c8 d ees
    f4 g8 a4 bes8
    c8 d c g4 d'8
    c4 r8 r4 f,8 % 20
    bes4 c8 bes4 g8
    a8 g f~f4 f8
    f8 g f ees4 d8
    g4 r8 r4 g8
    a4 a8 fis8 g a % 25
    bes4 bes8 g4 g8
    c8 c c c4 c8
    f,4 r8 r4 f8 % page 62
    aes4 aes8 c4 bes8
    aes4 g8 r4 g8 % 30
    f8 e f aes4 g8
    ees4. r4 e8
    f4 f8 d'4 d8
    c4 f,8 r4 g8
    a4 a8 g a g % 35
    f4 r8 r4 f8
    c'4 f,8 c'4 f,8
    c'2.
    ees8 c a g4 ges8
    f4. \bar "||" bes,4 c8 % 40
    d4. f
    ees4 c8 d4 ees8
    f2.\(
    bes8\) r r a4 aes8
    g4. g % 45
    aes4 f8 ees4 d8 % page 63
    ees2.
    r4 r8 f4 g8
    aes4. aes
    f4 g8~g4 a8 % 50
    bes4 c8 bes4 a8
    g4 a8 bes4 b8
    c4 r8 c,4 d8
    e8 f e d4 c8
    f4. g % 55
    a4. d4 cis8
    d4. aes4 g8
    aes4. r4 d8
    c4 g8 g4 g8
    g4 r8 g4 a8 % 60
    bes4. g4 a8
    bes8 c bes a4 bes8
    c2. % page 64
    r4 d,8 ees4 e8
    f4. f4 g8 % 65
    f4 ees8 d4 ees8
    f4. g
    a4. bes
    c4 b8 c4 g8
    bes4. a % 70
  }
  \alternative {
    {
      bes4 r8 r4 r8
      r2.
    }
    {
      bes4 r8 r4 r8
      r4 r8 bes,4 c8
    }
  }
  d4. f % 75
  ees4 c8 d4 ees8
  f2.\(
    bes8\) r r a4 aes8
  g4. g
  aes4 f8 ees4 d8 % 80
  ees2.
  r4 r8 f4 g8
  aes4. aes
  f4 g8~g4 a8
  bes4 c8 bes4 a8 % 85
  g4 a8 bes4 b8
  c4 r8 c,4 d8
  e8 f e d4 c8
  f4. g
  a4. d4 cis8 % 90
  d4. aes4 g8
  aes4. r4 d8
  c4 g8 g4 g8
  g4 r8 g4 a8
  bes4. g4 a8 % 95
  bes8 c bes a4 bes8
  c2.
  r4 d,8 ees4 e8
  f4. f4 g8
  f4 ees8 d4 ees8 % 100
  f4. g
  a4. bes
  c4 b8 c4 g8
  bes4. a
  bes4 d8 cis4 d8 % 105
  a4 g8 r4 r8
  cis4 d8 cis4 d8
  a4 g8
  r4 r8
  d'4 g,8 d'4 g,8 % 110
  d'4. d
  bes2.~
  bes8 r r r4 r8 \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  They're out of sorts in Sun- der- land
  and ter- ri- bly cross in Kent
  They're dull in Hull and the Isle of Mull
  is seeth- ing with dis- con- tent
  They're ner- vous in North- um- ber- land
  and Dev- on is down the drain
  They're filled with wrath on the Firth of Forth
  and sul- len on Salis- bury plain
  In Dub- lin they're de- pressed lads, _ may- be be- cause they're Celts
  For Drake is go- ing West lads,
  and so is ev- 'ry- one else.
  Hur- ray, hur- ray, hur- ray!
  Mis- er- y's ere to stay.
}

chorusOne = \lyricmode {
  \set stanza = "1."
  There are bad times just a- round the cor- ner
  There are dark clouds hurt- ling through the sky
  And it's no good whin- ing
  a- bout a sil- ver lin- ing,
  For we know from ex- per- i- ence
  that they wont roll by.
  With a scowl and a frown
  we'll keep our peck- ers down
  And pre- pare for de- press- ion and doom and dread
  We're going to un- pack our troub- les from our old kit bag,
  And wait un- til we drop down dead
}

verseTwo = \lyricmode {
  \set stanza = "2."
  From Port- land Bill to Scar- bor- ough
  they're quer- u- lous and sub- dued
  And Shrop- shire lads have be- haved like cads
  from ber- wick- on- Tweed to Bude
  They're mad at Mar- ket Har- bor- ough
  and liv- id at leigh- on- Sea
  In Tun- bridge Wells you can hear the yells
  of woe- be- gone Bourge- oi- sie
  We all get bitched a- bout lads,
  who- e- ver our vote e- lects
  We know we're up the spout lads
  and that's what Eng- land ex- pects,
  Hur- ray, Hur- ray, Hur- ray!
  Troub- le is on the way.
}

chorusTwo = \lyricmode {
  \set stanza = "2."
  There are bad times just a- round the cor- ner
  The hor- i- zons gloom- y as can be
  There are black birds o- ver
  the grey- ish cliffs of Dov- er,
  And the rats are pre- par- ing
  to leave the B. B. C.
  We're an un- hap- py breed
  and ver- y bored in- deed
  When re- mind- ed of some- thing that Nel- son said
  And while the press and the po- li- ti- cians nag, nag, nag
  We'll wait un- til we drop down dead
}

verseThree = \lyricmode {
  \set stanza = "3."
  From Col- wyn Bay to Ket- ter- ing
  they're sob- bing them- selves to sleep
  The shrieks and wails in the Yotrk- shire dalse
  have ev- en de- pressed the sheep
  In rath- er vul- gar let- ter- ing
  a ver- y dis- grun- tled group
  Have post- ed bills on the Cots- wold Hills
  to pro`ve that we're in the soup
  While beg- ging Kip- ling's par- don
  there's one thing we know for sure
  If Eng- land is a gar- den
  we ought to have more man- ure
  Hur- ray, hur- ray, hur- ray!
  Suf- fer- ing and dis- may.
}

chorusThree = \lyricmode {
  \set stanza = "3."
  There are bad times just a- round the cor- ner
  And the out- look's ab- so- lute- ly vile
  There are home fires smok- ing
  from Wind- er- mere to Wok- ing,
  And we're not going to tight- en our belts
  and smile, smile, smile.
  At the sound of a shot, we'd just as soon as not
  Take a hot wat- er bot- tle and go to bed
  We're going to un- tense our mus- cles 'till they sag, sag, sag,
  And wait un- til we drop down _ dead
}

chorusFour = \lyricmode {
  \set stanza = "4."
  There are bad times just a- round the cor- ner
  We can all look for- ward to des- pair
  It's as clear as crys- tal from Brod- ling- ton to Bris- tol,
  That we can't save de- moc- rac- y and we don't much care.
  If the reds and the pinks
  be- lieve that Eng- land stinks
  And that world re- vol- u- tion is bound to spread
  We'd bet- ter all learn the ly- rics of the old red flag,
  And wait un- til we drop down dead.
  A like- ly sto- ry
  Land of hope and glor- y-
  Wait un- til we drop down dead.
}

trebleaccone = \relative c {
  \global
  \voiceOne
  <f f'>4. q4 <g g'>8
  f'4 ees8 d4 ees8
  <f, bes f'>4. <g bes ees g>
  <a c fis a>4. <bes d g bes>
  <c g' bes c>4 <b b'>8 <c e bes' c>4 <g g'>8 % 5
  <bes ees g bes>4. <a ees' f a>
  <bes d f bes>8 r f'8(g f d
  bes8) \oneVoice r r s r r
  \repeat volta 3 {
    s2.
    s2. % 10
    s4. \voiceOne <gis d' f>8(q q
    <a ees' f>8) \oneVoice r r r4 \voiceOne f'8
    bes4 c8 bes4 g8
    a8 g f~f4 f8
    g8 a g cis,4 d8 % 15
    <aes g'>4. r4 d8
    ees4 ees8 c d ees
    f4 g8 a4 bes8
    c8 d c g4 d'8
    c4. r4 f,8 % 20
    bes4 c8 bes4 g8
    a8 g f~ f4 f8
    f8 g f ees4 d8
    g4. r4 g8
    a4 a8 fis8 g a % 25
    bes4 bes8 g4 g8
    c8 c c c4 c8
    f,4 r8 r4 f8 % page 62
    aes4 aes8 c4 bes8
    aes4 g8 r4 g8 % 30
    f8 e f aes4 g8
    ees4. r4 e8
    f4 f8 d'4 d8
    c4 f,8 r4 g8
    a4 a8 g a g % 35
    f4 r8 r4 f8
    c'4 f,8 c'4 f,8
    c'2.
    ees8 c a g4 ges8
    f4. \bar "||" bes,4 c8 % 40
    d4. f
    ees4 c8 d4 ees8
    <f, f'>2.
    bes'8 r r a4 aes8
    g4. g % 45
    aes4 f8 ees4 d8 % page 63
    ees2.~
    ees4. f4 g8
    aes4. aes
    f4 g8~g4 a8 % 50
    bes4 c8 bes4 a8
    g4 a8 bes4 b8
    c4 r8 c,4 d8
    e8 f e d4 c8
    f4. g % 55
    a4. d4 cis8
    d4. aes4 g8
    aes4. r4 d8
    c4 g8 g4 g8
    g4 r8 g4 a8 % 60
    bes4. g4 a8
    bes8 c bes a4 bes8
    c2. % page 64
    r4 d,8 ees4 e8
    <f, f'>4. q4 <g g'>8 % 65
    f'4 ees8 d4 ees8
    f4. g
    a4. bes
    c4 b8 c4 g8
    bes4. a % 70
  }
  \alternative {
    {
      bes4 s8 s4 s8
      s2.
    }
    {
      bes4 s8 s4 s8
      s4 s8 bes,4 c8
    }
  }
  d4. f % 75
  ees4 c8 d4 ees8
  f2.\(
    bes8\) r r a4 aes8
  g4. g
  aes4 f8 ees4 d8 % 80
  ees2.
  r4 r8 f4 g8
  aes4. aes
  f4 g8~g4 a8
  bes4 c8 bes4 a8 % 85
  g4 a8 bes4 b8
  c4 r8 c,4 d8
  e8 f e d4 c8
  f4. g
  a4. d4 cis8 % 90
  d4. aes4 g8
  aes4. r4 d8
  c4 g8 g4 g8
  g4 r8 g4 a8
  bes4. g4 a8 % 95
  bes8 c bes a4 bes8
  c2.
  r4 d,8 ees4 e8
  f4. f4 g8
  f4 ees8 d4 ees8 % 100
  f4. g
  a4. bes
  c4 b8 c4 g8
  bes4. a
  bes4 d8 cis4 d8 % 105
  a4 g8 r4 r8
  cis4 d8 cis4 d8
  a4 g8
  r4 r8
  d'4 g,8 d'4 g,8 % 110
  d'4. d
  bes2.~
  bes8 r r r4 r8 \bar "|."
}

trebleacctwo = \relative c' {
  \global
  \voiceTwo
  r4 <bes d>8 q4 q8
  <g bes>4 q8 <ees a>4 q8
  s2.
  s2.
  s2. % 5
  s2.
  s2.
  s4. <bes''d f bes>8^>_\markup{\italic{\bold ff z}} s4
  \repeat volta 3 {
    <bes bes'>4( <c c'>8 <d d'>4 <bes bes'>8
    <a a'>8 <bes bes'> <c c'>) <d d'>( <ees ees'> <e e'> % 10
    <f f'>4.) s4.
    s2.
    <bes,, f'>4 q8 <bes e>4 q8
    <a ees'>4 q8 r4 q8
    bes4 d8 a4. % 15
    r4 <b d>8 r4 q8
    <g bes>4 r8 a4 r8
    <f bes>4 r8 <bes d>4 r8
    <e g>4. e4 r8
    r4 <ees a>8 <ees g>4 ees8 % 20
    <bes f'>4 q8 <bes e>4 q8
    <a ees'>4 q8 r4 q8
    aes2.
    r4 <d f>8 <c ees>4r8
    <c e>4. c % 25
    <bes d>4. q
    <d f>4. <e g>
    a,4. s
    <c ees>4. <d f>
    <c ees>4 <bes ees>8 s4. % 30
    <aes c>4 s8 b4 s8
    <g c>4. s4 q8
    <f c'>4. <e' bes'>
    <c a'>4 <a c>8 <g bes>4 <bes f'>8
    <c f>4 r8 <bes e>4. % 35
    a4 s8 s4.
    s2.
    s2.
    <ees' g>4. r4 r8
    s4. \bar "||" s4. % 40
    r4 <f, bes>8 r4 <aes d>8
    r4 <g bes>8 r4 a8
    bes4 d8 c bes a
    <d fis>8 r r r4 r8
    r4 <bes ees>8 r4 q8 % 45
    r4 <aes c>8 r4 <f b d>8
    r4 <g c>8 r4 q8
    r4 q8 r4 <bes ees>8
    r4 <a ees'>8 r4 q8
    r4 <a ees'>8~ q4 q8 % 50
    <bes f'>4 q8 q4 q8
    <bes d>4 q8 q4 r8
    <c g'>4 r8 bes4 s8
    <g bes>4 q8 <ees bes'>4.
    <a c>4. <bes c> % 55
    <a c f>4. <ees' a>4 r8
    r4 <d f>8 r4 <cis e>8
    r4 <aes d>8 r4 <d a'>8
    <ees g>4 ees8 d4 c8
    bes4 <bes ees>8 q4 r8 % 60
    r4 <bes e>8 r4 q8
    <d e>4 q8 <bes e>4 r8
    r4 <ees a>8 <ees g>4 <ees ges>8
    <ees f>4 s8 s4.
    r4 <bes d>8 q4 q8
    <g bes>4 q8 <ees bes>4 q8
    <f bes>4. <g bes ees' g>
    < c fis>4. <bes d g>
    <c g' bes> b8 <c e bes'>4 g8
    <bes ees g>4. <a ees' f>
  }
  \alternative {
    {
      s2.*2
    }
    {
      s2.*2
    }
  }
  s2.*38
  \bar "|."
}

bassaccone = \relative c, {
  \global
  <bes bes'>4 r8 <f f'>4 r8
  <c' c'>4 r8 <f, f'>4.
  <d' d'>4. <ees ees'>
  <d d'>4. <g g'>4 <f f'>8
  <e e'>4 r8 <c c'>4 r8 % 5
  q4. <f, f'>
  <bes bes'>8 r f'(g f d
  bes8) r r \ottava #-1 bes,^> \ottava #0 r r
  \repeat volta 3 {
    bes''4( c8 d4 bes8
    a8 bes c) d(ees e % 10
    f4.) b,4.(
    c8) r r <f,, f'>4-> r8
    d'4 r8 des4 r8
    c4 r8 a4 r8
    bes4 r8 f4 r8 % 15
    b4 r8f4 r8
    c''4 r8 <f, f'>4 r8
    d'4 r8 g,4 r8
    <c c'>2.
    \voiceOne r4 f8 g4 a8 % 20
    \oneVoice d,4 r8 des4 r8
    c4 r8 f,4 r8
    d2.
    ees4 r8 bes4 r8
    fis''4. d % 25
    <g, d'>2.
    <c a'>4. <c bes'>
    f,4 c'8 f,4 r8
    f'4.^\markup{\italic{meno mosso}} <bes, aes'>
    ees,4 bes'8 g'4 r8 % 30
    d4. <g, f'>
    c4 g8 c4 bes8
    a4.^\markup{\italic{colla voce}} g
    f4 ees8 d4 des8
    c4^\markup{\italic{a tempo}} r8 c4 r8 % 35
    f4 c'8 f,4 f'8(
    c'4 f,8 c'4 f,8
    c'2.^^)
    <c, f a>4. g'4 ges8
    f4. \bar "||" r4 r8 % 40
    bes,,4 r8 b4 r8
    c4 r8 f,4 r8
    d'2.
    <bes' aes'>8 r r r4 r8
    ees,4 r8 bes4 r8 % 45
    d4 r8 g,4 r8
    c4 r8 g' a b
    c4. bes
    f4 r8 c4 r8
    f4 r8 c4 r8 % 50
    d4 r8 d4 r8
    g4 r8 f4.
    e4 r8 <e c'>4 r8
    c4 r8 c4.
    f4. e % 55
    ees4. f4 r8
    bes4 r8 f4 r8
    bes4 r8 bes,4 r8
    ees4 r8 bes4 r8
    ees4 r8 bes4 r8 % 60
    c4 r8 c4 r8
    g'4 r8 c,4 r8
    r4 f'8 g4 gis8
    a4 <d, d'>8 <ees ees'>4 <e e'>8
    <bes, bes'>4 r8 <f f'>4 r8 % 65
    <c' c'>4 r8 <f, f'>4 r8
    <d' d'>4. <ees ees'>
    <d d'>4. <g g'>4 <f f'>8
    <e e'>4 r8 <c c'>4 r8
    q4. <f, f'> % 70
  }
  \alternative {
    {
      <bes bes'>4 f''8^> f^> f^> f^>
      f2.^>
    }
    {
      <bes,, bes'>4 f''8^> f^> f^> f^>
      f4.^> r4 r8
    }
  }
  bes,,4 r8 b4 r8 % 75
  c4 r8 f,4 r8
  d'2.
  <bes' aes'>8 r r r4 r8
  ees,4 r8 bes4 r8
  d4 r8 g,4 r8 % 80
  c4 r8 g' a b
  c4. bes
  f4 r8 c4 r8
  f4 r8 c4 r8
  d4 r8 d4 r8 % 85
  g4 r8 f4.
  e4 r8 <e c'>4 r8
  c4 r8 c4.
  f4. e
  ees4. f4 r8 % 90
  bes4 r8 f4 r8
  bes4 r8 bes,4 r8
  ees4 r8 bes4 r8
  ees4 r8 bes4 r8
  c4 r8 c4 r8 % 95
  g'4 r8 c,4 r8
  r4 f'8 g4 gis8
  a4 <d, d'>8 <ees ees'>4 <e e'>8
  <bes, bes'>4 r8 <f f'>4 r8
  <c' c'>4 r8 <f, f'>4 r8 % 100
  <d' d'>4. <ees ees'>
  <d d'>4. <g g'>4 <f f'>8
  <e e'>4 r8 <c c'>4 r8
  q4. <f, f'>
  <bes bes'>4 r8 r4 r8
  c4. c4 r8
  f2.
  <g g'>4. g,4 r8
  <c' g' bes>4. q
  <f, c' a'>4. q
  <bes f'>4. <f f'>^\<
  <bes, bes'>4.\! bes8^\sfz r r
}

bassacctwo = \relative c, {
  \global
  s2.*8
  \repeat volta 3 {
    s2.*11
    \voiceTwo f2.
    s2.*50
  }
  \alternative {
    {
      s2.*2
    }
    {
      s2.*2
    }
  }
  s2.*38
}

\book {
  \header {
    title    = "There Are Bad Times Just Around the Corner"
    composer = "Noël Coward"
  }
  \score {
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = melody { \melody	}
	\addlyrics { \verseOne   \chorusOne               }
	\addlyrics { \verseTwo   \chorusTwo               }
	\addlyrics { \verseThree \chorusThree \chorusFour }
      >>
      \context PianoStaff <<
	    \new Staff <<
              \new Voice \trebleaccone
	      \new Voice \trebleacctwo
	    >>
	    \new Staff <<
              \clef "bass"
              \new Voice \bassaccone
	      \new Voice \bassacctwo
	    >>
      >>
    >>
    \layout {}
    \midi {}
  }
}

