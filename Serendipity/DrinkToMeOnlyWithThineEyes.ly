\version "2.19.80"

\header {
  title = "Drink To Me Only With Thine Eyes"
  composer = "Traditional"
  poet     = "Ben Jonson"
  % Remove default LilyPond tagline
  tagline = ##f
}
#(set-global-staff-size 16)

%\paper {
%  #(set-paper-size "a4")
%  line-width = 180\mm
%  left-margin = 20\mm
%  bottom-margin = 10\mm
%  top-margin = 10\mm
%}

global = {
  \key f \major
  \time 3/4
  \tempo 4=120
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

partOne = \relative c'' {
  \global
  r2.
  r2.
  r2.
  r2. \colour
  a4 a a % 5
  bes2 bes4
  c4(bes) a
  g4(a) bes
  c4(f,) bes
  a2 g4 % 10
  f2.~
  f2 r4 \black
  r2.
  r2.
  r2. % 15
  r2.
  r2.
  r2.
  r2.
  r4 r \colour c' % 20
  c4(a) c
  f2 \black e4
  ees4(c) ees
  d2   \colour c4
  d2-- \black  c4 % 25
  c4(d) f
  c2.~
  c2 r4
  a4 a c
  d2 bes4 % 30
  c2 c4
  f4(e) \breathe d4
  c2 d4
  c4(a) g
  a2.~ % 35
  a2 r4
  r2.
  r2. \key des \major
  r2.
  r2. % 40
  r2.
  r4 r aes
  bes4 aes bes
  f4 ges2
  aes2.~ % 45
  aes2 r4 \key e \major
  r2.
  r2.
  r4 r b
  b2 b4 % 50
  b2 b4
  r4 b b
  b2. \key f \major
  r4 r \colour c4
  c4(a) c % 55
  e2 \black c4
  c4(f) e
  e4(d) \colour c
  d2 c4
  c4(bes) a % 60
  a2.(
  g2) r4
  a4 \( a a
	bes2 bes4
	c4( \black cis) d % 65
	f2 bes,4
  a2 \colour bes4
	a4 \) r \breathe g
  f2.~
  f2.~ % 70
  f2.~
  f4 r r
  \bar "|."
}

dynamicsOne = {
  s2.*4
  s2.^\p
  s2.*3
  s8\< s8\> s2\!
  s2.*10
  s2 s4^\markup{\right-align \concat \italic{poco} \dynamic f}
  s2\<s4\!
  s2 s4\<
  s2 \> s4
  s2.\!
  s2.*4
  s2.^\markup{\concat {\dynamic f} {poco mosso}}
  s2.
  s2\<s4\!
  s4\>s4\!s4^\p
  s2.*9
  s2 s4\<
  s4\>s2\!
  s2.*10
  s2^\markup{poco allarg.}
  s4^\mf
  s2^\markup{a tempo} s4\<
  s2.\!
  s2.
  s8\<s8\>s2\!
  s2.^\mf
  s2.
  s2.\>
  s2.\!
  s2.^\pp^\markup{molto espress.}
  s8\<^\markup{slower} s8\> s2\!
  s2.*4
  s2 s4^\markup{rall.}
  s2.*3
}

partTwo = \relative c'' {
  \global
  r2.
  r2.
  r2.
  r2.
  r2. % 5
  r2.
  r2.
  r2.
  r2.
  r2. % 10
  r2.
  r2. \colour
  a4 a a
  bes2 bes4
  c4(bes) a % 15
  g4(a) bes
  c4(f,) bes
  a2 g4
  f2.~
  f2 \black a4 % 20
  a4(f) a
  c2 \colour c4
  c4(a) c
  c2 \black c4
  c4(bes) \colour c % 25
  c4(bes) a
  a2.(
  g2) r4
  a4 a a
  bes2 bes4 % 30
  c4(bes)a
  g4(a) bes
  c4(f,) bes
  a2 g4
  f2.~ % 35
  f2 \black r4
  r2.
  r2. \bar "||" \key des \major
  r2.
  r2. % 40
  r2.
  r2.
  r2.
  r2.
  r2. % 45
  r2. \bar "||" \key e \major \colour
  gis4 gis gis
  a2 a4
  b4(a) gis
  fis4(gis) a % 50
  b4(e,) a
  gis2 fis4
  e2. \bar "||" \key f \major \black
  r4 r c'
  a4(f) a % 55
  c2 \colour c4
  c4(a) c
  c2 \black c4
  d2 c4
  c4(bes) a % 60
  a2.(
  g2) r4
  f4 f f
  g2 g4
  a4( \colour bes) a % 65
  g4(a) bes
  c4(f,) \black f
  f4 r e
  d4(c2) ~
  c2. ~ % 70
  c2. ~
  c4 r r \bar "|."
}

dynamicsTwo = {
  s2.*12
  s2.^\mf
  s8\<s8\>s4.\! s8\<
  s4\>s2\! % 15
  s2 s8 s8\<
  s2.\!
  s2.*2
  s2 s4^\markup{\right-align \concat \italic{poco} \dynamic f} % 20
  s2\<s4\!
  s2 s4\<
  s2\>s4
  s2.\!
  s2.*4
  s2.^\f
  s2. % 30
  s2\<s4\!
  s4\>s4\!s4^\p
  s2.*14
  s2.^\mf
  s2 s4\<
  s4\<s4\!s4
  s2.*4
  s2 s4^\f % 54
  s2 s4\< % 55
  s2.\!
  s2.
  s8^\p\< s8\> s4\! s4\<
  s2.\!
  s2. % 60
  s2.\>
  s2.\!
  s2.^\pp
  s8\<s8\>s2\!
  s2.\<
  s2\>s4\!
  s2.*2
  s8\<s8\>s2\!
  s2.*3
}

partThree = \relative c' {
  \global
  r2.
  r2.
  r2.
  r2.
  r2. % 5
  r2.
  r2.
  r2.
  r2.
  r2. % 10
  r2.
  r2.
  c4 d f
  f4(e) g
  c,4(f) a % 15
  bes4(a) g
  c,2 c4
  d4(f) e
  d2.(
  c2) a'4 % 20
  a4(f) a
  a2 a4
  g4(a) g
  fis4(a) a
  a4(g) a % 25
  a4(bes) f
  d4(f) d
  f4(e) r
  g4 f a
  a4(g) bes % 30
  a4(bes) c
  g2 g4
  a2 c,4
  d4(f)e
  d4(c2)~ % 35
  c2 r4
  r2.
  r2. \bar "||" \key des \major \colour
  f4 f f
  ges2 ges4 % 40
  aes4(ges) f
  ees4(f) ges
  aes4(des,) ges
  f2 ees4
  des2.~ % 45
  des2 \black r4 \bar "||" \key e \major
  r2.
  r2.
  r4 r b
  b4(gis') fis % 50
  b,2 b4
  r4 b b
  gis'2. \bar "||" \key f \major
  r4 r c,
  f4(c) f % 55
  a2 a4
  a4(f) a
  a2 a4
  bes2 a4
  a4(g) f % 60
  f4(d f
  e2) r4
  c4 f e
  ees4(d) des
  c4(g') f % 65
  d2 des4
  c2 d4
  c4 r c
  d4(c) c
  a2. ~
  a2.~
  a4 r r \bar "|."
}

dynamicsThree = {
  s2.*12
  s2.^\mf
  s8\<s8\>s4.\!s8\<
  s8\>s8\!s2 % 15
  s2 s4\<
  s2.\!
  s2.*2
  s2 s4^\markup{\right-align \concat \italic{poco} \dynamic f} % 20
  s2\<s4\!
  s2 s4\<
  s2\! s4\<
  s2.
  s2.\! % 25
  s2.*3
  s2.^\f
  s2. % 30
  s2.^\<
  s2\> s4^\p \!
  s2.*2
  s4\< s4\> s4\! % 35
  s2.*3
  s2.^\pp
  s2. % 40
  s8\<s8\>s2\!
  s2 s4\<
  s4\> s2\!
  s2.*8
  s2 s8 s8\< % 52
  s8\> s8\! s2
  s2 s4^\mf
  s2 s4\<
  s2.\!
  s2.
  s8^\p \< s8\> s4\! s4\<
  s2.\!
  s2 s4\<
  s2.\>
  s2.\!
  s2.^\pp
  s8\<s8\>s2\!
  s2.\<
  s2\> s4\!
  s2.*2
  s8\<s8\>s2\!
  s8\<s8\>s2\!
  s2.*2
}

dynamicsPiano = {
  s2.^\p
  s2.
  s2.
  s2.
  s2. % 5
  s2.
  s2.
  s2.
  s2.
  s2. % 10
  s2.
  s2.
  s2.
  s2.
  s2. % 15
  s2.
  s2.
  s2.
  s2.
  s2. % 20
  s2.^\mf
  s2.
  s2.
  s2.
  s2. % 25
  s2.
  s2.
  s2.
  s2.
  s2. % 30
  s2. \<
  s2. \!
  s2.
  s2.
  s2. % 35
  s2.
  s2.^\p
  s2.
  s2.^\pp
  s2^\mp \> s4\! % 40
  s2.
  s4. \> s \!
  s2.
  s2.
  s2. % 45
  s2.
  s2.
  s2. \>
  s2 \! s4 \<
  s4 \! s2 % 50
  s2.
  s4 \< s4 \! s
  s2.
  s2 s4\<
  s2. \! % 55
  s4 \< s2 \!
  s2.
  s2 s4 \<
  s2. \!
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.^\pp
  s2.
  s2.^\markup{rall.}
}

pianoRH = \relative c''' {
  \global
  d8^\markup{Molto espress. ma poco mosso}(c c, d' c c,)
  d'8(c c, d' c c,)
  d'8(c c, d' c c,)
  d'8(c c, d' c c,)
  r8 d'(c c,)c(c') % 5
  r8 d(c c,)c(c')
  r8 d(c c,)c(c')
  r8 d(c c,)c(c')
  r8 d(c c,)c(c')
  r8 d(c c,)r c'( % 10
  d8 c c, d' c c,)
  d'8(c c, d' c c,)
  r8 d'(c c, c c')
  r8 d(c c, c c')
  r8 d(c c, c c') % 15
  r8 d(f, d)d(d')  
  r8 c(f, c)c(c')
  r8 d(f, d) e(c')
  d8( a f a f d)
  a'8( f c f c a) % 20
  <a e'>8(<f c'> <a e'> <c a'> <a e'> <c a'>)
  <a f'>8(<f c'> <a f'> <c a'> <a e'> <c a'>)
  <c g'>8(<g ees'> <c a'> <a ees'> <c g'> <g ees'>)
   <a fis'>8(<fis c'> <a f'> <f' d'> <d a'> <f d'>)
   <c d a'>8(a <bes d g> g <c d a'> a) % 25
   <c d a'>8 a <d bes'> bes <f' d'> <d a'>
   <f c'>8(<d a'> <f c'> <d a'> <f c'> <d a'>)
  <g c>8(c, q c q c)
  <a c g'>4~q8 r r4
  <bes d a'>4~q8 r r4 % 30
  <a a'>4(<bes bes'> <c c'>)
  <f g bes f'>8 r r4 r
  <c f c'>4 r r
  r2.
  c'4(f,2) % 35
  c2.--
  c'4(c,2)
  f2.-- \bar "||" \key des \major
  bes8(aes aes, bes' aes aes,)
  bes'8(aes aes, bes' aes aes,)
  bes'8(aes aes, bes' aes aes,)
  bes'8(aes aes, bes' aes aes,)
  bes'8(aes des, ges, des' ges)
  bes8(aes f aes, ees' aes)
  bes8(aes aes, bes' aes aes,)
  bes'8(aes aes, bes' aes aes,) \bar "||" \key e \major
  cis8(b b, cis' b b,)
  r8 <cis dis a' b>4 q8~q4
  <<{\voiceTwo gis2.} \new Voice {\voiceOne r8 <b e b'>4 q8~q4} >> \oneVoice
  r8 <dis a' b>4 q8~q4
  r8 <cis e>4 q8~q4
  r8 <cis gis'>4 q8 <dis fis>4
  r8 <b gis'>4 q8~q4 \bar "||" \key f \major
  <gis c e gis>8-- <c e gis c>4-- <d d'>8-- <c c'>4--
  <c f a c>4 r r
  a''8(<c, c'>4 <d d'>8 <a c f a>4)
  r2.
  a,32(c ees fis a c ees fis) d4 r
  <g, d'>2 r4
  r2.
  r8 d'8(~d f d4)
  c8(g c2)
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r8 d'( c c, d' c)
  c,8( d' c c, d' c)
  d8(c ~ c2)
  \bar "|."
}

pianoLH = \relative c'''' {
  \global
  \clef treble
  \oneVoice
  \set Staff.pedalSostenutoStyle = #'bracket
  s2.
  s2.
  s2.
  s2.
  <c,,, d f a>2. % 5
  \sostenutoOn <c f bes>2. \sostenutoOff
  \sostenutoOn <c f a>2. \sostenutoOff _\markup \italic Simile
  <c d f g>2.
  <c f a> 2.
  s2. \sostenutoOn % 10
  s2.
  s2. \unset Staff.ottavation \unset Voice.middleCPosition
  <c f a>2.
  s2. \sostenutoOff
  <c f a>2. % 15
  s2.
  s2.
  s2.
  <a d f>2.~
  q2. % 20
  \clef bass % \set Voice.middleCPosition = #6
  <f, c' a'>2.
  s2.
  <ees' g a c>2.
  <d, a' fis'>2.
  <a'' c>4(<g bes>) <a d>
  <a c d>4( \clef treble <bes d g>) <d f a>
  d4(f d)
  s2.
  <a c g'>4 ~ q8 r r4
  <bes d a'>4 ~ q8 r r4 % 30
  a4(bes c)
  <d f g bes>8 r r4 r
  <c f g>4 r r
  r2.
  \sostenutoOn a8(d c a' f c) % 35
  a8(d c a' f c) \sostenutoOff
  \sostenutoOn aes(c f aes f c)
  aes(c f aes f c) \sostenutoOff \bar "||" \key des \major
  <aes des f>2.
  <bes ges'>4(<aes f'> <ges ees'>) \clef bass % 40
  <aes, f'>4(des') \clef treble aes'(
  <bes, ges'>4 <aes c f> <ges ees'>) \clef bass
  <f des'>4 <ees ges bes des>2
  aes,4(aes' ges)
  s2._\markup \italic Ped. % 45
  aes2.-> \bar "||" \key e \major
  gis8(b, e,2)
  a'4(gis fis)
  <e, b'>2 gis'4(
  b4 b a) % 50
  gis2(a4)
  s2.
  s2. \bar "||" \key f \major
  s2.
  <f, c' a'>4 r4 r % 55
  <f c'>4 \clef treble <c'' a'> <a c f>
  s2. \sustainOn \clef bass
  \ottava #-1 d,,,4 \ottava #0 d''' r \sustainOff
  <bes d>2 r4
  r2. % 60
  s2.
  <bes c e>2.
  r2.
  r2.
  r2. % 65
  r2.
  r2.
  r2.
  r2.
  r2.
  <c, a'>2.
  <f, c' a'>2.-\arpeggio
}

pianoLHone = \relative c'''' {
  \global
  \clef treble
  \voiceOne
  \set Staff.pedalSostenutoStyle = #'bracket
  { r4.
    \set Staff.ottavation = #"8va"
    \set Voice.middleCPosition = #-13
    c~
  } % 1
  c2. \unset Staff.ottavation \unset Voice.middleCPosition
  { r4.
    \set Staff.ottavation = #"8va"
    \set Voice.middleCPosition = #-13
    c~
  } % 3
  c2. \unset Staff.ottavation \unset Voice.middleCPosition
  s2. % 5
  s2.
  s2.
  s2.
  s2.
  a,,2(g4) % 10
  { r4.
    \set Staff.ottavation = #"8va"
    \set Voice.middleCPosition = #-13
    c''~
  } % 11
  c2. \unset Staff.ottavation \unset Voice.middleCPosition
  s2.
  f,,,4(e2)
  s2. % 15
  bes'4(a g)
  a2(bes4)
  <d, a'>2(<e g>4)
  s2.
  s2. % 20
  \clef bass
  s2.
  <a, c>2.
  s2.
  s2.
  s2. % 25
  s4 \clef treble s2
  s2.
  f'4(e2)
  s2.
  s2. % 30
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2. \key des \major
  s2.
  s2.
  s2 \clef treble s4
  s2. \clef bass
  s2.
  s2.
  f,2. % 45
  s2. \bar "||" \key e \major
  s2.
  s2.
  s2.
  s2.
  s2.
  b2(a4)
  gis2. \bar "||" \key f \major
  r4 <c, e gis>2--
  s2. % 55
  s4 \clef treble s2
  s2. \clef bass
  s2.
  s2.
  s2.
  r4 <d' f>2 % 60
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
  s2.
}

pianoLHtwo = \relative c' {
  \clef treble
  \voiceTwo
  <c f a>2._\markup{\italic{Ped. sempre}}~
  q2.
  q2.~
  q2.
  s2. % 5
  s2.
  s2.
  s2.
  s2.
  <c e>2. % 10
  <a c f>2.~
  q2.
  s2.
  <c bes'>2.
  s2. % 15
  c2.
  <c f>2.
  c2.
  s2.
  s2. \clef bass % 20
  s2.
  f,2(e4)
  s2.
  s2.
  s2. % 25
  s4 \clef treble 2
  s2.
  c'2.
  s2.
  s2. % 30 
  s2.
  s2.
  s2.
  s2.
  s2. % 35
  s2.
  s2.
  s2. \bar "||" \key des \major
  s2.
  s2. \clef bass % 40
  s2 \clef treble s4
  s2. \clef bass
  s2.
  s2.
  r4 <des,, aes'>2 % 45
  s2. \bar "||" \key e \major
  s2.
  s2.
  s2.
  s2. % 50
  s2.
  b'2.
  <e, b'>2. \bar "||" \key f \major
  { \set Staff.ottavation = #'"8vb"
    \once \override Staff.OttavaBracket.direction = #DOWN
    \set Voice.middleCPosition = #(+ 6 7)
    c,2.
    \unset Staff.ottavation
    \unset Voice.middleCPosition
  }
  s2. % 55
  s4 \clef treble s2
  s2. \clef bass
  s2.
  s2.
  s2. % 60
  c'2.
  s2.
  s2.
  s2. % 65
  s2.
  s2.
  s2.
  s2.
  s2. % 70
  s2
  s2.
}

wordsOne = \lyricmode {
  Drink to me on- ly with thine eyes and I will pledge with mine

  The thirst that from the soul doth rise doth ask a drink di- vine
  But might I of love's nec- tar sip I would not change for thine.
  I sent thee a ro- sy wreath.
  A hope there could not with- ered be.
  But thou there- on didst on- ly breathe and sent'st it back to me
  Since when it grows and smells I swear not of it- self but thee.
}

wordsTwo = \lyricmode {
  Or leave a kiss with- in the cup and I'll not ask for wine
  The thirst that from the soul doth rise doth ask a drink di- vine
  But might I of love's nec- tar sip I would not change for thine.
  As giv- ing it a hope that there it could not with- ered be.
  But thou there- on didst on- ly breathe and sent'st it back to me
  Since when it grows and smells I swear not of it- self but thee.
}

wordsThree = \lyricmode {
  Or leave a kiss with- in the cup and I'll not ask for wine
  The thirst that from the soul doth rise doth ask a drink, a drink di- vine
  But might I of love's nec- tar sip I would not change for thine.
  I sent thee late a ro- sy wreath not so much hon- ouring thee.
  A hope it could not with- ered be.
  But thou there- on didst on- ly breathe and sent'st it back to me
  Since when it grows and smells I swear not of it- self but thee, but thee.
}

\score {
  <<
  \new ChoirStaff <<
    \new Dynamics \dynamicsOne
    \new Staff \with { instrumentName = #"Nancy"} <<
      \new Voice = "partone" \partOne
      \new Lyrics \lyricsto "partone" \wordsOne
    >>
    \new Dynamics \dynamicsTwo
    \new Staff \with { instrumentName = \markup { \center-column { "Diedre" \line {"June"} \line {"Ruth"} } } } <<
      \new Voice = "parttwo" \partTwo
      \new Lyrics \lyricsto "parttwo" \wordsTwo
    >>
    \new Dynamics \dynamicsThree
    \new Staff \with { instrumentName = \markup { \center-column { "Diane" \line {"Gael"} \line {"Irene"} } } }<<
      \new Voice = "partthree" \partThree
      \new Lyrics \lyricsto "partthree" \wordsThree
    >>
  >>
  \new PianoStaff <<
    \new Staff <<
      \new Voice \pianoRH
    >>
    \new Dynamics \dynamicsPiano
    \new Staff <<
      \new Voice \pianoLH
      \new Voice \pianoLHone
      \new Voice \pianoLHtwo
    >>
%    \new Dynamics \pedal
  >>
  >>
  \layout { indent = 1.5\cm }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
