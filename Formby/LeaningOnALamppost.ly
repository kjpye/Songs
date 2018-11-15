\version "2.19.80"
\include "predefined-ukulele-fretboards.ly"

global = {
  \time 2/2
  \key c \major
  \tempo 4 = 150
}

melody = \relative c'' {
  \global
  s1
  s1
  s1
  s1 \bar "||"
  c2 ~ c8. b16 a8. g16 % 5
  b4 r r8. a16 g8. f16
  a4 r r8. g16 f8. e16
  g4 r r8. f16 e8. d16
  c4 d e g
  c,4 d e g % 10
  g1~
  g4 r r g
  c4 r r8. b16 a8. g16
  b4 r r8. a16 g8. f16
  a4 r r8. g16 f8. e16 % 15
  g4 r r8. f16 e8. d16
  c4 d e g
  a4 b d b
  g1~
  g4 r r \bar "||" \break g % 20
  \repeat volta 2 {
    c8. g16 g8. g16 g8. a16 a8. a16
    a8. e16 e8. e16 e8. g16 g8. g16
    g8. d16 d8. d16 d8. dis16 e4
    c2 r4 e
    d2 r4 a' % 25
    g2 r4 c
    b8. d16 b8. g16 a8. g16 fis4
    g4 r r g
    c8. g16 g8. g16 g8. a16 a8. a16
    a8. e16 e8. e16 e8. g16 g8. g16 % 30
    g8. d16 d8. d16 d8. dis16 e4
    c2 r4 e
    d2 r4 a'
    g2 r4 c
    b8. d16 b8. g16 a8. 16 fis4 % 35
    g4 r r a
    d,4 d8. e16 f4 f8. g16
    a4 b r b
    e,4 e8.f16 g4 g8. a16
    b4 c r c % 40
    fis,4 fis8. g16 a4 a8. b16
    c4 d r d
    d8. d16 d8. d16 d8. d16 d8. d16
    d4 g, d' r8. g,16
    c8. g16 g8. g16 g8. a16 a8. a16 % 45
    a8. e16 e8. e16 e8. g16 g8. g16
    g8. d16 d8. d16 d8. dis16 e4
    c2 r4 e
    d8. d16 e8. e16 f8. f16 g8. g16
    a8. a16 b8. b16 c8. c16 d8. d16 % 50
    e8. d16 c8. e16 d8. c16 b4
  }
  \alternative {
    { c2 r4 g }
    {c2. r4 }
  }
  \bar "|."
}

ukulele = \chordmode {
  s1
  s1
  s1
  s1
  c1 % 5
  g1:7
  c2:6 cis:dim
  g1
  c2 c:6
  d2:7 g:7 % 10
  c2. ees4:dim
  d2:m7 g:7
  c1
  g1:7
  c2.:6 cis4:dim % 15
  g1:7
  c1
  a2:m d:7
  g1:7
  d2:m7 g:7 % 20
  \repeat volta 2 {
    c1
    s1
    g1:7
    c1
    d2:m7 g:7 % 25
    c2 a:m7
    g2 d:7
    g2. g4:7
    c1
    s1 % 30
    g1:7
    c1
    d2:m7 g:7
    c2 a:m7
    g2 d:7 % 35
    g1
    g1:7
    d4:m7 g2:7 s4
    c1
    e4:7 a2.:m % 40
    d1:7
    a4:m7 d2.:7
    g2:7 d:m7
    g1:7
    c1 % 45
    s1
    g1:7
    c2.:7 s4
    f1
    d1:7 % 50
    c2 g:7
  }

  \alternative {
    { c2. g4:7 }
    { c1 }
  }
}

trebleOne = \relative c' {
  \global
  \voiceOne
  d8.-> d16 e8. e16 f8. f16 g8. g16
  a8.-> a16 b8. b16 c8. c16 d8. d16
  e8.-> d16 c8. e16 d8. c16 b4
  <e, c'>2 <c' e c'>4 r
  c2~c8. b16 a8. g16 % 5
  b4 r r8. a16 g8. f16
  a4 r r8. g16 f8. e16
  g4 r r8. f16 e8. d16
  c4 d e g
  c,4 d e g % 10
  g2( ~ g8. a16 b8. c16
  d2 g,4) g(
  c4) r r8. b16 a8. g16
  b4 r r8. a16 g8. f16
  a4 r r8. g16 f8. e16 % 15
  g4 r r8. f16 e8. d16
  c4 d e g
  a4 b d b
  g2~ g8. g16 g8. g16
  a4->( d g,) \bar "||" g % 20
  \repeat volta 2 {
    c8. g16 g8. g16 g8. a16 a8. a16
    a8. e16 e8. e16 e8. g16 g8. g16
    g8. d16 d8. d16 d8. dis16 e4
    c2 r4 e
    d2 r4 a' % 25
    g2 r4 c
    b8. d16 b8. g16 a8. g16 fis4
    g4 r r g
    c8. g16 g8. g16 g8. a16 a8. a16
    a8. e16 e8. e16 e8. g16 g8. g16 % 30
    g8. d16 d8. d16 d8. dis16 <b e>4
    c2 r4 e
    d2 r4 a'
    g2 r4 c
    b8. d16 b8. g16 a8. a16 fis4 % 35
    g8. a16 b8. d16 g8 r a,4
    d,4 d8. e16 f4 f8. g16
    a4 b r b
    e,4 e8. f16 g4 g8. a16
    b4 c r c % 40
    fis,4 fis8. g16 a4 a8. b16
    c4 d r d
    d8. d16 d8. d16 d8. d16 d8. d16
    d4 g, d' r8. g,16
    c8. g16 g8. g16 g8. a16 a8. a16 % 45
    a8. e16 e8. e16 e8. g16 g8. g16
    g8. d16 d8. d16 d8. dis16 <b e>4
    <f bes c>2. <gis c e>4
    d'8. d16 e8. e16 f8. f16 g8. g16
    a8. a16 b8. b16 c8. c16 d8. d16 % 50
    e8. d16 c8. e16 d8. c16 b4
  }
  \alternative {
    { <e, c'>2 r4 <f g> }
    { <e c>2-> <c' e c'>4-> r }
  }
  \bar "|."
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  <a c>4 r r2
  <c fis>4 r r2
  g'2 f
  s1
  r4 <e g>2 <c e>4 % 5
  r4<b f'> r b
  r4 <c e> r bes
  r4 <b f'> r b
  c2 c
  c2 b % 10
  g'2. fis4
  f2. f4
  r4 <e g>2 <c e>4
  r4 <b f'> r b
  r4 <c e> r bes % 15
  r4 <b f'> r b
  c2. <c e>4
  r4 <c e>4 r s
  s1
  f2 f4 s % 20
  \repeat volta 2 {
    s1
    s1
    s1
    r4 <e, g> r <g c>
    r4 <a c>(<g b>) r % 25
    r4 <c e> r <e g>
    <d g>4 r c s
    g'8. f16 d8. c16 a4 b
    s1
    s1 % 30
    s1
    r4 <g b> r <g c>
    r4 <a c>(<g b>) r
    r4 <c e>2 <e g>4
    <d g>4 r c s % 35
    g'2~g8 r r4
    r4 <f, b> r <g b>
    <c f>(<d f>) r <b dis>
    r4 <g c> r <b e>8. c16
    <d gis>4(<e a>) r e % 40
    r4 <c d> r <c f>
    <e g>4 <fis c'> r q
    <f b> r <f a> r
    <f g>2. s4
    s1 % 45
    s1
    s1
    s1
    <a, c>4 r r2
    <c fis>4 r r2 % 50
    g'2 f
  }
  \alternative {
    { s1 }
    { s1 }
  }
}

bassOne = \relative c, {
  \global
  f4-> r r2
  <d d'>4-> r r2
  g4-> g'2 g4
  c,4 g c,-> r
  c'4 g' g, r % 5
  d'4 r g, r
  c4 r cis r
  d4 r \voiceOne r \oneVoice g8. f16
  <c e>2 <a g'>
  <d fis>2 <g, f'> % 10
  c4 <g' c e> <e, e'> <ees ees'>
  <d d'>4 <a'' c> g, <g' b>
  c,4 g' g, r
  d'4 r g, r
  c4 r cis r % 15
  d4 r \voiceOne r \oneVoice g8. f16
  c4 <e g> b2
  a2 <d, d'>
  g4 d' g r
  <d c'>2-> ( <g b>4) \bar "||" r4 % 20
  \repeat volta 2 {
    c,4 <g' a c e>2.
    g,4 <g' a c>2.
    d4 <e f a>2 <g, f'>4
    c4 r g r
    \voiceOne r4 f'2 r4 % 25
    r4 g2 a4
    b4 r d, s
    r4 g fis f
    c4 s2.
    g4 s2. % 30
    d'4 s2 <g, g'>4
    c4 r g r
    r4 f'2 r4
    r4 g2 a4
    s4 r d, s % 35
    g,4 s s r
    s4 r g r
    s2. g4
    c4 r g r
    s2. a4 % 40
    a4 r <d, d'> r
    a'2 s4 r
    <g g'>4-> r s r
    s2. g4
    c4 s2. % 45
    g4 s2.
    s2. <g g'>4
    g4 c c, r
    f4-> r r2
    <d d'>4 r r2 % 50
    g4-> s2.
  }
  \alternative {
    { \voiceOne c8.( d16 e8. f16 g4) <g, g'>}
    { c4 g c,-> \oneVoice r }
  }
}

bassTwo = \relative c {
  \global
  \voiceTwo
  s1
  s1
  s1
  s1
  s1 % 5
  s1
  s1
  s2 g4 s
  s1
  s1 % 10
  s1
  s1
  s1
  s1
  s1 % 15
  s2 g4 s
  s1
  s1
  s1
  s1 % 20
  \repeat volta 2 {
    s1
    s1
    s1
    s1
    d4 d'(g,) s % 25
    e4 e'(a,2)
    d4 s d, d'
    g,2. r4
    s4 <g' a c e>2.
    s4 <g a b>2. % 30
    d4 <f g b>2 s4
    s1
    d,4 d'(g,) s
    e4 e'(a,2)
    <d b'>4 s d, d' % 35
    s4 <d b'> <g b> s
    d4 s2.
    d2 g4 s
    s1
    e2 a4 s % 40
    s1
    s2 d,4 s
    s2 <d c'>4-> s
    <g b>2. s4
    s4 <g a c e>2. % 45
    s4 <g a b>2.
    d4 <f g b>2 s4
    s1
    s1
    s1 % 50
    s4 g2 g4
  }
  \alternative {
    { s1 }
    { s1 }
  }
}

verse = \lyricmode {
  Lean- ing on a lamp, May- be you think,
  I look a tramp,
  Or you may think I'm hang- ing round to steal a car;
  But no, I'm not a crook, And if you think that's what I look,
  I'll tell you why I'm here and what my mo- tives are.

  I'm lean- ing on a lamp- post at the cor- ner of the street,
  In case a cer- tain lit- tle la- dy comes by
  Oh me, oh my,
  I hope the lit- tle la- dy comes by.
  I don't know if she'll get a- way,
  She does- n't al- ways get a- way,
  But an- y- way I know that she'll try.
  Oh me, Oh my,
  I hope the lit- tle la- dy comes by.
  There's no oth- er girl I would wait for,
  But this one I'd break an- y date for,
  I won't have to ask what she's late for,
  She'd nev- er leave me flat,
  She's not a girl like that,
  She's ab- so- lute- ly won- der- ful and mar- vel- lous and beau- ti- ful,
  And an- y- one can un- der- stand why
  I'm lean- ing on a lamp- post at the cor- ner of the street,
  In case a cer- tain lit- tle la- dy comes by.

  I'm
  by.
}

Mverse = \lyricmode {
  "/Lean" "ing " "on " "a " "lamp, " "May" "be " "you " "think, "
  "/I " "look " "a " "tramp, "
  "/Or " "you " "may " "think " "I'm " "hang" "ing " "round " "to " "steal " "a " "car; "
  "/But " "no, " "I'm " "not " "a " "crook, " "And " "if " "you " "think " "that's " "what " "I " "look, "
  "/I'll " "tell " "you " "why " "I'm " "here " "and " "what " "my " "mo" "tives " "are. "

  "/I'm " "lean" "ing " "on " "a " "lamp" "post " "at " "the " "cor" "ner " "of " "the " "street, "
  "/In " "case " "a " "cer" "tain " "lit" "tle " "la" "dy " "comes " "by "
  "/Oh " "me, " "oh " "my, "
  "/I " "hope " "the " "lit" "tle " "la" "dy " "comes " "by. "
  "/I " "don't " "know " "if " "she'll " "get " "a" "way, "
  "/She " "does" "n't " "al" "ways " "get " "a" "way, "
  "/But " "an" "y" "way " "I " "know " "that " "she'll " "try. "
  "/Oh " "me, " "Oh " "my, "
  "/I " "hope " "the " "lit" "tle " "la" "dy " "comes " "by. "
  "/There's " "no " "oth" "er " "girl " "I " "would " "wait " "for, "
  "/But " "this " "one " "I'd " "break " "an" "y " "date " "for, "
  "/I " "won't " "have " "to " "ask " "what " "she's " "late " "for, "
  "/She'd " "nev" "er " "leave " "me " "flat, "
  "/She's " "not " "a " "girl " "like " "that, "
  "/She's " "ab" "so" "lute" "ly " "won" "der" "ful " "and " "mar" "vel" "lous " "and " "beau" "ti" "ful, "
  "/And " "an" "y" "one " "can " "un" "der" "stand " "why "
  "/I'm " "lean" "ing " "on " "a " "lamp" "post " "at " "the " "cor" "ner " "of " "the " "street, "
  "/In " "case " "a " "cer" "tain " "lit" "tle " "la" "dy " "comes " "by. "

  "/I'm " "lean" "ing " "on " "a " "lamp" "post " "at " "the " "cor" "ner " "of " "the " "street, "
  "/In " "case " "a " "cer" "tain " "lit" "tle " "la" "dy " "comes " "by "
  "/Oh " "me, " "oh " "my, "
  "/I " "hope " "the " "lit" "tle " "la" "dy " "comes " "by. "
  "/I " "don't " "know " "if " "she'll " "get " "a" "way, "
  "/She " "does" "n't " "al" "ways " "get " "a" "way, "
  "/But " "an" "y" "way " "I " "know " "that " "she'll " "try. "
  "/Oh " "me, " "Oh " "my, "
  "/I " "hope " "the " "lit" "tle " "la" "dy " "comes " "by. "
  "/There's " "no " "oth" "er " "girl " "I " "would " "wait " "for, "
  "/But " "this " "one " "I'd " "break " "an" "y " "date " "for, "
  "/I " "won't " "have " "to " "ask " "what " "she's " "late " "for, "
  "/She'd " "nev" "er " "leave " "me " "flat, "
  "/She's " "not " "a " "girl " "like " "that, "
  "/She's " "ab" "so" "lute" "ly " "won" "der" "ful " "and " "mar" "vel" "lous " "and " "beau" "ti" "ful, "
  "/And " "an" "y" "one " "can " "un" "der" "stand " "why "
  "/I'm " "lean" "ing " "on " "a " "lamp" "post " "at " "the " "cor" "ner " "of " "the " "street, "
  "/In " "case " "a " "cer" "tain " "lit" "tle " "la" "dy " "comes " "by. "
}

\book {
  \header {
    title = "Leaning on a Lamp-Post"
    composer = "Noel Gay"
  }

  \score {
    \context GrandStaff {
      <<
        \new ChordNames { \ukulele }
	\new FretBoards { \set Staff.stringTunings = #ukulele-tuning \ukulele }
	\new Staff = melody { \melody }
	\addlyrics \verse
	\context PianoStaff
	  <<
	    \new Staff = treble <<
	      \new Voice { \trebleOne }
              \new Voice { \trebleTwo }
	    >>
	    \new Staff = bass <<
	      \new Voice { \clef bass \bassOne }
	      \new Voice { \clef bass \bassTwo }
	    >>
	  >>
      >>
    }
    \layout {}
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody { \unfoldRepeats \melody }
	\addlyrics { \Mverse }
	\context PianoStaff
	  <<
	    \new Staff = treble <<
	      \new Voice { \unfoldRepeats \trebleOne }
	      \new Voice { \unfoldRepeats \trebleTwo }
            >>
	    \new Staff = bass <<
	      \new Voice { \clef bass \unfoldRepeats \bassOne }
	      \new Voice { \clef bass \unfoldRepeats \bassTwo }
	    >>
	  >>
      >>
    }
    \midi {}
  }
}
