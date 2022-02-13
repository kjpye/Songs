\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "18. The Appeal of the Crucified"
  subtitle    = "The Crucifixion"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sir John Stainer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Rev James Sparrow-Simpson M.A."
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key c \minor
  \time 2/2
  \tempo 2=70
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
  \mark \markup { \circle "46a" } s1*6
  \mark \markup { \circle "46b" } s1*7
  \mark \markup { \circle "46c" } s1*7
  \mark \markup { \circle "47a" } s1*6
  \mark \markup { \circle "47b" } s1*6
  \mark \markup { \circle "47c" } s1*7
  \mark \markup { \circle "48a" } s1*6
  \mark \markup { \circle "48b" } s1*5
  \mark \markup { \circle "48c" } s1*3
  \mark \markup { \circle "49a" } s1*5
  \mark \markup { \circle "49b" } s1*7
  \mark \markup { \circle "49c" } s1*6
  \mark \markup { \circle "50a" } s1*7
  \mark \markup { \circle "50b" } s1*7
  \mark \markup { \circle "50c" } s1*6
  \mark \markup { \circle "51a" } s1*7
  \mark \markup { \circle "51b" } s1*6
  \mark \markup { \circle "51c" } s1*6
  \mark \markup { \circle "52a" } s1*8
  \mark \markup { \circle "52b" } s1*6
  \mark \markup { \circle "52c" } s1*6
  \mark \markup { \circle "53a" } s1*7
  \mark \markup { \circle "53b" } s1*7
  \mark \markup { \circle "53c" } s1*6
  \mark \markup { \circle "54a" } s1*7
  \mark \markup { \circle "54b" } s1*7
  \mark \markup { \circle "54c" } s1*6
  \mark \markup { \circle "55a" } s1*8
  \mark \markup { \circle "55b" } s1*8
  \mark \markup { \circle "55c" } s1*7
}

soprano = \relative c'' {
  \global
  r1
  r1
  r1
  r2 g4 g
  c2 c4 d
  ees4 r r c
  g2 aes
  g2 d'
  ees2 b4 b
  c2 g
  aes2 ees
  g2 r
  b2 b4 d
  d4 g,2 g4
  ees'2 ees
  d1
  r1
  r2 g,4 g
  aes4 aes2 ees4
  g2 g
  g4 fis c'2 % 47a
  b2^\fermata r
  g2 g4 g8 g
  g4 f f g
  bes2. aes4
  g2 g4 a
  bes2 bes4 c
  d2.-> a4
  a2. a4
  bes2 bes4 c
  d2 g, g2 c
  bes2 r
  r1
  r2 bes4 bes
  ces4 ces2 ges4
  bes2 bes
  bes4
  a
  ees'2
  d2^\fermata r
  r2 d % 48a
  d2 ees4 f
  f4 bes,2 c4
  bes2 aes
  g2. g4
  g2 bes4 aes
  g2 ees4 f
  d1
  ees2 r4 ees
  ees4 r r ees
  ges4 r r2
  r4 ees c' bes8 c
  a4 f r2
  r2 c'8.-> a16 a4
  r2 ees'8. c16 c4 % 49a
  ges'2.-> ees4
  ees4-! r4 r2-\fermata
  r1
  r1
  r2 bes4 bes
  ces4 ces2 ges4
  bes2-\fermata r
  r1
  r2 r4 d,
  d4 f2 ees4
  d2 r
  g4 g bes aes
  g2. b4
  c4(des2) c4
  bes4 aes2 c4
  d4 ees2 d4
  d2. d4
  f2. c4 % 50a
  c4 b2 b4
  d2 aes
  g1
  r1
  r2 g4 g
  aes4 aes2 ees4
  g2 g
  g4 fis c'2
  b2-\fermata r
  r1
  r1
  r1
  r2 g
  c2. d4
  ees4 ees r c
  g2 aes
  g2 d'
  ees4. ees8 b2
  c2 g4 g
  aes4 aes ees2 % 51a
  g2 r
  b2 b4 d
  d2 g,4. g8
  ees'2 ees
  d1
  r1
  r2 g,4 g
  aes4 aes ees2
  g2 r
  r2 g4 g
  aes4 aes2 ees4
  g2 c,4 c
  ees2 d
  c2 g'
  aes4 aes2 ees4
  g2 g4 g
  b2. a4
  g2 g
  b4. b8 b2 % 52 a
  d2 g,
  ees'2 ees
  d1
  r1
  r2 g,4 g
  aes4 aes2 ees4
  g1-\fermata \key e \minor
  r1
  r2 b
  b2-> e,4 fis
  g2 c
  c2-> fis,4 g
  a2 d
  d2 e4 d
  d2 c4 b
  b2 a4 e
  a2 b4. a8
  a2 d,
  g2 a4 g
  fis2 e % 53a
  d2 d
  a'2 a4 g
  g2 fis4 fis
  c'2. b4
  a1
  r2 d4 d
  ees4 ees2 bes4
  d2-\fermata r
  r2 b
  b2-> e,4 fis
  g2 c
  c2-> fis,4 g
  a2 d
  d2-> e4 d
  d2(c4) b
  b2 e,
  a2. a4
  a2 d,4 d
  a'2 g
  fis2 e
  d2 d
  a'2. g4
  g2 fis
  c'2. b4
  a2 r
  r2 d
  ees4 ees2 bes4
  d2-\fermata r
  r2 b
  b2-> e,4 fis
  g2 c
  c2-> fis,4 g
  a2 d
  d2-> e4 d
  d2(c4) b
  b2 a4 e
  a2 c
  b2 a4 g
  e'2 d
  d2( g~ % 55a
  g2) b,
  b2->( a~
  a2) d
  e1
  d2 b
  a2 r
  c1->
  e,1
  d2 a'
  g1
  b2-> a4 e
  a1
  a2-> g4 d
  g1
  d1
  d1
  d1
  r1
  r1
  r1
  r1
  r1
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1
  s1
  s1
  s2 s\ff
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1\ff
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s2 s\cresc
  s1 % 47a
  s1
  s1\p
  s1
  s1
  s2 s\cresc
  s1
  s1
  s1
  s2 s2\dim
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s2 s\cresc
  s1
  s1
  s2 s2\mf % 48a
  s1
  s1
  s1\dim
  s2. s4\p
  s1
  s1
  s1
  s2. s4\cresc
  s1
  s1
  s4 s2.\f
  s1
  s2 s\ff
  s1
  s1\fff % 49a
  s1
  s1
  s1
  s2 s\pp
  s1
  s1
  s1^\markup \italic{a tempo}
  s2. s4\pp
  s1
  s1
  s1\cresc
  s2. s4\cresc
  s1
  s2. s4\f
  s1
  s2. s4\ff
  s1 % 50a
  s2. s4\p
  s2 s\pp
  s1
  s1
  s2 s\pp
  s1
  s2 s\cresc
  s1
  s1
  s1
  s1
  s1
  s2 s\ff
  s1
  s1
  s1
  s1
  s4. s8\dim s2
  s1
  s1 % 51a
  s1
  s1\f
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s1
  s2 s\pp
  s1
  s1
  s1
  s2 s\cresc
  s1
  s1
  s1
  s2 s\mf
  s1 % 52a
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s1
  s1 % 52b
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s2. s4\dim
  s1
  s2 s\p
  s1
  s2 s\pp
  s1 % 53a
  s2 s\cresc
  s1
  s1
  s1
  s1
  s2 s\mf
  s1
  s1
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s2. s4\p
  s1
  s1
  s1
  s1
  s1 % 54a
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s1
  s2 s\f
  s1
  s1
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s2. s4\p
  s1
  s2 s\cresc
  s1
  s2 s\f
  s1 % 55a
  s2 s\pp
  s1
  s2 s\cresc
  s1
  s1
  s1
  s1\mf
  s1\p
  s1
  s1
  s1
  s1\dim
  s1
  s1
  s1\pp
  s1
  s1\ppp
  s1
  s1
  s1
  s1
  s1
}

wordsSop = \lyricmode {
  From the Throne of His Cross,
  the King of grief Cries out to a world of un- be- lief:
  Oh! Men and wo- men, a- far and nigh,
  Is it noth- ing to you, all ye that pass by?

  I laid my e- ter- nal power a- side,
  I came from the Home of the Glor- i- fied,
  A babe in the low- ly cave to lie.
  Is it noth- ing to you, all ye that pass by?

  I wept for the sor- rows and pains of men,
  I healed them and helped them and loved them,
  but then, but then,
  They shout- ed a- gainst Me,
  "\"Cru-" ci- fy! Cru- ci- fy! Cru- ci- "fy!\""
  Is it noth- ing to you?
  
  Be- hold Me and see:
  pierc- ed thro' and thro' with count- less sor- rows, and all is for you;
  For you I suf- fer, for you I die.
  Is it noth- ing to you, all ye that pass by?

  Oh! men and wo- men your deeds of shame,
  Your sins with- out rea- son and num- ber and name,
  I bear them all on the Cross on high.
  Is it no- thing to you?

  Is it no- thing to you that I bow my head?
  And no -thing to you that My Blood is shed?
  Oh! per- ish- ing souls, to you I cry,
  Is it no- thing to you?

  O come un- to Me,
  O come un- to Me,
  O come un- to Me, by the woes I have borne,
  By the dread- ful scourge, and the crown of thorns,
  By these I im- plore you to hear my cry,
  Is it no- thing to you?
  
  O come un- to Me,
  O come un- to Me,
  O come un- to Me!
  This aw- ful price, Re- demp- tion's tre- men- dous sa- cri- fice,
  Is paid for you, is paid for you.
  O why will ye die?

  O come un- to Me,
  O come un- to Me,
  O come un- to Me!
  For why will ye die, for why will ye die?
  O come! O come! O come un- to Me!
  Why, why will ye die?
  Come un- to Me! come un- to Me! come to Me.
}

alto = \relative c'' {
  \global
  r1
  r1
  r1
  r2 g4 g
  g2 g4 bes
  bes4 r r c
  g2 aes
  g2 g
  g2 g4 f
  ees2 g
  f2 c
  d2 r
  g2 g4 fis
  g4 g2 g4
  g2 fis
  g1
  r1
  r2 g4 g
  aes4 aes2 ees4
  g2 g
  g4 fis <c c'>2 % 47a
  <b b'>2-\fermata r
  ees2 ees4 ees8 ees
  ees4 d d ees
  d2. d4
  ees2 g4 g
  g4(bes) a g
  fis2.-> fis4
  fis2. fis4
  g2 d4 e
  f2 d
  ees2 ees
  d2 r
  r1
  r1
  r1
  r1
  r1
  r1-\fermata
  r2 f % 48a
  f2 ees4 d
  d4 d e2
  f2 d
  ees2 f
  ees2 f4 ees
  d2 ees4 c
  c2(bes)
  bes2 r4 ees
  ees4 r r ees
  ges4 r r2
  r4 ees c' bes8 c
  a4 f r2
  r2 a8.-> ges16 ges4
  ges8. ees16 ees4 c'8. a16 a4 % 49a
  c2.-> a4
  a4-! r r2-\fermata
  r1
  r1
  r2 f4 f
  ges4 ges2 ges4
  f2-\fermata r
  r1
  r2 r4 d
  d4 f2 ees4
  d2 r
  f4 f f f
  f2. g4
  g2 g
  e4 e2 aes4
  aes2 a4 a
  g2. g4
  f2. f4
  f4 f2 f4
  f2 d
  d1
  r1
  r2 g4 g
  aes4 aes2 ees4
  g2 g
  g4 fis <c c'>2
  <b b'>2-\fermata r
  r1
  r1
  r1
  r2 g'
  g2. ges4
  bes4 bes r c
  g2 aes
  g2 g
  g4. g8 g4(f)
  ees2 g4 g
  f4 f c2 % 51a
  d2 r
  g2 g4 fis
  g2 g4. g8
  g2 fis
  g1
  r1
  r2 g4 g
  aes4 aes ees2
  g2 r
  r2 g4 g
  aes4 aes2 ees4
  g2 c,4 c
  c2 b
  c2 g'
  aes4 aes2 ees4
  g2 g4 g
  fis2. fis4
  g2 g
  g4. g8 g2 % 52a
  g2 g
  g2 fis
  g1
  r1
  r2 g4 g
  aes4 aes2 ees4
  g1-\fermata \key e \minor
  r1
  r2 d
  e2-> e4 e
  e2 g
  g2-> c,4 d
  e2 a
  g2 g4 g
  g2 g4 fis
  e2 e4 e
  e2 e4. e8
  e2 d
  d2 d4 d
  d2 cis % 53a
  d2 d
  d2 d4 e
  e2 fis4 fis
  fis2. g4
  fis1
  r2 d4 d
  ees4 ees2 bes4
  d2-\fermata r
  r2 d
  e2 e4 e
  e2 g
  g2-> c,4 d
  e2 a
  g2-> g4 g
  g2. e4
  e2 e
  e2. e4
  d2 d4 d
  d2 d
  d2 cis % 54a
  d2 d
  d2. e4
  e2 fis
  fis2. g4
  a2 r
  r2 d,
  ees4 ees2 bes4
  d2-\fermata r
  r2 d e2 e4 e
  e2 g
  g2 c,4 d
  e2 a
  g2-> g4 g
  g2. e4
  e2 e4 e
  e2 c
  f2 f4 f
  e2 a
  g1~ % 55a
  g2 g
  fis1->~
  fis2 fis
  f1
  f2 f
  e2 r
  e1->
  c1
  c2 c
  b1
  c2-> c4 c
  c1
  b2-> b4 b
  b1
  c2 b4(a)
  c2 b4 a
  b1
  r1
  r1
  r1
  r1
  r1
%  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1 % 46a
  s1
  s1
  s2 s\ff
  s1
  s1
  s1 % 46b
  s1
  s1
  s1
  s1
  s1
  s1\ff
  s1 % 46c
  s1
  s1
  s1
  s2 s\pp
  s1
  s2 s\cresc
  s1 % 47a
  s1
  s1\p
  s1
  s1
  s2 s\cresc
  s1 % 47b
  s1
  s1
  s2 s2\dim
  s1
  s1
  s1 % 47c
  s1
  s1
  s1
  s1
  s1
  s1
  s2 s2\mf % 48a
  s1
  s1
  s1\dim
  s2 s\p
  s1
  s1
  s1
  s2. s4\cresc
  s1
  s1
  s4 s2.\f
  s1
  s2 s\ff
  s1
  s1\fff % 49a
  s1
  s1
  s1
  s2 s\pp
  s1
  s1
  s1^\markup \italic{a tempo}
  s2. s4\pp
  s1
  s1
  s1\cresc
  s2. s4\cresc
  s1
  s2. s4\f
  s1
  s2. s4\ff
  s1 % 50a
  s2. s4\p
  s2 s\pp
  s1
  s1
  s2 s\pp
  s1
  s2 s\cresc
  s1
  s1
  s1
  s1
  s1
  s2 s\ff
  s1
  s1
  s1
  s1
  s4. s8\dim s2
  s1
  s1 % 51a
  s1
  s1\f
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s1
  s2 s\pp
  s1
  s1
  s1
  s2 s\cresc
  s1
  s1
  s1
  s2 s\mf
  s1 % 52a
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s1
  s1 % 52b
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s2. s4\dim
  s1
  s2 s\p
  s1
  s2 s\pp
  s1 % 53a
  s2 s\cresc
  s1
  s1
  s1
  s1
  s2 s\mf
  s1
  s1
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s2. s4\p
  s1
  s1
  s1
  s1
  s1 % 54a
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s1
  s2 s\f
  s1
  s1
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s2. s4\p
  s1
  s2 s\cresc
  s1
  s2 s\f
  s1 % 55a
  s2 s\pp
  s1
  s2 s\cresc
  s1
  s1
  s1
  s1\mf
  s1\p
  s1
  s1
  s1
  s1\dim
  s1
  s1
  s1\pp
  s1
  s1\ppp
  s1
  s1
  s1
  s1
  s1
}

wordsAlto = \lyricmode {
  From the Throne of His Cross,
  the King of grief Cries out to a world of un- be- lief:
  Oh! Men and wo- men, a- far and nigh,
  Is it noth- ing to you, all ye that pass by?

  I laid my e- ter- nal power a- side,
  I came from the Home of the Glor- i- fied,
  A babe in the low- ly cave to lie.
%  Is it noth- ing to you, all ye that pass by?

  I wept for the sor- rows and pains of men,
  I healed them and helped them and loved them,
  but then, but then,
  They shout- ed a- gainst Me,
  "\"Cru-" ci- fy! Cru- ci- fy! Cru- ci- fy! Cru- ci- "fy!\""
  Is it noth- ing to you?
  
  Be- hold Me and see:
  pierc- ed thro' and thro' with count- less sor- rows, and all is for you;
  For you I suf- fer, for you I die.
  Is it noth- ing to you, all ye that pass by?

  Oh! men and wo- men your deeds of shame,
  Your sins with- out rea- son and num- ber and name,
  I bear them all on the Cross on high.
  Is it no- thing to you?

  Is it no- thing to you that I bow my head?
  And no -thing to you that My Blood is shed?
  Oh! per- ish- ing souls, to you I cry,
  Is it no- thing to you?

  O come un- to Me,
  O come un- to Me,
  O come un- to Me, by the woes I have borne,
  By the dread- ful scourge, and the crown of thorns,
  By these I im- plore you to hear my cry,
  Is it no- thing to you?
  
  O come un- to Me,
  O come un- to Me,
  O come un- to Me!
  This aw- ful price, Re- demp- tion's tre- men- dous sa- cri- fice,
  Is paid for you, is paid for you.
  O why will ye die?

  O come un- to Me,
  O come un- to Me,
  O come un- to Me!
  For why will ye die, for why will ye die?
  O come! O come! O come un- to Me!
  Why, why will ye die?
  Come un- to Me! come un- to Me! come, O come un- to Me.
}

tenor = \relative c' {
  \global
  r1
  r1
  r1
  r2 g4 g
  ees'2 ees4 f
  g4 r r c,
  d2 ees
  d2 d
  c2 ees4 d
  c2 ees
  d2 c
  b2 r
  d2 d4 c
  b4 d2 g,4
  g2 a
  g1
  r1
  r2 g4 g
  aes4 aes2 ees4
  g2 g
  g4 fis c'2 % 47a
  b2-\fermata r
  bes2 bes4 bes8 bes
  aes4 aes aes g
  f2. bes4
  bes2 bes4 c
  bes4(d) c bes
  a2.-> d4
  d2. c4
  bes2 bes4 bes
  bes2 bes
  bes2 a
  bes2 r
  r1
  r2 bes4 bes
  ces4 ces2 ges4
  bes2 bes
  bes4 a ees'2
  d2-\fermata r
  r2 bes
  bes2 bes4 bes
  bes4 bes bes2
  c2 bes
  bes2 b
  c2 d4 c
  b2 g4 aes
  aes1
  g2 r4 ees
  ees4 r r ees
  ges4 r r2
  r4 ees c' bes8 c
  a4 f r2
  c'8.-> a16 a4 r2
  ees'8. c16 c4 r2 % 49a
  c2.-> ges'4
  ges4-! r r2-\fermata
  r1
  r1
  r2 bes,4 bes
  a4 a2 a4
  bes2-\fermata r
  r1
  r2 r4 d,
  d4 f2 e4
  d2 r
  b'4 b c c
  b2. d4
  c4(bes2) c4
  des4 c2 c4
  c2 c4 c
  b2. b4
  c2. c4 % 50a
  d4 d2 d4
  g,2 f
  f1
  r1
  r2 g4 g
  aes4 aes2 ees4
  g2 g
  g4 fis c'2
  b2-\fermata r
  r1
  r1
  r1
  r2 g
  ees'2. f4
  g4 g r c,
  d2 ees
  d2 d
  c4. c8 ees4(d)
  c2 ees4 ees
  d4 d c2
  b2 r
  d2 d4 c
  b2 g4. g8
  g2 a
  g1
  r1
  r2 g4 g
  aes4 aes ees2
  g2 r
  r2 g4 g
  aes4 aes2 ees4
  g2 g4 aes
  g2. f4
  ees2 g
  aes4 aes2 ees4
  g2 c4 c
  c2. c4
  b2 g
  d'4. d8 d2
  b2 g
  g2 a
  g1
  r1
  r2 g4 g
  aes4 aes2 ees4
  g1-\fermata \key e \minor
  r1
  r2 b
  c2-> c4 c
  c2 e
  e2-> a,4 b
  c2 f
  f2 f4 f
  e2 g,4 g
  g2 g4 g
  g2 g4. g8
  g2 fis
  g2 d4 d
  a'2. g4 % 53a
  fis2 fis
  c'2 c4 b
  b2 c4 c
  c2. d4
  d1
  r2 d4 d
  ees4 ees2 bes4
  d2-\fermata r
  r2 b
  c2-> c4 c
  c2 e
  e2-> a,4 b
  c2 f
  f2-> f4 f
  e2. g,4
  g2 g
  g2. g4
  fis2 fis4 fis
  fis2 g
  a2. g4 % 54a
  fis2 fis
  c'2. b4
  b2 c
  c2. d4
  d2 r
  r2 d
  ees4 ees2 bes4 % 54b
  d2-\fermata r
  r2 b
  c2-> c4 c
  c2 e
  e2-> a,4 b
  c2 f
  f2-> f4 f % 54c
  e2. g,4
  g2 g4 g
  g2 g
  g2 a4 d
  c2 fis
  g2(d~ % 55a
  d2) d
  d1-> ~
  d2 a
  g1
  g2 g
  g2 r
  fis1->
  g1
  fis2 fis
  g1
  e2-> e4 e
  e1
  d2-> d4 d
  d1
  e2 d4(c)
  e2 d4 c
  d1
  r1
  r1
  r1
  r1
  r1
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1
  s1
  s1
  s2 s\ff
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1\ff
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s2 s\cresc
  s1
  s1
  s1\p
  s1
  s1
  s2 s\cresc
  s1
  s1
  s1
  s2 s2\dim
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s2 s\cresc
  s1
  s1
  s2 s2\mf % 48a
  s1
  s1
  s1\dim
  s2 s\p
  s1
  s1
  s1
  s2. s4\cresc
  s1
  s1
  s4 s2.\f
  s1
  s1\ff
  s1 % 49a
  s1\fff
  s1
  s1
  s1
  s2 s\pp
  s1
  s1
  s1^\markup \italic{a tempo}
  s2. s4\pp
  s1
  s1
  s1\cresc
  s2. s4\cresc
  s1
  s2. s4\f
  s1
  s2. s4\ff
  s1 % 50a
  s2. s4\p
  s2 s\pp
  s1
  s1
  s2 s\pp
  s1
  s2 s\cresc
  s1
  s1
  s1
  s1
  s1
  s2 s\ff
  s1
  s1
  s1
  s1
  s4. s8\dim s2
  s1
  s1 % 51a
  s1
  s1\f
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s1
  s2 s\pp
  s1
  s1
  s1
  s2 s\cresc
  s1
  s1
  s1
  s2 s\mf
  s1 % 52a
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s1
  s1 % 52b
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s2. s4\dim
  s1
  s2 s\p
  s1
  s2 s\pp
  s1 % 53a
  s2 s\cresc
  s1
  s1
  s1
  s1
  s2 s\mf
  s1
  s1
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s2. s4\p
  s1
  s1
  s1
  s1
  s1 % 54a
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s1
  s2 s\f
  s1
  s1
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s2. s4\p
  s1
  s2 s\cresc
  s1
  s2 s\f
  s1 % 55a
  s2 s\pp
  s1
  s2 s\cresc
  s1
  s1
  s1
  s1\mf
  s1\p
  s1
  s1
  s1
  s1\dim
  s1
  s1
  s1\pp
  s1
  s1\ppp
  s1
  s1
  s1
  s1
  s1
}

wordsTenor = \lyricmode {
  From the Throne of His Cross,
  the King of grief Cries out to a world of un- be- lief:
  Oh! Men and wo- men, a- far and nigh,
  Is it noth- ing to you, all ye that pass by?

  I laid my e- ter- nal power a- side,
  I came from the Home of the Glor- i- fied,
  A babe in the low- ly cave to lie.
  Is it noth- ing to you, all ye that pass by?

  I wept for the sor- rows and pains of men,
  I healed them and helped them and loved them,
  but then, but then,
  They shout- ed a- gainst Me,
  "\"Cru-" ci- fy! Cru- ci- fy! Cru- ci- "fy!\""
  Is it noth- ing to you?
  
  Be- hold Me and see:
  pierc- ed thro' and thro' with count- less sor- rows, and all is for you;
  For you I suf- fer, for you I die.
  Is it noth- ing to you, all ye that pass by?

  Oh! men and wo- men your deeds of shame,
  Your sins with- out rea- son and num- ber and name,
  I bear them all on the Cross on high.
  Is it no- thing to you?

  Is it no- thing to you that I bow my head?
  And no -thing to you that My Blood is shed?
  Oh! per- ish- ing souls, to you I cry,
  Is it no- thing to you?

  O come un- to Me,
  O come un- to Me,
  O come un- to Me, by the woes I have borne,
  By the dread- ful scourge, and the crown of thorns,
  By these I im- plore you to hear my cry,
  Is it no- thing to you?
  
  O come un- to Me,
  O come un- to Me,
  O come un- to Me!
  This aw- ful price, Re- demp- tion's tre- men- dous sa- cri- fice,
  Is paid for you, is paid for you.
  O why will ye die?

  O come un- to Me,
  O come un- to Me,
  O come un- to Me!
  For why will ye die, for why will ye die?
  O come! O come! O come un- to Me!
  Why, why will ye die?
  Come un- to Me! come un- to Me! come O come un- to Me.
}

bass= \relative c' {
  \global
  r1
  r1
  r1
  r2 g4 g
  c2 c4 bes
  ees4 r r c
  b2 c
  b2 b
  c2 g4 g
  aes2 ees
  f2 aes
  g2 r
  g2 g4 a
  b4 b2 g4
  c,2 c
  b1
  r1
  r2 g'4 g
  aes4 aes2 ees4
  g2 g
  g4 fis c'2 % 47a
  b2-\fermata r
  ees,2 ees4 ees8 ees
  ees4 ees ees ees
  ees2. ees4
  ees2 ees4 ees
  d2 d4 d
  d2.-> d4
  d2. d4
  g2 g4 g
  f2 f
  f2 f
  bes,2 r
  r1
  r1
  r1
  r1
  r1
  r1-\fermata
  r2 bes' % 48a
  bes2 bes4 bes
  bes4 bes aes2
  g2 bes,
  ees2 d
  c2 f,4 f
  g2 c4 aes % 48b
  bes1
  ees2 r4 ees
  ees4 r r ees
  ges4 r r2
  r1 % 48c
  r2 c8.-> a16 a4
  a8.-> ges16 ges4 r2
  c8. a16 a4 r2 % 49a
  a2.-> ees'4
  ees4-! r4 r2-\fermata
  r1
  r1
  r2 d,4 d % 49b
  ees4 ees2 ees4
  d2-\fermata r
  r1
  r2 r4 d
  d4 f2 ees4
  d2 r
  d4 d ees ees % 49c
  d2. f4
  e2 e
  f4 f2 f4
  f2 fis4 fis
  g2. g4
  aes2. aes4 % 50a
  g4 g2 g4
  b,2 c
  b1
  r1
  r2 g'4 g
  aes4 aes2 ees4
  g2 g % 50b
  g4 fis c'2
  b2-\fermata r
  r1
  r1
  r1
  r2 g
  c2. bes4 % 50c
  ees4 ees r c
  b2 c
  b2 b
  c4. c8 g2
  aes2 ees4 ees
  f4 f aes2 % 51a
  g2 r
  g2 g4 a
  b2 g4. g8
  c,2 c
  b1
  r1
  r2 g'4 g % 51b
  aes4 aes ees2
  g2 r
  r2 g4 g
  aes4 aes2 ees4
  g2 ees4 f
  g2 g, % 51c
  c2 g'
  aes4 aes2 ees4
  g2 ees4 ees
  d2. d4
  g2 g % 52a
  g4. g8 g2
  b2 g
  c,2 c
  b1
  r1
  r2 g'4 g
  aes4 aes2 ees4
  g1-\fermata \key e \minor
  r1
  r2 g
  g2-> g4 g
  g2 g
  g2-> g4 g
  g2 c
  b2 a4 b
  c2 e,4 d
  c2 c4 c
  c2 c4. c8
  c2 c
  b2 b4 b
  a2 a % 53a
  d2 d
  fis2 fis4 g
  g2 a4 a
  a2. b4
  c1
  r2 d,4 d
  ees4 ees2 bes4
  d2-\fermata r
  r2 g
  g2-> g4 g
  g2 g
  g2-> g4 g
  g2 c
  b2 a4 b
  c2. c,4
  c2 c
  c2. c4
  c2 c4 c
  c2 b
  a2 a % 54a
  d2 d
  fis2. g4
  g2 a
  a2. b4
  c2 r
  r2 d,
  ees4 ees2 bes4
  d2-\fermata r
  r2 g
  g2-> g4 g
  g2 g
  g2-> g4 g
  g2 c
  b2 a4 b
  c2. c,4
  c2 c4 c
  c2 e
  d2 c4 b
  c2 c'
  b1~ % 55a
  b2 b
  c1-> ~
  c2 c,
  b1
  b2 b
  c2 r
  a1->
  d1
  d2 d
  g,1
  g2-> g4 g
  g1
  g2-> g4 g
  g1
  g1
  g1
  g1
  r1
  r1
  r1
  r1
  r1
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1
  s1
  s1
  s2 s\ff
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1\ff
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s2 s\cresc
  s1
  s1
  s1\p
  s1
  s1
  s2 s\cresc
  s1
  s1
  s1
  s2 s2\dim
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s2 s2\mf % 48a
  s1
  s1
  s1\dim
  s2 s\p
  s1
  s1
  s1
  s2. s4\cresc
  s1
  s1
  s1
  s2 s\ff
  s1
  s1
  s1\fff % 49a
  s1
  s1
  s1
  s2 s\pp
  s1
  s1
  s1^\markup \italic{a tempo}
  s2. s4\pp
  s1
  s1
  s1\cresc
  s2. s4\cresc
  s1
  s2. s4\f
  s1
  s2. s4\ff
  s1 % 50a
  s2. s4\p
  s2 s\pp
  s1
  s1
  s2 s\pp
  s1
  s2 s\cresc
  s1
  s1
  s1
  s1
  s1
  s2 s\ff
  s1
  s1
  s1
  s1
  s4. s8\dim s2
  s1
  s1 % 51a
  s1
  s1\f
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s1
  s2 s\pp
  s1
  s1
  s1
  s2 s\cresc
  s1
  s1
  s1
  s2 s\mf
  s1 % 52a
  s1
  s1
  s1
  s1
  s2 s\pp
  s1
  s1
  s1 % 52b
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s2. s4\dim
  s1
  s2 s\p
  s1
  s2 s\pp
  s1 % 53a
  s2 s\cresc
  s1
  s1
  s1
  s1
  s2 s\mf
  s1
  s1
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s2. s4\p
  s1
  s1
  s1
  s1
  s1 % 54a
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s1
  s2 s\f
  s1
  s1
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s2. s4\p
  s1
  s2 s\cresc
  s1
  s2 s\f
  s1 % 55a
  s2 s\pp
  s1
  s2 s\cresc
  s1
  s1
  s1
  s1\mf
  s1\p
  s1
  s1
  s1
  s1\dim
  s1
  s1
  s1\pp
  s1
  s1\ppp
  s1
  s1
  s1
  s1
  s1
}

wordsBass = \lyricmode {
  From the Throne of His Cross,
  the King of grief Cries out to a world of un- be- lief:
  Oh! Men and wo- men, a- far and nigh,
  Is it noth- ing to you, all ye that pass by?

  I laid my e- ter- nal power a- side,
  I came from the Home of the Glor- i- fied,
  A babe in the low- ly cave to lie.
%  Is it noth- ing to you, all ye that pass by?

  I wept for the sor- rows and pains of men,
  I healed them and helped them and loved them,
  but then, but then,
  "\"Cru-" ci- fy! Cru- ci- fy! Cru- ci- fy! Cru- ci- "fy!\""
  Is it noth- ing to you?
  
  Be- hold Me and see:
  pierc- ed thro' and thro' with count- less sor- rows, and all is for you;
  For you I suf- fer, for you I die.
  Is it noth- ing to you, all ye that pass by?

  Oh! men and wo- men your deeds of shame,
  Your sins with- out rea- son and num- ber and name,
  I bear them all on the Cross on high.
  Is it no- thing to you?

  Is it no- thing to you that I bow my head?
  And no -thing to you that My Blood is shed?
  Oh! per- ish- ing souls, to you I cry,
  Is it no- thing to you?

  O come un- to Me,
  O come un- to Me,
  O come un- to Me, by the woes I have borne,
  By the dread- ful scourge, and the crown of thorns,
  By these I im- plore you to hear my cry,
  Is it no- thing to you?
  
  O come un- to Me,
  O come un- to Me,
  O come un- to Me!
  This aw- ful price, Re- demp- tion's tre- men- dous sa- cri- fice,
  Is paid for you, is paid for you.
  O why will ye die?

  O come un- to Me,
  O come un- to Me,
  O come un- to Me!
  For why will ye die, for why will ye die?
  O come! O come! O come un- to Me!
  Why, why will ye die?
  Come un- to Me! come un- to Me! come to Me.
}

pianoRH = \relative c' {
  \global
  <ees g c>2 q4 <f bes d>
  <g bes ees>2 <g c ees>4 <c f>
  <b d g>2 <c ees aes>
  <b d g>2 r
  <ees, g c>2 q4 <f bes d>
  <g bes ees>2 <g c ees>4 <aes c f>
  <b d g>2 <c ees aes>
  s1
  s1
  <ees, c'>2 <g ees'>
  <f aes d>2 <ees c'>
  <g bes>2 r
  <g b>2 q4 <fis d'>
  <g d'>4 g2 g4
  <g ees'>2 <fis ees'>
  <g d'>1
  g1~
  g2 r
  <ees aes>1
  <d g>1
  s1 % 47a
  <d g b>2-\fermata r
  <ees g>1
  q4 <d f> q <ees g>
  <d bes'>2. <d aes'>4
  s1
  s1 % 47b
  s1
  <fis a>2. q4
  <g bes>2 <d bes'>4 <e c'>
  <f d'>2 <d g>
  s1
  s1 % 47c
  s1
  s2 r
  s1
  s1
  s1
  <f bes d>2-\fermata r
  f1 % 48a
  s1
  s1
  <f bes>2 <d aes'>
  s1
  <c ees g>2 <d f bes>4 <c ees aes>
  <b d g>2 s % 48b
  s1
  <bes ees>2 r4 ees
  ees4 r r ees
  <ees ges>4 r r2
  <c ees a c>1-> % 48c
  <c f a c>1->
  <c ees a c>1->
  <c ees a c>1-> % 49a
  s1
  s4 r r2\fermata
  s1
  s1
  s2 r % 49b
  <ges' ces>1
  <f bes>2-\fermata r
  q2(<ees aes>
  <d g>1)
  d4 f2 ees4
  d2 <f g>
  s1 % 49c
  s1
  s1
  <e bes'>4 <f aes>2 <aes c>4
  s1
  s1
  s1 % 50a
  s1
  <f d'>2 <d aes'>
  s1
  s1
  s2 r
  <ees aes>1
  <d g>1 % 50b
  s1
  <d g b>2\fermata r
  <ees g c>2 q4 <f bes d>
  <g bes ees>2 <g c ees>4 <c f>
  <b d g>2 <c ees aes>
  <b d g>2 r
  <ees, g c>2 q4 <f bes d> % 50c
  <g bes ees>2 <g c ees>4 <c f>
  <b d g>2 <c ees aes>
  s1
  s1
  <ees, c'>2 <g ees'>
  <f aes d>2 <ees c'> % 51a
  <g b>2 r
  q2 q4 <fis d'>
  <g d'>2 g
  <g ees'>2 <fis ees'>
  <g d'>1
  g1~
  g2 r % 51b
  <ees aes>1
  <d g>1~
  q2 r
  <ees aes>1
  s1
  <c ees>2 <b d> % 51c
  c2 r
  <ees aes>1
  s1
  s1
  <b g'>2 g'
  <g b>1 % 52a
  <g d'>2 g
  <g ees'>2 <fis ees'>
  <g d'>1
  g1~
  g2 r
  <ees aes>1
  <d g>\fermata ~ \key e \minor \bar "||" \break
  q2 <c d fis a> % 52b
  <b d g a>2 <d b'>
  <e b'>2 e4 <e fis>
  <e g>2 <e g c>
  q2 <c fis>4 <d g>
  <e a>2 <f a d>
  s1 % 52c
  <e g d'>2
  <g c>4 <fis b>
  <e b'>2 <e a>4 e
  <e a>2 s
  <e a>2 d
  <d g>2 s
  <d fis>2 <cis e> % 53a
  d2 d
  <d a'>2 q4 <e g>
  q2 fis4 fis
  <fis c'>2. <g b>4
  <fis a>1
  <a d>1
  <g bes ees>1 % 53b
  <d a' d>2\fermata r
  <b d>2 <d b'>
  <e b'> e4 <e fis>
  <e g>2 <e g c>
  q2 <c fis>4 <d g>
  <e a>2 <f a d>2
  s1 % 53c
  s2. <e b'>4
  <e b'>2 e
  s1
  <d a'>2 d
  s1
  <d fis>2 <cis e> % 54a
  d2 d
  <d a>2. <e g>4
  q2 fis
  <fis c'>2. <g b>4
  <fis a>2 r
  <a d>1
  <g bes ees>1
  <d a' d>2\fermata r
  d2 <d b'>
  <e b'>2 e4 <e fis>
  <e g>2 <e g c>
  q2 <c fis>4 <d g>
  <e a>2 <f a d>
  s1 % 54c
  s2. <e b'>4
  q2 <e a>4 e
  <e a>2 <c c'>
  s2. <d g>4
  <e g e'>2 <fis a d>
  s1 % 55a
  s2 r
  r1
  r2 <fis d'>
  s1
  s1
  <e a>2 r < e c'>1
  s1 % 55b
  s1
  <b g'>1
  s1
  s1
  s1
  s1
  d1~
  d1 % 55c
  d1
  r2 s
  s1
  s1
  s1
  s1
%  \bar "|."
}

pianoRHone = \relative c''' {
  \global
  \voiceOne
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  g2. f4
  s2 <g, ees'>4 <f d'>
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  g4 fis~ <fis c'>2 % 47a
  s1
  s1
  s1
  s1
  <ees g>2 g4 a
  bes2 bes4 c % 47b
  d2. a4
  s1
  s1
  s1
  g2 c
  bes2 bes~
  bes1~
  bes2 s
  ces1
  bes1
  bes4 a~ <a ees'>2
  s1
  s1 % 48a
  d2 ees4 f
  f4 bes,2 c4
  s1
  g2. g4
  s1
  s2 ees4 f % 48b
  d1
  s1
  s1
  s1
  s1 % 48c
  s1
  s1
  s1 % 49c
  <c' ges' c>2. -> <ces ges' ces>4
  <ges' ces>4-! s2.
  ces,1(
  bes2 ces
  bes2) s % 49b
  s1
  s1
  s1
  s1
  s1
  s1
  g2 bes4 aes % 49c
  g2 <g b>
  c4 des2 c4
  s1
  d4 ees2 d4
  d2. d4
  f2. c4 % 50a
  c4 b2 b4
  s1
  g1~
  g1~
  g2 s
  s1
  s1 % 50b
  g4 fis~ <fis c'>2
  s1
  s1
  s1
  s1
  s1
  s1 % 50c
  s1
  s1
  g'2. f4
  s2 <g, ees'>4 <f d'>
  s1
  s1 % 51a
  s1
  s1
  s1
  s1
  s1
  s1
  s1 % 51b
  s1
  s1
  s1
  s1
  g2 s
  s1 % 51c
  s1
  s1
  g1
  b2. a4
  s1
  s1 % 52a
  s1
  s1
  s1
  s1
  s1
  s1
  s1 \key e \minor
  s1 % 52b
  s1
  s1
  s1
  s1
  s1
  d2 e4 d % 52c
  s1
  s1
  s2 b4. a8
  s1
  s2 a4 g
  s1 % 53a
  s1
  s1
  s1
  s1
  s1
  s1
  s1 % 53b
  s1
  s1
  s1
  s1
  s1
  s1
  d'2 e4 d % 53c
  d2(c4) s
  s1
  a2. a4
  s1
  a2 g
  s1 % 54a
  s1
  s1
  s1
  s1
  s1
  s1
  s1 % 54b
  s1
  s1
  s1
  s1
  s1
  s1
  d'2 e4 d % 54c
  d2(c4) s
  s1
  s1
  b2 a4 s
  s1
  d2 g~ % 55a
  g2 s
  s1
  s1
  e1
  d2 b
  s1
  s1
  e,1 % 55b
  d2 a'
  s1
  b2 a4 e
  a1
  a2 g4 d
  g1
  s1
  s1 % 55c
  s1
  s2 <d' g>
  aes'4 aes2 des,4
  g2 g
  g4 fis <fis c'>2
  <g b>1
}

pianoRHtwo = \relative c'' {
  \global
  \voiceTwo
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  <b d>2 <g d'>
  <g c ees>2 b
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  c,2 c % 47a
  s1
  s1
  s1
  s1
  s2 g'2
  g4 bes a g % 47b
  fis1
  s1
  s1
  s1
  ees1
  d2 bes~ % 47c
  bes1~
  bes2 s
  ges'1
  f1
  ees2 ees
  s1
  s1 % 48a
  f2 ees4 d
  d2 e
  s1
  ees2 f
  s1
  s2 c~ % 48b
  c2 bes
  s1
  s1
  s1
  s1 % 48c
  s1
  s1
  s1 % 49a
  <a ees' ges>2. <ees' a>4
  <ees a ces>4 s2.
  ges1
  f2 ges
  f2 s % 49b
  s1
  s1
  s1
  s1
  s1
  s1
  f1~ % 49c
  f1
  g1
  s1
  aes2 a
  g1
  f1 % 50a
  f2. f4
  s1
  d1
  s1
  s1
  s1
  s1 % 50b
  c2 c
  s1
  s1
  s1
  s1
  s1
  s1 % 50c
  s1
  s1
  <b' d>2 <g d'>
  <g c ees>2 b
  s1
  s1 % 51a
  s1
  s1
  s1
  s1
  s1
  s1
  s1 % 51b
  s1
  s1
  s1
  s1
  ees,4 d c c
  s1 % 51c
  s1
  s1
  d2 c
  <c fis>1
  s1
  s1 % 52a
  s1
  s1
  s1
  s1
  s1
  s1
  s1 \key e \minor
  s1 % 52b
  s1
  s1
  \change Staff = pianolh c2 s \change Staff = pianorh
  s1
  s1
  <f g>1 % 52c
  s1
  s1
  s2 e
  s1
  s2 d
  s1 % 53a
  s1
  s1
  s1
  s1
  s1
  s1
  s1 % 53b
  s1
  s1
  s1
  s1
  s1
  s1
  <f g>1 % 53c
  <e g>2. s4
  s1
  e1
  s1
  e1
  s1 % 54a
  s1
  s1
  s1
  s1
  s1
  s1
  s1 % 54b
  s1
  s1
  s1
  s1
  s1
  s1
  <f g>1 % 54c
  <e g>2. s4
  s1
  s1
  f1
  s1
  g1~ % 55a
  g2 s
  s1
  s1
  f1~
  f1
  s1
  s1
  c1~ % 55b
  c1
  s1
  c1~
  c1
  b1~
  b1
  s1
  s1 % 55c
  s1
  s2 <b g'>
  <c ees aes ees'>1
  <b d g d'>1
  <a d c' d>1
  <g d' b' d>1
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\ff
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1\ff-\markup{Accomp. ad lib.}
  s1
  s1
  s1-\markup{Org.}
  s1\p
  s1
  s1\pp
  s2 s\cresc
  s1 % 47a
  s1
  s1\p
  s1
  s1
  s2 s\cresc
  s1
  s1
  s1
  s2 s\dim
  s1
  s1
  s2 s\p
  s1
  s1
  s1
  s2 s\cresc
  s1
  s1
  s1\mf % 48a
  s1
  s1
  s1\dim
  s2 s\p
  s1
  s1
  s1
  s2 s\cresc
  s1
  s1
  s1 % 48c
  s1
  s1\ff
  s1 % 49a
  s1\fff
  s1
  s1\pp
  s1
  s1 % 49b
  s1
  s1
  s1\p-\markup \italic {a tempo}
  s1
  s1-\markup \italic legato
  s1
  s1\cresc % 49c
  s2 s\cresc
  s1
  s2. s4\f
  s1
  s1
  s1\ff s2. s4\p
  s2 s\pp
  s1
  s1
  s1
  s1\pp
  s2 s\cresc % 50b
  s1
  s1
  s1\ff
  s1
  s1
  s1
  s1 % 50c
  s1
  s1
  s1
  s4. s8\dim s2
  s1
  s1 % 51a
  s1
  s1\f-\markup \italic {Accomp. ad lib.}
  s1
  s1
  s1-\markup \upright {Org.}
  s1\p
  s1 % 51b
  s1
  s1
  s1
  s1
  s1
  s1 % 51c
  s1
  s1\cresc
  s1
  s1
  s2 s\mf
  s1 % 52a
  s1
  s1
  s1
  s1\p \>
  s1 \!
  s1\pp
  s1
  s1 % 52b
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1 % 52c
  s2. s4\dim
  s1
  s1\p
  s1
  s2 s\pp
  s1 % 53a
  s2 s\cresc
  s1
  s1
  s1
  s1
  s1\mf
  s1 % 53b
  s2 s\p
  s1
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1 % 53c
  s2. s4\p
  s1
  s1
  s1
  s1
  s1 % 54a
  s2 s\cresc
  s1
  s2 s\mf
  s1
  s1
  s1\f
  s1 % 54b
  s1
  s2 s\p
  s1
  s2 s\cresc
  s1
  s2 s\mf
  s1 % 54c
  s2. s4\p
  s1
  s2 s\cresc
  s1
  s2 s\f
  s1 % 55a
  s1
  s1
  s2 s\cresc
  s1
  s1
  s1
  s1\mf
  s1\p % 55b
  s1
  s1
  s1
  s1\dim
  s1
  s1
  s1\p
  s1 % 55c
  s1
  s2 s-\markup \italic {ad lib.}
  s1
  s1
  s1
  s1
}

pianoLH = \relative c' {
  \global
  \oneVoice
  s1
  s1
  s1
  s2 r
  s1
  s1
  s1
  s1
  c2 g
  bes2 s
  s1
  s2 r
  s1
  s1
  s1
  s1
  s1
  s1
  c,1
  b2 bes
  a2 aes % 47a
  g2\fermata r
  s1
  s1
  s1
  s1
  s1 % 47b
  s1
  s1
  <g' bes>1
  s1
  s1
  <bes, bes'>1 % 47c
  s1
  s1
  ees1
  d2 des
  c2 ces
  bes1\fermata
  s1 % 48a
  s1
  s1
  s1
  s1
  c2 f,
  g2 s % 48b
  <bes aes'>1
  s2 r4 s
  s1
  s1
  s1 % 48c
  s1
  s1
  s1 % 49a
  s1
  r1\fermata
  <ees a>1
  s1
  s2 r % 49b
  <ees a>1
  s2 r
  s1
  s1
  s1
  s1
  s1 % 49c
  s1
  s1
  s1
  s1
  <g b>1
  <a c>1 % 50a
  s1
  s1
  s1
  s1
  s2 r
  c,1
  b2 bes % 50b
  a2 aes
  g2\fermata r
  s1
  s1
  s1
  s2 r
  s1 % 50c
  s1
  s1
  s1
  c'2 g
  aes2 s
  s1*100
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \voiceOne
  g2 g4 bes % 46a
  bes2 c4 c
  <b d>2 <c ees>
  <b d>2 s
  g2 g4 bes
  bes2 c4 c
  <b d>2 <c ees>% 46b
  <b d>2 d
  s1
  s2 c
  aes2 c
  d2 s
  d2 d4 c
  b4 d2 g,4 % 46c
  c2 a
  g1
  g1~
  g2 r
  s1
  s1
  s1 % 47a
  s1
  bes1
  aes2 aes4 g
  f2. bes4
  bes2 bes4 c
  bes4 d c bes % 47b
  a2. d4
  d2. c4
  s1
  bes1~
  bes2 a
  bes2 s % 47c
  s1
  s1
  s1
  s1
  s1
  s1
  bes1~ % 48a
  bes1
  bes2 bes
  c2 bes
  bes2 b
  s1
  s2 g4 aes % 48b
  s1
  g2 s4 ees
  ges8 aes ges aes ges aes ges aes
  ges8 aes ges aes ges aes ges aes % 48c
  ges16 aes ges aes ges aes ges aes ges aes ges aes ges aes ges aes
  fes16 ges fes ges fes ges fes ges fes ges fes ges fes ges fes ges
  ges16 aes ges aes ges aes ges aes ges aes ges aes ges aes ges aes
  ges16 aes ges aes ges aes ges aes ges aes ges aes ges aes ges aes % 49a
  s1
  s1
  s1
  bes2 a
  bes2 s % 49b
  s1
  bes2\fermata s
  f2 f
  f1
  g2 <fis a>
  g2 g4 a
  b2 c % 49c
  b2 d
  c4 bes2 c4
  des4 c2 c4
  c1
  s1
  s1 % 50a
  d2. d4
  g,2 f
  g1~
  g1~
  g2 s
  s1
  s1 % 50b
  s1
  s1
  g2 g4 bes
  bes2 c4 c
  <b d>2 <c ees>
  <b d>2 s
  g2 g4 bes % 50c
  bes2 c4 c
  <b d>2 <c ees>
  <b d>2 q
  s1
  s2 c
}

pianoLHtwo = \relative c {
  \global
  \voiceTwo
  c2 c4 bes
  ees2 c4 aes'
  g2 f
  g2 s
  c,2 c4 bes
  ees2 c4 aes'
  g2 f
  g2 b
  s1
  s2 ees,
  f2 aes
  g2 s
  g2 g4 a
  b4 b2 g4
  c,2 c
  b1
  r1
  r1
  s1
  s1
  s1 % 47a
  s1
  ees1~
  ees1~
  ees1~
  ees1
  d1 % 47b
  d1
  d2. d4
  s1
  f1
  f1
  s1 % 47c
  s1
  s1
  s1
  s1
  s1
  s1
  aes1~ % 48a
  aes1
  aes2 g
  f2 bes,
  ees2 d
  s1
  s2 c4 aes % 48b
  s1
  ees'2 s4 ees
  ges,1~
  ges1~
  ges1 % 48c
  f1
  ges1~
  ges1 % 49a
  s1
  s1
  s1
  d'2 ees
  bes2 s % 49b
  s1
  d2\fermata s
  d2(c
  b1)
  b2 c
  b2 b4 c
  d2 ees % 49c
  d2 f
  e1
  f2. f4
  f2 fis
  s1
  s1 % 50a
  g2. g4
  b,2 c
  <b f'>1
  s1
  s1
  s1
  s1 % 50b
  s1
  s1
  c2 c4 bes
  ees2 c4 aes'
  g2 f
  g2 s
  c,2 c4 bes % 50c
  ees2 c4 aes'
  g2 f
  g2 bes
  s1
  s2 ees,
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
      >>
      \new PianoStaff <<
        \new Staff = "pianorh" <<
          \new Voice \pianoRH
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = "pianolh" <<
          \clef "bass"
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Dynamics \dynamicsSop
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Dynamics \dynamicsAlto
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \clef "treble_8"
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \clef "bass"
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
      >>
      \new PianoStaff <<
        \new Staff = "pianorh" <<
          \new Voice \pianoRH
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = "pianolh" <<
          \clef "bass"
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
%  \midi {}
  }
}
