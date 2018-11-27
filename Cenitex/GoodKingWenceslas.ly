\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key a \major
  \time 4/4
  \tempo 4 = 140
}

sopMusic = \relative c'' {
  \repeat volta 5 {
    a4 a a b
    a4 a e2
    fis4 e fis gis
    a2 a
    a4 a a b
    a4 a e2
    fis4 e fis gis
    a2 a
    e'4 d cis b
    cis4 b a2
    fis4 e fis gis
    a2 a
    e4 e fis gis
    a4 a b2
    e4 d cis b
    a2(d)
    a1
  }
}

altoMusic = \relative c' {
  \repeat volta 5 {
    e4 e e e
    cis4 e b2
    d4 e d d
    e2 e
    e4 e cis e
    e4 d8(cis) b4(e)
    d4 e d d
    e2 e
    e4 fis e e
    e4 e cis2
    d4 cis cis e
    fis2 e
    cis4 e d d

    cis8(b) cis(dis) e2
    e4 fis e e
    cis2(fis)
    e1
  }
}

tenorMusic = \relative c' {
  \repeat volta 5 {
    cis4 cis cis gis
    a4 a gis2
    a4 a a b
    cis2 cis
    cis4 cis cis gis
    a4 fis gis(a)
    a4 a a b
    cis2 cis
    a4 a a gis
    gis4 gis a2
    a4 a a b
    d2 cis
    a4 a a b

    a4 a gis2
    a4 a a gis
    a2.(b4)
    cis1
  }
}

bassMusic = \relative c' {
  \repeat volta 5 {
    a4 a a e
    a4 cis, e2
    d4 cis d b
    a2 a
    a'4 a8(gis) fis4 e8(d)
    cis4 d e(cis)
    d4 cis d8(cis) b4
    a2 a
    cis4 d a' e
    cis4 e fis2
    d4 a' fis e
    d4(fis) a2
    a,4 cis d b

    fis'4 fis e(d)
    cis4 d e e
    fis4(e d2)
    a'1
  }
}

firstverse =\lyricmode {
  \set stanza = "1. "
  Good King Wen- ces- las look'd out
  On the feast of Steph- en;
  When the snow lay round a- bout...
  Deep, and crisp, and e- ven;
  Bright- ly shone the moon that night,
  Though the frost was cru- el,
  When a poor man came in sight,
  Gath- "'ring" win- ter fu- el.
}

Mfirstverse = \lyricmode {
  "Good " "King " "Wen" "ces" "las " "look'd " "out"
  "/On " "the " "feast " "of " "Steph" "en;"
  "/When " "the " "snow " "lay " "round " "a" "bout..."
  "/Deep, " "and " "crisp, " "and " "e" "ven;"
  "/Bright" "ly " "shone " "the " "moon " "that " "night,"
  "/Though " "the " "frost " "was " "cru" "el,"
  "/When " "a " "poor " "man " "came " "in " "sight,"
  "/Gath" "'ring " "win" "ter " "fu" "el."
}

secondverse = \lyricmode {
  \set stanza = "2. "
  "\"Hith-" er, page, and stand by me,
  If thou know'st it, tell- ing,
  Yon- der peas- ant, who is he?
  Where and what his dwell- "ing?\""
  "\"Sire," he lives a good league hence,
  Un- der- neath the moun- tain;
  Right a- gainst the for- est fence,
  By Saint Ag- nes' foun- "tain.\""
}

Msecondverse = \lyricmode {
  "\\MEN: \"Hith" "er, " "page, " "and " "stand " "by " "me,"
  "/If " "thou " "know'st " "it, " "tell" "ing,"
  "/Yon" "der " "peas" "ant, " "who " "is " "he?"
  "/Where " "and " "what " "his " "dwell" "ing?\""
  "/WOMEN: \"Sire," "he " "lives " "a " "good " "league " "hence,"
  "/Un" "der" "neath " "the " "moun" "tain;"
  "/Right " "a" "gainst " "the " "for" "est " "fence,"
  "/By " "Saint " "Ag" "nes' " "foun" "tain.\""
}

thirdverse = \lyricmode {
  \set stanza = "3. "
  "\"Bring" me flesh and bring me wine,
  Bring me pine logs hith- er;
  Thou and I will see him dine,
  When we bear them thith- "er.\""
  Page and Mon- arch forth they went,
  Forth they went to- geth- er,
  Through the rude wind's wild la- ment,
  And the bit- ter weath- er.
}

Mthirdverse = \lyricmode {
  "\\MEN: \"Bring " "me " "flesh " "and " "bring " "me " "wine,"
  "/Bring " "me " "pine " "logs " "hith" "er;"
  "/Thou " "and " "I " "will " "see " "him " "dine,"
  "/When " "we " "bear " "them " "thith" "er.\""
  "/ALL: Page " "and " "Mon" "arch " "forth " "they " "went,"
  "/Forth " "they " "went " "to" "geth" "er,"
  "/Through " "the " "rude " "wind's " "wild " "la" "ment,"
  "/And " "the " "bit" "ter " "weath" "er."
}

fourthverse = \lyricmode {
  \set stanza = "4. "
  "\"Sire," the night is dark- er now,
  And the wind blows strong- er,
  Fails my heart, I know not how;
  I can go no long- "er.\""
  "\"Mark" my foot- steps, good my page;
  Tread thou in them bold- ly;
  Thou shalt find the win- ter's rage
  Freeze thy blood less cold- "ly.\""
}

Mfourthverse = \lyricmode {
  "\\WOMEN: \"Sire," "the " "night " "is " "dark" "er " "now,"
  "/And " "the " "wind " "blows " "strong" "er,"
  "/Fails " "my " "heart, " "I " "know " "not " "how;"
  "/I " "can " "go " "no " "long" "er.\""
  "/MEN: \"Mark " "my " "foot" "steps, " "good " "my " "page;"
  "/Tread " "thou " "in " "them " "bold" "ly;"
  "/Thou " "shalt " "find " "the " "win" "ter's " "rage"
  "/Freeze " "thy " "blood " "less " "cold" "ly.\""
}

fifthverse = \lyricmode {
  \set stanza = "5. "
  In his mas- ter's steps he trod,
  Where the snow lay dint- ed;
  Heat was in the ve- ry sod
  Which the Saint had print- ed.
  There- fore, Christ- ians all, be sure,
  Wealth or rank pos- ses- sing,
  Ye who now will bless the poor,
  Shall your- selves find bless- ing.
}

Mfifthverse = \lyricmode {
  "\\ALL: In " "his " "mas" "ter's " "steps " "he " "trod,"
  "/Where " "the " "snow " "lay " "dint" "ed;"
  "/Heat " "was " "in " "the " "ve" "ry " "sod"
  "/Which " "the " "Saint " "had " "print" "ed."
  "/There" "fore, " "Christ" "ians " "all, " "be " "sure,"
  "/Wealth " "or " "rank " "pos" "ses" "sing,"
  "/Ye " "who " "now " "will " "bless " "the " "poor,"
  "/Shall " "your" "selves " "find " "bless" "ing."
}

\book
{
  \header {
    title = "Good King Wenceslas"
    copyright = \today
  }
  \score {
    \context ChoirStaff <<
      \context Staff = women <<
	\context Voice =
	sopranos { \voiceOne { \global \sopMusic } }
	\context Voice =
	altos { \voiceTwo { \global \altoMusic } }
      >>
      \context Lyrics = firstverse { s1 }
      \context Lyrics = secondverse { s1 }
      \context Lyrics = thirdverse { s1 }
      \context Lyrics = fourthverse { s1 }
      \context Lyrics = fifthverse { s1 }
      \context Staff = men <<
	\clef bass
	\context Voice =
	tenors { \voiceOne {\global \tenorMusic } }
	\context Voice =
	basses { \voiceTwo {\global \bassMusic } }
      >>
      \context Lyrics = firstverse  \lyricsto sopranos \firstverse
      \context Lyrics = secondverse \lyricsto sopranos \secondverse
      \context Lyrics = thirdverse  \lyricsto sopranos \thirdverse
      \context Lyrics = fourthverse \lyricsto sopranos \fourthverse
      \context Lyrics = fifthverse  \lyricsto sopranos \fifthverse
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
  \score { % karaoke
    <<
    % \context ChoirStaff <<
      \context Staff = sopranos <<
%        \set Staff.midiInstrument = #"flute"
	\context Voice =
	sopranos { \voiceOne { \global \unfoldRepeats \sopMusic } }
      >>
      \context Staff = altos <<
%        \set Staff.midiInstrument = #"clarinet"
	\context Voice =
	altos { \voiceTwo { \global \unfoldRepeats \altoMusic } }
      >>
      \context Lyrics = firstverse { s1 }
      \context Lyrics = secondverse { s1 }
      \context Lyrics = thirdverse { s1 }
      \context Staff = tenors <<
%        \set Staff.midiInstrument = #"oboe"
	\clef bass
	\context Voice =
	tenors { \voiceOne {\global \unfoldRepeats \tenorMusic } }
      >>
      \context Staff = basses <<
%        \set Staff.midiInstrument = #"bassoon"
	\clef bass
	\context Voice =
	basses { \voiceTwo {\global \unfoldRepeats \bassMusic } }
      >>
      \context Lyrics = firstverse \lyricsto basses { \Mfirstverse \Msecondverse \Mthirdverse \Mfourthverse \Mfifthverse}
    >>
    
    \midi { }
  }
  \score { % sopranos
    <<
      \context Staff = sopranos <<
	\context Voice =
	sopranos { \voiceOne { \global \unfoldRepeats \sopMusic } }
      >>
    >>
    
    \midi { }
  }
  \score { % altos
    <<
      \context Staff <<
	\context Voice { \voiceOne { \global \unfoldRepeats \altoMusic } }
      >>
    >>
    
    \midi { }
  }
  \score { % tenors
    <<
      \context Staff <<
	\context Voice { \voiceOne { \global \unfoldRepeats \tenorMusic } }
      >>
    >>
    
    \midi { }
  }
  \score { % basses
    <<
      \context Staff <<
	\context Voice { \voiceOne { \global \unfoldRepeats \bassMusic } }
      >>
    >>
    
    \midi { }
  }
}
