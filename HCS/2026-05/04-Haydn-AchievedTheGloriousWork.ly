\version "2.25.31"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Achieved is all Thy Work"
  subtitle    = "from The Creation"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Joseph Haydn"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
}

TempoTrack = {
  \tempo Vivace 4=110
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "130a" } s1*3
  \textMark \markup { \box "130b" } s1*3
  \textMark \markup { \box "131a" } s1*4
  \textMark \markup { \box "131b" } s1*4
  \textMark \markup { \box "132a" } s1*3
  \textMark \markup { \box "132b" } s1*3
  \textMark \markup { \box "133a" } s1*3
  \textMark \markup { \box "133b" } s1*3
  \textMark \markup { \box "134a" } s1*3
  \textMark \markup { \box "134b" } s1*3
  \textMark \markup { \box "135a" } s1*4
  \textMark \markup { \box "135b" } s1*3
  \textMark \markup { \box "136a" } s1*3
  \textMark \markup { \box "136b" } s1*3
  \textMark \markup { \box "137a" } s1*3
  \textMark \markup { \box "137b" } s1*3
  \textMark \markup { \box "138a" } s1*3
  \textMark \markup { \box "138b" } s1*3
  \textMark \markup { \box "139a" } s1*3
  \textMark \markup { \box "139b" } s1*3
  \textMark \markup { \box "140a" } s1*3
  \textMark \markup { \box "140b" } s1*3
  \textMark \markup { \box "141a" } s1*3
  \textMark \markup { \box "141b" } s1*4
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  r4 r8 c'' d c bes c16(d) | ees4. f8 d4 r | R1 |
  r4 r8 d g4. 8 | f4. bes,8 ees4. d8 | c4 r r8 c d d |
  c4 r r8 c d d | c4 r r2 | R1*2 | % 131a
  R1 | r2 bes4. c8 | d c d e f2 | e4. f16(e) d4. 8 |
  c8 c f8 8 4(e | f8) ees d c b4 r | r8 d g g g4(f) | % 132a
  r8 bes, ees8 8 4(d) | R1*2 |
  r2 c4. 8 | d c d e f2 | e4. f16(e) d4. 8 | % 133a
  c8 8 8 d16(c) bes2( | a8) f bes8 8 4(a) | r8 a c c c4(bes8) 8 |
  a4. 8 g4 r | d'4. 8 ees d ees f | g2.(f4~ | % 134a
  f4) ees8 8 4 d | ees r r2 | R1 |
  R1 | r8 bes ees8 8 4(d) | r8 g, c8 8 4(bes) | r8 ees, aes8 8 4(g) | % 135a
  r8 f f'2 ees4 | d4. b8 c(b) c(d) | ees4 r r2 |
  r8 aes, aes'8 8 2 | r8 aes, aes'8 8 2 | r8 aes, aes' f d d ees8 8 | % 136a
  d8 f g g f4 r | bes,4. 8 c bes c d | ees2 d |
  r8 c c c bes4 r | r8 aes8 8 8 g g g g~ | 2 g'~ | % 137a ???
  g2~8 f ees d | c4 8 d e c d e | f2 f,4 r |
  bes4. 8 c bes c d | ees2 d4 r | r8 c g'8 8 4(f) | % 138a
  r8 e8 8 8 2~ | 4. 8 4. 8 | f8 f f f ges4(f) |
  r8 f f f aes2~ | 8(g f16 ees) d(c) bes4 a | bes r r2 | % 139a
  r8 d g8 8 4(f) | r8 bes, ees8 8 4(d) | r8 f, bes8 8 4(a) |
  r8 f d'8 8 4(c) | r8 f, f'8 8 4(e~) | e8 8 8 8 f ees8 8 8 | % 140a
  d4 g f a, | bes4 8 8 c bes c d | ees2 d4. 8 |
  ees4. 8 8(d) 4 | ees4. 8 4(d) | r8 d8 8 8 4(ees) | % 141a
  r4 g8 r f r a, r | bes r g' r f r a, r | bes4 r r2 | R1 |
  \bar "|."
}

wordsSop = \lyricmode {
  A -- chiev -- ed is the glo -- rious work;
  our song let be the praise of God
  the praise of God the praise of God
  Glo -- ry to his name for e -- ver % 131b
  he sole on high ex -- alt -- ed reigns __
  al -- le -- lu -- ja
  he sole on high ex -- alt -- ed reigns.
  Glo -- ry to his name for e -- ver % 133a
  He sole on high ex -- alt -- ed reigns __
  He sole on high ex -- alt -- ed reigns
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver % 134a
  al -- le -- lu -- ja
  He sole on high, % 135a
  he sole on high ex -- alt -- ed reigns
  ex -- alt -- ed reigns
  al -- le -- lu -- ja
  he sole on high ex -- alt -- ed reigns
  al -- le -- lu -- ja
  al -- le -- lu -- ja,
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver
  al -- le -- lu -- ja % 137a
  al -- le -- lu -- ja,
  al -- le -- lu -- ja
  al -- le -- lu -- ja.
  Glo -- ry to his name for e -- ver
  Glo -- ry to his name for e -- ver % 138a
  He sole on high ex -- alt -- ed reigns
  he sole on high ex -- alt -- ed reigns
  ex -- alt -- ed reigns % 139a
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  He sole on high __ ex -- alt -- ed reigns
  ex -- alt -- ed reigns __ % 140a
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver
  he sole on high ex -- alt -- ed reigns
  ex -- alt -- ed reigns % 141a
  al -- le -- lu -- ja,
  al -- le -- lu -- ja.
}

wordsSopMidi = \lyricmode {
  "A" chiev "ed " "is " "the " glo "rious " "work; "
  "\nour " "song " "let " "be " "the " "praise " "of " "God "
  "\nthe " "praise " "of " "God " "the " "praise " "of " "God "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver " % 131b
  "\nhe " "sole " "on " "high " ex alt "ed " "reigns " 
  "\nal" le lu "ja "
  "\nhe " "sole " "on " "high " ex alt "ed " "reigns. "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver " % 133a
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns " 
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver " % 134a
  "\nal" le lu "ja "
  "\nHe " "sole " "on " "high, " % 135a
  "\nhe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nex" alt "ed " "reigns "
  "\nal" le lu "ja "
  "\nhe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nal" le lu "ja "
  "\nal" le lu "ja, "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nal" le lu "ja " % 137a
  "\nal" le lu "ja, "
  "\nal" le lu "ja "
  "\nal" le lu "ja. "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver " % 138a
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nhe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nex" alt "ed " "reigns " % 139a
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nHe " "sole " "on " "high "  ex alt "ed " "reigns "
  "\nex" alt "ed " "reigns "  % 140a
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nhe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nex" alt "ed " "reigns " % 141a
  "\nal" le lu "ja, "
  "\nal" le lu "ja. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  r4 r8 a' bes a bes bes | 4 a bes r8 d | c4. d16(c) bes4. 8 |
  a4. bes16(a) g4 r | r r8 f8 4. bes8 | f4 r r8 f f f |
  f4 r r8 f f f | 4 r r2 | R1*2 | % 131a
  R1*2 | r2 r8 a d d | 4(c) r8 f, bes8 8 |
  bes4(a8) a g4. 8 | a4 r r2 | R1 | % 132a
  r2 f4. 8 | g f g a bes2 | a4. bes16(a) g4. a16(g) |
  f8 8 8 g16(f) e4(f) | r2 r8 a d d | 4(c4.) 8 bes8 8 | % 133a
  a4. 8 g4. 8 | f2 r8 c f f | 4(ees) r8 d g g |
  g4(fis8) 8 g(fis) g(a) | bes8 8 aes8 8 g4 r | R1 | % 134a
  r8 bes8 8 aes16(g) f8 f bes aes | g4 r r2 | bes4. 8 c bes c d |
  ees2 d8 bes c d | ees4 r8 g, aes(g) aes(bes) | c4 r8 ees, f(ees) f(g) | aes4 r8 c, d(c) d(e) | % 135a
  f4. d'16(c) b4 c | 4(b8) g8 4 f | ees8 8 aes g f ees f g |
  aes2 r8 8 8 8 | 2 r8 8 8 ees | f2~8 8 g g | % 136a
  f8 bes, bes'8 8 4 r | f4. 8 g f g aes | bes2 aes |
  r8 g aes8 8 f4 r | r8 ees f f d4 r | g4. 8 a g a b | % 137a
  c2 b4 r | r8 c c c bes4 r | a4. 8 bes a bes c |
  d4 bes r2 | r8 a c8 8 4(bes8) 8 | 4. 8 a4. 8 | % 138a
  bes2. 4 | 1( | a2) r8 8 8 8 |
  bes2 r8 b b b | c4. g8 f4. 8 | 4 d' c4. d16(c) | % 139a
  bes4 4 aes4. bes16(aes) | g4 r8 8 f4. 8 | 8 8 d8 8 4(c) |
  r8 f bes8 8 4(a) | r8 f d' bes g4~4~ | 8 8 8 8 f a a a | % 140a
  bes4 4 4 f | f r r2 | r8 a8 8 8 4(bes) |
  r8 a8 8 8 4(bes) | r8 a8 8 8 4(bes) | r8 8 8 8 2 | % 141a
  r4 bes8 r bes r ees, r | d r bes' r f r f r | f4 r r2 | R1 |
}

wordsAlto = \lyricmode {
  A -- chiev -- ed is the glo -- rious work;
  our song let be the praise of God
  the praise of God
  the praise of God
  the praise of God % 131a
  He sole on high ex -- alt -- ed reigns
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver % 132b
  He sole on high ex -- alt -- ed reigns
  He sole on high ex -- alt -- ed reigns % 133a
  al -- le -- lu -- ja
  he sole on high ex -- alt -- ed reigns
  al -- le -- lu -- ja, % 134a
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver
  al -- le -- lu -- ja. % 135a
  He sole on high,
  he sole on high ex -- alt -- ed reigns
  ex -- alt -- ed riegn
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  He sole on hign ex -- alt -- ed reigns __ % 136a
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver
  al -- le -- lu -- ja % 137a
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver
  He sole on high __ ex -- alt -- ed reigns % 138a
  ex -- alt -- ed reigns __
  al -- le -- lu -- ja
  al -- le -- lu -- ja % 139a
  al -- le -- lu -- ja,
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  al -- le -- lu -- ja.
  He sole on high __ ex -- alt -- ed reigns __
  ex -- alt -- ed reigns __ % 140a
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  He sole on high __ ex -- alt -- ed reigns
  ex -- alt -- ed reigns % 141a
  ex -- alt -- ed reigns
  al -- le -- lu -- ja,
  al -- le -- lu -- ja.
}

wordsAltoMidi = \lyricmode {
  "A" chiev "ed " "is " "the " glo "rious " "work; "
  "\nour " "song " "let " "be " "the " "praise " "of " "God "
  "\nthe " "praise " "of " "God "
  "\nthe " "praise " "of " "God "
  "\nthe " "praise " "of " "God " % 131a
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver " % 132b
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns " % 133a
  "\nal" le lu "ja "
  "\nhe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nal" le lu "ja, " % 134a
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nal" le lu "ja. " % 135a
  "\nHe " "sole " "on " "high, "
  "\nhe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nex" alt "ed " "riegn "
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nHe " "sole " "on " "hign " ex alt "ed " "reigns "  % 136a
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nal" le lu "ja " % 137a
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nHe " "sole " "on " "high "  ex alt "ed " "reigns " % 138a
  "\nex" alt "ed " "reigns " 
  "\nal" le lu "ja "
  "\nal" le lu "ja " % 139a
  "\nal" le lu "ja, "
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nal" le lu "ja. "
  "\nHe " "sole " "on " "high "  ex alt "ed " "reigns " 
  "\nex" alt "ed " "reigns "  % 140a
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nHe " "sole " "on " "high "  ex alt "ed " "reigns "
  "\nex" alt "ed " "reigns " % 141a
  "\nex" alt "ed " "reigns "
  "\nal" le lu "ja, "
  "\nal" le lu "ja. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  r4 r8 f' f ees d g | 4 c, d r | R1 |
  r4 r8 d8 4(c8) 8 | c4(bes8) 8 a(c4) bes8 | a4 r r8 a bes8 8 |
  a4 r r8 a bes8 8 | aes4 r r2 | R1 | r8 d g g g4(f) | % 131a
  r8 bes, ees8 8 4(d8) d | c4. 8 d d f ees | d f d bes a4 r | R1 |
  R1 | a4. 8 bes a bes c | d2 c8 8 f16(ees) d(c) | % 132a
  bes8 8 8 c16(bes) a4 r | bes4. c8 d c d e | f2 e4. f16(e) |
  d4. 8 c c c c | bes2(a4) r | r2 r8 d g g | % 133a
  g4(f) r8 bes, ees8 8 | 4(d) r8 f,16(g) a8 b | c4 r r8 g16(a) bes8 cis |
  d4 2 c8 8 | bes4 4 g'4. f8 | ees(d ees) d c4. 8 | % 134a
  bes4 r4 4. 8 | c bes c d ees2~ | 4 d8 d ees(d) ees(f) |
  g4 g f8(d) ees(f) | g4 r r2 | R1*2 | % 135a
  R1 | g,4. 8 a g a b | c4(ees2) des4 |
  c4 8 8 4. 8 | f4. 8 ees4. 8 | d4. f8 bes,8 8 8 8 | % 136a
  bes8 d ees8 8 d4 r | 4. 8 ees d ees f | g2 f |
  r8 e f f d4 r | r8 c d d b4 r | d4. 8 ees d ees f | % 137a
  g2 f4 r | r2 r8 bes,8 8 8 | a4 r r2 |
  d4. 8 c d c bes | a2 d4 g, | c2. 4 | % 138a
  r8 bes8 8 c des4(c) | r8 bes8 8 c des4(c) | r8 c8 8 8 2 |
  r8 d d d f f f f | f(ees~16 g) f(ees) d4 c | d r8 d ees(d) ees(f) | % 139a
  g4 r8 bes, c(bes) c(d) | ees4 r8 16(d) c4 bes | a r r8 f ees'8 8 |
  ees4(d) r8 f, ees'8 8 | 4(d) r8 f, des'8 8 | 2(c8) 8 8 8 | % 140a
  bes4 ees d c | d4 8 8 ees d ees f | ges2 f4. 8 |
  ges4. 8 8(f) 4 | ges4. 8 4(f) | r8 f8 8 8 4(ees) | % 141a
  r4 ees8 r d r c r | d r ees r d r c r | bes4 r r2 | R1 |
}

wordsTenor = \lyricmode {
  A -- chiev -- ed is the glo -- rious work;
  our song let be the praise of God
  the praise of God
  the praise of God % 131a
  He sole on high ex -- alt -- ed reigns
  al -- le -- lu -- ja,
  al -- le -- lu -- ja,
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver % 132a
  al -- le -- lu -- ja,
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver
  he sole on high ex -- alt -- ed reigns
  He sole on high ex -- alt -- ed reigns % 133a
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  he sole on high ex -- alt -- ed reigns % 134a
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver
  al -- le -- lu -- ja,
  al -- le -- lu -- ja % 135a
  Glo -- ry to his name for e -- ver
  He sole on high ex -- alt -- ed reigns % 136a
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver
  al -- le -- lu -- ja % 137a
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver % 138a
  for e -- ver
  he sole on high ex -- alt -- ed reigns
  al -- le -- lu -- ja
  al -- le -- lu -- ja % 139a
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  He sole on high ex -- alt -- ed reigns
  ex -- alt -- ed reigns __ % 140a
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver
  he sole on high ex -- alt -- ed reigns % 141a
  ex -- alt -- ed reigns
  al -- le -- lu -- ja,
  al -- le -- lu -- ja.
}

wordsTenorMidi = \lyricmode {
  "A" chiev "ed " "is " "the " glo "rious " "work; "
  "\nour " "song " "let " "be " "the " "praise " "of " "God "
  "\nthe " "praise " "of " "God "
  "\nthe " "praise " "of " "God " % 131a
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nal" le lu "ja, "
  "\nal" le lu "ja, "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver " % 132a
  "\nal" le lu "ja, "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nhe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns " % 133a
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nhe " "sole " "on " "high " ex alt "ed " "reigns " % 134a
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nal" le lu "ja, "
  "\nal" le lu "ja " % 135a
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns " % 136a
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nal" le lu "ja " % 137a
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver " % 138a
  "\nfor " e "ver "
  "\nhe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nal" le lu "ja "
  "\nal" le lu "ja " % 139a
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nex" alt "ed " "reigns "  % 140a
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nhe " "sole " "on " "high " ex alt "ed " "reigns " % 141a
  "\nex" alt "ed " "reigns "
  "\nal" le lu "ja, "
  "\nal" le lu "ja. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  r4 r8 f bes f g ees16(d) | c4 f bes, r8 bes' | a4. bes16(a) g4. 8 |
  f4. 8 ees4. 8 | d4. 8 c a' bes e, | f4 r r8 f d bes |
  f'4 r r8 f d bes | f'4 r r2 | 4. 8 g f g a | bes2 a4. bes16(a) | % 131a
  g4. 8 f f bes8 8 | 4(a bes8) f d' c | bes a bes g f4 r | R1 |
  R1 | f4. 8 g f g a | bes2 a4. bes16(a) | % 132a
  g4. 8 f g16(a) bes8 bes, | ees2(d4) r | r8 a' d8 8 4(c) |
  r8 f, bes8 8 4(a8) a | g4. 8 f4 r | R1 | % 133a
  R1*3 |
  d4. 8 e d e fis | g4 f ees4. d8 | c b c bes aes2 | % 134a
  g2 r | ees'4. f8 g f g a | bes2 a4. aes8 |
  g8(f) g(aes) bes aes g f | ees4 r r2 | R1*2 | % 135a
  R1*2 | c4. 8 des c des ees |
  f2 ees | des4 8 8 c4 ces | bes4. 8 bes'2~ | % 136a
  bes8 8 g ees bes'4 r | R1*2 |
  r2 r8 d ees8 8 | c4 r r8 b c c | g4 b8 b c b c d | % 137a
  ees2 d4 r | aes4. 8 g8 8 8 8 | f4 4 r2 |
  bes4. 8 a bes a g | fis2 g4. f8 | e4. 8 f4 4 | % 138a
  g2. 4 | g1( | f2) r8 ees8 8 8 |
  d2 r8 d d d | e4. 8 f4. 8 | bes,4 r r2 | % 139a
  R1 | r4 c' a bes | f r r8 f c' c |
  c4(bes) r8 f c' c | 4(bes) r8 f bes8 8 | 2(a8) fis8 8 8 | % 140a
  g4 ees f4. 8 | bes,4 r r2 | r8 bes bes'8 8 2 |
  r8 bes, bes'8 8 2 | r8 bes, bes'8 8 2 | r8 aes8 8 8 4(g) | % 141a
  r4 ees8 r f r f r | bes r ees, r f r f r | bes,4 r r2 | R1 |
}

wordsBass = \lyricmode {
  A -- chiev -- ed is the glo -- rious work;
  our song let be the praise of God,
  our song let be the praise of God
  the praise of God
  the praise of God % 131a
  Glo -- ry to his name for e -- ver,
  He sole on high ex -- alt -- ed reigns
  al -- le -- lu -- ja,
  al -- le -- lu -- ja
  Glo -- ry to his name for e -- ver % 132a
  he sol on high ex -- alt -- ed reigns
  he sole on high __ ex -- alt -- ed reigns
  al -- le -- lu -- ja % 133a
  Glo -- ry to his name for e -- ver, % 134a
  glo -- ry to his name for e -- ver
  Glo -- ry to his name for e -- ver
  al -- le -- lu -- ja
  al -- le -- lu -- ja % 135a
  Glo -- ry to his name for e -- ver
  He sole on high ex -- alt -- ed reigns __ % 136a
  al -- le -- lu -- ja
  al -- le -- lu -- ja % 137a
  al -- le -- lu -- ja.
  Glo -- ry to his name for e -- ver
  Glo -- ry to his name for e -- ver
  Glo -- ry to his name for e -- ver, % 138a
  He sole on high ex -- alt -- ed reigns __
  al -- le -- lu -- ja
  al -- le -- lu -- ja % 139a
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  He sole on high __ es -- alt -- ed reigns __
  ex -- alt -- ed reigns __ % 140a
  al -- le -- lu -- ja
  al -- le -- lu -- ja
  He sole on high ex -- alt -- ed reigns
  ex -- alt -- ed reigns % 141a
  ex -- alt -- ed reigns
  al -- le -- lu -- ja,
  al -- le -- lu -- ja.
}

wordsBassMidi = \lyricmode {
  "A" chiev "ed " "is " "the " glo "rious " "work; "
  "\nour " "song " "let " "be " "the " "praise " "of " "God, "
  "\nour " "song " "let " "be " "the " "praise " "of " "God "
  "\nthe " "praise " "of " "God "
  "\nthe " "praise " "of " "God " % 131a
  "\nGlo" "ry " "to " "his " "name " "for " e "ver, "
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nal" le lu "ja, "
  "\nal" le lu "ja "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver " % 132a
  "\nhe " "sol " "on " "high " ex alt "ed " "reigns "
  "\nhe " "sole " "on " "high "  ex alt "ed " "reigns "
  "\nal" le lu "ja " % 133a
  "\nGlo" "ry " "to " "his " "name " "for " e "ver, " % 134a
  "\nglo" "ry " "to " "his " "name " "for " e "ver "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nal" le lu "ja "
  "\nal" le lu "ja " % 135a
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns "  % 136a
  "\nal" le lu "ja "
  "\nal" le lu "ja " % 137a
  "\nal" le lu "ja. "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver "
  "\nGlo" "ry " "to " "his " "name " "for " e "ver, " % 138a
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns " 
  "\nal" le lu "ja "
  "\nal" le lu "ja " % 139a
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nHe " "sole " "on " "high "  es alt "ed " "reigns " 
  "\nex" alt "ed " "reigns "  % 140a
  "\nal" le lu "ja "
  "\nal" le lu "ja "
  "\nHe " "sole " "on " "high " ex alt "ed " "reigns "
  "\nex" alt "ed " "reigns " % 141a
  "\nex" alt "ed " "reigns "
  "\nal" le lu "ja, "
  "\nal" le lu "ja. "
}

pianoRHone = \relative {
  \global
  bes8 d16 f bes8-! <f a c>-! <f bes d>-! <ees a>-! \vo bes'8 c16 d |
  ees4. f8 d ees16 f g8 8 | 4 f8 f bes ees, ees ees |
  ees8.\trill d32 ees d8 d g8 4 ees16 c | % 130b
  f8 4 d16 bes <a ees>8 <f c' ees>4 d'8 |
  \ov <a c>8 <c f a> <d f bes> d16 bes \vo c8-! \ov r r4 |
  r8 <c f a> <d f bes> <d f>16 bes \vo c8-! \ov r r4 | % 131a
  r8 <c f a> <d f bes> <f bes d> <f a c>4 r | R1 | r8 d,-! g-! g-! g c, f4 |
  r8 bes, ees8 8 8. f32 ees d8 8 | % 131b
  c2\trill \vo bes'4. c8 | d c d e f2 | e4. f16 e d4. g8 |
  c,8 c f8 8 4 e\trill | f8 ees d c \ov bes8 c16 d ees8 8 | % 132a
  d8 bes g'8 8 8. a32 g f4~ |
  f8 bes16 g ees8 8 \vo 8.\trill d32 ees d8 r | % 132b
  \ov g,8 f g a \vo bes2 | a4. bes16 a g4. a16 g |
  <<{\vo r2 c4. 8} \new Voice {\vth f,8 8 8 g16 f e4 f}>> | % 133a
  \ov d'8-. c-. d-. e-. \vo f2 | e4. f16 e d4. g8 |
  c,8 8 8 d16 c bes4. c16 bes | a8 f bes8 8 8. c32 bes a8 8 | % 133b
  g8 c, c'8 8 8. d32 c bes8 8 |
  a2\trill g4 r | d'4. 8 ees d ees f | g4 4~8 c, f4~ | % 134a
  f8 bes ees,8 8 4 d | ees r r2 | bes4. 8 c bes c d |
  ees2 d8 8 ees f | g4. aes16 g f8 8 8 g16 f | % 135a
  ees4. f16 ees des8 8 16 f ees des | c4. des16 c bes8 8 8 c16 bes |
  aes8 f f'2 ees4 | d8 g, g'2 f4 | ees4 2 des4 | % 135b
  c8 16 f aes8 8 8 c,16 ees aes8 8 | % 136a
  aes8 des,16 f aes8 8 \ov <ees aes> <aes, c>16 ees' <ees aes>8 8 |
  <d aes'>8 d16 f aes g f ees d8 <bes d> <bes ees> <bes ees g> |
  <bes d f>8 <bes d f aes> <bes ees g> q <bes d f> <f' aes d> <ees g ees'> <ees g> | % 136b
  \vo <d f>16 bes' bes, bes' bes, bes' bes, bes' c, bes' bes, bes' c, bes' d, bes' |
  ees,16 bes' bes, bes' c, bes' c, bes' d, bes' bes, bes' d, bes' des, bes' |
  <c, bes'>8-! r <c aes'>-! r <bes f' aes>-! r <bes ees g>-! r | % 137a
  <aes ees' g>8-! r <aes d f>-! r <g d' f>-! r <g c ees>-! r |
  <g d'>16 g' g, g' g, g' g, g' a, g' g, g' a, g' b, g' |
  c,16 g c ees g8 8 16 aes f g ees f d ees | % 137b
  \ov c16 c' c, c' c, c' d, c' e, [ c' ] <c, e>8-. <d f>-. [ <e g>-. ] |
  <f a>8 c16 a <f' a>8 <a, f'> <bes f'> <a f'> <bes a'>16 ees d c |
  <d, bes'>4. bes'8 c-! bes-! c-! d-! | % 138a
  \vo ees2 d | r8 c g' g g4 f |
  e16 g bes g ees8 8 e2 | 16 g bes g e8 8 2 | f16 c a c f8 8 ges4(f) | % 138b
  f16 d bes d f8 8 \ov <b, aes'>2~ \vo | % 139a
  aes'8 g f16 ees d c bes8 f ees <ees a> |
  <bes d bes'> f'' \vo bes8 [ 8 ] 4 a~ |
  a8 d, g8 8 4 f~ | 8 bes, ees8 8 4 d | % 139b
  \ov <f, a c>8 f <d bes'> q q4 <<{\vo a'4} \new Voice {\vth ees8 8}>> \vo |
  r8 f <bes d>8 8 4 <a c> | r8 f <d' f> <bes f'> f'4 e | % 140a
  s8 \ov <e g>\turn <e bes'> <g, ees'> <f f'> <a ees'> q q |
  <bes d>8 r <bes ees g> r <bes d f> r <f a> r | % 140b
  \vo \repeat unfold 4 {bes16 bes'} c, bes' bes, bes' c, bes' d, bes' |
  bes8 a a a a4 bes |
  r8 a a a a bes8 4 | r8 a a a a bes8 4 | % 141a
  \ov r8 <f bes d>8 8 8 8(<ees ees'>) <ees bes' ees>4 |
  r4 <g, bes ees g>8-! r <f bes d f>-! r <c ees f a>-! r  | % 141b
  <d f bes>8-! r <f bes d f>-! r <f bes d f>-! r <c ees f a>-! r |
  <bes d f bes>8-! r <ees f a c>-! r <d f bes d>-! r <a' c ees f a>-! r |
  <bes d f bes>4 r r2 |
}

pianoRHtwo = \relative {
  \global \vt
  s2. d'8 bes'~ | 8 a16 g a bes c a f4 r8 d' | c4. 8 bes4. 8 |
  a4. d8 4 c | c bes s2 | s a8 s4. |
  s2 a8 r r4 | s1*3 | % 131a
  s1 | s2 d,16 c d ees f8 ees | d f d \lh bes \rh r a' d d | d g, c4~8 f, bes8 8 |
  bes4 a g2 | f4 r s2 | s1 | % 132a
  s2 f4. 8 | s2 d8 c d e | f2 e4. f16 e |
  d4. 8 c8 8 8 8 | s2 r8 a' d d | d4 c4. f,8 bes8 8 | % 133a
  a4. bes16 a g2 | f r8 c f f | 4 ees8 8 d \lh g, \rh g' [ g ] |
  g4 fis g8 fis g a | b4 aes g r | r r8 g ees'4. f8 | % 134a
  bes,4. aes16 g f8 f bes aes | g4 r r2 | s2 ees8 d ees f |
  g2 f8 bes c d | ees bes ees8 8 4 d~ | 8 g, c8 8 4 bes~ | 8 ees, aes8 8 4 g | % 135a
  f8 a4 f'16 ees d4 c | c b8 8 c b c d | ees ees, aes g f ees f g |
  aes8 8c c c aes c c | f [ aes, ] f' f s2 | s1 | % 136a
  s1 | s8 <bes,, d>16 <c ees> <d f>8 8 <ees g> <d f> <ees g> <f aes> | <g bes> \lh g, g \rh q <f' aes> \lh f, f \rh q |
  <e' g>8-! r f-! r d-! r ees-! r | c-! r d-! r s2 | s <c ees>8 <b d> <c ees> <d f> | % 137a
  <ees g>8 s c'4 b b | s1*2 |
  s1 | r8 a c8 8 4 bes~ | 8 8 8 8 a2 | % 138a
  bes8 8 8 c des4(c) | r8 bes8 8 c des4(c) | r8 a a [ a ] a2 |
  r8 bes8 8 [ 8 ] s2 | c4 g8 8 d4 c8 8 | s4 d' c4. d16 c | % 139a
  bes2 aes4. bes16 aes | g2 f8 c' <f, bes> q | s2. c4 |
  ees4 d r8 f ees ees | 4 d g2~ | \vo <g ees'>8 \vt s2.. | % 140a
  s1 | \crossStaff {d4 8 8 ees d ees f} | ges2 <f d'>4. 8 |
  <ges ees'>4. 8 8 <f d'>8 4 | <ges ees'>4. 8 8 <f d'>8 4 | s1 | % 141a
  s1*4 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*5 |
  s1*8 | % 131
  s1*6 |
  s1*6 |
  s1*6 | % 134
  s1*7 |
  s1*6 |
  s1*6 | % 137
  s1*3 | s2 s\fz | s s\fz | s s\fz |
  s2 s\fz | s1 | s2 s\fz | s s\fz | s s\fz | s s\fz |
  s2\fz s\fz | s\fz s\fz | s1\fz | s1*2 | s2 s\fz | % 140
  s2 s\fz | s s\fz | s s\fz | s1*4 |
}

pianoLHone = \relative {
  \global
  bes,8 d16 f bes8 f bes f \vo g4~ | 4 f \ov bes,8 bes'16 a bes8 bes, |
  a8 a' a a g, g'16 fis g8 g, |
  f8 [ f' ] f f, ees ees'16 d ees8 8 | % 130b
  d8 d'16 c d8 d, c [ a' ] bes e, | f ees d bes16 d f8-! r r4 |
  r8 f d bes f'-! r r4 | r8 f d bes <f f'>4 r | % 131a
  f'4. 8 g f g a | bes2 a4. bes16 a |
  g2 f4 \vo bes~ | 4 a \ov <d, bes'>8 bes d' [ c ] | % 131b
  bes8 a bes g \vo a4 \ov r8 b | c c, r a' a d g f |
  e8 c d c bes a16 bes c8 bes | \vo a4. 8 bes a bes c | % 132a
  d2 c4 f16 ees d c |
  bes4. c16 bes a8 s \ov bes bes, \vo | bes'4. 8 \ov d,4 r | % 132b
  r8 a' d d d g, c c |
  c8 f, bes8 8 4 a8 a | \vo bes2\trill a4 \ov r8 b | % 133a
  c8 g c a bes d g g |
  g8(c, f4.) bes,8 ees8 8 | 4 d8 bes f f r b | c c r fis, g g r cis | % 133b
  \vo d4 2 c4 | bes r r g8 f | ees d ees d c2 | % 134a
  bes4 r bes'4. 8 | c bes c d ees2~ | 4 d8 d \ov a4. aes8 |
  g8 f g aes bes aes g f | ees4 \clef treble r8 g' aes g aes bes | % 135a
  c4. ees,8 f ees f g | aes4. c,8 d c d e |
  f4. d16 c b8 b' c fis, | <g, g'>4. \clef bass g8 a g a b | % 135b
  <c, c'>4. c8 des c des ees |
  f8 [ f, ] f' f ees [ ees, ] ees' ees | % 136a
  des8 [ des, ] des' des c4 ces | bes8 [ bes' ] bes,8 8 8 [ bes' ] g ees |
  \vo r8 bes'8 8 8 r8 8 8 8 | \ov bes,8 s2.. | s1 | % 136b
  s1 | s2 b'8-! r c-! r | <b d>4 8 8 s2 | % 137a
  s8 c, ees c g' [ g, ] g' g | \vo ees'2 bes | a4 \ov f8 f g f g a |
  bes8 [ bes, bes' ] \vo d c d c bes | a s \ov f f g [ g, ] g' f | % 138a
  \vo c'2 \ov f,8 f, \vo s8 c'' |
  \ov <g bes>2~8 8 8 8 | 2~8 8 8 8 | \vo r8 c8 8 8 2 | % 138b
  d2 r8 f, f f | \ov ees [ ees, ] ees'8 8 f [ f, ] f' f | % 139a
  bes,4 r8 d' ees d ees f |
  g4 r8 bes, c bes c d | ees4 r8 c16 bes a8 f bes [ bes, ] | % 139b
  <f f'>2~ f'8 f, f' [ f ] |
  \vo c'4 bes s8 \ov <f, f'> <f' c'> q | % 140a
  \vo c'4 bes s8 \ov <f, f'> <f' bes des> q |
  \ov q2(<f a c>8) <fis c'>8 8 8 |
  <g bes>8 r <ees, ees'> r <f f'> r q r | % 140b
  \vt bes'4 8 [ 8 ] 8 [ 8 ] 8 [ 8 ] | \ov bes2~8 8 8 8 | % need explicit beams for cross-staff notes
  bes2~8 8 8 8 | 2~8 8 8 8 | aes\fz <aes, aes'>8 [ 8 8 ] 8(<g g'>) 4 | % 141a
  r4 <ees ees'>8-! r <f f'>-! r f-! r | % 141b
  <bes, bes'>-! r <ees ees'>-! r <f f'>-! r \ottava #-1 f,-! \ottava #0 r |
  <bes bes'>8-! r <f' f'>-! r <bes bes'>-! r <f a c f>-! r |
  <bes, bes'>4 r r2 |
}

pianoLHtwo = \relative {
  \global \vt
  s1 | c8 d16 ees s2. | s1 |
  s1*3 |
  s1*4 | % 131a
  s2. g4 | ees f8 ees s2 | s2 f4 s | s1 |
  s1 | f4. 8 g f g a | bes2 a4. bes16 a | % 132a
  g4. 8 f g16 a s4 | ees2 s | s1 |
  s1 | g2 f4 s | s1 | % 133a
  s1*3 |
  d4. 8 e d e fis | g4 f ees4. d8 | c b c bes aes2 | % 134a
  g2 r | ees'4. f8 f d f a | bes2 s |
  s1*4 | % 135a
  s1*3 |
  s1*3 | % 136a
  bes,4 g'8 ees bes4 g'8 ees | s1*2 |
  s1*3 | % 137a
  s1 | aes4. 8 g g g g | f4 8 8 s2 |
  s4. bes8 a bes a g | fis [ fis, ] s2. | e'4. 8 s4 f8 f | % 138a
  s1*2 | f8 8 8 8 ees8 8 8 8 |
  d2~8 8 8 8 | s1*2 | % 139a
  s1*3 |
  f2~8 s4. | f2~8 s4. | s1 | % 140a
  s1*3 |
  s1*3 | % 141a
  s1*4 |
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-alto
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-tenor
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bass
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-sop
  }
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-alto
  }
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-tenor
  }
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-bass
  }
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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
