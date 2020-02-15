\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "02 — The Agony"
  subtitle    = "The Crucifixion"
  subsubtitle = "Bass solo and Chorus"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sir John Stainer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Rev. James Sparrow-Simpson, M.A."
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
  \key cis \minor
  \time 3/4
  \tempo 4=84
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "2a" } s2.*5
  \mark \markup { \circle "2b" } s2.*5
  \mark \markup { \circle "2c" } s2.*6
  \mark \markup { \circle "2d" } s2.*5
  \mark \markup { \circle "3a" } s2.*6
  \mark \markup { \circle "3b" } s2.*6
  \mark \markup { \circle "3c" } s2.*6
  \mark \markup { \circle "4a" } s2.*5
  \mark \markup { \circle "4b" } s2.*5
  \mark \markup { \circle "4c" } s2.*5
  \mark \markup { \circle "4d" } s2.*6
  \mark \markup { \circle "5a" } s2.*6
  \mark \markup { \circle "5b" } s2.*5
  \mark \markup { \circle "5c" } s2.*5
  \mark \markup { \circle "5d" } s2.*6 \time 4/4
  \mark \markup { \circle "6a" } s1*2
  \mark \markup { \circle "6b" } s1*2
  \mark \markup { \circle "6c" } s1*3
  \mark \markup { \circle "6d" } s1*3
  \mark \markup { \circle "6e" } s1*3
  \mark \markup { \circle "7a" } s1*4
  \mark \markup { \circle "7b" } s1*4
  \mark \markup { \circle "7c" } s1*4
  \mark \markup { \circle "7d" } s1*4
  \mark \markup { \circle "7e" } s1*3
  \mark \markup { \circle "8a" } s1*3
  \mark \markup { \circle "8b" } s1*3
  \mark \markup { \circle "8c" } s1*3
  \mark \markup { \circle "8d" } s1*4
}

soloBass = \relative c' {
  gis4 fis a
  gis4 fis e
  e2 fis4
  gis2 r4
  gis4 fis b
  a4 gis fis % 2b
  cis'2 b4
  a2 r4
  a4 r a
  b4 a8(gis) fis e
  cis'4(e,) fis % 2c
  gis2 r4
  gis4 fis4. fis8
  fis4(e) cis8 dis
  e2 dis4
  cis2. \bar "||" \break
  s2.*17
  gis'4 fis a % 3c
  gis4 fis e
  e2 fis4
  gis2 r4
  gis4 fis b
  a4. gis8 fis4
  cis'2 b4 % 4a
  a2 r4
  a4 a a
  b4. b8 gis e
  c'4(e,) fis
  gis2 r4 % 4b
  gis4 gis fis
  e2 cis4
  cis4 e fis
  gis2 r4 \bar "||" \break
  s2.*17
  gis4 fis a % 5c
  gis4-> fis-> e->\fermata
  r4 e cis
  dis2 r4
  b'4 cis4. b8
  b8 r ais4. fis8 % 5d
  fis4(gis) a
  gis2 r4
  gis4 a gis cis4 e dis
  cis4(b) a % 5e
  gis2 r4
  gis4 cis, e
  e4(dis) cis
  cis4. bis8 cis4
  gis2. \bar "||" \key f \minor \clef "treble_8" \time 4/4
  r1 % 6a
  r2 r4 c'8^\markup \bold TENOR. c
  c4. aes8 f aes c f % 6b
  e4 c r c
  g'4 bes,8. bes16 des4 g,8. g16 % 6c
  c2 aes4 r
  r4 f8. f16 c'4 aes
  f8 g aes8. aes16 aes4 g8 f % 6d
  c'4 \clef bass g^\markup{\bold \upright BASS \italic { (a voice in the choir ) }} c4. c8
  c4. g8 e4 d8 c
  g'8 g4. \clef "treble_8" e4^\markup \bold TENOR e
  \key fis \minor e2 r4 \clef bass e4^\markup \bold BASS
  a4 r r8 a a a
  a4 e fis d % 7a
  a'2 a8 a b cis
  d2 d4 e
  cis2 r4 a
  g4 e a8(b) cis(d) % 7b
  e2\fermata e,\fermata
  a,2 r
  \clef "treble_8" \key a \minor r4 e''8.^\markup \bold TENOR e16 f4 e
  d4-> ( cis-> d-> c % 7c
  b4-> a bes-> a
  gis4) a b c
  e,4 r \clef bass e^\markup{\bold BASS \italic{ (one of the choir)}} e
  c'2 a8 b c a % 7d
  b8. g16 e4 a d,
  e4 f g8. g16 g4\fermata
  \clef "treble_8" r4 g8^\markup \bold TENOR g g4. g8
  bes4 bes r a8 a % 7e
  a4 gis8 fis g2\fermata
  r4 e8 e f2
  f4 e r e % 8a
  cis'8 cis c8. c16 b4 e8 e
  e8 e d d cis cis r fis
  fis4 a,4 a8. a16 b8 c % 8b
  b4. fis8 a g4 g8
  c4 c8 c b b b b
  a8 r a a d4. c8 % 8c
  c4 bes a c8 f
  ges4.\fermata f8 f4\fermata f,8 c'
  c4. b8 b4\fermata r % 8d
  r4 e,8. e16 a4 e
  gis2 fis4. fis8
  e2 r
  \bar "|."
}

dynamicsSoloBass = {
  \override DynamicTextSpanner.style = #'none
  s2.\p^\markup \bold \upright Andante.
  s2.
  s2.
  s2.
  s2.\cresc
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.\dim
  s2 s4\p
  s2.
  s2.
  s2.*17
  s2.\p % 3c
  s2.
  s2.
  s2.
  s2.\cresc
  s2.
  s2. % 4a
  s2.
  s2.\mf
  s2.
  s2.
  s2. % 4b
  s2.\p
  s2.
  s2.
  s2.
  s2.*17
  s2.-\markup{\bold SOLO \italic{(ad lib.)}} % 5b
  s2.
  s2.-\markup \italic \bold {a tempo}
  s2.
  s2.\mf
  s2 s4\p % 5c
  s2.
  s2.
  s2.
  s2.-\markup \italic \bold rit.
  s2. % 5d
  s2.
  s2. \dim
  s2 s4\p
  s2.
  s2. \time 4/4
  s1-\markup \upright \bold Allegro. % 6a
  s2. s4\f
}

wordsSoloBass = \lyricmode {
  Could ye not watch with Me one brief hour?
  Could ye not pi- ty My sor- est need?
  Ah! if ye sleep while the tem- pests lower,
  sure- ly My friends, I am lone in- deed.

  Could ye not watch with Me one brief hour?
  Did ye not say up- on Ke- dron's slope,
  Ye would not fall in- to the Tempt- er's power?
  Did ye not mur- mur great words of hope?

  Could ye not watch with Me?
  e- ven so:
  Will- ing in heart, but the flesh is vain.
  Back to mine a- gon- y I must go,
  Lone- ly to pray in bit- ter- est pain.

  And they laid their hands on Him, and took Him,
  and led him a- way to the high priest.
  And the hig priest ask- ed Him and said un- to Him,
  Art Thou the Christ, the Son of the Bles- sed?
  Je- sus said, I am:
  And ye shall see the Son of man sit- ting on the right hand of power,
  and com- ing in the clouds of heaven.

  Then the high priest rent __ his clothes, and saith:
  What need we an- y fur- ther wit- ness- es?
  Ye have heard the blas- pe- my.

  And they all con- demned Him to be guilt- y of death.
  And they bound Je- sus and car- ried Him a- way and de- liv- ered Him to Pi- late.
  And Pi- late, wil- ling to con- tent the peo- ple,
  re- leas- ed Bar- ab- bas un- to them, and de- liv- ered Je- sus,
  when he had Scourg- ed Him, to be cru- ci- fied.
  And the sol- diers led Him a- way.
}

soprano = \relative c' {
  s2.*16
  e4 e r8 e % 2d
  fis 4 e r
  gis4. gis8 gis-> fis
  e4 dis gis
  gis4 gis gis8. gis16
  gis2 gis4 % 3a
  a4(b) a
  gis4 r gis
  gis4 gis r
  bis4 bis bis8 bis
  bis4 ais4. ais8
  bis4 gis2 % 3b
  bis4 cis dis
  e4 r dis
  cis4 r bis
  a4(e) fis
  gis2 r4 \bar "||" \break
  s2.*16
  e4 e r8 e % 4c
  fis 4 e r
  gis4. gis8 gis-> fis
  e4 dis gis
  gis4 gis gis8. gis16
  gis2 gis4 % 4d
  a4(b) a
  gis4 r gis
  gis4 gis r
  bis4 bis bis8 bis
  bis4 ais4. ais8
  bis4 gis2 % 5a
  bis4 cis dis
  e4 r dis
  cis4 r bis
  a4(e) fis
  gis2 r4 \bar "||" \break
  s2.*16
  \time 4/4 \key c \minor
  s1*45
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2.*16
  s2.\pp % 2d
  s2.
  s2.
  s2.
  s2 s4\cresc
  s2. % 3a
  s4\< s\! s\>
  s2\! s4\mf
  s2.
  s2.\cresc
  s2.
  s2. % 3b
  s2.\f
  s2 s4\dim
  s2 s4\p
  s2 s4\pp
  s2.
  s2.*16
  s2\pp s8 s\< % 4c
  s4\>s2\!
  s2.
  s2.
  s2 s4\cresc
  s2 s4\<
  s4 \! s s\>
  s2\! s4\mf
  s2.
  s2.\cresc
  s2.
  s2. % 5a
  s2.\f
  s2 s4\dim
  s2 s4\p
  s2 s4\pp
  s2.
}

wordsSop = \lyricmode {
  Je- su, Lord, Je- su,
  bowed in bit- ter an- guish,
  and bear- ing all the e- vil we have done,
  Oh, teach us,
  teach us how to love Thee for Thy love;
  Help us to pray, and watch, and mourn with Thee.

  Je- su, Lord, Je- su,
  bowed in bit- ter an- guish,
  and bear- ing all the e- vil we have done,
  Oh, teach us,
  teach us how to love Thee for Thy love;
  Help us to pray, and watch, and mourn with Thee.
}

alto = \relative c' {
  s2.*16
  cis4 cis r8 cis
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.*16
  s2.\pp % 2d
}

wordsAlto = \lyricmode {
  Je- su, Lord, Je- su,
  bowed in bit- ter an- guish,
  and bear- ing all the e- vil we have done,
  Oh, teach us,
  teach us how to love Thee for Thy love;
  Help us to pray, and watch, and mourn with Thee.
}

tenor = \relative c' {
  s2.*16
  gis4 gis r8 gis
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2.*16
  s2.\pp % 2d
}

wordsTenor = \lyricmode {
  Je- su, Lord, Je- su,
  bowed in bit- ter an- guish,
  and bear- ing all the e- vil we have done,
  Oh, teach us,
  teach us how to love Thee for Thy love;
  Help us to pray, and watch, and mourn with Thee.
}

bass= \relative c {
  s2.*16
  cis4 cis r8 cis
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.*16
  s2.\pp % 2d
}

wordsBass = \lyricmode {
  Je- su, Lord, Je- su,
  bowed in bit- ter an- guish,
  and bear- ing all the e- vil we have done,
  Oh, teach us,
  teach us how to love Thee for Thy love;
  Help us to pray, and watch, and mourn with Thee.
}

pianoRH = \relative c' {
  s2.
  s2.
  <cis e>2(<dis fis>4
  <e gis>2) r4
  s2.
  s2. % 2b
  s2.
  s2.
  s2.
  s2.
  s2. % 2c
  s2.
  s2.
  <bis fis'>4(<cis e>) r
  <cis e>2(<bis dis>4
  cis2) r4
  <cis e>2 r8 q % 2d
  <dis fis>4 <cis e> r
  <cis gis'>4. <e gis>8 q <dis fis>
  <cis e>4 <bis dis> gis'
  s2.
  <e gis>2. % 3a
  <fis a>4(<gis b> <fis a>
  <dis gis>4) e gis
  <dis gis>2 r4
  <gis bis>2 <dis bis'>4
  s2.
  s2. % 3b
  s2.
  s4 r <fis dis'>(
  <e cis'>4) r s
  s2.
  s2 r4
  s2. % 3c
  s2.
  <cis e>2(<dis fis>4
  <e gis>2) r4
  s2.
  s2.
  s2. % 4a
  s2.
  s2.
  s2.
  s2.
  s2. % 4b
  s2.
  <cis e>4 r r
  s2.
  s2 r4
  <cis e>2 r8 q % 4c
  <dis fis>4 <cis e> r
  <cis gis'>4. <e gis>8 q <dis fis>
  <cis e>4 <bis dis> gis'
  s2.
  <e gis>2. % 4d
  <fis a>4(<gis b> <fis a>
  <dis gis>4) r gis
  <dis gis>2 r4
  <gis bis>2 <dis bis'>4
  s2.
  s2. % 5a
  s2.
  s4 r <fis dis'>(
  <e cis'>4) r s
  s2.
  s2.
  r2. % 5b
  r2.\fermata
  ais,2.
  bis4 dis <dis gis>
  s2.
  s2. % 5c
  s2.
  s2.
  s4 <bis dis a'> <cis gis'>
  s2.
  <cis e cis'>4 <dis b'> <cis e a> % 5d
  s2.
  gis'4(fis e)
  e4(dis cis)
  cis4.(bis8 cis4
  gis2.) \bar "||" \break \key f \minor \time 4/4
  c32 aes c aes c aes c aes c32 aes c aes c aes c aes c32 aes c aes c aes c aes c32 aes c aes c aes c aes % 6a
  ges32 c ges32 c ges32 c ges32 c ges32 c ges32 c ges32 c ges32 c ges32 c ges32 c ges32 c ges32 c ges32 c ges32 c ges32 c ges32 c
  aes32 c aes32 c aes32 c aes32 c aes32 c aes32 c aes32 c aes32 c aes32 c aes32 c aes32 c aes32 c aes32 c aes32 c aes32 c aes32 c % 6b
  g32 c g32 c g32 c g32 c g32 c g32 c g32 c g32 c g32 c g32 c g32 c g32 c g32 c g32 c g32 c g32 c
  <bes c g'>4 r r2 % 6c
  r2 r4 <c f aes>8-> <c e bes'>->
  <c f c'>4-> r r2
  r2 <f aes b>4 r % 6d
  <g c>4 r r2
  r1
  r2 e4 e \bar "||" \key fis \minor % 6e
  cis2 <d e gis>
  <a' cis>4(<gis b> <fis d'> <e cis'>)
  s1 % 7a
  <cis e a cis>4(<gis' b> <fis d'> <e cis'>)
  s1
  <cis e a cis>4(<gis' b> <fis d'> <e cis'>)
  <e b'>4 <gis b e> <a cis e> <a e' a> % 7b
  s1
  <a cis e a>2 r \bar "||" \key a \minor
  r4 <e e'>4 \( <f f'> <e e'>
                <d d'>4 <cis cis'> <d d'> <c c'> % 7c
                <b b'>4 <a a'> <bes bes'> <a a'>
                <gis gis'>4 <a a'> <b b'> <c c'>
                <d e>4 \) r4 r2
  <c e c'>4 r <c dis a'> r % 7d
  <e b'>2 s
  s2 <e g a>\fermata
  s1
  s2. <c fis a>4 % 7e
  s1
  s1
  s4 e r e % 8a
  <e cis'>4 <a c>(<a b>) <g e'>
  <fis e'>4 <b d>(<b cis>) <a fis'>
  <a c fis>4 r r2 % 8b
  <b, fis' b>2 <b e g>
  s1
  <d fis a>4 <d f a> <d f gis> <cis e a> % 8c
  <f a c>4 <c g' bes> <f a> s4
  <bes des ges>4.\fermata <f c' f>8 q4\fermata r
  <e g c>4. <dis fis b>8~q4\fermata <d f b> % 8d
  <d e b'>2 <c e a>
  <e gis>2 <dis fis>
  e2 r
}

pianoRHone = \relative c'' {
  \voiceOne
  gis4(fis a
  gis4 fis e)
  s2.
  s2.
  gis4(fis <fis b>
  a4 gis fis % 2b
  cis'2 b4
  a2) r4
  a4 r a
  b4 a8 gis fis e
  cis'4 e, fis % 2c
  gis2.
  <b, d gis>4 ~ d4 cis
  s2.
  s2.
  s2. \bar "||" \break
  s2. % 2d
  s2.
  s2.
  s2.
  gis'2.
  s2. % 3a
  s2.
  s2.
  s2.
  s2.
  bis4(ais4. ais8
  <dis, bis'>4 <bis gis'>2) % 3b
  bis'4(cis <fis, dis'>
  <e e'>4) s2
  s2 <d e b'>4(
  a'4 e <c e fis>
  <b e gis>2) s4
  gis'4(fis <e a> % 3c
  gis4 fis <cis e>)
  s2.
  s2.
  gis'4(fis <fis b>
  a4. gis8 fis4
  cis'2 b4 % 4a
  a2) s4
  a2 a4
  b4. b8 gis e
  cis'4 e, fis
  gis2. % 4b
  gis4 gis fis
  s2.
  cis4(e fis
  <bis, gis'>2) s4
  s2. % 4c
  s2.
  s2.
  s2.
  gis'2.
  s2. % 4d
  s2.
  s2.
  s2.
  s2.
  bis4(aes4. aes8
  <dis, bis'>4 <bis gis'>2) % 5a
  bis'4(cis dis
  <gis, e'>4) s2
  s2 <d e b'>4(
  a'4 e <c e fis>
  <b e gis>2) s4
  s2. % 5b
  s2.
  ais2.
  s2.
  b'4 cis4. b8
  b4 ais4. fis8 % 5c
  fis4 gis a
  gis2 r4
  gis4 <bis, dis a'> <cis gis'>
  cis' e dis
  s2. % 5d
  gis,2.
  s2.
  s2.
  s2.
  s2. \key f \minor \time 4/4
  s1 % 6a
  s1
  s1 % 6b
  s1
  s1 % 6c
  s1
  s1
  s1 % 6d
  s1
  s1
  s1 % 6e \bar "||" \key fis \minor
  s1
  s1
  <dis b'>4(<cis a'> <fis a> <gis b>) % 7a
  s1
  <dis b'>4(<cis a'> <fis a> <gis b>)
  s1
  s1 % 7b
  a'4\fermata gis8 fis gis2\fermata
  s1 \bar "||" \key a \minor
  s1
  s1 % 7c
  s1
  s1
  s1
  s1 % 7d
  s2 a,
  a2 s
  <f a>2 q
  bes2~bes4 s4 % 7e
  <b, e a>4(gis'8 fis <b, e gis>2\fermata)
  e2 f~
  f4 s2. % 8a
  s1
  s1
  s1 % 8b
  s1
  c'2 <d, b'>
  s1 % 8c
  s2. c'8 f
  s1
  s1 % 8d
  s1
  s1
  s1
}

pianoRHtwo = \relative c' {
  \voiceTwo
  b2 e4
  dis2 cis4
  s2.
  s2.
  b2.
  eis2 fis4 % 2b
  fis4 dis eis
  fis4 a, b
  cis4 d dis
  e4 dis d
  cis2 cis4 % 2c
  <cis e>4 <bis dis>2
  s4 <a fis'>2
  s2.
  s2.
  s2.
  s2. % 2d
  s2.
  s2.
  s2.
  bis4 cis dis
  s2. % 3a
  s2.
  s2.
  s2.
  s2.
  dis2.
  s2. % 3b
  gis2.~
  gis4 s2
  s2.
  <cis, e>2 s4
  s2.
  b2 s4 % 3c
  dis2 s4
  s2.
  s2.
  b2.
  eis2 s4
  fis4 dis eis % 4a
  fis4 a, b
  cis4 d dis
  e4 dis d
  cis2 cis4
  <cis e>4 <bis dis>2 % 4b
  d2~d4
  s2.
  cis2.
  s2.
  s2. % 4c
  s2.
  s2.
  s2.
  bis4 cis dis
  s2. % 4d
  s2.
  s2.
  s2.
  s2.
  dis2.
  s2. % 5a
  gis2 fis4
  e4 s2
  s2.
  <cis e>2 s4
  s2. % 5b
  s2.
  s2.
  s2.
  s2.
  e4 eis2
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\p
  s2.
  s2.
  s2.
  s2.\cresc
  s2. % 2b
  s2.
  s4 s2-\markup legato
  s2.
  s2.
  s2. % 2c
  s2.
  s2.\dim
  s2.
  s2.
  s2.
  s2\pp s8 s\< % 2d
  s4 \> s2\!
}

pianoLH = \relative c {
  \oneVoice
  e4(dis cis
  bis2 cis4)
  s2.
  s2 r4
  s2.
  s2. % 2b
  s2.
  s2.
  s2.
  s2.
  a'2 a4 % 2c
  gis2 fis4
  eis4 fis fis,
  s2 r4
  s2.
  s2 r4 \bar "||" \break
}

pianoLHone = \relative c' {
  \voiceOne
  s2.
  s2.
  a2.
  gis2 s4
  s2.
  b2 a4 % 2b
  gis2 <gis cis>4
  <fis cis'>4 fis gis
  a2 a4
  gis4 a b
  s2. % 2c
  s2.
  s2.
  gis4 fisis s
  gis2(fis4
  e2) s4
}

pianoLHtwo = \relative c {
  \voiceTwo
  s2.
  s2.
  b2.(
  e2) s4
  e4(dis d
  cis2.)~ % 2b
  cis2.
  fis,2.
  fis'2 f4
  e4 fis gis
  s2. % 2c
  s2.
  s2.
  gis,4(a) s
  gis2 gis4
  cis2 s4
}

\score {
  \context GrandStaff <<
    <<
      \new ChoirStaff <<
                                % Bass Solo staff
        \new Dynamics \dynamicsSoloBass
        \new Staff \with { instrumentName = #"Bass Solo" shortInstrumentName = #"Solo" } <<
          \new Voice \RehearsalTrack
          \clef bass
          \new Voice = "solo" { \global \soloBass }
          \new Lyrics \lyricsto "solo" \wordsSoloBass
        >>
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" { \global \soprano }
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" { \global \alto }
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" { \global \tenor }
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" { \global \bass }
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \new Voice { \global \pianoRH    }
          \new Voice { \global \pianoRHone }
          \new Voice { \global \pianoRHtwo }
        >>
        \new Dynamics \dynamicsPiano
        \new Staff <<
          \clef "bass"
          \new Voice { \global \pianoLH    }
          \new Voice { \global \pianoLHone }
          \new Voice { \global \pianoLHtwo }
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
