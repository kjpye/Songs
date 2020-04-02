\version "2.20.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Try to Remember"
  subtitle    = "from The Fantasticks"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Harvey Schmidt"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Tom Jones"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key f \major
  \time 3/4
  \tempo 4=126
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "96a"  } s2.*8
  \mark \markup { \circle "96b"  } s2.*5
  \mark \markup { \circle "96c"  } s2.*5
  \mark \markup { \circle "96d"  } s2.*5
  \mark \markup { \circle "97a"  } s2.*5
  \mark \markup { \circle "97b"  } s2.*5
  \mark \markup { \circle "97c"  } s2.*5
  \mark \markup { \circle "97d"  } s2.*4
  \mark \markup { \circle "98a"  } s2.*5
  \mark \markup { \circle "98b"  } s2.*5
  \mark \markup { \circle "98c"  } s2.*5
  \mark \markup { \circle "98d"  } s2.*5
  \mark \markup { \circle "99a"  } s2.*5
  \mark \markup { \circle "99b"  } s2.*4
  \mark \markup { \circle "99c"  } s2.*4
  \mark \markup { \circle "99d"  } s2.*4
  \mark \markup { \circle "100a" } s2.*4
  \mark \markup { \circle "100b" } s2.*5
  \mark \markup { \circle "100c" } s2.*5
  \mark \markup { \circle "100d" } s2.*4
  \mark \markup { \circle "101a" } s2.*4
  \mark \markup { \circle "101b" } s2.*5
  \mark \markup { \circle "101c" } s2.*4
  \mark \markup { \circle "101d" } s2.*5
}

bass= \relative c' {
  \global
  R2.*8
  a4. a8 a4
  a4 g f
  bes,4. bes8 bes4
  bes4 c d
  c8 r r4 a
  f'2 c4 % 96c
  d8 r r4 bes
  g'8 d r4 r
  a'4. a8 a4
  a4 g f
  bes,4. bes8 bes4 % 96d
  bes4 c d
  c8 r r4 a
  f'2 c4
  d8 r r4 bes
  g'8 d r4 r % 97a
  c'4. c8 c4
  c4 bes a
  bes4. bes8 bes4
  bes4 a g
  a4. a8 a4 % 97b
  a4 g f
  g2 d4
  e8 c r4 r
  a'4. a8 a4
  a4 g f % 97c
  bes,8 r r bes bes4
  bes4 c d
  a'8 f~f4 r
  R2.*3
  a4. a8 a4
  a4 g f
  bes,8 r r bes bes4 % 98a
  bes4 c d
  c2 a4
  f'8 r r4 c
  d8 r r4 bes
  g'8 d r4 r % 98b
  a'4. a8 a4
  a4 g f
  bes,8 r r bes8 bes4
  bes4 c d
  c2 a4 % 98c
  f'8 r r4 c
  d2 bes4
  g'8 d r4 r
  c'4. c8 c4
  c4 bes a % 98d
  bes8 r r bes bes4
  bes4 a g
  a4. a8 a4
  a4 g f
  g8 r r4 d % 99a
  e8 c r4 r
  a'4. a8 a4
  a4 g f
  bes,8 r r bes bes4
  bes4 c d % 99b
  a'8 f~f4 r
  R2.*3
  f4 des2~ % 99c+
  des4 r r
  R2.*2
  cis4 a2~ % 99d+
  a4 r r
  R2.*2
  a'4. a8 a4 % 100a+
  a4 g f
  bes,8 r r bes bes4
  bes4 c d % 100b
  c2 a4
  f'4 r c
  d2 bes4
  g'8 d r4 r
  a'4. a8 a4 % 100c
  a4 g f
  bes,8 r r bes bes4
  bes4 c d
  c8 r r4 a
  f'8 r r4 c % 100d
  d8 r r4 bes
  g'8 d r4 r
  c'4. c8 c4
  c4 bes a % 101a
  bes8 r r bes bes4
  bes4 a g
  a4. a8 a4
  a4 g f % 101b
  g2 d4
  e8 c r4 r
  a'8 r r a a4
  a4 g f
  bes,4 r8 bes bes4 % 101c
  bes4 c \breathe d^\pp \breathe
  a'8^\p f~f4 r
  R2.*6
  \bar "|."
}

ttr = \lyricmode {
  Try to re- mem- ber
}

ttrtkos = \lyricmode {
  Try to re- mem- ber the kind of Sep- tem- ber
}

did = \lyricmode {
  Deep in De- cem- ber,
}

wordsBass = \lyricmode {
  \ttrtkos
  When life was slow and oh so mel- low.
  \ttrtkos
  When grass was green and grain was yel- low.
  \ttrtkos
  When you were a ten- der and cal- low fel- low.
  \ttr and if you re- mem- ber,
  Then fol- low.

  \ttr when life was so ten- der
  That no one wept ex- cept the wil- low.
  \ttr when life was so ten- der
  That dreams were kept be- side your pil- low.
  \ttr when life was so ten- der
  That love was an em- ber a- bout to bil- low.
  \ttr and if you re- mem- ber,
  Then fol- low. __ Fol- low __ Fol- low __

  \did it's nice to re- mem- ber,
  Al- tho' you know the snow will fol- low.
  \did it's nice to re- mem- ber,
  With- out a hurt the heart is hol- low.
  \did it's nice to re- mem- ber
  The fire of Sep- tem- ber that made us mel- low.
  \did our hearts should re- mem- ber,
  And fol- low. __
}

pianoRH = \relative c' {
  \global
  R2.*8
  s2.*16
  r4 <e g c> q % 97a+
  r4 <a, c f> q
  r4 <bes d f a>^(<bes d f g>)
  r4 <a bes d>^(<g bes e>)
  r4 <e' f a>(<d f a>) % 97b
  r4 <bes d g>(<bes d f>)
  r4 <bes ees g>(<bes d ees g>)
  r4 <bes c e>2
  s2.*5
  r4 <a'' c>8(<f a> <a c> <f a> % 97c++++
  <a c>8 <f a> <a c>8 <f a> <a c>8 <f a> % 97d
  <a c>8 <f a> <a c>8 <f a> <a c>8 <f a>)
  <c a'>4. q8 q4
  <c a'>4(<bes g'> <a f'>)
  <d, bes'>4. q8 q4 % 98a
  s2.
  <a' c>2(<f a>4)
  <a f'>2(<a c>4)
  <g d'>2(bes4)
  s2. % 98b
  <c a'>4. q8 q4
  q4(<bes g'> <a f'>)
  <d, bes'>4. q8 q4
  s2.
  <a' c>2(<f a>4) % 98c
  <a f'>2(<a c>4)
  <g d'>2(bes4)
  s2.
  <a' c>4. q8 q4
  q4(<g bes> <f a>) % 98d
  <g bes>4. q8 q4
  q4(<f a> <e g>)
  <e a>4. q8 q4
  <d a'>4(<d g> <d f>)
  s2. % 99a
  <bes e>8(<e, c'>8~q2)
  <c' a'>4. q8 q4
  q4(<bes g'> <a f'>)
  <d, bes'>4. q8 q4
  s2. % 99b
  <c' a'>8(<a f'>~q2)
  r4 <a' c>8(<f a> <a c> <f a>
  <a c> <f a> <a c> <f a> <a c> <f a>
  <a c> <f a> <a c> <f a> <a c> <f a>) % 99c
  <fes,, a des f>2.
  r4 <f'' aes>8(<des f> <f aes> <des f>
  <f aes> <des f> <f aes> <des f> <f aes> <des f>
  <f aes> <des f> <f aes> <des f> <f aes> <des f>) % 99d
  \change Staff = pianoLH \voiceOne <cis,, e a cis>2. \change Staff = pianoRH \oneVoice
  r4 <cis'' e>8(<a cis> <cis e> <a cis>
  <cis e> <a cis> <cis e> <a cis> <cis e> <a cis>
  <cis e> <a cis> <cis e> <a cis> <cis e> <a cis>) % 100a
  <c a'>4. q8 q4
  <c a'>4(<bes g'> <a f'>)
  <d, bes'>4. q8 q4
  s2. % 100b
  <a' c>2(<f a>4)
  <a f'>2(<a c>4)
  <g d'>2(bes4)
  s2.
  <c a'>4. q8 q4 % 100c
  q4(<bes g'> <a f'>)
  <d, bes'>4. q8 q4
  s2.
  <a' c>2(<f a>4)
  <a f'>2(<a c>4) % 100d
  <g d'>2(bes4)
  s2.
  s4. <a' c>8 q4
  q4(<g bes> <f a>) % 101a
  <g bes>8(<a c> <bes d> <a c> <g bes> a
  <g bes>4 <f a> <e g>)
  <e a>8(<g bes> <a c> <g bes> <e a> g
  <d a'>4 <d g> <d f>) % 101b
  s2.
  <bes d>8(<e, c'>~q2)
  <c' a'>4. q8 q4
  q4(<bes g'> <a f'>)
  <d, bes'>4. q8 q4 % 101c
  s2.
  <c' a'>8(<a f'>~q2)
  r4 <a' c>8( <f a> <a c> <f a>
  <a c> <f a> <a c> <f a> <a c> <f a>
  <a c> <f a> <a c> <f a> <a c> <f a>
  <a c>4 <f a>2)
  r4 r \ottava #1 <c' a'>
  <a f'>2.\fermata
  \bar "|."
}

pianoRHopt = \relative c'' {
  \global
  \voiceOne
  s2.*8
  \teeny
  <c a'>4.^\markup \roman opt. q8 q4 % 96b
  q4(<bes g'> <a f'>)
  <d, bes'>4. bes'8 bes4
  <<{\voiceOne bes4^(c d)} {\new Voice {\teeny \voiceTwo e,2.}}>> \voiceOne
  <a c>2^(<f a>4)
  <a f'>2(<a c>4) % 96c
  <g d'>2(bes4)
  <<{g'8^(d~d2)} {\new Voice {\teeny \voiceTwo bes2.}}>>
  <c a'>4. q8 q4
  q4(<bes g'> <a f'>)
  <d, bes'>4. bes'8 bes4 % 96d
  <<{bes4(c d)} {\new Voice {\teeny \voiceTwo e,2.}}>>
  <a c>2(<f a>4)
  <a f'>2(<a c>4)
  <g d'>2(bes4)
  <<{g'8(d~d2)} {\new Voice {\teeny \voiceTwo bes2.}}>>
  s2.*8
  <c a'>4.^\markup \roman opt. q8 q4 % 97b++++
  q4(<bes g> <a f'>)
  <d, bes'>4. bes'8 bes4
  <<{bes4(c d)} {\new Voice \teeny e,2.}>>
  <c' a'>8(<a f'>8~q2)
  \normalsize
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  s2.*43
  bes4(c d) % 98a+
  s2.
  s2.
  s2.
  g8(d~d2) % 98b
  s2.
  s2.
  s2.
  bes4(c d)
  s2. % 98c
  s2.
  s2.
  g8(d~d2)
  s2.
  s2. % 98d
  s2.
  s2.
  s2.
  s2.
  g4 g d % 99a
  s2.
  s2.
  s2.
  s2.
  bes4(c d) % 99b
  s2.
  s2.
  s2.
  s2. % 99c
  s2.
  s2.
  s2.
  s2. % 99d
  R2.
  s2.
  s2.
  s2. % 100a
  s2.
  s2.
  s2.
  bes4(c d) % 100b
  s2.
  s2.
  s2.
  g8(d~d2)
  s2. % 100c
  s2.
  s2.
  bes4(c d)
  s2.
  s2. % 100d
  s2.
  g8(d~ \times 2/3 {d) c( d} \times 2/3 {e f g}
  <a c>4.) s
  s2. % 101a
  s2.
  s2.
  s2.
  s2. % 101b
  g4 g d
  s2.
  s2.
  s2.
  s2. % 101c
  bes4(c) r
  s2.
  s2.
  s2. % 101d
  s2.
  s2.
  s2.
  s2.
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  s2.*8 \bar "||"
  R2.*16
  s2.*8
  R2.*5
  s2. % 97c++++
  s2. % 97d
  s2.
  s2.
  s2.
  s2. % 98a
  e2.
  s2.
  s2.
  s2.
  bes'2. % 98b
  s2.
  s2.
  s2.
  e,2.
  s2. % 98c
  s2.
  s2.
  bes'2.
  s2.
  s2. % 98d
  s2.
  s2.
  s2.
  s2.
  ees8(d c4 bes) % 99a
  s2.
  s2.
  s2.
  s2.
  ees,2. % 99b
  s2.
  s2.
  s2.
  s2. % 99c
  s2.
  s2.
  s2.
  s2. % 99d
  s2.
  s2.
  s2.
  s2. % 100a
  s2.
  s2.
  s2.
  e2. % 100b
  s2.
  s2.
  s2.
  bes'2.
  s2. % 100c
  s2.
  s2.
  e,2.
  s2.
  s2. % 100d
  s2.
  bes'4 s2
  s2.
  s2. % 101a
  s2.
  s2.
  s2.
  s2. % 101b
  ees8(d c4 bes)
  s2.
  s2.
  s2.
  s2. % 101c
  e,2.
  s2.
  s2.
  s2. % 101d
  s2.
  s2.
  s2.
  s2.
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mp
  s2.
  s2.
  s2.
  s2. \<
  s2.
  s4 s \! s\>
  s2.
  s2.\p % 96b
  s2.*15
  s2.\mp % 97a+
  s2.*6
  s2.\> % 97b+++
  s2.\p
  s2.*5
  s2.\< % 97d
  s4.\! s\>
  s2.\mp
  s2.*15
  s2.\mf % 98c++++
  s2.*6
  s2_\markup{poco rall.} \> s4 % 99a+
  s2.\mp_\markup {a tempo}
  s2.*4
  s2.\pp % 99b++
  s4 s2\<
  s4\! s2\> % 99c
  s2.\p
  s2.
  s4 s2\<
  s4\! s2\> % 99d
  s2.\mp
  s2.
  s4 s2\<
  s2.\> _\markup{poco rit.} % 100a
  s2.\pp_\markup{a tempo}
  s2.*11
  s2.\ppp %100c++++
  s2.% 100d
  s2.
  s2 s4\<
  s2.\f
  s2.*6
  s8_\markup{poco rall} s\> s2 % 101b++
  s2.\p_\markup{a tempo}
  s2.
  s2 s4_\markup{rit.}
  s2.
  s2._\markup{a tempo}
  s2 s4\<
  s2._\markup{pochissimo accel} % 101d
  s4.\> s_\markup{rall. al fine}
  s2.\p
  s2.
  s2.
}

pianoLH = \relative c {
  \global
  \oneVoice
  s4 d_(c)
  s4 f_(g)
  s4 g_(f)
  s4 g_(e)
  s4 d_(c)
  s4 f_(g)
  s4 g_(f)
  s4 g_(e)
  s2. % 96b
  s4 f_(g)
  s4 g_(f)
  s2.
  s2.
  s4 f_(g) % 96c
  s4 g_(f)
  s2.
  s2.
  s4 f_(g)
  s4 g_(f) % 96d
  s2.
  s2.
  s4 f_(g)
  s4 g_(f)
  s2. % 97a
  <a, e' c'>2.\arpeggio
  <bes, a' f'>2.\arpeggio
  <g' f'>2.
  c,2.
  <f c' a'>2. % 97b
  s2.
  <ees ees'>2.
  c2 c'4
  s2.
  s4 f_(g) % 97c
  s4 g_(f)
  s2.
  s4 d_(c)
  s4 f_(g)
  s4 g_(f) % 97d
  s4 g_(e)
  s2.
  s4 f_(g)
  s4 g_(f) % 98a
  s2.
  s2.
  s4 f_(g)
  s4 g_(f)
  s2. % 98b
  s2.
  s4 f_(g)
  s4 g_(f)
  s2.
  s2. % 98c
  s4 f_(g)
  s4 g_(f)
  s2.
  <a, e' c'>2.\arpeggio
  <d, a' f'>2.\arpeggio % 98d
  <g f'>2.
  s2.
  <f c' a'>2.\arpeggio
  <bes a'>2.
  <ees, ees'>2. % 99a
  s2.
  s2.
  s4 f'_(g)
  s4 g_(f)
  s2. % 99b
  s4 d_(c)
  s4 f_(g)
  s4 g_(f)
  s4 g_(f) % 99c
  s4 bes,_(aes)
  s4 des_(ees)
  s4 ees_(des)
  s2 aes4 % 99d
  s2.
  s4 a'_(b)
  s4 b_(a)
  s4 fis_(gis) % 100a
  s2.
  s4 f_(g)
  s4 g_(f)
  s2. % 100b
  s2.
  s4 f_(g)
  s4 g_(f)
  s2.
  s2. % 100c
  s4 f g
  s4 g_(f)
  s2.
  s2.
  s4 f_(g) % 100d
  s4 g_(f)
  s2.
  s2.
  s2. % 101a
  s2.
  s2.
  s2.
  s2. % 101b
  s2.
  s2.
  s2.
  s4 f_(g)
  s4 g_(f) % 101c
  s2 r4
  s4 d_(c)
  s4 f_(g)
  s4 g_(f) % 101d
  s4 g_(e)
  <f, c' a'>2.\arpeggio
  <c c'>2.
  <f, f'>2.\fermata
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  r4 a2
  r4 c2
  r4 d2
  r4 bes2
  r4 a2
  r4 c2
  r4 d2
  r4 bes2
  r4 <c, a'> q % 96b
  r4 c'2
  r4 d2
  r4 bes(e,)
  r4 <c a'> q
  r4 c'2 % 96c
  r4 d2
  r4 bes(e,)
  r4 <c a'> q
  r4 c'2
  r4 d2 % 96d
  r4 bes(e,)
  r4 <c a'> q
  r c'2
  r4 d2
  r4 bes(e,) % 97a
  s2.
  s2.
  s2.
  s2.
  s2. % 97b
  a4(g f)
  s2.
  s2.
  r4 <c a'> q
  r4 c'2 % 97c
  r4 d2
  r4 bes e,
  r4 a2
  r4 c2
  r4 d2 % 97d
  r4 bes2
  r4 <c, a'> q
  r4 c'2
  r4 bes2 % 98a
  r4 bes e,
  r4 <c a'> q
  r4 c'2
  r4 d2
  r4 bes(e,) % 98b
  r4 <c a'> q
  r4 c'2
  r4 bes2
  r4 bes(e,)
  r4 <c  a'> q % 98c
  r4 c'2
  r4 d2
  r4 bes(a,)
  r4 \clef treble <e'' g c> q \clef bass
  r4 <a, c f> q % 98d
  r4 \clef treble <bes d f a>(<bes d f g>) \clef bass
  r4 <a bes d>(<g bes e>)
  r4 \clef treble <e' f a>(<d f a>) \clef bass
  r4 \clef treble <bes d g>(<bes d f>) \clef bass
  r4 \clef treble <bes ees g> <bes d ees g> \clef bass % 99a
  r4 bes(e,)
  r4 <c a'> q
  r4 c'2
  r4 bes2
  r4 bes e, % 99b
  r4 a2
  r4 c2
  r4 d2
  r4 <g, bes>2 % 99c
  r4 s2
  r4 aes2
  r4 bes2
  r4 <ges aes c>2 % 99d
  r4 fis(e)
  r4 e'2
  r4 fis2
  r4 d2 % 100a
  r4 <c, a'> q
  r4 c'2
  r4 bes2
  r4 bes(e,) % 100b
  r4 <c a'> q
  r4 c'2
  r4 d2
  r4 bes(e,)
  r4 <c a'> q % 100c
  r4 c'2
  r4 bes2
  r4 bes(e,)
  r4 <c a'> q
  r4 c2 % 100d
  r4 d2
  r4 bes(e,)
  r4 \clef treble <e'' g c> q \clef bass
  r4 <a, c f> q % 101a
  r4 \clef treble <bes d f a>(<bes d f g>) \clef bass
  r4 <a bes d>(<g bes e>)
  r4 \clef treble <e' f a>(<d f a>) \clef bass
  r4 \clef treble <bes d g>(<bes d f>) \clef bass % 101b
  r4 \clef treble <bes ees g> <bes d ees g> \clef bass
  r4 bes(e,)
  r4 <c a'> q
  r4 c'2
  r4 bes2 % 101c
  r4 bes s
  r4 a2
  r4 c2
  r4 d2 % 101d
  r4 bes2
  s2.
  s2.
  s2.
%  \bar "|."
}

pianoLHtwo = \relative c, {
  \global
  \voiceTwo
  f2._\markup \roman {Keep pedal very light.}
  a2.
  bes2.
  c2.
  f,2.
  a2.
  bes2.
  c2.
  f,2. % 96b
  a2.
  bes2.
  c
  f,
  a % 96c
  bes
  c
  f,
  a
  bes % 96d
  c
  f,
  a
  bes
  c % 97a
  s
  s
  s
  s
  s% 97b
  bes
  s
  s
  f
  a % 97c
  bes
  c
  f,
  a
  bes % 97d
  c
  f,
  a
  bes % 98a
  c
  f,
  a
  bes
  c % 98b
  f,
  a
  bes
  c
  f, % 98c
  a
  bes
  c
  s
  s % 98d
  s
  c,
  s
  s
  s % 99a
  c
  f
  a
  bes
  c % 99b
  f,
  <a, a'>
  <bes bes'>
  <c c'> % 99c
  <des aes' des>
  <f, f'>
  <ges ges'>
  <aes aes'> % 99d
  <a e' a>
  <cis cis'>
  <d d'>
  <e e'> % 100a
  f
  a
  bes
  c % 100b
  f,
  a
  bes c
  f, % 100c
  a
  bes
  c
  f,
  a % 100d
  bes c
  <a e' c'>\arpeggio
  <d, a' f'>\arpeggio % 101a
  <g g'>
  c,
  <f c' a'>\arpeggio
  <bes a'> % 101b
  <ees, ees'>
  c
  f
  a
  bes % 101c
  c2 s4
  f,2.
  <a, a'>
  <bes bes'> % 101d
  <c c'>
  s
  s
  s
%  \bar "|."
}

\score {
  \context GrandStaff <<
    <<
      \new ChoirStaff <<
                                % Single bass staff
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice \RehearsalTrack
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianoRH <<
          \new Voice \pianoRH
          \new Voice \pianoRHopt
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianoLH <<
          \clef "bass"
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
        >>
      >>
    >>
  >>
  \layout {
    indent = 1.5\cm
    \context {
      \Staff \RemoveAllEmptyStaves
    }
  }
  \midi {}
}
