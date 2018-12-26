\version "2.19.82"
\include "predefined-ukulele-fretboards.ly"

global = {
  \time 2/2
  \key f \major
  \tempo 4 = 150
}

melody = \relative c'' {
  \global
  s1
  s1
  s1
  s2. \bar "||" a4
  \repeat volta 3 {
    c4 d c a % 5
    bes4 c bes g
    c4 bes a g
    f2. c'4
    d4 d f d
    c4 c a a % 10
    a4 g g a
    g2. c4
    d4 bes bes c
    d4 f4 e d
    c4 a a bes % 15
    c2. a4
    g4 gis a bes
    b4 bes a aes
    g4 f' e d
    c4 c a g \bar "||" % 20
    f4 f f f
    f4 g a bes
    c1~
    c2. c4
    d4 cis d e % 25
    f4 e f d
    c1~
    c2 r4 c
    c4 g g a
    bes4 d c bes % 30
    a4 g a bes
    c2. a4
    g4 a b c
    d4 b a g
    d'4 b a g % 35
    c2. g4
    a4 a a a
    g4 g g g
    f1~
    f2 r4 c' % 40
    d4 d d e
    f4 e f d
    e1
    r4 c d e
    f4 e f d % 45
    e4 e cis cis
    d4 cis d a
    bes4 bes a g
    c4 c c d
    c4 bes a g % 50
    f2 e'
    e4 d2 d4
    f4 d f d
    f4 e d e
  }
  \alternative {
    { f1~
      f2 r4 a,
    }
    { f'1~
      f2 r
    }
  }
  \bar "|."
}

ukulele = \chordmode {
  s1
  s1
  s1
  s2. d4:7
  \repeat volta 3 {
    f1
    c1:7
    s1
    f1
    bes1
    f1
    g1:7
    c1:7
    bes1
    s1
    f1
    s1
    g4:7
    gis:7
    a:7
    bes:7
    b4:7
    bes:7
    a:7
    aes:7
    g1:7
    c1:7 \bar "||"
    f1
    s1
    s1
    s1
    bes1
    s1
    f1
    s1
    c1:7
    s1
    f1
    s1
    g1:7
    s1
    s1
    c1:7
    f1
    a1:7
    d1:m
    f1:7
    bes1
    s1
    a2 a:maj7
    c1:7
    f1
    a1:7
    d1:7
    g2:m
    c:7
    f2
    fis:dim
    c1:7
    f2 a:7
    d1:7
    g1:7
    c1:7
  }
  \alternative {
    { f1
      s2 c:7
    }
    { f1
      s1
    }
  }
}

trebleOne = \relative c'' {
  \global
  \voiceOne
  f4 d f d
  f4 e d e
  f1~
  f4 r r \bar "||" \break c4
  \repeat volta 3 {
    c4 d c a % 5
    bes4 c bes g
    c4 bes a g
    f2. c'4
    d4 d f d
    c4 c a a % 10
    a4 g g a
    g2. c4
    d4 bes bes c
    \oneVoice <bes d>4 <d f>2 <bes d>4
    <a c>4 <f a> q <g bes> % 15
    \voiceOne <a c>2. a4
    \oneVoice <b, g'>4 <c gis'> <cis a'> <d bes'>
    <dis b'>4 <d bes'> <cis a'> <c aes'>
    <b g'>4 <a' f'> <g e'> <f d'>
    <e c'>2 <c a'>4 <bes g'> \bar "||" % 20
    \voiceOne f'4 f f f
    f4 g a bes
    c1 ~
    c2. c4
    d4 cis d e
    \oneVoice <d f>4 <cis d> <d f> <bes d>
    \voiceOne c1~
    c2 r4 c4
    c4 \oneVoice <e, g> q <f a>
    <g bes> <bes d> <a c> <g bes>
    <f a>4 <e g> <f a> <g bes>
    \voiceOne <a c>2. a4
    g4 a b c
    d4 b a g
    d'4 b a g
    c2. g4
    a4 a a a
    g4 g g g
    f1~
    f2 r4 c'
    \oneVoice <bes d> q q <c e>
    <d f>4 <cis e> <d f> <bes d>
    <cis e>1
    \voiceOne r4 c d e
    f4 e d e
    e2 cis4 cis
    d4 cis d a
    bes2 a4 g
    c4 c c d
    c4 bes a g
    \oneVoice <a, c f>2 <g' cis e>
    \voiceOne d'1
    f4 d f d
    f4 e d e
  }
  \alternative {
    { f1~
      f2 r4 a,
    }
    { f'1~
      f2 \oneVoice <f, a c f>4-> r
    }
  }
  \bar "|."
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  r4 <f b> r q
  r4 <g bes> r q
  r4 <a c> r q
  r4 q r \bar "||" \break <bes, e>
  \repeat volta 3 {
    r4 <f' a> r q % 5
    r4 <e g> r e
    r4 q r <bes e>
    r4 <a c> r <f' a>
    r4 <f bes> r q
    r4 <f a> r f % 10
    r4 <b, f'> r q
    r4 <bes e> r <e bes'>
    r <d f> r a'
    s1
    s1 % 15
    r4 <c, f> r f
    s1
    s1
    s1
    s1 \bar "||"% 20
    r4 <a, c> r q
    r4 q r <d f>
    r4 q r q
    r4 q r q
    r4 a' r c % 25
    s1
    r4 <f, a> r q
    r4 q r q
    r4 s4 s2
    s1 % 30
    s1
    r4 <c f> r f
    r <b, f'> r a'
    r <d, f> r <b f'>
    r <d f> e <b f'> % 35
    r4 <e bes'> r <bes e>
    r4 <c f> r q
    r <cis e> r q
    r <a d> r q
    r <a ees'> r <ees' a> % 40
    s1
    s1
    s1
    r4 <e bes'> r <g bes>
    r4 <a c> r <f a> % 45
    r4 <g cis> r a
    r4 <fis a cis> r fis
    r <d f> c <bes e>
    r4 <f' a> r <ees a>
    r4 d c bes % 50
    s1
    r4 <fis' c'> r q
    r4 <f b> r q
    r4 <g bes> r q
  }
  \alternative {
    { r4 <a c> r q
      r4 q r <bes, e>
    }
    { r4 <a' c> r q
      r2 s
    }
  }
  \bar "|."
}

bass = \relative c {
  \global
  g4 r g r
  c,4 r c r
  f4 r e r
  d4 r c \bar "||" \break r4
  \repeat volta 3 {
    f4 r c r % 5
    g'4 r c, r
    g'4 r c, r
    f4 r f r
    bes4 r bes r
    a4 r f r % 10
    d4 r g r
    c,4 r c r
    bes'4 r f r
    bes4 r bes r
    f4 r c r % 15
    f4 r c r
    d4 dis e f
    fis4 f e ees
    d4 r g r
    c,4 c d e % 20
    f4 r e r
    d4 r c r
    f4 r e r
    d4 r c r
    bes r f' r % 25
    bes, r bes r
    f'4 r e r
    d4 r c r
    g'4 r c, r
    g'4 r c, r % 30
    f4 r c r
    f4 r c r
    d4 r g r
    d4 r g r
    d4 r g r
    c,4 r c r
    f4 r f r
    a4 r a r
    d,4 r a' r
    c,4 r f r
    bes4 r f r
    bes4 r bes r
    a2 aes
    g4 r c, r f4 r f r
    a4 r a r
    d,4 r d r
    g4 r c, r
    f4 r fis r
    g4 r c, r
    f2 a
    d,4 r a' d,
    g4 r g r
    c,4 r c r
  }
  \alternative {
    { f4 r e r
      d4 r c r
    }
    { f4 r c r
      f4 c f, r
    }
  }
}

verseOne = \lyricmode {
  Now ev- 'ry- bo- dy's got a cra- zy no- tion of their own,
  Some like to mix up with a crowd, some like to be a- lone.
  It's no one el- ses busi- ness _ as far as I can see,
  But ev- 'ry- time that I go out the peo- ple stare at me. _

  With my Lit- tle U- ke- le- le in my hand, __
  I'm sure the peo- ple just don't un- der- stand, __
  Some say, "\"Why" don't you be a scout, why don't you read a "book?\""
  But I get much more plea sure when I'm play- ing with my uke.

  Of course I take no no- tice you can tell, __
  For moth- ers' sound ad- vice will al- ways stand,
  She said "\"my" son do what I say, _ and you'll ne- ver go a- stray, _
  If you keep your U- ke- le- le in your hand.
  Yes son, _ _ Keep your U- ke- le- le in your "hand.\""

  While
}

MverseOne = \lyricmode {
}

verseTwo = \lyricmode {
  While walk- ing down the prom last night as peace- ful as can be,
  This bird from Wales said how a- bout a stroll down by the sea.
  She said her name was Gert and that she'd just come for the day,
  She looked so young and harm- less that I could- n't turn a- way.

  And with my lit- tle u- ke- le- le in my hand,
  I took a stroll with Gert a- long the sands.
  We walked a- long for miles with- out a sing- le care or frown,
  But when we reached the sand- hills she siad come on let's sit down.

  I felt so shy and bash- ful sit- ting there,
  "For the" things she said I did' n't un- der- stand.
  She said your love just turns me cuc- koo, I in- deed to good- ness look you,
  But I kept my u- ke- le- le in my hand, oh ba- by, I kept my u- ke- le- le in my hand.

  Made
}

MverseTwo = \lyricmode {
}

verseThree = \lyricmode {
  Made up my mind that I'd get wed some eight- een months a- go,
  I e- ven bought a book a- bout the things you ought to know.
  But just a- bout a week a- go I had an aw- ful fright,
  I had to get dressed quick- ly in the mid- dle of the night.

  And with my lit- tle u- ke- le- le- in my hand,
  I ran a- long the road for Doc- tor Brand.
  It did- n't take him long to get his lit- tle bag of tools,
  I held his hat and coat and let hiom have my book of rules.

  Out of the bed- room door he looked and smiled,
  Said come in- side and see your wife and child.
  _ _ My heart did pump with joy _ I could see it mwas a boy, _
  'Cause he had his u- ke- le- le in his hand, oh ba- by,
 he had his u- ke- le- le in his _ _ hand.
}

MverseThree = \lyricmode {
}

\book {
  \header {
    title = "Little Ukulele"
    composer = "Jack Cottrell"
  }

  \score {
    <<
      \new ChordNames { \ukulele }
      \new FretBoards { \set Staff.stringTunings = #ukulele-tuning \transpose d c \ukulele }
      \context GrandStaff {
	<<
	  \new Staff = melody { \melody }
	  \addlyrics \verseOne
	  \addlyrics \verseTwo
	  \addlyrics \verseThree
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
    \layout {}
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody { \unfoldRepeats \melody }
	\addlyrics { \MverseOne \MverseTwo \MverseThree }
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
