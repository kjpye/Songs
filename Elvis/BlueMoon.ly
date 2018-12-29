\version "2.19.82"
\include "predefined-ukulele-fretboards.ly"

global = {
  \time 2/2
  \key ees \major
  \tempo 4 = 120
  \partial 4
}

melody = \relative c'' {
  \global
  bes4
  \repeat volta 2 {
    bes1~
    bes8 aes bes c bes bes aes bes~
    bes1~
    bes8 f g aes g g f g~
    g1~ % 5
    g8 ees f g ees ees ees ees~
    ees1~
    ees2 r4 bes'
    bes1~
    bes8 aes bes c bes bes aes bes~ % 10
    bes8 bes4.~ bes2~
    bes8f g aes g g f g~
    g8 g4.~g2~
    g8 ees f g ees ees ees ees~
    ees8 ees4.~ees2~ % 15
    ees2 r8 ees ees ees
    f8 f f f g4 g
    ees8 ees4.~ ees8 ees ees ees
    f8 f f f g4 g
    ees2~ees8 ees ees ees % 20
    ees8 ees ees ees f4 f
    des8 des4.~des8 des des des
    d8. d16 d8. d16 f4 f
    bes2. bes4
    bes1~ % 25
    bes8 aes bes c bes bes aes bes~
    bes1~
    bes8 f g aes g g f g~
    g1~
    g8 ees f g ees ees ees ees~ % 30
  }
  \alternative {
    {ees1~|ees2 r4 bes'}
    {ees,1~|ees2. r4}
  }
  \bar "|."
}

guitar = \chordmode {
  \global
  bes4:7
  \repeat volta 2 {
    ees2 c:m
    f2:m7 bes:7
    ees2 c:m
    f2:m bes:7
    ees2 c:m % 5
    f1:m7
    ees2 aes
    ees2 bes:7
    ees2 c:m
    f2:m7 bes:7 % 10
    ees2 c:m7
    f2:m bes:7
    ees2 c:m7
    f1:m7
    ees2 aes:6 % 15
    ees1
    aes2:6 bes:7
    ees1
    aes2:6 bes:7
    ees1 % 20
    aes2 bes:7
    ees1
    aes2:6 bes:7
    ees1
    aes2:m des:9
    ges1
    bes2 f:7
    f2:m7 bes:7
    ees2 c:m
    f1:m7
  }
  \alternative {
    {ees2 aes | ees2 bes:7}
    {ees2 aes:6 | ees1}
  }
}

trebleOne = \relative c'' {
  \global
  \voiceOne
  bes4
  \repeat volta 2 {
    bes1~
    bes8 aes bes c bes bes aes bes~
    bes1~
    bes8 f g aes g g f g~
    g1~ % 5
    g8 ees f g ees ees ees ees~
    ees2 r8. c16( <ees aes>8. c16)
    r8. bes16(<ees bes'>8. bes16) r8. bes16(<d aes' bes>4)
    bes'1~
    bes8 aes bes c bes bes aes bes~ % 10
    bes8 bes4.~ bes2~
    bes8f g aes g g f g~
    g8 g4.~g2~
    g8 ees f g ees ees ees ees~
    ees8 ees4.~ees2~ % 15
    ees2 r8 ees ees ees
    f8 f f f g4 g
    ees8 ees4.~ ees8 ees ees ees
    f8 f f f g4 g
    ees2~ees8 ees ees ees % 20
    ees8 ees ees ees f4 f
    des8 des4.~des8 des des des
    d8. d16 d8. d16 f4 f
    bes2. bes4
    bes1~ % 25
    bes8 aes bes c bes bes aes bes~
    bes1~
    bes8 f g aes g g f g~
    g1~
    g8 ees f g ees ees ees ees~ % 30
  }
  \alternative {
    {
      ees2 r8. c16(<ees aes>8. c16)
      r8.bes16(<ees bes'>8. bes16) r8. bes16(<d aes' bes>4)
    }
    {
      ees2 \oneVoice r4 <ees aes >
      <g bes ees>2. r4
    }
  }
  \bar "|."
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  <d aes'>4
  \repeat volta 2 {
    r8. bes16(<ees g>4) r8. c16(<ees g>4)
    r4 ees d2
    r8. bes16(<ees g>4) r8. c16(<ees g>4)
    r4 <aes, d> q2
    r8. g16(<bes ees>4) r8. g16(<c ees>4) % 5
    r4 <aes c>2.
    r4 <g bes> s2
    s1
    r8. bes16(<ees g>4) r8. c16(<ees g>4)
    r4 ees4 d2 % 10
    r8 <ees g>4.~q8. c16(q4)
    r4 <aes c>4 <aes d>2
    r8 <bes ees>4.~q8. g16(<c ees>4)
    r4 <aes c>2.
    r8 <g bes>4. r4 <aes c> % 15
    r4 <g bes> s2
    <c ees>2 <aes d>
    <g bes>1
    <c ees>2 <aes d>
    <g bes>1 % 20
    <aes ces>2 <ces ees>
    bes1
    bes2 <a ees'>
    ees'4(c d2)
    r8. bes16(<ees g>4) r8. c16(<ees g>4) % 25
    r4 ees4 d2
    r8. bes16(<ees g>4) r8. c16(q4)
    r4 <aes c>4 <aes d>2
    r8. g16(<bes ees>4) r8. g16(<c ees>4)
    r4 <aes c>2. % 30
  }
  \alternative {
    {r4 <g bes>4 s2 | s1}
    {r4 q s2 | s1}
  }
  \bar "|."
}

bass = \relative c, {
  \global
  bes4
  \repeat volta 2 {
    ees4 r c r
    f4 r <bes aes'>2
    ees,4 r c r
    f4 r bes2
    ees,4 r c r % 5
    f4 r bes,2
    ees8. bes'16(ees4) aes,2
    g2 f4 bes,
    ees4 r c r
    f4 r <bes aes'>2 % 10
    ees,4 r c r
    f4 r bes2
    ees,4 r c r
    f4 r bes,2
    ees4 r aes8. ees'16(f4) % 15
    ees,8. bes'16(ees4) ees,8 r r4
    aes2 bes
    ees,4. bes'8(ees2)
    aes,2 bes
    ees,4 bes'8. d16 c4 bes % 20
    aes2 des,
    ges4. des8(ges2)
    f2 f'
    <bes, aes'>1
    ees,4 r c r % 25
    f4 r <bes aes'>2
    ees,4 r c r
    f4 r bes2
    ees,4 r c r
    f4 r bes,2
  }
  \alternative {
    {ees8. bes'16(ees4) aes,2 | g2 f4 bes,}
    {ees8. bes'16(ees4) aes,8. ees'16(f4) | ees,8.( bes'16 g'8. bes16 ees4) ees,,}
  }
  \bar "|."
}

verseOne = \lyricmode {
  Blue Moon you saw me stand- ing a- lone
  With- out a dream in my heart,
  With- out a love of my own.
  Blue Moon you knew just what I was there for
  You heard me say- ing a pray'r for
  Some- one I real- ly could care for.
  And then there sud- den- ly ap- peared be- fore me
  The on- ly one my arms will ev- er hold,
  I heard some- bod- y whis- per,
  "\"Please" a- dore "me,\""
  And when I looked, the moon had turned to gold!
  Blue Moon now I'm no long- er a- lone
  With- out a dream in my heart,
  With- out a love of my own.

  Blue
}

MverseOne = \lyricmode {
  "/Blue " "Moon " "you " "saw " "me " "stand" "ing " "a" "lone "
  "/With" "out " "a " "dream " "in " "my " "heart, "
  "/With" "out " "a " "love " "of " "my " "own. "
  "/Blue " "Moon " "you " "knew " "just " "what " "I " "was " "there " "for "
  "/You " "heard " "me " "say" "ing " "a " "pray'r " "for "
  "/Some" "one " "I " "real" "ly " "could " "care " "for. "
  "/And " "then " "there " "sud" "den" "ly " "ap" "peared " "be" "fore " "me "
  "/The " "on" "ly " "one " "my " "arms " "will " "ev" "er " "hold, "
  "/I " "heard " "some" "bod" "y " "whis" "per, "
  "/\"Please " "a" "dore " "me,\""
  "/And " "when " "I " "looked, " "the " "moon " "had " "turned " "to " "gold! "
  "/Blue " "Moon " "now " "I'm " "no " "long" "er " "a" "lone "
  "/With" "out " "a " "dream " "in " "my " "heart, "
  "/With" "out " "a " "love " "of " "my " "own."
}

\book {
  \header {
    title = "Blue Moon"
    composer = "Richard Rogers"
    poet = "Lorenz Hart"
  }

  \score {
    <<
      \new ChordNames { \guitar }
%      \new FretBoards { \guitar }
      \new FretBoards { \set Staff.stringTunings = #ukulele-tuning \guitar }
      \context GrandStaff {
	<<
	  \new Staff = melody { % \RemoveEmptyStaves
				\override Staff.VerticalAxisGroup.remove-first = ##t
				\melody }
	  \addlyrics \verseOne
	  \context PianoStaff
	  <<
	    \new Staff = treble <<
	      \new Voice { \trebleOne }
	      \new Voice { \trebleTwo }
	    >>
	    \new Staff = bass <<
	      \new Voice { \clef bass \bass }
	    >>
	  >>
	>>
    }
    >>
    \layout {
      \context {
%	\Staff \RemoveEmptyStaves
				% To use the setting globally, uncomment the following line:
				% \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody { \unfoldRepeats \melody }
	\addlyrics { \MverseOne \MverseOne }
	\context PianoStaff
	  <<
	    \new Staff = treble <<
	      \new Voice { \unfoldRepeats \trebleOne }
	      \new Voice { \unfoldRepeats \trebleTwo }
            >>
	    \new Staff = bass <<
	      \new Voice { \clef bass \unfoldRepeats \bass }
	    >>
	  >>
      >>
    }
    \midi {}
  }
}
