\version "2.20.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Got Plenty O' Nuttin"
  subtitle    = "from Porgy and Bess"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "George Gershwin"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Ira Gershwin & Dubose Heyward"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

global = {
  \time 2/4
  \key d \major
  \tempo 4 = 180
}

#(set-global-staff-size 18)

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "211a" } s2*4
  \mark \markup { \circle "211b" } s1*4
  \mark \markup { \circle "211c" } s1*5
  \mark \markup { \circle "211d" } s1*5
  \mark \markup { \circle "212a" } s1*5
  \mark \markup { \circle "212b" } s1*5
  \mark \markup { \circle "212c" } s1*5
  \mark \markup { \circle "212d" } s1*5
  \mark \markup { \circle "213a" } s1*5
  \mark \markup { \circle "213b" } s1*5
  \mark \markup { \circle "213c" } s1*5
  \mark \markup { \circle "213d" } s1*5
  \mark \markup { \circle "214a" } s1*5
  \mark \markup { \circle "214b" } s1*5
  \mark \markup { \circle "214c" } s1*6
  \mark \markup { \circle "214d" } s1*6
  \mark \markup { \circle "215a" } s1*6
  \mark \markup { \circle "215b" } s1*6
  \mark \markup { \circle "215c" } s1*6
  \mark \markup { \circle "215d" } s1*6
}

melody = \relative c {
  \global
  r2
  r2
  r2
  r2
  \bar "||" \key g \major \time 2/2
  r1 % 5
  r2 r4 d
  g4 g a g8 a
  b8 d4.~d4 r8 d,
  b'4 b8 a~a b a4
  g2 fis % 10
  e4 e cis4. r8
  e4 e cis4. cis8
  e4 e cis e
  eis1 ~
  eis2 fis % 15
  g4 g a g8 a
  b8 d4.~d4 r
  b4 b8 a~a b a4
  g2(fis) % 212a
  e4 e cis8 cis4 cis8
  e8 e4 e8 cis cis cis cis
  e4 e cis e
  eis1~
  eis2 fis % 212b
  g1~
  g2 r
  fis4 d8 b d4 b8 d
  fis2 e8 fis e b
  d1~ % 212c
  d4 r e8 fis e b
  d4 b8 d fis2~
  fis2 e8 fis e b
  d4 b8 d e4 c8 e
  fis4 d8 fis g4 e8 g % 212d
  a4 fis8 a c2~
  c2 r4 d,
  g4 g a g8 a
  b8 d4.~d4 r8 d,
  b'4 b8 a~a b a4 % 213a
  g2 fis
  e4 e cis4. r8
  e4 e cis4. cis8
  e8 e4 e8 cis4 e
  eis1 % 213b
  \override NoteHead.style = #'cross
  \times 2/3 {b'4->^\markup{\dynamic mf (Spoken:)} b b} g e
  \revert NoteHead.style
  r2 fis4 fis
  g1~
  g4 r f f
  g1~ % 213c
  g4 r e e
  g1~
  g2 r
  r1
  r1 % 213d
  r1
  g4^\mp g a g8 a
  b8 d4.~d4 r8 d,
  b'4 b8 a~a b a4
  g2 fis % 214a
  e4 e cis4. r8
  e4 e cis4. r8
  e4 e cis e
  eis1~
  eis2 fis % 214b
  g4 g a g8 a
  b8 d4.~d4 r4
  b4 b8 a~a b a4
  g2(fis)
  e4 e cis8 cis4 cis8 % 214c
  e8 e4 e8 cis cis cis cis
  e4 e cis8 cis e4
  eis1~
  eis2 fis
  g1~
  g2 r % 214d
  fis4^\mf d8 b d b d4
  fis2 e8 fis e b
  d1~
  d4 r e8 fis e b
  d4 b8 d fis2~
  fis4 r e8 fis e b % 215a
  d4 b8 d e4 c8 e
  fis4 d8 fis g4 e8 g
  a4 fis8 a c2~
  c4 r d,2
  g4 g a g8 a
  b8 d4.~d4 r8 d, % 215b
  b'4 b8 a~a b a4
  g2 fis
  e4 e cis4. r8
  e4 e cis r8 cis
  e8 e4 e8 cis4 e
  eis1 % 215c
  \override NoteHead.style = #'cross
  \times 2/3 {b'4->^\markup{\dynamic mf (Spoken:)} b b} g e
  \revert NoteHead.style
  r2 fis4 fis
  g1~
  g4 r f f
  g1~
  g4 r e e % 215d
  g1~
  g1~
  g1~
  g4 r r2
  r1
}

pianoRH = \relative c' {
  \global
  <d a'>4-- <a d>--
  <d a'>8 d16(e fis8) g16(a
  b8) c16(d e8) fis16(g
  a8) b16(c d8) e16(fis
  \bar "||" \key g \major \time 2/2
  g8) s s2.
  s1*19 % See pianoLHOne for this bit
  r4 <b,,, d g> r <c e a>8 q % 212b+
  r4 <d fis b> r <b d g>
  r4 <b d> r q
  r4 q r <b cis>
  r4 <b d> s2 % 212c
  s1
  s1
  r4 q r <b cis>
  <fis b d>2 <g c e>--
  <a d fis>2-- <c e g>-- % 212d
  <a d fis a>4-> <c e a c>-> <e a c e>-> <d d'>8 <e e'>
  <fis fis'>8 <g g'> <a a'> <b b'> <c c'> <d d'> <e e'> <fis fis'>
  <g b d g>4 s2.
  s1*9
  r4 <b,, d g> r <c e a>8 q % 213b+++
  r4 <d g b> <a c f>2--
  r4 <b d g> r <c e a>8 q % 213c
  r4 <d g b> <e g c>2--
  <d g b d>8 r <b d g>(<cis e a> <dis fis b> <f aes des> <g bes ees> <a c f>
  <b d g>1)
  <b d fis>2(<fis b d>)
  s1*20
  r4 <b, d g> r <c e a>8 q % 214c+++++
  r4 <d fis b> r <b d g> % 214d
  r4 <b d> r q
  r4 q r <b cis>
  s1*3
  r4 <b d> r <b cis> % 251a
  <fis b d>2 <g c e>->
  <a d fis>2-> <c e g>->
  <a d fis a>4-> <c e a c>-> <e a c e>-> <d d'>8 <e e'>
  <fis fis'>8 <g g'> <a a'> <b b'> <c c'> <d d'> <e e'> <fis fis'>
  <g b d g>4 s2.
  s1*9
  r4 <b,, d g> r <c e a>8 q % 215c+++
  r4 <d g b> <a c f>2--
  r4 <b d g> r <c e a>8 q
  r4 <d g b> <e g c> <g c e> % 215d
  <g b g'>4 <g g'> <a a'> <g g'>8 <a a'>
  <bes bes'>4 q <c c'> <bes bes'>8 <c c'>
  <d d'>8-> <bes' bes'>4 r8 <d, d'>8-> <a' a'>4 r8
  r4 e,8.->(d16 ais8. b16 g8. e16)
  g4 r <b' d g>-> r
}

pianoRHOne = \relative c'' {
  \global
  \voiceOne
  s2*4
  \time 4/4 \key g \major
  s1*24
  s2 a2( % 212c
  gis2 g
  fis2) r
  s1*46
  s2 a2( % 214d
  gis2 g
  fis2) r
  s1*24
  \bar "|."
}

pianoRHTwo = \relative c' {
  \global
  \voiceTwo
  s2*4
  \time 4/4 \key g \major
  s1*24
  s2 r4 <b d> % 212c
  r4 q r <b cis>
  r4 <b d> r q
  s1*46
  r4 <b d> r q
  r4 q r <b cis>
  r <b d> r q
  s1*24
  \bar "|."
}

dynamicsPiano = {
  \global
  s2^\mf
  s2*3
  \times 2/2
  s1^\mf
  s1
  s1^\markup{\dynamic p leggiero}
  s1*25
  s2. s4\cresc
  s1
  s2. s4\<
  s1
  s4\f s2.\p
  s1*13
  s4 s2.\<
  s1\!
  s1\mf
  s2 s\> % 213d
  s1
  s1\p
  s1*27
  s1\< % 215a+++
  s1
  s1\f
  s1*12
  s4 s2.\< % 215d
  s1\mf\cresc
  s1
  s1
  s1\f
  s1
}

pianoLH = \relative c {
  \global
  d8 e16(fis g8) a16(b
  c8)r <a d>4
  \clef "treble" <d a'>4 <a d>
  <d g>4 \clef "bass" <a d>
  \bar "||" \key g \major \time 2/2
  s1*20
  g,4 r g r % 212b+
  g4 r g r
  s1
  s1
  s2 e4 r % 212c
  b'4 r e, r
  s1
  s1
  b'2 a--
  d2--  a-- % 212d
  d1->
  <d, d'>4 <c c'> <b b'> <a a'>
  s1*10
  g'4 r g r % 213b+++
  g4 r d2
  g4 r g r
  g4 r c,2--
  g'1~
  g4 \times 2/3 {ais8( b d} e g b d)
  s1*21
  g,,4 r g r % 214c+++++
  g4 r g r
  s1*3
  b4 r e, r
  s1*2
  b'2 a-> % 215a+
  d2-> a->
  d1->
  <d, d'>4 <c c'> <b b'> <a a'>
  s1*10
  g'4 r g r % 215c+++
  g4 r d2--
  g4 r g r
  g4 r c,2-- % 215d
  s1*2
  <f' bes d f>4 q <fis a c d> q
  d,4-> e'8.->( d16 ais8. b16 g8. e16)
  g4 r <g' d' g>-> r
}

pianoLHOne = \relative c' {
  \global
  \voiceOne
  s2*4
  \bar "||" \key g \major \time 2/2
  g4-. <d g b>4-.->^\markup \roman R.H. r <e a c>-.-> % 5
  r4 <fis b d>-.-> r <e a c>-.->
  r4 <d g b> r <e a c>
  r4 <fis b d>8 q r4 <e a c>
  r4 <d g a> r <e a c>8 q
  r4 <g b d> r <a b dis> % 10
  r4 <gis b e> r <e a cis>
  r4 <gis b e> r <e a cis>
  r4 <gis b e> <e a cis> <g b e>
  r4 <gis cis eis> r q
  r4 q r <a d fis> % 15
  <b d g> <d, g b> r <e a c>
  r4 <fis b d>8 q r4 q
  r4 <d g b> r <e a c>8 q
  r4 <g b d> r <a b dis> % 212a
  r4 <gis b e> r <e a cis>
  r4 <gis b e> r <e a cis>
  r4 <gis b e> <e a cis> <gis b e>
  r4 <gis cis eis> r q
  r4 q r <a d fis> % 212b
  s1
  s1
  fis2^\markup \roman R.H. ( a
  gis2 g
  fis2) s % 212c
  s1
  s2 a2^\markup \roman R.H. (
  gis2 g)
  s1*4
  r4 <d g b>^\markup \roman R.H. r <e a c> % 212d___
  r4 <fis b d>8 q r4 <e a c>
  r4 <d g a> r <e a c>8 q % 213a
  r4 <g b d> r <a b dis>
  r4 <gis b e> r <e a cis>
  r4 <gis b e> r <e a cis>
  r4 <gis b e> <e a cis> <gis b e>
  r4 <gis cis eis> r q % 213b
  r4 <gis cis eis> r q
  r4 <gis cis eis> r <a d fis>
  s1
  s1
  s1 % 213c
  s1
  s1
  s1
  c1
  r4 <d, g a>->^\markup \roman R.H. r <e a c>-> % 213d
  r4 <fis b d> r <e g c>
  r4 <d g b>-. r <e a c>-.
  r4 <fis b d>8 q r4 <e a c>
  r4 <d g b> r <e a c>8 q
  r4 <g b d> r <a b dis> % 214a
  r4 <gis b e> r <e a cis>
  r4 <gis b e> r <e a cis>
  r4 <gis b e> <e a cis> <g b e>
  r4 <gis cis eis> r q
  r4 <gis cis eis> r <a d fis> % 214b
  <b d g> <d, g b> r <e a c>
  r4 <fis b d>8 q r4 <e a c>
  r4 <d g b> r <e a c>8 q
  r4 <g b d> r <a b dis>
  r4 <gis b e> r <e a cis> % 214c
  r4 <gis b e> r <e a cis>
  r4 <gis b e> <e a cis> <g b e>
  r4 <gis cis eis> r q
  r4 q r <a d fis>
  s1
  s1 % 214d
  fis2^\markup \roman R.H. (a
  gis2 g
  fis2) s
  s1
  s2 a^\markup \roman R.H. (
  gis2 g) % 215a
  s1
  s1
  s1
  s1
  r4 <d g b>^\markup \roman R.H. r <e a c>
  r4 <fis b d>8 q r4 <e a c> % 215b
  r4 <d g b> r <e a c>8 q
  r4 <g b d> r <a b cis>
  r4 <gis b e> r <e a cis>
  r4 <gis b e> r <e a cis>
  r4 <gis b e>(<e a cis> <gis b e>)
  r4 <gis cis eis> r q % 215c
  r4 q r q
  r4 q r <a d fis>
  s1
  s1
  s1
  s1 % 215d
  r4 <b d> r <g bes e>
  r4 <g bes d> r <bes c e>
  s1
  s1
  s1
}

pianoLHTwo = \relative c {
  \global
  s2*4
  \bar "||" \key g \major \time 2/2
  \voiceTwo <g, g'>4-. r q-. r % 5
  q4 r q r
  g'4 r g r
  g4 r g r
  g4 r g r
  g4 r b r % 10
  e,4 r a r
  e4 r a r
  e4 r a e
  cis4 r cis r
  cis4 r d r % 15
  g4 r g r
  g4 r g r
  g4 r g r
  g4 r b r % 212a
  e,4 r a r
  e4 r a r
  e4 r a e
  cis4 r cis r
  cis r d r % 212b
  s1
  s1
  b'4 r e, r
  b'4 r e, r
  b'4 r s2 % 212c
  s1
  b4 r e, r
  b'4 r e, r
  s1
  s1 % 212d
  s1
  s1
  <g, g'>4 r g' r
  g4 r g r
  g4 r g r % 213a
  g4 r b r
  e,4 r a r
  e4 r a r
  e4 r a e
  cis4 r cis r % 213b
  cis'4 r gis r
  eis4 r d r
  s1
  s1
  s1 % 213c
  s1
  s1
  s1
  r4 d'8 e b d d,4
  g4-> r g-> r % 213d
  g4 r g r
  g4-. r g-. r
  g4 r g r
  g4 r g r
  g4 r b r % 214a
  e,4 r a r
  e4 r a r
  e4 r a e
  cis4 r cis r
  cis4 r d r % 214b
  g4 r g r
  g4 r g r
  g4 r g r
  g4 r b r
  e,4 r a r % 214c
  e4 r a r
  e4 r a e
  cis4 r cis r
  cis 4 r d r
  s1
  s1 % 214d
  b'4 r e, r
  b'4 r e, r
  b'4 r e, r
  s1
  b'4 r e, r
  b'4 r e, r % 215a
  s1
  s1
  s1
  s1
  <g, g'>4 r g' r
  g4 r g r % 215b
  g4 r g r
  g4 r b r
  e, r a r
  e4 r a r
  e4 r a e
  cis4 r cis r % 215c
  cis'4 r gis r
  eis4 r d r
  s1
  s1
  s1
  s1 % 215d
  g'2 c,
  d2 ges
  s1
  s1
  s1
}

igpon = \lyricmode {
  I got plen- ty o' nut- tin',
}

anpfm = \lyricmode {
  An' nut- tin's plen- ty fo' me.
}

words = \lyricmode {
  Oh \igpon
  \anpfm
  I got no car, got no mule,
  I got no mis- er -y.
  De folks wid plen- ty o' plen- ty
  got a lock on dey door, __
  'Fraid some- bod- y's a- go- in' to rob 'em
  while dey's out a- mak- in' more. __
  What for? __
  I got no lock on de door,
  (Dat's no way to be.) __
  Dey kin steal de rug from de floor, __
  Dat's o- keh wid me,
  'Cause de things dat I prize,
  Like de stars in de skies, all are free. __
  Oh, \igpon __
  \anpfm
  I got my gal, got my song,
  got Heb- ben de whole day long.
  No use com- plain- in'!
  Got my gal, __
  got my Lawd, __ got my song. __
  \igpon __
  \anpfm
  I got de sun, got de moon,
  got de deep blue sea. __
  De folks wid plen- ty o' plen- ty __
  Got to pray __ all de day. __
  Seems wid plen- ty you sure got to wor- ry
  how to keep de deb- ble a- way, __ a- way. __
  I ain't a- fret- tin' 'bout hell
  Till de time ar- rive. __
  Nev- er wor- ry long as I'm well, __
  Nev- er one to strive to be good,
  to be bad, what de hell,
  I is glad I's a- live. __
  Oh, \igpon __
  \anpfm
  I got my gal, got my song,
  Got Heb- ben de whole day long.
  No use com- plain- in',
  Got my gal, __
  got my Lawd, __
  got my song! __
}

Migpon = \lyricmode {
  "I " "got " "plen" "ty " "o' " "nut" "tin', "
}

Manpfm = \lyricmode {
  "\nAn' " "nut" "tin's " "plen" "ty " "fo' " "me. "
}

Mwords = \lyricmode {
  "\nOh " \Migpon
  \Manpfm
  "I " "got " "no " "car, " "got " "no " "mule, "
  "I " "got " "no " "mis" "er" "y. "
  "De " "folks " "wid " "plen" "ty " "o' " "plen" "ty "
  "got " "a " "lock " "on " "dey " "door, "
  "'Fraid " "some" "bod" "y's " "a" "go" "in' " "to " "rob " "'em "
  "while " "dey's " "out " "a" "mak" "in' " "more. "
  "What " "for? "
  "I " "got " "no " "lock " "on " "de " "door, "
  "(Dat's " "no " "way " "to " "be.) "
  "Dey " "kin " "steal " "de " "rug " "from " "de " "floor, "
  "Dat's " "o" "keh " "wid " "me, "
  "'Cause " "de " "things " "dat " "I " "prize, "
  "Like " "de " "stars " "in " "de " "skies, " "all " "are " "free. "
  "\nOh, " \Migpon
  \Manpfm
  "I " "got " "my " "gal, " "got " "my " "sing, "
  "got " "Heb" "ben " "de " "while " "day " "long. "
  "No " "use " "com" "plain" "in'! "
  "Got " "my " "gal, "
  "got " "my " "Lawd, " "got " "my " "song.\n"
  \Migpon
  \Manpfm
  "I " "got " "de " "sun, " "got " "de " "moon, "
  "got " "de " "deep " "blue " "sea. "
  "De " "folks " "wid " "plen" "ty " "o' " "plen" "ty "
  "Got " "to " "pray " "all " "de " "day. "
  "Seems " "wid " "plen" "ty " "you " "sure " "got " "to " "wor" "ry "
  "how " "to " "keep " "de " "deb" "ble " "a" "way, " "a" "way. "
  "I " "ain't " "a" "fret" "tin' " "'bout " "hell "
  "Till " "de " "time " "ar" "rive. "
  "Nev" "er " "wor" "ry " "long " "as " "I'm " "well, "
  "Nev" "er " "one " "to " "strive " "to " "be " "good, "
  "to " "be " "bad, " "what " "de " "hell, "
  "I " "is " "glad " "I's " "a" "live. "
  "\nOh, " \Migpon
  \Manpfm
  "I " "got " "my " "gal, " "got " "my " "song, "
  "Got " "Heb" "ben " "de " "whole " "day " "long. "
  "No " "use " "com" "plain" "in', "
  "Got " "my " "gal, "
  "got " "my " "Lawd, "
  "got " "my " "song! "
}

\book {
  \score {
    \context GrandStaff {
      <<
	\new Staff = melody {
          <<
            \clef "bass"
            \new Voice \RehearsalTrack
            \new Voice = melody \melody
          >>
	}
        \new Lyrics \lyricsto "melody" \words
	\context PianoStaff {
	  <<
	    \new Staff = pianoRH
            <<
	      \pianoRH
	      \pianoRHOne
	      \pianoRHTwo
            >>
            \new Dynamics \dynamicsPiano
	    \new Staff = pianoLH {
	      \clef bass
              <<
                \pianoLH
                \pianoLHOne
                \pianoLHTwo
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
	\new Staff = melody {
	  \melody
	}
	\addlyrics \Mwords
	\context PianoStaff {
	  <<
	    \new Staff = treble {
              <<
                \pianoRH
                \pianoRHOne
                \pianoRHTwo
              >>
	    }
	    \new Staff = bass {
	      \clef bass
              <<
                \pianoLH
                \pianoLHOne
                \pianoLHTwo
              >>
	    }
	  >>
	}
      >>
    }
    \midi {}
  }
}
