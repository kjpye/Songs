\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global =  {
  \time 4/4 
  \key d \major
  \time 4/4 
  \skip 8 
  \tempo 4 = 120 
}

sopMusic = \relative c {
  fis'4 fis8 g4 fis8 e |
  % 4
  d d4 e8 g2( |
  % 5
  d8) a4 cis8 g'4 e8 d |
  % 6
  cis a4 d8 fis8*5 fis4 fis8 g4 fis8 e |
  % 8
  d b4 e8 g2 |
  % 9
  d8 a4 cis8 g'4 e8 d |
  % 10
  cis a1 b'4 b8 g4 b8 a |
  % 12
  g fis4 a8 a2 |
  % 13
  fis8 e4 a8 a2 |
  % 14
  e8 d4 fis8 fis8*5 fis4 fis8 g4 fis8 e |
  % 16
  dis cis4 e8 g2 |
  % 17
  d8 a4 cis8 fis4 e8 d |
  % 18
  cis a2 ~ a8 r4
}

tenorMusic = \relative c {
  d4 d8 d4 d8 d |
  % 4
  d b'4 b8 d d4. |
  % 5
  d8 g,4 g8 cis,4 e8 d |
  % 6
  cis fis4 fis8 d8*5 fis4 fis8 g4 fis8 e |
  % 8
  d g4 e8 g2 |
  % 9
  d8 g4 g8 cis4 e8 d |
  % 10
  cis fis,1 g4 g8 cis4 g8 g |
  % 12
  cis, d4 fis8 fis2 |
  % 13
  cis8 cis4 g'8 g2 |
  % 14
  cis,8 a'4 fis8 fis8*5 fis4 fis8 dis4 fis8 dis |
  % 16
  dis g4 g8 cis,2 |
  % 17
  d8 g4 g8 g a cis cis |
  % 18
  cis fis,2 ~ fis8 r4
}

altoMusic = \relative c' {
  d4 d8 a'4 d,8 d |
  % 4
  cis e4 e8 e( b4. |
  % 5
  d8) a4 a8 cis4 cis8 a |
  % 6
  a d4 a a8 a b |
  % 7
  cis d4 d8 d a d d |
  % 8
  d e4 e8 cis b s8 e |
  % 9
  d a4 a8 e'4 cis8 a |
  % 10
  a d1 g4 g8 a4 d,8 g |
  % 12
  e d4 d8 d a s8 d |
  % 13
  a' e4 e8 e a,4. |
  % 14
  a8 d4 d8 a4 a8 b |
  % 15
  cis d4 b8 a b b b |
  % 16
  b e4 a,8 b4 s8 e |
  % 17
  s8 a,4 a8 a e' cis a |
  % 18
  a8 d2 ~ d8 r4
}

trebleaccMusic = \relative c {
				% 1
  <fis' a>4 <fis a>8 <g b>4 <fis a>8 <e g>8
  <d fis>8 <d e>4 <e g>8 d8 d4.
  <d' d, >8 <a cis a, g' >4 <cis e a,, g' >8 <g' a cis,, >4 <e g cis,, e >8 
  <d fis a,, d >8 |
  <cis e a,, cis >8 <a d d, fis >4 <d fis fis, >8 <fis a d,, >8*5 
  <fis a d,, fis >4 <fis a d,, fis >8 d, a <fis'' a d,, fis >8 
  <e g d, e >8 |
  <d fis d, >8 <b e e, g >4 <e g e, >8 cis, b s8 e |
  <d' d, >8 <a cis a, g' >4 <cis e a,, g' >8 <g' a e, cis' >4 
  <e g cis,, >8 <d fis a,, >8 |
  % 10
  <cis e a,, >8 <a d d, fis >1 <b' d g,, >4 <b d g,, >8 <g e' a,, cis >4 
  <b d d,, g >8 <a cis g, >8 |
  % 12
  <g b cis,, e >8 <fis a d,, >4 <a d d,, fis >8 d,, a s8 d |
  % 13
  <fis' a cis,, a' >8 <e g cis,, e >4 <a cis e,, g >8 e, a,4. |
  % 14
  <e'' g a,, cis >8 <d fis d, a' >4 <fis a d,, fis >8 a,,4 a8 
  b |
  % 15
  cis <fis' a d,, fis >4 <fis a b,, fis' >8 a,, b <fis'' a b,, fis' >8 
  <e g b,, dis >8 |
  % 16
  <dis fis b,, dis >8 <cis e e, g >4 <e g a,, g' >8 b,4 cis |
  % 17
  <d' d, >8 <a cis a, g' >4 <cis e a,, g' >8 <a, g' >8 <e' a >8 
  <e' g cis,, cis' >8 <d fis a,, cis' >8 |
  % 18
  <cis e a,, >8 <a d d, fis >2 ~ q8 r4
}

bassaccMusic = \relative c {
  d4 d8 <d a' >4 d8 d8
  <cis d>8 <e b'>4 <e b'>8 e8 b4.
%%
  <d' d, >8 <a cis a, g' >4 <cis e a,, g' >8 <g' a cis,, >4 <e g cis,, e >8 
  <d fis a,, d >8 |
  <cis e a,, cis >8 <a d d, fis >4 <d fis fis, >8 <fis a d,, >8*5 
  <fis a d,, fis >4 <fis a d,, fis >8 d, a <fis'' a d,, fis >8 
  <e g d, e >8 |
  % 8
  <d fis d, >8 <b e e, g >4 <e g e, >8 cis, b s8 e |
  % 9
  <d' d, >8 <a cis a, g' >4 <cis e a,, g' >8 <g' a e, cis' >4 
  <e g cis,, >8 <d fis a,, >8 |
  % 10
  <cis e a,, >8 <a d d, fis >1 <b' d g,, >4 <b d g,, >8 <g e' a,, cis >4 
  <b d d,, g >8 <a cis g, >8 |
  % 12
  <g b cis,, e >8 <fis a d,, >4 <a d d,, fis >8 d,, a s8 d |
  % 13
  <fis' a cis,, a' >8 <e g cis,, e >4 <a cis e,, g >8 e, a,4. |
  % 14
  <e'' g a,, cis >8 <d fis d, a' >4 <fis a d,, fis >8 a,,4 a8 
  b |
  % 15
  cis <fis' a d,, fis >4 <fis a b,, fis' >8 a,, b <fis'' a b,, fis' >8 
  <e g b,, dis >8 |
  % 16
  <dis fis b,, dis >8 <cis e e, g >4 <e g a,, g' >8 b,4 cis |
  % 17
  <d' d, >8 <a cis a, g' >4 <cis e a,, g' >8 <a, g' >8 <e' a >8 
  <e' g cis,, cis' >8 <d fis a,, cis' >8 |
  % 18
  <cis e a,, >8 <a d d, fis >2 ~ q8 r4
}

firstverse = \lyricmode {
  \set stanza = "1. "
  See him ly- ing on a bed of straw;
  draugh- ty stab- le with an o- pen door,
  Mar- y crad- _ ling the babe she bore; 
  The prince of glor- y is his name.
  
  Oh, now car- ry me to Beth- le- hem 
  to see the Lord ap- pear to men; 
  Just as poor as was the stab- le then, 
  The prince of glor- y when he came.
}

secondverse = \lyricmode {
  \set stanza = "2. "
  Star of sil- ver sweep a- cross the skies,
  show where Je- sus in the man- ger lies. 
  Shep- herds swift- ly from your stu- por rise 
  to see the Sav- iour of the world.
  Oh, now car- ry me to Beth- le- hem 
  to see the Lord ap- pear to men; 
  Just as poor as was the stab- le then, 
  The prince of glor- y when he came.
}

thirdverse = \lyricmode {
  \set stanza = "3. "
  Mine are rich- es from thy pov- er- ty,
  From thine in- noc- ence, e- tern- it- y; 
  Mine, for- give- ness by thy death for me, _
  Child of sor- row for my joy.
  Oh, now car- ry me to Beth- le- hem 
  to see the Lord ap- pear to men; 
  Just as poor as was the stab- le then, 
  The prince of glor- y when he came.
}

fourthverse = \lyricmode {
  \set stanza = "4. "
  An- gels, sing a- gain the song you sang, 
  _ bring God’s glor- y to the heart of man; 
  Sing the Beth- l’hem’s lit- tle bab- y can 
  _ be sal- vat- ion to the soul.
  Oh, now car- ry me to Beth- le- hem 
  to see the Lord ap- pear to men; 
  Just as poor as was the stab- le then, 
  The prince of glor- y when he came.
}

\book
{
  \header {
    title = "Calypso Carol"
    copyright = \today
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  \context Voice = sopranos { \voiceOne {\global \sopMusic \bar "||"} }
	  \context Voice = altos { \voiceTwo {\global \altoMusic} }
	>>
	\context Lyrics = firstverse { s1 }
	\context Lyrics = secondverse { s1 }
	\context Lyrics = thirdverse { s1 }
	\context Lyrics = fourthverse { s1 }
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice = tenors { \voiceOne {\global \tenorMusic} }
	  >>
	}
      >>
      \context PianoStaff <<
	\context Staff = trebleacc {
	  <<
	    \context Voice = trebleacc { \global \trebleaccMusic }
	  >>
	}
	\context Staff = bassacc {
	  <<
	    \clef bass
	    \context Voice = bassacc { \global \bassaccMusic }
	  >>
	}
      >>
      \context Lyrics = firstverse \lyricsto sopranos {\firstverse}
      \context Lyrics = secondverse \lyricsto sopranos {\secondverse}
      \context Lyrics = thirdverse \lyricsto sopranos {\thirdverse}
      \context Lyrics = fourthverse \lyricsto sopranos {\fourthverse}
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
        }
	\context {\RemoveEmptyStaffContext
	\override VerticalAxisGroup #'remove-first = ##t }
    }
    \midi {}
  }
}
