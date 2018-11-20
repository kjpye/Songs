\version "2.14.0"
today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

timekey = { \tempo 4 = 108 \time 3/4 \key d \major }

sopranomusic = \relative c'' {
  b4. b8 a b % 1
  fis4 fis2
  b4. d8 cis b
  fis2.
  d'4 cis d % 5
  b4 b2
  a8 a b4 gis
  fis2.
  fis2 fis8 b
  a4 a4. a8 % 10
  d4. d8 a b
  a2 r4
  a4 a b
  a8(g) g2
  fis8 fis g4 b % 15
  fis2.
  d'4 d8 d cis d
  a8 a a4. a8
  d4. fis8 e d
  b2. % 20
  e8 e d d e4
  a,4 a4. b8
  cis4 d8 e fis4
  e2.
  d4 d cis8 b % 25
  a2 a4 fis'4. fis8 e d
  e2.
  d4. e8 fis d
  e4 e e8 fis
  g4.(fis8 d e % 30
  fis4. e8 cis ) d
  e4 fis d
  b4.( a8 b d
  cis4.) b8(a4)
  b2. % 35
}

altomusic = \relative c' {
  fis4 fis e8 d % 1
  cis4 cis2
  d4 fis e8 d
  d4(cis2)
  fis4 fis8(e) a4 % 5
  a2 g4
  fis8 fis fis4 e8(d)
  cis2.
  d2 cis8 b
  cis4 cis4. fis8 % 10
  g4. fis8 e d
  cis2 r4
  fis4 fis8(e) fis4
  e4 d2
  d8 d d4 e % 15
  cis2.
  fis4 fis8 g a fis
  e8 e e4 fis
  fis4 fis g8 a
  a4(g2)
  g8 g fis fis e4
  d4 fis fis
  a4 a8 a fis4
  a2.
  d4 d cis8 b
  a2 a4
  a4 a a8 gis
  a2.
  gis4 a a8 fis
  a4 a g8 a
  b4.( a8 fis) g
  a2 a8 fis
  b4(a) a
  a4 g4. g8
  g2 fis4 dis2.
}

tenormusic = \relative c' {
  d4 d cis8 b % 1
  b4 ais2
  b4 fis g8 g
  b4(ais2)
  a4 a d % 5
  d2 e4
  cis8 cis d4 b
  b4(ais4.) fis8
  b4. b8 a b
  fis4 fis4. fis8 % 10
  b4. d8 cis b
  fis2 r4
  d'4 cis d
  b4 b2
  a8 a b4 g % 15
  fis2.
  a4 d8 d a a
  d8 d cis4 cis
  b4 b b8 a
  d2. % 20
  b8 b d cis b(cis)
  d4 cis d
  e4 d8 d a(b)
  cis2.
  d4 d cis8 b % 25
  a2 e'4
  d4 d e8 e
  cis2.
  b4 c d8 d
  d4 cis c8 c % 30
  d2 b4
  d4. c8(a) b
  b8(cis d4.) a8
  b8(cis) d4. b8
  e4(d) cis % 35
  b2.
}

bassmusic = \relative c' {
  b4 d, e8 e % 1
  fis4 fis2
  b4 d, e8 e
  fis2.
  d4 a' fis % 5
  g2 e4
  fis8 fis d4 e
  fis2 ~ fis8 fis
  b4. b8 a b
  fis4 fis4. fis8 % 10
  b4. d8 cis b
  fis2 r4
  d4 a' d,
  e4 g2
  d8 d b4 e % 15
  fis2.
  d4 d8 e fis fis
  a8 a a4 fis
  b4 d, e8 fis
  g2. % 20
  e8 e b'a g4
  fis4 fis d
  a'4 fis8 fis d4
  a'2.
  d4 d cis8 b
  a2 cis4
  d4 d cis8 b
  a2.
  e4 a d,8 b'
  a4 a c8 c
  g8( a b4. g8
  d8 e fis4.) b8
  g4 d8(e)fis4
  g2( fis4
  e2) fis4
  <b, fis'>2.
}

TopWords = \lyricmode {
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  All for an ap- ple,
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
\override Lyrics . LyricText #'font-shape = #'italic
  De- o gra- ci- as,
  De- o gra- ci- as!
}

CentreWords = \lyricmode {
  A- dam lay y- bound- en,
  Bound- en in a bond;
  Four thou- sand win- ter ~ Thought he not too long.
  And all was for an ap- ple,
  An ap- ple that he took,
  As clerk- es find- en ~ Writ- ten in their book.
  Ne had the ap- ple tak- en been,
  The ap- ple tak- en been,
  Ne had nev- er our la- dy ~ A- been hea- ven- é queen
  Bless- ed be the time ~ That ap- ple tak- en was,
  There- fore we moun sing- en
\override Lyrics . LyricText #'font-shape = #'italic
  De- o gra- ci- as,
  De- o gra- ci- as,
  De- o gra- ci- as!
}

MSopranoWords = \lyricmode {
  "A" "dam " "lay " y bound "en,"
  "/Bound" "en " "in " "a " "bond;"
  "/Four " "thou" "sand " "win" "ter "
  "/Thought " "he " "not " "too " "long."
  "/All " "for " "an " "ap" "ple,"
  "/An " "ap" "ple " "that " "he " "took,"
  "/As " "clerk" "es " "find" "en "
  "/Writ" "ten " "in " "their " "book."
  "/Ne " "had " "the " "ap" "ple " "tak" "en " "been,"
  "/The " "ap" "ple " "tak" "en " "been,"
  "/Ne " "had " "nev" "er " "our " "la" "dy "
  "/A" "been " "hea" "ven" "é " "queen"
  "/Bless" "ed " "be " "the " "time "
  "/That " "ap" "ple " "tak" "en " "was,"
  "/There" "fore " "we " "moun " "sing" "en"
  "/De" "o " "gra" "ci" "as,"
  "/De" "o " "gra" "ci" "as!"
}

MAltoWords = \lyricmode {
  "A" "dam " "lay " y bound "en,"
  "/Bound" "en " "in " "a " "bond;"
  "/Four " "thou" "sand " "win" "ter "
  "/Thought " "he " "not " "too " "long."
  "/All " "for " "an " "ap" "ple,"
  "/An " "ap" "ple " "that " "he " "took,"
  "/As " "clerk" "es " "find" "en "
  "/Writ" "ten " "in " "their " "book."
  "/Ne " "had " "the " "ap" "ple " "tak" "en " "been,"
  "/The " "ap" "ple " "tak" "en " "been,"
  "/Ne " "had " "nev" "er " "our " "la" "dy "
  "/A" "been " "hea" "ven" "é " "queen"
  "/Bless" "ed " "be " "the " "time "
  "/That " "ap" "ple " "tak" "en " "was,"
  "/There" "fore " "we " "moun " "sing" "en"
  "/De" "o " "gra" "ci" "as,"
  "/De" "o " "gra" "ci" "as,"
  "/De" "o " "gra" "ci" "as!"
}

MTenorWords = \lyricmode {
  "A" "dam " "lay " y bound "en,"
  "/Bound" "en " "in " "a " "bond;"
  "/Four " "thou" "sand " "win" "ter "
  "/Thought " "he " "not " "too " "long."
  "/And " "all " "was " "for " "an " "ap" "ple,"
  "/An " "ap" "ple " "that " "he " "took,"
  "/As " "clerk" "es " "find" "en "
  "/Writ" "ten " "in " "their " "book."
  "/Ne " "had " "the " "ap" "ple " "tak" "en " "been,"
  "/The " "ap" "ple " "tak" "en " "been,"
  "/Ne " "had " "nev" "er " "our " "la" "dy "
  "/A" "been " "hea" "ven" "é " "queen"
  "/Bless" "ed " "be " "the " "time "
  "/That " "ap" "ple " "tak" "en " "was,"
  "/There" "fore " "we " "moun " "sing" "en"
  "/De" "o " "gra" "ci" "as,"
  "/De" "o " "gra" "ci" "as,"
  "/De" "o " "gra" "ci" "as!"
}

MBassWords = \lyricmode {
  "A" "dam " "lay " y bound "en,"
  "/Bound" "en " "in " "a " "bond;"
  "/Four " "thou" "sand " "win" "ter "
  "/Thought " "he " "not " "too " "long."
  "/And " "all " "was " "for " "an " "ap" "ple,"
  "/An " "ap" "ple " "that " "he " "took,"
  "/As " "clerk" "es " "find" "en "
  "/Writ" "ten " "in " "their " "book."
  "/Ne " "had " "the " "ap" "ple " "tak" "en " "been,"
  "/The " "ap" "ple " "tak" "en " "been,"
  "/Ne " "had " "nev" "er " "our " "la" "dy "
  "/A" "been " "hea" "ven" "é " "queen"
  "/Bless" "ed " "be " "the " "time "
  "/That " "ap" "ple " "tak" "en " "was,"
  "/There" "fore " "we " "moun " "sing" "en"
  "/De" "o " "gra" "ci" "as,"
  "/De" "o " "gra" "ci" "as!"
}

AltoWords = \lyricmode {
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
\override Lyrics . LyricText #'font-shape = #'italic
  De- o gra- ci- as,
  De- o gra- ci- as,
  De- o gra- ci- as!
}

BottomWords = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _
\override Lyrics . LyricText #'font-shape = #'italic
  De- o gra- ci- as,
  De- o gra- ci- as!
}

\book
{
  \paper {
    system-system-spacing #'basic-distance = #25
  }

  \header {
    title = "Adam Lay Ybounden"
    composer = "Boris Ord"
    poet = "Anon. 15th century"
    copyright = \today
  } 

  \score {
    \new ChoirStaff <<
	\new Lyrics = TopLyrics \with { \override VerticalAxisGroup #'staff-affinity = #DOWN }
	\new Staff = "women" <<
	\new Voice = "sopranos" { \voiceOne \timekey \sopranomusic \bar "||" }
	\new Voice = "altos" { \voiceTwo \timekey \altomusic }
	\new Lyrics = AltoLyrics {}
      >>
      \new Lyrics = CentreLyrics {}
      \new Staff = "men" <<
	\new Voice = "tenors" { \clef "bass" \voiceOne \timekey \tenormusic }
	\new Voice = "basses" { \voiceTwo \timekey \bassmusic }
      >>
      \new Lyrics = BottomLyrics {}
      \context Lyrics = TopLyrics    \lyricsto "sopranos" { \TopWords}
      \context Lyrics = AltoLyrics   \lyricsto "altos"    { \AltoWords}
      \context Lyrics = CentreLyrics \lyricsto "tenors"   { \CentreWords}
      \context Lyrics = BottomLyrics \lyricsto "basses"   { \BottomWords}
    >>
    \layout {
      \context {
        \RemoveEmptyStaffContext
      }
    }
  }

  \score { % manually unfold everything for the midi file
    \new ChoirStaff <<
      \new Staff = "women" <<
	\new Voice = "sopranos" { \voiceOne \timekey r2 \sopranomusic}
	\new Voice = "altos" { \voiceOne \timekey r2 \altomusic}
      >>
      \new Staff = "men" <<
	\new Voice = "tenors" { \clef "bass" \voiceOne \timekey r2 \tenormusic}
	\new Voice = "basses" { \voiceTwo\timekey r2 \bassmusic}
      >>
      \new Lyrics \lyricsto "sopranos" { \MSopranoWords }
%     \new Lyrics \lyricsto "altos"    { \MAltoWords    }
%     \new Lyrics \lyricsto "tenors"   { \MTenorWords   }
%     \new Lyrics \lyricsto "basses"   { \MBassWords    }
    >>
    \midi {
      \context {
        \Staff
        \remove "Staff_performer"
      }
      \context {
        \Voice
        \consists "Staff_performer"
      }
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 120 2)
      }
    }
  }
  \score { % manually unfold everything for the midi file
    \new ChoirStaff <<
      \new Staff = "women" <<
	\new Voice = "sopranos" { \voiceOne \timekey r2 \sopranomusic}
	\new Voice = "altos" { \voiceOne \timekey r2 \altomusic}
      >>
      \new Staff = "men" <<
	\new Voice = "tenors" { \clef "bass" \voiceOne \timekey r2 \tenormusic}
	\new Voice = "basses" { \voiceTwo\timekey r2 \bassmusic}
      >>
%     \new Lyrics \lyricsto "sopranos" { \MSopranoWords }
      \new Lyrics \lyricsto "altos"    { \MAltoWords    }
%     \new Lyrics \lyricsto "tenors"   { \MTenorWords   }
%     \new Lyrics \lyricsto "basses"   { \MBassWords    }
    >>
    \midi {
      \context {
        \Staff
        \remove "Staff_performer"
      }
      \context {
        \Voice
        \consists "Staff_performer"
      }
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 120 2)
      }
    }
  }
  \score { % manually unfold everything for the midi file
    \new ChoirStaff <<
      \new Staff = "women" <<
	\new Voice = "sopranos" { \voiceOne \timekey r2 \sopranomusic}
	\new Voice = "altos" { \voiceOne \timekey r2 \altomusic}
      >>
      \new Staff = "men" <<
	\new Voice = "tenors" { \clef "bass" \voiceOne \timekey r2 \tenormusic}
	\new Voice = "basses" { \voiceTwo\timekey r2 \bassmusic}
      >>
%     \new Lyrics \lyricsto "sopranos" { \MSopranoWords }
%     \new Lyrics \lyricsto "altos"    { \MAltoWords    }
      \new Lyrics \lyricsto "tenors"   { \MTenorWords   }
%     \new Lyrics \lyricsto "basses"   { \MBassWords    }
    >>
    \midi {
      \context {
        \Staff
        \remove "Staff_performer"
      }
      \context {
        \Voice
        \consists "Staff_performer"
      }
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 120 2)
      }
    }
  }
  \score { % manually unfold everything for the midi file
    \new ChoirStaff <<
      \new Staff = "women" <<
	\new Voice = "sopranos" { \voiceOne \timekey r2 \sopranomusic}
	\new Voice = "altos" { \voiceOne \timekey r2 \altomusic}
      >>
      \new Staff = "men" <<
	\new Voice = "tenors" { \clef "bass" \voiceOne \timekey r2 \tenormusic}
	\new Voice = "basses" { \voiceTwo\timekey r2 \bassmusic}
      >>
%     \new Lyrics \lyricsto "sopranos" { \MSopranoWords }
%     \new Lyrics \lyricsto "altos"    { \MAltoWords    }
%     \new Lyrics \lyricsto "tenors"   { \MTenorWords   }
      \new Lyrics \lyricsto "basses"   { \MBassWords    }
    >>
    \midi {
      \context {
        \Staff
        \remove "Staff_performer"
      }
      \context {
        \Voice
        \consists "Staff_performer"
      }
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 120 2)
      }
    }
  }
}

