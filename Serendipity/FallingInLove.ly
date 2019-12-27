\version "2.13.59"

global = { \tempo 4 = 72 \key ees \major \time 4/4 }

sopranoMusic = \relative c' {
  r1
  r1
  ees2 bes'
  ees,2. \times 2/3 {r8 f g}
				% 5
  aes2 g
  f2. \times 2/3 {r8 r bes,}
  c2 d
  ees4 r \times 2/3 {f4 g aes}
  g2 f4.(ees8)
				% 10
				% page 3
  ees2. r4
  ees2
  bes'
  ees,2. \times 2/3 {r8 f g}
  aes2 g4.(f8) g8(f4.~f4) \times 2/3 {r8 r bes,}
				% 15
  c2 d
  ees4 r \times 2/3 {f4 g aes}
  g2 f
  ees2. r4
				% page 4
  d8 g~ \times 2/3 {g8 bes d} c2
				% 20
  d,8 g8 ~ \times 2/3 {g bes d} c2
  d,8 g8 ~ \times 2/3 {g bes d} c2
  bes4 bes~bes8 g bes g
  aes2. r4
  ees2 bes'
				% 25
  ees,2. \times 2/3 {r8 f g}
  aes2 g
  f2. \times 2/3 {r8 r bes,}
				% page 5
  c2 d
  ees4 r \times 2/3 {f g aes}
				% 30
  g2 f
  ees2. \times 2/3 {r8 r bes}
  c2 d
  ees4 r \times 2/3 {f4 g aes}
  g2 f
				% 35
  ees2. r4
  d8 g ~ \times 2/3 {g bes d} c2
				% page 6
  d,8 g ~ \times 2/3 {g bes d} c2
  d,8 g ~ \times 2/3 {g bes d} c2
  bes4 bes ~ bes8 g bes g
				% 40
  aes2. aes4
  bes2. r4
  f2 c'
  f,2. \times 2/3 {r8 g aes}
  bes2 aes
				% 45
  g2. \times 2/3 {r8 r c,}
  d2 ees
}

sopranoWords = \lyricmode {
  Wise men say on- ly fools rush in,
  but I can't help fall- ing in love with you.
  Shall I stay?
  Would it be a sin?
  If I can't help fall- ing in love with you.
  Like a riv- er flows on- ly to the sea,
  dar- ling so it goes some things are meant to be.
  Take my hand, take my whole life too
  For I can't help fall- ing in love with you.
  For I can't help fall- ing in love with you.
  Like a riv- er flows on- ly to the sea,
  darl- ing so it goes some things are meant to be, to be.
  Take my hand, take my whole life too,
  For I can't help fall- ing in love with you.
  For I can't help fall- ing in love with you.
}

altoMusic = \relative c'{
  r1
  r1
  ees2 bes'
  ees,2. \times 2/3 {r8 f g}
				% 5
  aes2 g
  f2. \times 2/3 {r8 r bes,}
  c2 d
  ees4 r \times 2/3 {f4 g aes}
  g2 f4.(ees8)
				% 10
				% page 3
  ees2. r4
  ees2 f
  ees2. \times 2/3 {r8 f ees}
  ees2 ees
  ees8(d4.~d4) \times 2/3 {r8 r bes}
				% 15
  c2 d
  ees4 r \times 2/3 {c4 ees ees}
  ees2 d
  bes2. r4
				% page 4
  d8 g~ \times 2/3 {g8 g g} a2
				% 20
  d,8 g~ \times 2/3 {g8 g g} a2
  d,8 d~ \times 2/3 {d8 d d} ees4(f)
  d4 f(e8) e e e
  ees2(d4) r
  ees2 bes'
				% 25
  ees,2. \times 2/3 {r8 f g}
  aes2 g
  f2. \times 2/3 {r8 r bes,}
				% page 5
  c2 d
  ees4 r \times 2/3 {c4 ees ees}
				% 30
  ees2 d
  bes2. \times 2/3 {r8 r bes}
  c2 d
  ees4 r \times 2/3 {c ees ees}
  ees2 d
				% 35
  bes2. r4
  d8 g ~ \times 2/3 {g g g} a2
				% page 6
  d,8 g ~ \times 2/3 {g g g} a2
  d,8 d ~ \times 2/3 {d d d} ees4(f)
  d4 f(e8) e e e
				% 40
  ees2 (d4) d
  f2(e4) r
  f2 c'
  f,2. \times 2/3 {r8 g aes}
  bes2 aes
				% 45
  g2. \times 2/3 {r8 r c,}
  d2 ees
}

altoWords = \lyricmode {
  Wise men say on- ly fools rush in,
  but I can't help fall- ing in love with you.
  Shall I stay?
  Would it be a sin?
  If I can't help fall- ing in love with you.
}

tenorMusic = \relative c {
  r1
  r1
  ees2 bes'
  ees,2. \times 2/3 {r8 f g}
				% 5
  aes2 g
  f2. \times 2/3 {r8 r bes}
  aes2 bes
  g4 r \times 2/3 {aes bes c}
  bes2 bes4.(aes8)
				% 10
				% page 3
  g2. r4
  ees'2 d
  c2(bes4) \times 2/3 {r8 bes bes}
  c2 bes
  bes2. \times 2/3 {r8 r bes}
				% 15
  aes2 bes
  c4 r \times 2/3 {aes4 bes c}
  bes2 bes
  g2. r4
				% page 4
  d'8 d~ \times 2/3 {d d d} ees4(d)
				% 20
  d8 d~ \times 2/3 {d d d} d4(d)
  bes8 bes ~ \times 2/3 {bes bes bes} c2
  bes4 bes(des8) des des des
  c2. r4
  ees,2 bes'
				% 25
  ees,2. \times 2/3 {r8 f g}
  aes2 g
  f2. \times 2/3 {r8 r bes8}
				% page 5
  aes2 bes
  c4 r \times 2/3 {aes bes c}
				% 30
  bes2 bes
  g2. \times 2/3 {r8 r bes}
  aes2 bes
  c4 r \times 2/3 {aes bes c}
  bes2 bes
				% 35
  g2. r4
  d'8 d~ \times 2/3 {d d d} ees4(d)
				% page 6
  d8 d ~ \times 2/3 {d d d} d4(c)
  bes8 bes ~ \times 2/3 {bes bes bes} c2
  bes4 bes(des8) des des des
				% 40
  c2. c4
  d2. r4
  f,2 c'
  f,2. \times 2/3 {r8 g aes}
  bes2 aes
				% 45
  g2. \times 2/3 {r8 r c}
  bes2 c
				% page 7
}

tenorWords = \lyricmode {
  Wise men say on- ly fools rush in,
  but I can't help fall- ing in love with you.
  Shall I stay?
  Would it be a sin?
  If I can't help fall- ing in love with you.
}

bassMusic = \relative c{
  r1
  r1
  ees2 bes'
  ees,2. \times 2/3 {r8 f g}
  aes2 g
  f2. \times 2/3 {r8 r bes}
  aes2 bes
  g4 r \times 2/3 {aes bes c}
  bes2 bes4.(aes8)
				% 10
				% page 3
  g2. r4
  ees'2 d
  c2(bes4) \times 2/3 {r8 bes bes}
  c2 bes
  bes2. \times 2/3 {r8 r bes}
				% 15
  aes2 f
  g4 r \times 2/3 {f g aes}
  g2 f
  ees2. r4
				% page 4
  g8 g ~ \times 2/3 {g8 f f} fis2
				% 20
  g8 g ~ \times 2/3 {g8 f f} fis2
  g8 g ~ \times 2/3 {g8 f f} fis4(d)
  g4 g ~ g8 g bes bes
  f2(bes,4) r
  ees2 bes'
				% 25
  ees,2. \times 2/3 {r8 f g}
  aes2 g
  f2. \times 2/3 {r8 r bes8}
				% page 5
  aes2 f
  g4 r \times 2/3 {f g aes}
				% 30
  g2 f
  ees2. \times 2/3 {r8 r bes'}
  aes2 f
  g4 r \times 2/3 {f g aes}
  g2 f
				% 35
  ees2. r4
  g8 g ~ \times 2/3 {g f f} fis2
				% page 6
  g8 g ~ \times 2/3 {g f f} fis2
  g8 g~ \times 2/3 {g f f} fis4(d)
  g4 g~g8 g bes bes
				% 40
  f2(bes,4) bes
  g'2(c,4) r
  f2 c'
  f,2. \times 2/3 {r8 g aes}
  bes2 aes
				% 45
  g2. \times 2/3 {r8 r c}
  bes2 g
				% page 7
}

bassWords = \lyricmode {
  Wise men say on- ly fools rush in,
  but I can't help fall- ing in love with you.
  Shall I stay?
  Would it be a sin?
  If I can't help fall- ing in love with you.
}

TAbeg = \relative c' { \times 2/3 {r8 bes ees g ees bes} }
TAbfb = \relative c' { \times 2/3 {r8 bes f' bes f bes,} }
TAgbe = \relative c' { \times 2/3 {r8 g bes ees bes g} }
TAcea = \relative c' { \times 2/3 {r8 c ees aes ees c} }
TAbeb = \relative c' { \times 2/3 {r8 bes ees bes' ees, bes} }
TAcfa = \relative c' { \times 2/3 {r8 c f aes f c} }
TAdfb = \relative c' { \times 2/3 {r8 d f bes f d} }
TAegc = \relative c' { \times 2/3 {r8 ees g c g ees} }
TAbdf = \relative c' { \times 2/3 {r8 bes d f d bes} }

trebleAccMusic = \relative c' {
  \TAbeg \TAbeg
  \TAgbe \TAgbe
  \TAbeg \TAbfb
  \TAbeg \TAbeg
				% 5
  \TAcea \TAbeb
  \TAcea \TAdfb
  \TAcea \TAdfb
  \TAegc \TAcea
  \TAbeg \TAbdf
				% 10
				% page 3
  \TAgbe \TAgbe
  \TAbeg \TAbfb
  \TAbeg \TAbeg
  \TAcea \TAbeb
  \TAdfb \TAbdf
				% 15
  \TAcea \TAdfb
  \TAegc \TAcfa
  \TAbeg \TAbdf
  \TAgbe \TAbeg
				% page 4
  <bes d g>4 <d g bes> <fis, c' ees> <fis c' f>
				% 20
  <g bes d>4 <bes d g> <c fis a> <ees fis a>
  <bes d g>4 q <<{\voiceOne <c a'>2} \new Voice {\voiceTwo ees4 f}>>
  <d f bes>4 <f bes> <des e bes'> <des e g>
  <c ees aes>4 <aes c ees> <<{\voiceOne r4 <bes' bes'>} \new Voice {\voiceTwo <aes, c d>2}>>
  \TAbeg \TAbfb
				% 25
  \TAbeg \TAbeg
  \TAcea \TAbeb
  \TAcea \TAdfb
				% page 5
  \TAcea \TAdfb
  \TAegc \TAcfa
				% 30
  \TAbeg \TAbeg
  \TAgbe \TAbeg
  \TAcea \TAdfb
  \TAegc \TAcfa
  \TAbeg \TAbdf
				% 35
  \TAgbe \TAbeg
  <bes d g>4 <d g bes> <fis, c' ees> <fis c' f>
				% page 6
}

bassAccMusic = \relative c {
  ees2 bes
  ees,2 bes'
  ees2 d
  c2 bes
				% 5
  aes2 g
  f2 bes
  aes2 bes
  c4. bes8 aes2
  bes2 bes,
				% 10
  ees2 bes4 bes'
  ees2 d
  c2 bes
  aes2 g
  bes2 bes,
				% 15
  aes'2 bes
  c4. bes8 aes2
  bes2 bes,
  ees2 ees'
				% page 4
  g,4. g8 bes,4 d'
				% 20
  g,4. g8 bes,4 d'
  g4 f fis d
  g4. g8 c,4. c8
  f,4. f8 bes4 bes,
  ees'2 d
				% 25
  c2 bes
  aes2 g
  f2 bes
				% page 5
  aes2 bes
  c4. bes8 aes2
				% 30
  bes2 bes,
  ees2 ees'
  aes,2 bes
  c4. bes8 aes2
  bes2 bes,
  ees2 ees'
  g,4. g8 d4 d'
}

\score {
  <<
    \context ChoirStaff <<
      \context Staff = Women <<
	\set Staff.midiInstrument = "flute"
	\context Voice = soprano { \voiceOne \global \clef "treble" \sopranoMusic }
	\set Staff.midiInstrument = "clarinet"
	\context Voice = alto { \voiceTwo \global \clef "treble" \altoMusic }
      >>
      \lyricsto "soprano" \context Lyrics = sopranoWords { \sopranoWords }
      
      \context Staff = Men <<
	\set Staff.midiInstrument = "oboe"
	\context Voice = tenor { \voiceOne \global \clef "bass" \tenorMusic }
	\set Staff.midiInstrument = "bassoon"
	\context Voice = bass { \voiceTwo \global \clef "bass" \bassMusic }
      >>
    >>
    \context PianoStaff <<
      \context Staff = trebleAcc <<
	\set Staff.midiInstrument = "acoustic grand piano"
	{ \global \clef "treble"  \trebleAccMusic }
      >>
      \context Staff = bassAcc <<
	\set Staff.midiInstrument = "acoustic grand piano"
	{ \global \clef "bass"  \bassAccMusic }
      >>
    >>
  >>

  \layout { page-height = 10\cm  }
  \midi { }
}
%\score {
%  <<
%    \context ChoirStaff <<
%      \context Staff = soprano <<
%	\set Staff.midiInstrument = "flute"
%	\context Voice = soprano { \global \clef "treble" \unfoldRepeats \sopranoMusic }
%      >>
%      
%      \context Staff = Alto <<
%	\set Staff.midiInstrument = "clarinet"
%	\context Voice = alto { \global \clef "treble" \unfoldRepeats \altoMusic }
%      >>
%      
%      \context Staff = tenor <<
%	\set Staff.midiInstrument = "oboe"
%	\context Voice = tenor { \global \clef "treble_8" \unfoldRepeats\tenorMusic }
%      >>
%      
%      \context Staff = bass <<
%	\set Staff.midiInstrument = "bassoon"
%	\context Voice = bass { \global \clef "bass" \unfoldRepeats\bassMusic }
%      >>
%    >>
%    \context PianoStaff <<
%      \context Staff = trebleAcc <<
%	\set Staff.midiInstrument = "acoustic grand piano"
%	{ \global \clef "treble"  \unfoldRepeats \trebleAccMusic }
%      >>
%      \context Staff = bassAcc <<
%	\set Staff.midiInstrument = "acoustic grand piano"
%	{ \global \clef "bass"  \unfoldRepeats \bassAccMusic }
%      >>
%    >>
%  >>
%    
%  \midi { }
%}
