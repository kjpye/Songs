\version "2.19.80"

global = {
  \time 9/8
  \key bes \major
  \tempo 4. = 80
}

melody = \relative c {
  \global
  r4. r r
  r4. r r4 d8^\mf
  f4. ~ f8 d ees f ees d
  f2. ~ f4 f8
  g4. ~ g8 ees f g f ees
  g2.~g4 g8
  a4. ~ a8 d, ees f g a
  bes8 ees,4 ~ 4. ~ 4 f8
  g4.~ g8 c, d ees f g
  a2.~a8 r d,
  f4.~f8 d ees f ees d
  f2.~f4 f8
  g4.~g8 ees f g f ees
  g2.~4 8
  a4.~8 d, ees f g a
  bes8 ees,4 ~ 4.~4 f8
  g4.~8 ees f g a bes
  c2. bes8 c bes
  d4.~4 bes8 bes c bes
  d4.~4 bes8 bes c bes
  d8 a4~a bes8 c bes a
  c4.~4 g8 bes a g
  bes4.~8 g a bes a g
  bes4.~8 bes c d c bes
  d8 c bes d bes c d ees d
  c2.~8 c d
  ees4.~8 d c ees d c
  ees4.~8 d ees d c bes
  a2.~8 a bes
  c4.~8 bes a c bes a
  c4.~8 bes c bes a g
  ges2. r8 d ees
  f4.~8 d ees f ees d
  f2.~8 ees f
  g4.~8 ees f g f ees
  g2.~8 f(g)
  a4.~8 d, ees f g a
  bes8 ees,4~4.~4 bes'8
  d4.~8 bes c d c bes
  <bes d>2.~4.~
  q2.~4.~
  q4 r8 r4. r
  \bar "|."
}

trebleOne = \relative c'' {
  \global
  \voiceOne
  c2.(bes4.)
  c2.(bes4.)
  c2.(bes4.
  a2. bes4.)
  d2.(c4. % 5
  d2. ees4.)\<
  f2.\!(a,4.
  g2.\> ~ g4.\!)
  ees'2.( g,4.
  f2.~4.) % 10
  c2.(bes4.
  a2. bes4.)
  d2.(c4.
  d2.) ees4.
  f2.(a,4. % 15
  g2.)~4.
  g'2.(bes,4.
  a2.) g'4.
  f2. 4.
  g2. 4.% 20
  a8 a a~2.
  g8 g g~2.
  d2. 4.
  des2. bes4.
  d4. d d8 ees d % 25
  c'2.~8 c c
  c2.~8 8 8
  c2.~8 c c
  c2.~8 a bes
  c2.~8 bes a % 30
  c2.~8 a g
  ges2.~8 r r
  c2.(bes4.
  a2. bes4.)
  d2.(c4. % 35
  d2. ees4.)
  f2.~4.
  g,4. 8 8 a bes c d
  d8-> bes-> c-> d-> r r r4.
  <bes, d f bes>8_> \times 2/3 {q16_> q_> q_>} q8_> q_> \times 2/3 {q16_> q_> q_>} q8_> <bes ees ges bes>_> <d g bes d>_> <c g' bes c>_> % 40
  <d f bes d>8_> \times 2/3 {q16_> q_> q_>} q8_> q_> \times 2/3 {q16_> q_> q_>} q8_> <d ges bes d>_> <f bes ees f>_> <ees g bes ees>_>
  s2. s4.
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  <c d f>8 \times 2/3 {q16 q q} q8 q \times 2/3 {q16 q q} q8 <bes d f> q q
  <c d f>8 \times 2/3 {q16 q q} q8 q \times 2/3 {q16 q q} q8 <bes d f> q q
  <c d f>8 \times 2/3 {q16 q q} q8 q \times 2/3 {q16 q q} q8 <bes d f> q q
  <a d f>8 \times 2/3 {q16 q q} q8 q \times 2/3 {q16 q q} q8 <bes d f> q q
  <d g d>8 \times 2/3 {q16 q q} q8 q \times 2/3 {q16 q q} q8 <c ees g> q q % 5
  <d g d>8 \times 2/3 {q16 q q} q8 q \times 2/3 {q16 q q} q8 <ees g bes> q q
  <f a d>8 \times 2/3 {q16 q q} q8 q \times 2/3 {q16 q q} q8 <a, d f> q q
  <g bes ees>8 \times 2/3 {q16 q q} q8 q \times 2/3 {q16 q q} q8 q q q
  s4.*6 % 10
  s4.*15 % 15
  s4.*15 % 20
  s4.*15 % 25
  s4.*15 % 30
  s4.*15 % 35
  s4.*15 % 40
  s4.*3
  \repeat tremolo 12 { <d'' f bes>32( bes) } <bes d f bes>8-. \oneVoice r r
}

bass = \relative c {
  \global
  bes4.^\mf f' f,
  bes4. f' f,
  bes4. f' f,
  bes4. f bes,
  ees4. bes' bes,
  ees4. bes' ees
  d4. a d,
  ees4. bes' ees
}

words = \lyricmode {
  To dream the im- pos- si- ble dream,
  To fight the un- beat- a- ble foe,
  To bear with un- bear- a- ble sor- row,
  To run where the brave dare not go;
  To right the un- right- a- ble wrong,
  To love, pure and chaste, from a- far,
  To try, when your arms are too wear- y,
  To reach the un- reach- a- ble star!

  This is my Quest to fol- low that star,
  No mat- ter how hope- less, no mat- ter how far,
  To fight for the right with- out ques- tion or pause,
  To be wil- ling to march in- to hell for a heav- en- ly cause!
  And I know, if I'll on- ly be true to this glor- i- ous Quest,
  That my heart will lie peace- ful and calm when I'm laid to my rest,
  And the world will be bet- ter for this,
  That one man, scorned and cov- ered with scars,
  Still strove, with his last ounce of cour- age,
  To reach the un- reach- a- ble stars!
}

Mwords = \lyricmode {
}

\book {
  \header {
    title = "The Impossible Dream"
    subtitle = "The Quest"
    composer = "Mitch Leigh"
    poet = "Joe Darion"
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
                \trebleOne
                \trebleTwo
              >>
	    }
	    \new Staff = bass {
	      \clef bass
	      \bass
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
	        \trebleOne
                \trebleTwo
              >>
	    }
	    \new Staff = bass \unfoldRepeats {
	      \clef bass
	      \bass
	    }
	  >>
	}
      >>
    }
  \midi {}
  }
}
