\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "See What Love."
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "1 John iii. 1."
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 20)

global = {
  \key aes \major
  \time 4/4
}

TempoTrack = {
  \tempo "Andante sostenuto" 8=112
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "185a" } s1*3
  \mark \markup { \box "185b" } s1*3
  \mark \markup { \box "A—185c" } s1*3
  \mark \markup { \box "186a" } s1*4
  \mark \markup { \box "B—186b" } s1*4
  \mark \markup { \box "186c" } s1*3
  \mark \markup { \box "187a" } s1*4
  \mark \markup { \box "C—187b" } s1*4
  \mark \markup { \box "D—187c" } s1*4
  \mark \markup { \box "188a" } s1*4
  \mark \markup { \box "188b" } s1*4
  \mark \markup { \box "188c" } s1*4
}

soprano = \relative {
  \global
  R1*6
  aes'4^\p 4 des c8 8 | bes2 aes8 g aes bes | c2~(8 ees) d c | % 185c
  f4 bes, bes ees^\cresc | d c bes g' | f ees d8(c) bes4 | ees8(bes) aes(g) f2 | % 186a
  ees4 r r2 | R1 | aes4^\p aes des c8 8 | bes2^\cresc ~(8 des) c bes |
  aes4 g f c'^\f~ | 4 bes8 c aes2 | f8 r c'2 bes8 c |
  d2 c4 r | r2 g4 bes | bes a bes c8(des) | ees4 aes, f'2 | % 187a
  bes,4 r r2 | r2 ees,4^\p c' | bes aes g8(f) ees4 | ees' des8(c) bes2 |
  aes4 r r2 | R1 | r2 aes4^\p 4 | des c8 8 bes2 |
  aes4 r ees g | aes c8 8 ees2 | aes,2 4 4 | des c8 8 bes2 | % 188a
  aes4 f' ees des | c des8 bes8 2 | aes4 r r2 | R1 |
  R1*3 | r1\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  See what love hath the Fa -- ther be -- stow'd on us __ in His good -- ness,
  that we should be call -- ed God's own chil -- dren,
  God's own chil -- dren.

  See what love hath the Fa -- ther be -- stow'd on us,
  love __ in His good -- ness,
  yea, in His good -- ness,
  that we should be call -- ed God's own chil -- dren,
  That we should be call -- ed God's own chil -- dren.

  See what love hath the Fa -- ther,
  see what love hath the Fa -- ther,
  see what love hath the Fa -- ther be -- stow'd on us
  in His good -- ness.
}

wordsSopMidi = \lyricmode {
  "See " "what " "love " "hath " "the " Fa "ther " be "stow'd " "on " "us "  "in " "His " good "ness, "
  "\nthat " "we " "should " "be " call "ed " "God's " "own " chil "dren, "
  "\nGod's " "own " chil "dren. "

  "\nSee " "what " "love " "hath " "the " Fa "ther " be "stow'd " "on " "us, "
  "\nlove "  "in " "His " good "ness, "
  "\nyea, " "in " "His " good "ness, "
  "\nthat " "we " "should " "be " call "ed " "God's " "own " chil "dren, "
  "\nThat " "we " "should " "be " call "ed " "God's " "own " chil "dren. "

  "\nSee " "what " "love " "hath " "the " Fa "ther, "
  "\nsee " "what " "love " "hath " "the " Fa "ther, "
  "\nsee " "what " "love " "hath " "the " Fa "ther " be "stow'd " "on " "us "
  "\nin " "His " good "ness. "
}

alto = \relative {
  \global
  R1*3
  ees'4^\p 4 aes g8 8 | f2 ees8 d ees f | g8(aes bes4. des8) c bes | % 185b
  aes8(g f4~8 g aes4~ | 4 g) aes8 r r4 | r8 e f g aes2~( |
  aes8 g) f4 ees^\cresc g8(aes) | bes4 ees,8(f) g4 4 | aes4 g f4. 8 | ees4 f8(ees) 4(d) | % 186a
  ees4 r r2 | des4^\p 4 ges4 8 8 | 4 (f8 ees) des4 r | r f2^\cresc e4 |
  r8 f e g c,4 f^\f | r8 f g g aes2~ | 4 g8 aes f4 8 8 |
  f8(aes g f) e4 r | c f f e | f2~(8 aes) g(f) | ees4 aes8(ges) f2 | % 187a
  es2 4^\p aes | g f ees8(f) ges(aes) | f4. 8 ees4 4 | aes f des2 |
  c4 r r2 | R1 | ees4^\p ees aes ges8 8 | f4(ees2 des4) |
  c4 r r2 | aes'2 ges | f4 aes8 8 4(ges | f ees2 des4) | % 188a
  c4 des ges f | ees f8 des8 2 | 4 r r2 | R1 |
  R1*3 | R1\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  See what love hath the Fa -- ther be -- stow'd on us __ in His good -- ness,
  yea, in His good -- ness,
  that we should be acll -- ed God's own chil -- dren,
  God's own chil -- dren.
                                % 186b
  See what love hath the Fa -- ther
  see, see what love the Fa -- ther be -- stow'd on us,
  yea, on us,
  in His good -- ness,
  that we should be call -- ed God's own chil -- dren,
  that we should be acll -- ed God's own chil -- dren,
  God's own chil -- dren.
                                % 187c
  See what love hath the Fa -- ther,
  see what love hath the Fa -- ther be -- stow'd
  on us in His good -- ness.
}

wordsAltoMidi = \lyricmode {
  "See " "what " "love " "hath " "the " Fa "ther " be "stow'd " "on " "us "  "in " "His " good "ness, "
  "\nyea, " "in " "His " good "ness, "
  "\nthat " "we " "should " "be " acll "ed " "God's " "own " chil "dren, "
  "\nGod's " "own " chil "dren. "
                                % 186b
  "\nSee " "what " "love " "hath " "the " Fa "ther "
  "\nsee, " "see " "what " "love " "the " Fa "ther " be "stow'd " "on " "us, "
  "\nyea, " "on " "us, "
  "\nin " "His " good "ness, "
  "\nthat " "we " "should " "be " call "ed " "God's " "own " chil "dren, "
  "\nthat " "we " "should " "be " acll "ed " "God's " "own " chil "dren, "
  "\nGod's " "own " chil "dren. "
                                % 187c
  "\nSee " "what " "love " "hath " "the " Fa "ther, "
  "\nsee " "what " "love " "hath " "the " Fa "ther " be "stow'd "
  "\non " "us " "in " "His " good "ness. "
}

tenor = \relative {
  \global
  R1 | aes4^\p 4 des c8 8  bes2 aes8 g aes bes |
  c8(bes) c des c(d ees4~ | 4 d) ees r | r8 bes ees des c4 8 8 |
  c2(des4 ees | f4. ees8) 4 r | r8 c d e f2(~ |
  f8 ees) d(c) bes4^\cresc ees, | f8(g) aes4 g8(bes) ees(des) | c4. 8 f(ees) d(c) | bes4 c f,(aes) | % 186a
  g4 r aes^\p aes | des4 c8 8 bes2 | aes4 r f' ees | des2^\cresc bes4 r |
  c4^\f c f ees8 8 | des2 c8 ees des c | bes2 aes4 bes8(aes) |
  g2 4 r | R1 | f4 ees' ees des | des c c bes8(aes) | % 187a
  g4 4 aes8^\p(bes) c(des) | ees4 aes,8(bes) c(des) ees4 | des4 c bes8(aes) g(f) | ees4 aes4 4(g) |
  aes4 r ees^\p g | aes c8 8 ees2~ | 4 des c2 | f,8(g) aes4 4(g) |
  aes4 r r2 | R1 | des2 c | f,8(g) aes aes aes4(g) | % 188a
  aes4 des aes aes | aes4 8 8 4(g) | aes4 r r2 | R1 |
  R1*3 | R1\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  See what love hath the Fa -- ther be -- stow'd on us __
  in His good -- ness,
  be -- stow'd on us in His good -- ness,
  yea, in His good -- ness,
  that we should be call -- ed God's own chil -- dren,
  God's own chil -- dren.
                                % 186b
  See what love hath the Fa -- ther in His good -- ness,
  see what love hath the Fa -- ther be -- stow'd on us
  in His good -- ness,
  that we should be call -- ed God's own chil -- dren,
  that we should be call -- ed God's own chil -- dren,
  God's own chil -- dren.
                                % 187c
  See what love hath the Fa -- ther,
  what love the Fa -- ther,
  see what love hath the Fa -- ther
  be -- stowed on us in His good -- ness.
}

wordsTenorMidi = \lyricmode {
  "See " "what " "love " "hath " "the " Fa "ther " be "stow'd " "on " "us " 
  "\nin " "His " good "ness, "
  "\nbe" "stow'd " "on " "us " "in " "His " good "ness, "
  "\nyea, " "in " "His " good "ness, "
  "\nthat " "we " "should " "be " call "ed " "God's " "own " chil "dren, "
  "\nGod's " "own " chil "dren. "
                                % 186b
  "\nSee " "what " "love " "hath " "the " Fa "ther " "in " "His " good "ness, "
  "\nsee " "what " "love " "hath " "the " Fa "ther " be "stow'd " "on " "us "
  "\nin " "His " good "ness, "
  "\nthat " "we " "should " "be " call "ed " "God's " "own " chil "dren, "
  "\nthat " "we " "should " "be " call "ed " "God's " "own " chil "dren, "
  "\nGod's " "own " chil "dren. "
                                % 187c
  "\nSee " "what " "love " "hath " "the " Fa "ther, "
  "\nwhat " "love " "the " Fa "ther, "
  "\nsee " "what " "love " "hath " "the " Fa "ther "
  "\nbe" "stowed " "on " "us " "in " "His " good "ness. "
}

bass = \relative {
  \global
  R1*6
  f4^\p f bes, c8 8 | des2 c8 des c bes | aes2~(8 c) f ees | % 185c
  d8(f) bes(aes) g4^\cresc c, | bes c8(d) ees4 4 | aes2~8 f bes aes | g4 aes, bes2 | % 186a
  ees4 r r2 | R1 | r2 f4^\p f | bes aes8^\cresc 8 g2 |
  f8 aes c bes aes4^\f(a) | bes ees, aes f | d e8 c f(ees) des c |
  bes2 4 r | R1 | r2 bes4 4 | c2(des~ | % 187a
  des8) bes ees des c4^\p f | ees4 f8(g) aes4 aes, | des4. 8 4 ees8(des) | c4 des ees2 |
  aes,4 r r2 | R1 | r2 aes2^\p | bes4 c8(des) ees2 |
  aes,4 r r2 | r2 aes4 c | des f8 8 aes2 | bes,4 c8 des ees2 | % 188a
  f4 des c des | ees4 8 8 2 | aes,4 r r2 | R1 |
  R1*3 | R1\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  See what love hath the Fa -- ther be -- stow'd on us __
  in His good -- ness,
  that we should be call -- ed God's __ own chil -- dren,
  God's own chil -- dren.
                                % 196b
  See what love hath the Fa -- ther be -- stow'd on us
  in His good -- ness,
  He hath be -- stow'd in His good -- ness,
  that we should be call -- ed,
  that we should be call -- ed God's own chil -- dren,
  God's own chil -- dren.
                                % 187c
  What love the Fa -- ther,
  see what love hath the Fa -- ther,
  hath the Fa -- ther be -- stow'd on us in His good -- ness.
}

wordsBassMidi = \lyricmode {
  "See " "what " "love " "hath " "the " Fa "ther " be "stow'd " "on " "us " 
  "\nin " "His " good "ness, "
  "\nthat " "we " "should " "be " call "ed " "God's "  "own " chil "dren, "
  "\nGod's " "own " chil "dren. "
                                % 196b
  "\nSee " "what " "love " "hath " "the " Fa "ther " be "stow'd " "on " "us "
  "\nin " "His " good "ness, "
  "\nHe " "hath " be "stow'd " "in " "His " good "ness, "
  "\nthat " "we " "should " "be " call "ed, "
  "\nthat " "we " "should " "be " call "ed " "God's " "own " chil "dren, "
  "\nGod's " "own " chil "dren. "
                                % 187c
  "\nWhat " "love " "the " Fa "ther, "
  "\nsee " "what " "love " "hath " "the " Fa "ther, "
  "\nhath " "the " Fa "ther " be "stow'd " "on " "us " "in " "His " good "ness. "
}

pianoRHone = \relative {
  \global
  aes'1^~ |
  <aes c>8-. <c, c'>-. <des des'>-. <ees ees'>-. <f f'> <g g'> <aes aes'> c |
  <f, f'>8 des' bes g <ees ees'> <f f'> <ees ees'> <des des'> |
  <c c'>8 <des des'> <c c'> <bes bes'> <c c'> <f f'> <ees ees'> <g g'> | % 185b
  <c c'>8 <aes aes'> <f f'> <d d'> <bes' bes'> <f f'> <bes bes'> <aes aes'> |
  <g g'> <f f'> <ees ees'> <g g'> <c c'> <bes bes'> <aes aes'> <g g'> |
  <aes aes'>8 <aes c f> <f aes c> <c f aes> <des f des'> <des g> <ees aes> <ees aes c> | % 185c
  <f aes f'>8 <f aes des> <g bes> <ees g> <ees aes ees'> <ees g bes> <f aes ees'><g des'> |
  <aes c>8 <e g> <aes c> <g bes> <f aes> <f aes c> <f aes d> <f aes ees'> |
  \voiceOne <f aes f'>8 g' aes <d,, f bes> bes'4(ees) | % 186a
  d4(c) bes(g') |
  \oneVoice <c, f>8(d ees f) <d, f bes>4. 8 |
  \voiceOne ees'8(<g, bes> <f aes> <ees g>) f2 |
  ees8-. des-. c-. bes-. aes-. <ges' ges'>-. <f f'>-. <ees ees'>-. | % 186b
  <des des'>8-. <f f'>-. <des des'>-. <aes aes'>-. <bes bes'> q <des des'> <ees ees'> |
  aes4 aes des c |
  <bes f'>8 f bes c d bes g c |
  aes8 c c g c f, <ees f c'>4~ | % 186c
  <des f c'>8 8 <des g bes> <des g c> aes'2~ |
  <bes, aes'>8 f' <g bes c>4 ~ <f aes c>8 q <f bes> <f aes c> |
  des'2 <e, g c>8 <bes' des>-. <aes c>-. <g bes>-. | % 187a
  aes8 des c b c g c bes |
  <bes c> <bes ees> <ees, a des> <ees a c> <des bes' des> aes' <g bes c> <f des'> |
  <ees ees'>8 <g ees'> <aes c> aes <f aes f'> <aes f'> <bes des> bes |
  <bes g'>8 <g ees'> <ees bes'> <bes g'> ees4(aes) | % 187b
  <ees g>4(<des f>) ees(c') |
  <des, f bes> (<f aes>) g8(f ees4) |
  <ees ees'>8(aes <f des'> c') <des, bes'>2 |
  <c aes'>8-. <c ees>-. <ees aes>-. <aes c>-. <g bes ees>(<f aes des> <ees g c> <des bes'>) | % 187c
  <c aes'>8-. <aes c ees>-. <c ees aes>-. <ees aes c>-. <g bes ees>(<f aes des> <ees g c> <des bes'>) |
  <c aes'>8-. <ees aes c>-. <g bes ees>-. <bes ees g>-. <c ees aes>(<ees ges> <ges, c ees> <ees ges c>) |
  <des f des'>8 g <ees aes c> q <ees aes bes>4~<des g bes> |
  <c aes'>8 <c ees>-. <ees aes>-. <aes c>-. <g bes ees>(<f aes des> <ees g c> <des bes'>) | % 188a
  <c aes'>8-. <aes c ees>-. <c ees aes>-. <ees aes c>-. <ees ges c ees>(<bes' des> <ees, aes c> <g bes>) |
  <f aes>8 <des f aes> <f aes des> <aes des f> <c ees aes>(ges' ees c) |
  des4 c8 8 bes2 |
  \oneVoice aes4 <f aes f'>(<ges aes ees'> <f aes des>) | % 188b
  <ees aes c>4(<f des'>8 <des bes'>) 2 |
  <c aes'>8-. <c c'>-. <des des'>-. <ees ees'>-. <f f'>-. <g g'>-. <aes aes'>-. <c c'>-. |
  <f f'>8-. des'-. bes-. ges-. <ees ees'>-. c'-. aes-. f-. |
  <c ges'>8-. <c ees>-. <des f>-. <aes des>-. <c ees>-. <ees, c'>-. <aes des>-. <f aes>-. | % 188c
  <des ges>8-. <ees aes>-. <des f>-. des-. <des g>-. <ees aes>-. <des f>-. des-. |
  <aes c ees aes>1~ |
  q4 r r2\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  r8 c'-. des-. ees-. f-. g-. aes-. bes-. |
  s1 |
  s1 |
  s1*6 |
  s2 ees,8(f g aes) | % 186a
  bes4 ees,8 f g4 <g bes> |
  s1 |
  ees4 c ees(d) |
  s1 | % 186b
  s2. ges4~ |
  ges4 f8 ees <des f> <f f'> q q |
  f8 8 <des f>4~f e |
  f4 e f8 c s4 | s2 c8 ees des c | s1 | % 186c
  <f g>8 aes g f s2 | s1 | s1 | s1 | % 187a
  s2 aes,8(bes c des) | s2 c8(des <ees ges> aes) | s2 ees4 s | s1 |
  s1*4 |
  s1*3 | f8 <des g> <ees aes> q~ q(bes des ees) | % 188a
  c4 s2. | s1 | s1 | s1 |
  s1*4 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p | s2 s-\markup\italic "sempre stacc." | s1 |
  s1*6
  s2.\mf s4\cresc | s1 | s2 s\f | s1 | % 186a
  s1\p | s1 | s1 | s1\cresc |
  s1 | s1 | s1\omit\f-\markup{\italic sempre \dynamic f} |
  s1*4 | % 187a
  s2\dim\> s\p | s1 | s1 | s1 |
  s1\p | s1 | s1 | s1 |
  s1 | s2 s\cresc | s2 s\f | s4 s2.\dim | % 188a
  s4 s2.\p | s1 | s1 | s1 |
  s1\dim | s1 | s1\pp | s1 |
}

pianoLHone = \relative {
  \global
  aes1~ |
  aes8-. aes,-. bes-. c-. s4 \voiceOne aes'~ |
  <<{aes4 g s2} \new Voice {\voiceThree bes2 \voiceTwo <c, aes'>8 <des g> <c aes'> <bes bes'>}>>
  aes8 bes aes g aes f c' bes | aes f bes aes g aes g f | ees f g f e g c e, | % 185b
  <f, f'>4 4 <bes bes'> <c c'> | <des des'>2 <c c'>8 des' c bes | aes4 r r8 c f ees |
  d8 f bes aes g(f g aes) | % 186a
  <<{f8 g} \new Voice {\voiceThree b4}>> aes4 g8(b ees des) |
  c8(d ees f) s2 |
  <g, bes>4 aes, f'(aes) |
  <ees g>8-. f-. ees-. des-. c-. bes-. aes-. ges-. | % 186b
  f8-. aes-. des-. f,-. ges ges bes c |
  des8 c des ees f f g a |
  bes8 f des f bes g c c, |
  <f, f'>8 <aes aes'> <c c'> <bes bes'> <aes aes'> <f f'> <a a'> <f f'> | % 186c
  <bes bes'>4 <ees, ees'> <aes aes'>8 <g g'> <f f'> <ees ees'> |
  <d d'>4 <ees ees'>8 <c c'> <f f'> <ees ees'> <des des'> <c c'> |
  <bes bes'>2 <c c'>4 r | % 187a
  c''4(f) f(e) |
  <f, f'>4 r8 <f, f'> <bes bes'>-. f'-. des-. bes-. |
  c4 c'2(bes8 aes) |
  <des, g bes>8 <bes g' bes> <ees g bes> des c4 f | % 187b
  r8 g(aes bes) aes4 aes, |
  r8 bes'(c des) des,4 <ees g>8(des) |
  <c aes'>4 <des aes'> aes'(g) |
  <aes, aes'>1 | % 187c
  <aes, aes'>1~ |
  q1 |
  <bes bes'>8 8 <c c'> <des des'> <ees ees'>4 q |
  <aes, aes'>1~ | % 188a
  q1 ~ |
  q1 |
  <bes bes'>8 8 <c c'> <des des'> <ees ees'>4 4 |
  <f f'>4 <des' aes'> <c aes'> <des aes'> | % 188b
  aes'2 4(g) |
  aes4 4(des <aes c>) |
  <<{bes2 aes~ | aes1} \new Voice {\voiceThree aes4 ges2 f4 | s1}>>
  aes1 | % 188c+
  aes,8-. c-. ees-. c-. aes-. ees-. c-. ees-. |
  aes,4 r r2\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  r8 aes,8-. bes-. c-. des-. ees-. f-. g-. |
  s2 des8 ees f ees |
  des8 bes ees des s2 |
  s1*6 |
  s2. c4 | % 186a
  bes4 <c ees>8 <d f> ees4 4 |
  aes4 4~8(f bes aes) |
  s2 bes,2 |
  s1*8 |
  c'2 2 | % 187a+
  s1 |
  s4 r8 c,8 des4 r8 des |
  s1 | % 187b
  ees4 f8 g s2 |
  des4. 8 4 s |
  s2 ees |
  s1*9 |
  ees2 2 | % 188b+
  aes,8-. 8-. bes-. c-. des-. ees-. f-. es-. |
  des8-. bes-. ees-. des-. c-. aes-. des-. aes-. |
  ees'8-. aes,-. f'-. aes,-. ges'-. ees-. f-. des-. | % 188c
  bes8-. c-. des-. aes-. bes-. c-. des-. f,-. |
  s1 |
  s1 |
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
%        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
