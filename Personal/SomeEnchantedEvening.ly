\version "2.18.2"

global = {
  \time 4/4
  \key c \major
  \tempo 4 = 108
}

melody = \relative c' {
  \global
  s1*8
  \bar "||"
  g8^\markup{Slowly with expression} fis a g g4 c,~ % 9
  c2. r4 % 10
  g'8 fis a g g4 b4~
  b2. r4
  g8 fis a g g4 c4~
  c4 c c c
  a4. e8 d2 % 15
  r4 d \times 2/3{e g e}
  d1~
  d4 d \times 2/3{e g e}
  c1~
  c4 a' \times 2/3{b c d} % 20
  c4 b2 a4
  g4 e2 d4
  e1~
  e2. r4
  g8 fis a g g4 c,~ % 25
  c2. r4
  g'8 fis a g g4 b~
  b2. r4
  g8 fis a g g4 c~
  c4 c c c % 30
  a4. e8 d2
  r4 d \times 2/3{e g e}
  d1~
  d4 d \times 2/3{e g e}
  c1~ % 35
  c4 a' \times 2/3{b c d}
  c4 b2 a4
  g4 e2 d4
  c1~
  c2. r4 % 40
  f4 f8 f e4 e
  d8 d d d c2
  f4 f8 f e4 e
  d4 d d d
  g1~ % 45
  g1
  g8 fis a g g4 c,4~
  c2. r4
  g'8 fis a g g4 b~
  b2. r4 % 50
  g8 fis a g g4 c~
  c4 c c c a4. e8 d2
  r4 d \times 2/3{e g e}
  d1~
  d4 d \times 2/3{e g e} % 55
  c'1~
  c4 a \times 2/3{b c d}
  c4 b2 a4
  c4 a2 d4
  c1~ % 60
  c2. r4
  f,4 f8 f e4 e
  d8 d d d c2
  f4 f8 f e4 e
  d2 f % 65
  a2 c
  e1~
  e4 r r2
  \bar "|."
}

trebleTop = \relative c'' {
  \global
  \voiceOne
  s1*5
  r2 a2 % 6
  a'2-^ s
  r2 <g, g'>
}

trebleOne = \relative c' {
  \global
  r4 \voiceOne <c c'>_-_\pp q_- q_-
  a'4.(e8 d2~
  d4) c'-- c-- c--
  a4.(e8 d2~
  d4) d(\times 2/3{e g e} % 5
  d1~)
  d4_\markup{\italic rall} d \times 2/3{e a e}
  d1
  g8_\p (fis a g) g4(c,)
  g''8(fis a g) g4(c,) % 10
  g8(fis a g) g4(a)
  g'8(fis a g) g4(d')
  g,,8(fis a g)g4(c~
  c4) c-- c-- c--
  a8-.-- r r e f2-- % 15
  r4 d \times 2/3{e g e}
  d1~
  d4 d \times 2/3{e g e}
  c1~
  c4 a'(\times 2/3{b c d} % 20
  c4-.) b2-- a4
  g8 r e2(d4)
  e1~
  e1
  g8(fis a g) g4 c, % 25
  g''8(fis a g) g4(c,)
  g8 fis a g g4 b
  g'8 fis a g g4(f')
  g,,8 fis a g g4 c~
  c c-- c-- c-- % 30
  a8-.-> r r e-. d2
  r4 d \times 2/3{e g e}
  d1~
  d4 d \times 2/3{e g e}
  c1~ % 35
  c4 a'4(\times 2/3{b c d)}
  c4-. b2--(a4)
  g8 r e2(d4)
  r4 g(g') g,(
  g'4) g,(g') g, % 40
  f'4 f8 f e4 e
  d8 d d d <e, c'>2
  f'4 f8 f e4 e
  d4-- d-- d-- d--
  s2 ees4(d8 ees) % 45
  e4(dis8 e) s2
  s2 <g, e' g>4(<e g c>)
  g,8(fis' <c e a> g') g4(<e, g c>)
  s1
  g'8(fis <b, f' a> g) g4(<f b d>) % 50
  s1
  s1
  s4. <e' e'>8 <d d'>2
  \oneVoice r4 <d a' d>4( \times 2/3{<e c' e> <g g'> <e e'>)} \voiceOne
  d'1 % 55
  r4 <d, a' d>(\times 2/3{<e e'> <g g'> <e e'>)}
  <c' c'>1~
  q4 s2.
  s1
  s1 % 60
  q1~
  q1
  f4 f8 f e4 e
  d8 d d d <e, c'>2
  f'4 f8 f e4 e % 65
  <f, a d>2 s
  s1
  <e' c'>1^\fermata
  \oneVoice <c e c'>4-\arpeggio-\fermata r4 r2 % 69
  
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  s1
  a1~
  a4 c-- c-- c--
  a1~
  a4 r g2 % 5
  a1~
  a4 r a2
  b1
  r4 <c e> r <e, g>
  r4 <c'' e> r <e, g> % 10
  r4 <b f'> r <b f' g>
  r4 <b' f'> r <f' b>
  r4 <c, e> r <e g>
  g,4 <e' gis> q q
  r4 <a, c> r q
  a2 <a c>
  r4 <a c> f(b)
  a4 <f a> eis2
  r4 a4 e bes'
  a2 <e' g> % 20
  r4 <c f>2 q4
  r4 <f, a c>2 <f b>4
  r4 <b g' b> bes~<bes e g bes>
  gis4~<gis c e gis> fis~<fis c' ees fis>
  r4 <c' e> s <e, g c> % 25
  r4 <c'' e> r <e, g>
  r4 <b f'> r <b f' g>
  r4 <b' f'> r <f' b>
  r4 <c, e> r <e g>
  gis,4 <e' gis> q q % 30
  r4 <a, c> r q
  a2<a c>
  r4 <a c>4 f(b)
  a4(<f a> gis2)
  r4 a( e bes' % 35
  a2) <e' g>
  r4 <c f>2 q4
  r4 <f,a c>2 <f b>4
  c1~
  c1 % 40
  <g' c>4 <g b> <g d'> <g c>
  <f c'>4 <f b> <e c'>2
  <g c>4 <g b> <g d'> <g c>
  <e g c>2 <fis c'>
  <g b g'>4 cis8(d) <a c>2 % 45
  <bes cis>2 <a d f>4-> <a c e fis>->
  <g e' g>8( <fis fis'> <a e' a> <g g'>) s2
  s1
  <g c d g>8( <fis fis'> <a d a'> <g g'>) q4( <b f' b>)
  s1 % 50
  <g' e' g>8( <fis fis'> <a e' a> <g g'>) <g e' g>4(<c g' c>)
  gis,4 <c' gis' c>4->q-> q->
  <a e' a>8-.-> r r s s4 <f a>
  a,4 s4 s2
  d4(<c f a>) b(<b f' g>) % 55
  a4 s s2
  r4 <e a c> bes <e g c>
  a4 <a' f' a>(\times 2/3{<b g' b> <c g c> <d g d'>)}
  <c f c'>4-. <b f' b>2->(<a f' a>4)
  <c a' c>4-. <a f'a>2-> <d g d'>4-- % 60
  r4 g,(g') g,(
  g'4) g,(g') g,
  <g c>4 <g b> <g d'> <g c>
  <f c'>4 <f b> a(g)
  <g c>4 <g b> <g d'> <g c> % 65
  s2 <a c f>
  <a d  a>2 <c f a c>
  g'8(fis a g) g4(c,)
  s1 % 69
}

bassOne = \relative c {
  \global \voiceOne
  r2 <e gis>
  c4 c2 c4~
  c4 r r2
  c4 c2 c4~
  c4 r <e, b>2 % 5
  <f c'>1 ~
  q4 r <g c f>2 ~
  q1
  \oneVoice <c, g' e'>4-\arpeggio r <g g'> r
  <c c'>4 <g'' c e> <g,, g'> <e'' g c> % 10
  <d, d'> r <g, g'> r
  <b' b'>4 <g' b f'> <g, g'> <g' b f'>
  <a,, e' e'>4-\arpeggio r <g g'> r
  <e' c'>-> <e' gis c>2 q4
  f,4 c' c, r % 15
  r4 c' r c
  d,4 r g, r
  d'4 r <e d'>2
  r4 e' r c
  f,4(c') e,(e') % 20
  <d, a' f'>4-\arpeggio r f r
  d4 r <g, g'> r
  c4 r g r
  c4 r g r
  <c g'g'>4-\arpeggio r <g g'> r % 25
  <c c'>4 <g'' c e> <g,, g'> <e'' c'>
  <d, d'> r <g, g'> r
  <d' d'> <g' a f'> <g,, g'> <g'' b f'>
  <c,, g' e'>4-\arpeggio r <g g'> r
  <e' e'>4-- <e' gis c>2 q4 % 30
  f,4 c' c, r
  r4 c' r c
  d,4 r g, r
  d'4 r <e d'>2
  r4 e' r c % 35
  f,4(c') e,(e')
  <d, a f'>4-\arpeggio r f r
  d4 r <g, g'> r
  r4 g''(g') g,(
  g'4) g,(g') g, % 40
  d'4(g,) c(g)
  d4(g) c(g)
  d4(g) c(g)
  a4(a,) d(d,)
  \voiceOne s4 cis''8(d) ees4(d8 ees) % 45
  e4(dis8 e) s2
  <c,, e'>4 s <g g'> s
  e'4 g g, g'
  <d d'>4 s <g, g'> s
  d' g g, g' % 50
  <e e'>4 s <g, g'> s
  <e' c'>4-- s4 s2
  <f e'>4 s <c d'> s
  <f c'>4 s <e e'> s
  <d d'>4 s <g, g'> s % 55
  d'4 s e s
  <a, a'>4 s <g g'> s
  <f f'> s <e' e'> s
  <d d'>4 s <f f'> s
  <g, g'>4 s q s % 60
  r4 g''(g') g,(
  g'4) g,{g'} g,
  s1*3 % 65
  s1*2
  g,8 fis a g c,16-- g'-- e'-- g-- e'4
  s1 % 69
}

bassTwo = \relative c, {
  \global \voiceTwo
  s1
  f1~
  f4 s s2
  fis1~
  fis1 % 5
  s4 s2.
  s1*4 % 10
  s1*5 % 15
  f2(e)
  s1*2
  a2(g)
  s1 % 20
  s1*5 % 25
  s1*5 % 30
  s1*1
  f2(e)
  s1*2
  a2 g % 35
  s1*3
  <c, g' e'>1~
  q1 % 40
  s1*4
  <g' e' b'>4-\arpeggio r g'2 % 45
  g2 <g c d f>4-> <g c ees fis>->
  s4 <a c e> s <e g c>
  s1
  s4 <a c d f> s <b f' g>
  s1 % 50
  s4 <g c e> s q
  s4 <gis c e>2 q4
  s4 <a c> s q
  s4 q s q
  s4 r s r % 55
  s4 q s <e gis d'>
  s4 <e a c> s <e bes' c>
  s4 <a c f> s <g c e>
  s4 <a d f>
  s <a d f> % 60
  s4 <a c f> s <g b f'><c,, e'>1~
  q1
  d''4(g,) c(g)
  d'4(g,) c(g)
  d'4(g,) c(g) % 65
  c4(g) c(g)
  c4(g) c(g)
  <c,, e'>1^\fermata
  <c' g' e'>4-\arpeggio^\fermata r4 r2 % 69
  
}

words = \lyricmode {
  Some en- chant- ed eve- ning
  You may see a stran- ger,
  You may see a stran- ger
  A- cross a crowd- ed room
  And some- how you know,
  You know e- ven then
  That some- where you'll see her a- gain and a- gain.
  Some en- chant- ed eve- ning,
  Some one may be laugh- ing,
  You may hear her laugh- ing
  A- cross a crowd- ed room
  And night af- ter night,
  As strange as it seems
  The sound of her laugh- ter will sing in your dreams.
  Who can ex- plain it
  Who can tell you why?
  Fools give you reas- ons,
  Wise men nev- er try.
  Some en- chant- ed eve- ning
  When you find your true love,
  When you feel her call you
  A- cross a crowd- ed room,
  Then fly to her side
  And make her your own,
  Or all through your life you may dream all a- lone.
  Once you have found her,
  Nev- er let her go,
  Once you have found her,
  Nev- er let her go!
}

Mwords = \lyricmode {
}

\book {
  \header {
    title = "Some Enchanted Evening"
    subtitle = "from South Pacific"
    composer = "Richard Rodgers"
    poet = "Oscar Hammerstein"
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody { \clef bass \melody }
	\addlyrics { \words }
	\context PianoStaff {
	  <<
	    \new Staff = treble {
              <<
                \trebleTop
                \trebleOne
                \trebleTwo
              >>
	    }
	    \new Staff = bass {
	      \clef bass
	      <<
		\bassOne
		\bassTwo
	      >>
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
	  \melody
	}
	\addlyrics { \Mwords
		   }
	\context PianoStaff {
	  <<
	    \new Staff = treble \unfoldRepeats {
              <<
                \trebleTop
	        \trebleOne
                \trebleTwo
              >>
	    }
	    \new Staff = bass \unfoldRepeats {
	      \clef bass
              <<
		\bassOne
		\bassTwo
	      >>
	    }
	  >>
	}
      >>
    }
  \midi {}
  }
}
