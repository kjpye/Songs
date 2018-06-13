\version "2.18.2"

verseOne = \lyricmode {
  Be- lieve me, if all those en- dear- ing young charms which I gaze on so fond- ly to- day,
  Were to change by to- mor- row, and fleet in my arms,
  Like _ fair- y gifts fad- ing a- way,
  Thou would'st still be a- dored as this mo- ment thou art.
  Let thy love- li- ness fade as it will;
  And a- round the dear ru- in, each wish of my heart,
  Would en- twine it- self ver- dant- ly still.
}  

verseTwo = \lyricmode {
  It is not while beau- ty and youth are thine own,
  And thy cheeks un- pro- faned by a tear,
  That the ferv- our and faith of a soul can be known,
  To which time will but make thee more dear.
  For the heart that has tru- ly loved ne- ver for- gets,
  But as tru- ly loved on to the close,
  As the sun- flow- er turns on her god, when he sets,
  The same look which she gave when he rose.
}  

SopranoMusic = \relative c'' {
  \key ees \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 g16^\p(f)
    ees8. f16 ees8 ees g bes
    aes8 c ees ees4 d16 c
    bes8. aes16 g8 f8. ees16 f8
    g4.~g4 g16 f % 5
    ees8. f16 ees8 ees g bes
    aes8 c ees ees4 d16 c
    bes8 ees g, f8. ees16 f8
    ees4.~ees4 bes'16 aes
    g8 bes ees8 ees8.~ees16 bes16 bes % 10
    c8 aes ees' ees4 d16 c
    bes8. aes16 g8 f8. ees16 f8
    g4.~g4 g16 f
    ees8. f16 ees8 ees g bes
    aes8 c ees ees4^\fermata d16 c
    bes8 ees g, f8. ees16 f8
    ees4.~ees8 r
  }
}

AltoMusic = \relative c' {
  \key ees \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 d16~d
    bes8. bes16 bes8 bes ees ees
    ees8 ees ees ees4 ees16 ees
    g8. f16 ees8 d8. c16 d8
    ees4.~ees4 d16 d
    bes8. bes16 bes8 bes ees ees
    ees8 ees ees ees4 ees16 ees
    ees8 ees ees d8. ees16 d8
    bes4.~bes4 f'16 f
    ees8 ees g g8.~g16 <ees g>16 ~ q
    ees8 ees ees ees4 ees16 ees
    q8. f16 ees8 d8. c16 d8
    ees4.~ees4 d16 d
    bes8. bes16 bes8 bes ees ees
    ees8 ees ees ees4 ees16 ees
    ees8 g ees d8. ees16 d8
    ees4.~ees8 r
  }
}

TenorMusic = \relative c' {
  \key ees \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 bes16(aes)
    g8. aes16 g8 g bes bes
    c8 aes c c4 bes16 aes
    g8. bes16 bes8 bes8. bes16 bes8
    bes4.~bes4 bes16 aes
    g8. aes16 g8 g bes des % 5
    c8 aes c c4 aes16 aes
    g8 g bes aes8. g16 aes8
    g4.~g4 bes16 bes
    bes8 bes bes bes8.~bes16 g16 g
    aes8 c c c4 bes16 aes % 10
    g8. aes16 bes8 bes8. bes16 bes8
    bes4.~bes4 bes16 aes
    g8. aes16 g8 g bes des
    c8 aes d c4^\fermata bes16 aes
    g8 bes bes aes8. g16 aes8 % 15
    g4.~g8 r
  }
}

BassMusic = \relative c {
  \key ees \major
  \time 6/8
  \repeat volta 2 {
    \partial 8 bes16(bes)
    ees8. ees16 ees8 ees ees g
    aes8 aes aes aes4 aes16 aes
    ees8. ees16 ees8 bes8. bes16 bes8
    ees4.~ees4 bes16 bes
    ees8. ees16 ees8 ees ees g
    aes8 aes aes aes4 aes,16 aes
    bes8 bes bes bes8. bes16 bes8
    ees4.~ees4 d16 d
    ees8 ees ees ees8.~ees16 ees ees
    aes8 aes es aes4 aes16 aes
    ees8. ees16 ees8 bes8. bes16 bes8
    ees4.~ees4 bes16 bes
    ees8. ees16 ees8 ees ees g
    aes8 aes aes aes4 aes16 aes
    bes,8 bes bes bes8. bes16 bes8
    ees4.~ees4
  }
}

\header {
  title = "Believe Me If All Those Endearing Young Charms"
  composer = "Thomas Moore"
}
%\include "satb.ly"
\score {
  \context GrandStaff <<
    \context ChoirStaff <<
      \new Staff <<
	\new Voice = sopranos { \voiceOne \SopranoMusic }
	\new Voice = altos    { \voiceTwo \AltoMusic    }
      >>
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \lyricsto sopranos \verseTwo
      \new Staff <<
	\new Voice = tenors { \clef "bass" \voiceOne \TenorMusic }
	\new Voice = basses { \clef "bass" \voiceTwo \BassMusic }
      >>
    >>
    \context PianoStaff <<
    >>
  >>
  \layout {}
  \midi {}
}
