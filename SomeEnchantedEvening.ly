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
  g8 fis a g g4 b~
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
  f'4f8 f e4 e
  d8 d d d <e, c'>2
  f'4 f8 f e4 e
  d4-- d-- d-- d--
  s2 ees4(d8 ees)
  e4(dis8 e) s2
  s2 <g, e' g>4(<e g c>)
  g,8(fis' <c e a> g') g4(<e, g c>)
  s1
  g'8(fis <b, f' a> g) g4(<f b d>)
  
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
  gis,4 <e' gis> q q
  r4 <a, c> r q
  a2<a c>
  r4 <a c>4 f(b)
  a4(<f a> gis2)
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
  <e' e'>4-- <e' gis c>2 q4f,4 c' c, r % 30
  r4 c' r c
  d,4 r g, r
  d'4 r <e d'>2
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
  s1*12
  f2(e)
  s1*2
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
  The sound of her luagh- ter will sing in your dreams.
  Who ca ex- plain it
  Who can tell you why?
  Fools give you reas- ons,
  Wise men nev- er try.
  Some en- chant- ed eve- ning
  When you find your true love,
  When you feel her call you
  A- cross a crowd- ed room,
  Then fly to her side
  And make her your own,
  Or ll through your life you may dream all a- lone.
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
