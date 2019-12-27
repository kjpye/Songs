\version "2.13.59"

global = { \tempo 4 = 120 \key aes \major \time 4/4 }

SopranoMusic = \relative c'' {
  \repeat volta 3 {
				% 1
    r4 c bes c |
    des2. c4 |
    bes4 c aes4. bes8 |
    bes4 c 2. ~ |
				% 5
    c4 c bes c |
    des2. c4 |
    bes4 c aes4. bes8 |
    c1 ~ |
    c4 ees ees ees |
				% 10
    f2. c4 |
    c4 ees ees4. bes8 |
    bes4 des2. ~ |
    des4 des c bes |
    c2. aes4 |
				% 15
    aes4 bes2 c4 |
    c1 ~ |
    c4 ees ees ees |
    f2. c4 |
    c4 ees ees4. bes8 |
				% 20
    bes4 des2. ~ |
    des4 des c bes |
    c2. aes4 |
    aes4 bes2 aes4 |
    aes1
  }
}

FirstVerse = \lyricmode {
  Be still, my soul: the Lord is al- ways near thee;
  Bear pa- tient- ly the cross of grief or pain.
  Leave to thy God to com- fort and to cheer thee;
  In ev- 'ry change He faith- ful re- mains.
  Be still my soul: thy heav'n- ly Friend will steer thee,
  Through thorn- y ways to His own do- main.
}

SecondVerse = \lyricmode {
  Be still, my soul: thy God has un- der- tak- en
  Go be thy guide, as al- ways in the past.
  Thy hope, thy love, let no- thing ev- er shak- en,
  All things un- known shall be learned at last.
  Be still my soul: the winds and wa- ters still know,
  He who ruled them while He dwelt be- low.
}

ThirdVerse = \lyricmode {
  Be still, my soul: when dear- est friends are tak- en,
  And all is dark with- in the vale of tears;
  Then shalt thou know He has not for- sak- en,
  But comes to soothe thy sor- rows and fears.
  Be still my soul: thy God will al- ways re- pay
  In His own time, all He takes a- way.
}

FourthVerse = \lyricmode {
  Be still, my soul: the hour is fast ap- proach- ing
  When we shall be for- ev- er with the Lord.
  Then will our fears no long- er be en- croach- ing,
  Sor- rows for- got and our joy re- stored.
  Be still my soul: when world- ly troub- les have passed,
  All safe and blest, we shall meet at last.
}

MFirstVerse = \lyricmode {
  "Be " "still, " "my " "soul: " "the " "Lord " "is " "al" "ways " "near " "thee;"
  "/Bear " "pa" "tient" "ly " "the " "cross " "of " "grief " "or " "pain."
  "/Leave " "to " "thy " "God " "to " "com" "fort " "and " "to " "cheer " "thee;"
  "/In " "ev" "'ry " "change " "He " "faith" "ful " "re" "mains."
  "/Be " "still " "my " "soul: " "thy " "heav'n" "ly " "Friend " "will " "steer " "thee,"
  "/Through " "thorn" "y " "ways " "to " "His " "own " "do" "main."
}

MSecondVerse = \lyricmode {
  "\Be " "still, " "my " "soul: " "thy " "God " "has " "un" "der" "tak" "en"
  "/Go " "be " "thy " "guide, " "as " "al" "ways " "in " "the " "past."
  "/Thy " "hope, " "thy " "love, " "let " "no" "thing " "ev" "er " "shak" "en,"
  "/All " "things " "un" "known " "shall " "be " "learned " "at " "last."
  "/Be " "still " "my " "soul: " "the " "winds " "and " "wa" "ters " "still " "know,"
  "/He " "who " "ruled " "them " "while " "He " "dwelt " "be" "low."
}

MThirdVerse = \lyricmode {
  "\Be " "still, " "my " "soul: " "when " "dear" "est " "friends " "are " "tak" "en,"
  "/And " "all " "is " "dark " "with" "in " "the " "vale " "of " "tears;"
  "/Then " "shalt " "thou " "know " "He " "has " "not " "for" "sak" "en,"
  "/But " "comes " "to " "soothe " "thy " "sor" "rows " "and " "fears."
  "/Be " "still " "my " "soul: " "thy " "God " "will " "al" "ways " "re" "pay"
  "/In " "His " "own " "time, " "all " "He " "takes " "a" "way."
}

MFourthVerse = \lyricmode {
  "\Be " "still, " "my " "soul: " "the " "hour " "is " "fast " "ap" "proach" "ing"
  "/When " "we " "shall " "be " "for" "ev" "er " "with " "the " "Lord."
  "/Then " "will " "our " "fears " "no " "long" "er " "be " "en" "croach" "ing,"
  "/Sor" "rows " "for" "got " "and " "our " "joy " "re" "stored."
  "/Be " "still " "my " "soul: " "when " "world" "ly " "troub" "les " "have " "passed,"
  "/All " "safe " "and " "blest, " "we " "shall " "meet " "at " "last."
}

AltoMusic = \relative c''{
  \repeat volta 3 {
				% 1
    r4 aes g aes |
    g2. aes4 |
    g4 aes f4. g8 |
    g4 ees2. ~ |
				% 5
    ees4 aes g aes |
    g2. aes4 |
    g4 aes f4. g8 |
    ees1 ~ |
    ees4 ees aes aes |
				% 10
    aes2. aes4 |
    aes4 g g4. g8 |
    g4 f2. ~ |
    f4 des ees f |
    aes2. ees4 |
				%r 15
    f4 f2 e4 |
    e1 ~ |
    e4 ees aes aes |
    aes2. aes4 |
    aes4 g g4. g8 |
				% 20
    g4 f2. ~ |
    f4 des ees f |
    aes2. ees4 |
    ees4 des2 des4 |
    c1
  }
}

TenorMusic = \relative c' {
  \repeat volta 3 {
				% 1
    r4 ees ees ees |
    ees2. ees4 |
    ees4 ees des4. des8 |
    des4 c2. ~ |
				% 5
    c4 ees ees ees |
    ees2. ees4 |
    ees4 ees des4. des8 |
    c1 ~ |
    c4 c c c |
				% 10
    c2. c4 |
    aes4 aes aes4. bes8 |
    bes4 bes2. ~ |
    bes4 f a bes |
    ees2. c4 |
				% 15
    des4 bes(g) g |
    c1 ~ |
    c4 c c c |
    c2. c4 |
    aes4 aes aes4. bes8 |
				% 20
    bes4 bes2. ~ |
    bes4 f a bes |
    ees2. c4 |
    c4 aes(g) aes |
    aes1
  }
}

BassMusic = \relative c' {
  \repeat volta 3 {
				% 1
    r4 aes des c |
    bes2. aes4 |
    des4 c des4. bes8 |
    bes4 aes2. ~ |
				% 5
    aes4 aes des c |
    bes2. aes4 |
    des4 c des4. bes8 |
    aes1 ~ |
    aes4 aes aes g |
    f2. f4 |
    f4 c c4. ees8 |
    ees4 bes2. ~ |
    bes4 bes c des |
    ees2. ees4 |
    des4 des2 c4 |
    c1 ~ |
    c4 aes' aes g |
    f2. f4 |
    f4 c c4. ees8 |
    ees4 bes2. ~ |
    bes4 bes4 c des |
    ees2. ees4 |
    ees4 ees2 ees4 |
    aes,1
  }
}

trebleAccMusic = \relative c' {
  \repeat volta 3 {
				% 1
    r4 <c ees c'>4 <bes des bes'> <c ees c'> |
    <des ees des'>2. <c ees c'>4 |
    <bes f bes'>4 <c ees c'> <des f aes> <des ees bes'> |
    <des ees bes'> <c ees c'>2. ~ |
				% 5
    q4 q( <bes ees bes'> <c ees c'> |
    <des ees des'>2.) <c ees c'>4( |
    <bes des bes'>4 <c ees c'> <des f aes>4. <des ees bes'>8 |
    <c ees c'>1 ~ |
    q4) <ees aes c ees> q q |
				% 10
    <f aes c f>2. <f aes c>4 ( |
    q4 <ees g ees'> q4. <ees g bes>8 |
    q4 <des f des'>2. ~ |
    q4) q( <ees f c> <c bes> |
    <ees aes c>2.) <c ees aes>4 |
    <des f aes>4 ~ <f bes>2 <c e c'>4 |
    <c e c'>1 ~ |
    q4 <ees aes c ees> q q
    <f aes c f>2.-> <f ges c>4( |
    q4 <ees g ees'> q4. <ees g bes>8 |
    q4 <des f ees'>2. ~ |
    q4) q( <ees f c'> <f bes> |
    <ees aes c>2.) <c ees aes>4( |
    q4 <des ees bes'> q <aes des f aes> |
    <aes c ees aes>1)
  }
}

bassAccMusic = \relative c, {
  \repeat volta 3 {
				% 1
    <aes aes'>4 <aes' aes'> <des g> <c aes'> |
    <bes g'>2. <aes aes'>4 |
    <des g>4 <c aes'> <des aes'>4. <bes g'>8 |
    <bes g'>4 <aes aes'>2. ~ |
				% 5
    q4 q <des g> <c aes'> |
    <bes g'>2. <aes aes'>4 |
    <des g>4 <c aes'> <des aes'>4. <bes g'>8 |
    <aes aes'>1 ~ |
    q4 <aes' c> q <g aes c>
				% 10
    <f aes c>2. q4
    q4 <c aes' c> q4. <ees bes'>8 |
    <ees bes'>4 <bes f' bes>2. ~ |
    q4 <bes f'> <c f a> <des f bes> |
    <ees aes c>2. <ees bes>4 |
    << {\voiceTwo des4 des2 c4} \new Voice {\voiceOne aes'4 bes(g) g}>> |
    <c,, c'>1 ~ |
    q4 <aes' ees' aes>-- q-- <g ees' g>-- |
    <f c' f>2. <f' aes c>4 |
    q4 <c aes' c> q4. <ees bes'>8 |
    q4 <bes f' bes>2. ~ |
    q4 <bes f'> <c f a> <des f bes> |
    \ottava #1 <ees' aes c>4 <ees,, ees'>2 <ees' ees'>4 \ottava #0
    << {\voiceTwo s4 ees2 s4} \new Voice {\voiceOne <ees, ees'>4 aes'(g) <ees, ees'>}>>
    <aes, aes'>1
  }
}

\header {
  title = "Finlandia"
  composer = "Jean Sibelius"
  poet = "Katharina von Schlegel"
  meter = "tr. Jane Borthwick"
}
\score {
  <<
    \context ChoirStaff <<
      \context Staff = soprano <<
	\set Staff.midiInstrument = "flute"
	\context Voice = soprano { \global \clef "treble" \SopranoMusic }
      >>

     \context Staff = alto <<
	\set Staff.midiInstrument = "clarinet"
	\context Voice = alto { \global \clef "treble" \AltoMusic }
      >>
      \new Lyrics \lyricsto "soprano" { \FirstVerse }
      \new Lyrics \lyricsto "soprano" { \SecondVerse }
%      \new Lyrics \lyricsto "soprano" { \ThirdVerse }
      \new Lyrics \lyricsto "soprano" { \FourthVerse }
      
      \context Staff = tgenor <<
	\set Staff.midiInstrument = "oboe"
	\context Voice = bottom { \global \clef "treble_8" \TenorMusic }
      >>

      \context Staff = bassd <<
	\set Staff.midiInstrument = "bassoon"
	\context Voice = bass { \global \clef "bass" \BassMusic }
      >>
    >>
    \context PianoStaff <<
      \context Staff = trebleAcc <<
	\set Staff.midiInstrument = "acoustic grand"
	{ \global \clef "treble"  \trebleAccMusic }
      >>
      \context Staff = bassAcc <<
	\set Staff.midiInstrument = "acoustic grand"
	{ \global \clef "bass"  \bassAccMusic }
      >>
    >>
  >>
    
  \layout { }
}
\score {
  <<
    \context ChoirStaff <<
      \context Staff = soprano <<
	\set Staff.midiInstrument = "flute"
	\context Voice = soprano {\global \clef "treble" \unfoldRepeats {\SopranoMusic}}
      >>

     \context Staff = alto <<
	\set Staff.midiInstrument = "clarinet"
	\context Voice = alto { \global \clef "treble" \unfoldRepeats {\AltoMusic}}
      >>
      \new Lyrics \lyricsto "soprano" { \MFirstVerse \MSecondVerse \MFourthVerse }
      
      \context Staff = tgenor <<
	\set Staff.midiInstrument = "oboe"
	\context Voice = bottom \unfoldRepeats { \global \clef "treble_8" \TenorMusic }
      >>

      \context Staff = bassd <<
	\set Staff.midiInstrument = "bassoon"
	\context Voice = bass \unfoldRepeats { \global \clef "bass" \BassMusic }
      >>
    >>
    \context PianoStaff <<
      \context Staff = trebleAcc <<
	\set Staff.midiInstrument = "acoustic grand"
	{ \global \clef "treble"  \trebleAccMusic }
      >>
      \context Staff = bassAcc <<
	\set Staff.midiInstrument = "acoustic grand"
	{ \global \clef "bass"  \bassAccMusic }
      >>
    >>
  >>
    
  \midi { }
}
