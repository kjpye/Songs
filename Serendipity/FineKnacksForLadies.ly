\version "2.18.2"

global = {
  \time 2/2
  \key f \major
  \tempo 2 = 120
}

soprano = \relative c'' {
  \global
  \repeat volta 3 {
    c2 c4 c
    f2 c
    c2 d4 c~
    c4 b c2
    r4 c d d
    c2. a4
    bes4 f g g
    f1
    f'2 e4 d
    c2. c4
    bes4 a bes c
    d1
    a4 c2 g4
    bes2 a
    g4 f f e
    f1
    \repeat volta 2 {
      r2 c'
      d2 f
      e d
      c1
      r4 c f d
      c1
      a4 c2 b4
      c1
      r4 a c2~
      c2 g
      f1
    }
  }
}

alto = \relative c'' {
  \global
  \repeat volta 3 {
    a2 a4 a
    a2 a
    a2 bes4 g
    g2 g
    a2 bes4 bes
    a2. f4
    g8 f f2 e4
    f1
    d4 f2 g4
    a2. a4
    d,4 d d g
    fis1
    f2 c4 c
    d4.(e8 f4) e
    d4 c d g
    c,1
    \repeat volta 2 {
      a'1
      g2 f
      g2. f4
      e2. g4
      a2. bes4
      a2. g4
      f2 f
      e2. e4
      a2. g8(f)
      e4 f2(e4)
      f1
    }
  }
}
  
tenor = \relative c' {
  \global
  \repeat volta 3 {
    f2 f4 f
    c2 f
    f4 f2 e4
    d2 d
    f2 f4 f
    f2. c4
    d4 a c c
    c1
    bes4 bes2 bes4
    a4.(bes8 c4) a
    g4 a g4. g8
    a1
    r4 a g4. g8
    f4.(g8 a bes) c4
    g4 a bes4. bes8
    a1
    \repeat volta 2 {
      c1
      bes2 a
      c2 b
      c2. e4
      c4 f c f
      f2. c4
      c4 a a d
      g,2. c4
      c4 f, a bes
      c4 a c4. g8
      a1
    }
  }
}

bass = \relative c {
  \global
  \repeat volta 3 {
    f2 f4 f
    f2 f
    f2 bes,4 c
    g'2 c,
    f2 bes,4 bes
    f'2. f4
    bes,4 d c c
    f,1
    bes4.(c8) d4 e
    f2. f4
    g4 fis g ees
    d1
    f2 e4 e
    d2. c4
    bes4 a g4. g8
    f1
    \repeat volta 2 {
      f'1
      bes,2 d
      c2 g'
      c,4. d8 e4 c
      f2. bes,4
      f'2. e4
      f2 d
      c4. d8 e4 c
      f2. e8(d)
      c2. c4
      f,1
    }
  }
}

sopranoWordsOne = \lyricmode {
  Fine knacks for La- dies cheap, choice, brave and new
  Good pen- ny worths, but mo- ney can- not move!
  I keep a fair, but for the fair to view.
  A beg- gar may be li- ber- al of love.
  Though all my wares be trash, the heart is true, the heart is true, the heart is true
}

sopranoWordsTwo = \lyricmode {
  Great gifts are guiles and look for gifts a- gain,
  My Trif- les come as treas- ures from my mind.
  It is a prec- ious jew- el to be plain.
  Some- times in shells the Or- ient pearls we find.
  Of oth- ers take a sheaf, of me a grain, of me a grain, of me a grain.
}

sopranoWordsThree = \lyricmode {
  With- in this pack, pins, points, lac- es and gloves
  and di- vers toys fit- ting a count- ry fair.
  But in this heart where dut- y serves and loves
  Tur- tles and twins courts brood a heav- enly pair,
  Hap- py the man who thinks of no re- move, of no re- move, of no re- move.
}

altoWordsOne = \lyricmode {
  Fine knacks for La- dies cheap, choice, brave and new
  Good pen- ny worths, but mo- ney can- not move!
  I keep a fair, but for the fair to view.
  A beg- gar may be li- ber- al of love.
  Though all my wares be trash, the heart is true, the heart is true,
  the heart is true, is true.
}

altoWordsTwo = \lyricmode {
  Great gifts are guiles and look for gifts a- gain,
  My Trif- les come as treas- ures from my mind.
  It is a prec- ious jew- el to be plain.
  Some- times in shells the Or- ient pearls we find.
  Of oth- ers take a sheaf, of me a grain, of me a grain, of me a grain a grain.
}

altoWordsThree = \lyricmode {
  With- in this pack, pins, points, lac- es and gloves
  and di- vers toys fit- ting a count- ry fair.
  But in this heart where dut- y serves and loves
  Tur- tles and twins courts brood a heav- enly pair,
  Hap- py the man who thinks of no re- move, of no re- move, of no re- move re- move.
}

tenorWordsOne = \lyricmode {
  Fine knacks for La- dies cheap, choice, brave and new
  Good pen- ny worths, but mo- ney can- not move!
  I keep a fair, but for the fair to view.
  A beg- gar may be li- ber- al of love.
  Though all my wares be trash, the heart, the heart is true, the heart, the heart is true,
  the heart, the heart is true, the heart is true.
}

tenorWordsTwo = \lyricmode {
  Great gifts are guiles and look for gifts a- gain,
  My Trif- les come as treas- ures from my mind.
  It is a prec- ious jew- el to be plain.
  Some- times in shells the Or- ient pearls we find.
  Of oth- ers take a sheaf, of me, of me a grain, of me, of me a grain, of me, of me a grain, of me a grain.
}

tenorWordsThree = \lyricmode {
  With- in this pack, pins, points, lac- es and gloves
  and di- vers toys fit- ting a count- ry fair.
  But in this heart where dut- y serves and loves
  Tur- tles and twins courts brood a heav- enly pair,
  Hap- py the man who thinks of no, of no re- move, of no, of no re- move, of no, of no re- move, of no re- move.
}

bassWordsOne = \lyricmode {
  Fine knacks for La- dies cheap, choice, brave and new
  Good pen- ny worths, but mo- ney can- not move!
  I keep a fair, but for the fair to view.
  A beg- gar may be li- ber- al of love.
  Though all my wares be trash, the heart is true, is true, the heart is true,
  the heart is true, the heart is true.
}

bassWordsTwo = \lyricmode {
  Great gifts are guiles and look for gifts a- gain,
  My Trif- les come as treas- ures from my mind.
  It is a prec- ious jew- el to be plain.
  Some- times in shells the Or- ient pearls we find.
  Of oth- ers take a sheaf, of me a grain, a grain, of me a grain, of me a grain, of me a grain.
}

bassWordsThree = \lyricmode {
  With- in this pack, pins, points, lac- es and gloves
  and di- vers toys fit- ting a count- ry fair.
  But in this heart where dut- y serves and loves
  Tur- tles and twins courts brood a heav- enly pair,
  Hap- py the man who thinks of no re- move, re- move, of no re- move, of no re- move, of no re- move.
}

\book {
  \header {
    title    = "Fine knacks for ladies"
    composer = "John Dowland"
    opus     = "London 1562 - 1626"
  }

  \score {
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = soprano { \soprano	}
	\addlyrics \sopranoWordsOne
	\addlyrics \sopranoWordsTwo
	\addlyrics \sopranoWordsThree
	\new Staff = alto { \alto }
	\addlyrics \altoWordsOne
	\addlyrics \altoWordsTwo
	\addlyrics \altoWordsThree
	\new Staff = tenor { \clef "treble_8" \tenor }
	\addlyrics \tenorWordsOne
	\addlyrics \tenorWordsTwo
	\addlyrics \tenorWordsThree
	\new Staff = bass { \clef "bass" \bass }
	\addlyrics \bassWordsOne
	\addlyrics \bassWordsTwo
	\addlyrics \bassWordsThree
      >>
%      \context PianoStaff <<
%	    \new Staff <<
%	      \set Staff.printPartCombineTexts = ##f
%	      \partcombine
%              << \soprano >>	      
%	      << \alto >>
%	    >>
%	    \new Staff <<
%              \clef "bass"
%	      \set Staff.printPartCombineTexts = ##f
%	      \partcombine
%              << \tenor >>	      
%	      << \bass >>
%	    >>
%      >>
    >>
    \layout {}
    \midi {}
  }
}
