\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key d \major
  \time 2/4
  \tempo 2 = 72
}

firstlinesop = \relative c' {
  d'4 cis8. b16 a4. g8 fis4 e d4. % Should be rall after third note
  a'8 b4. b8 cis4. cis8 d2 ~ d4.
}

sopMusic = \relative c' {
  \repeat volta 3 {
    \firstlinesop
    d'8 \break d(cis) b(a) a8.(g16 fis8) d'8 d(cis) b(a) a8.(g16 fis8)
    fis8 fis fis fis fis16(g) a4.
    g16(fis) \break e8 e e e16(fis) g4.
    fis16(e) d8(d'4) b8 a8.( g16 fis8) g fis4 e d2 \break
  }
}

firstlinealto = \relative c' {
    fis4 a8. g16 fis4. e8 d4 cis d4.
    d8 g4. g8 e4. e8 fis2 ~ fis4.
}

altoMusic = \relative c' {
  \repeat volta 3 {
    \firstlinealto
    fis8 fis(a) g(fis) fis8.(e16 d8) fis8 fis(a) g(fis) fis8.(e16 d8)
    d8 d d d d16(e) fis4. e16(d) cis8 cis cis cis16(d) e4.
    d16(cis) d8(fis4) g8 fis8.(e16 d8) e8 d4 cis d2
  }
}

firstlinetenor = \relative c' {
    a4 d8. d16 d4. b8 a4. g8 fis4.
    d'8 d4. d8 a4. a8 a2 ~ a4.
}

tenorMusic = \relative c' {
  \repeat volta 3 {
    \firstlinetenor
    r8 r2 r2 r2 r2 r4.
    a8 a a a a a2(a4.) a16(g) fis8(a4) d8 d4. b8 a4 a8(g) fis2
  }
}

firstlinebass = \relative c {
    d4 d8. d16 d4. g,8 a4 a d4.
    fis8 g4. g8 a4. a8 d,2 ~ d4.
}

bassMusic = \relative c {
  \repeat volta 3 {
    \firstlinebass
    r8 r2 r2 r2 r2 r4.
    d8 d d d d a4. a8 a a a a d4. d8 d4. g,8 a4 a d2
  }
}

firstverseA = \lyricmode {
  \set stanza = "ff 1. "
  Joy to the world! The Lord is come;
  Let earth re- ceive her King;
}

MfirstverseA = \lyricmode {
  "Joy " "to " "the " "world! " "The " "Lord " "is " "come;"
  "/Let " "earth " "re" "ceive " "her " "King;"
}

firstverseB = \lyricmode {
  Let ev- 'ry heart pre- pare Him room,
  And heav'n and na- ture sing,
  And heav'n and na- ture sing,
}

MfirstverseB = \lyricmode {
  "/Let " "ev" "'ry " "heart " "pre" "pare " "Him " "room,"
  "/And " "heav'n " "and " "na" "ture " "sing,"
  "/And " "heav'n " "and " "na" "ture " "sing,"
}

firstverseC = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  And heav'n and na- ture sing,
}

MfirstverseC = \lyricmode {
  "/And " "heav'n " "and " "na" "ture " "sing,"
}

firstverseD = \lyricmode {
  And heav'n, and heav'n and na- ture sing.
}

MfirstverseD = \lyricmode {
  "/And " "heav'n, " "and " "heav'n " "and " "na" "ture " "sing."
}

firstverseE = \lyricmode {
  And heav'n and na- ture sing,
  And heav'n and na- ture sing.
}

MfirstverseE = \lyricmode {
  "/And " "heav'n " "and " "na" "ture " "sing,"
  "/And " "heav'n " "and " "na" "ture " "sing."
}

secondverseA = \lyricmode {
  \set stanza = "f 2. "
  Joy to the earth! the Sav- iour reigns;
  Let all their songs em- ploy;
}

MsecondverseA = \lyricmode {
  "\Joy " "to " "the " "earth! " "the " "Sav" "iour " "reigns;"
  "/Let " "all " "their " "songs " "em" "ploy;"
}

secondverseB = \lyricmode {
  While fields and floods, rocks, hills, and plains
  Re- peat the sound- ing joy,
  Re- peat the sound- ing joy,
}

MsecondverseB = \lyricmode {
  "/While " "fields " "and " "floods, " "rocks, " "hills, " "and " "plains"
  "/Re" "peat " "the " "sound" "ing " "joy,"
  "/Re" "peat " "the " "sound" "ing " "joy,"
}

secondverseC = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Re- peat the sound- ing joy,
}

MsecondverseC = \lyricmode {
  "/Re" "peat " "the " "sound" "ing " "joy,"
}

secondverseD = \lyricmode {
  Re- peat, re- peat the sound- ing joy,
}

MsecondverseD = \lyricmode {
  "/Re" "peat, " "re" "peat " "the " "sound" "ing " "joy,"
}

secondverseE = \lyricmode {
  Re- peat the sound- ing joy,
  Re- peat the sound- ing joy.
}

MsecondverseE = \lyricmode {
  "/Re" "peat " "the " "sound" "ing " "joy,"
  "/Re" "peat " "the " "sound" "ing " "joy."
}

thirdverseA = \lyricmode {
  \set stanza = "3. "
  No more let sins and sor- rows grow,
  Nor thorns in- fest the ground;
}

MthirdverseA = \lyricmode {
  \set stanza = "mf 3. "
  No more let sins and sor- rows grow,
  Nor thorns in- fest the ground;
}

thirdverseB = \lyricmode {
  He comes to make His bless- ings flow
  Far as the curse is found,
  Far as the curse is found,
  Far as, far as the curse is found,
}

MthirdverseB = \lyricmode {
  He comes to make His bless- ings flow
  Far as the curse is found,
  Far as the curse is found,
  Far as, far as the curse is found,
}

fourthverseA = \lyricmode {
  \set stanza = "mf 4. "
  He rules the world with truth and grace,
  And makes the na- tions prove
}

MfourthverseA = \lyricmode {
  "\He " "rules " "the " "world " "with " "truth " "and " "grace,"
  "/And " "makes " "the " "na" "tions " "prove"
}

fourthverseB = \lyricmode {
  The glo- ries of His right- eous- ness,
  And won- ders of His love,
  And won- ders of His love,
}

MfourthverseB = \lyricmode {
  "/The " "glo" "ries " "of " "His " "right" "eous" "ness,"
  "/And " "won" "ders " "of " "His " "love,"
  "/And " "won" "ders " "of " "His " "love,"
}

fourthverseC = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  And won- ders of His love,
}

MfourthverseC = \lyricmode {
  "/And " "won" "ders " "of " "His " "love,"
}

fourthverseD = \lyricmode {
  And wonders, and won- ders of His love,
}

MfourthverseD = \lyricmode {
  "/And " "wonders, " "and " "won" "ders " "of " "His " "love,"
}

fourthverseE = \lyricmode {
  And won- ders of His love,
  And won- ders of His love.
}

MfourthverseE = \lyricmode {
  "/And " "won" "ders " "of " "His " "love,"
  "/And " "won" "ders " "of " "His " "love."
}

\book
{
  \header {
    title = "Joy to the World"
    copyright = \today
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  \context Voice =
	  sopranos { \voiceOne {\global \sopMusic \firstlinesop r8 \bar "||"} }
	  \context Voice =
	  altos { \voiceTwo {\global \altoMusic \firstlinealto r8} }
	>>
	\context Lyrics = firstverse { s1 }
	\context Lyrics = secondverse { s1 }
%	\context Lyrics = thirdverse { s1 }
	\context Lyrics = fourthverse { s1 }
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \voiceOne {\global \tenorMusic \firstlinetenor r8} }
	    \context Voice =
	    basses { \voiceTwo {\global \bassMusic \firstlinebass r8} }
	  >>
	}
	\context Lyrics = fifthverse { s1 }
%	\context Lyrics = sixthverse { s1 }
%	\context Lyrics = seventhverse { s1 }
	\context Lyrics = firstverse \lyricsto sopranos {\firstverseA \firstverseB \firstverseD \firstverseA}
	\context Lyrics = secondverse \lyricsto sopranos {\secondverseA \secondverseB \secondverseD}
%	\context Lyrics = thirdverse \lyricsto sopranos {\thirdverseA \thirdverseB}
	\context Lyrics = fourthverse \lyricsto sopranos {\fourthverseA \fourthverseB \fourthverseD}
	\context Lyrics = fifthverse \lyricsto basses {\firstverseC \firstverseE}
%	\context Lyrics = sixthverse \lyricsto basses {\secondverseC \secondverseE}
%	\context Lyrics = seventhverse \lyricsto basses {\thirdverseC \thirdverseE}
      >>
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
        }
	\context { % \RemoveEmptyStaffContext
	\override VerticalAxisGroup #'remove-first = ##t }
    }
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
%          \set Staff.midiInstrument = #"flute"
	  \context Voice =
	  sopranos { \voiceOne {\global R2 \unfoldRepeats \sopMusic \firstlinesop } }
%          \set Staff.midiInstrument = #"clarinet"
	  \context Voice =
	  altos { \voiceTwo {\global R2 \unfoldRepeats \altoMusic \firstlinealto} }
	>>
	\context Lyrics = firstverse { s1 }
	\context Staff = men {
	  <<
	    \clef bass
%          \set Staff.midiInstrument = #"oboe"
	    \context Voice =
	    tenors { \voiceOne {\global R2 \unfoldRepeats \tenorMusic \firstlinetenor} }
%          \set Staff.midiInstrument = #"bassoon"
	    \context Voice =
	    basses { \voiceTwo {\global R2 \unfoldRepeats \bassMusic \firstlinebass} }
	  >>
	}
	\context Lyrics = firstverse \lyricsto sopranos {
	  \MfirstverseA  \MfirstverseB  \MfirstverseD
	  \MsecondverseA \MsecondverseB \MsecondverseD
	 %\MthirdverseA  \MthirdverseB  \MthirdverseD
	  \MfourthverseA \MfourthverseB \MfourthverseD
	 %\MfifthverseA  \MfifthverseB  \MfifthverseD
	 %\MsixthverseA  \MsixthverseB  \MsixthverseD
          \MfirstverseA
	}
      >>
    >>
    \midi { }
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
%          \set Staff.midiInstrument = #"flute"
	  \context Voice =
	  sopranos { \voiceOne {\global R2 \unfoldRepeats \sopMusic \firstlinesop} }
%          \set Staff.midiInstrument = #"clarinet"
	  \context Voice =
	  altos { \voiceTwo {\global R2 \unfoldRepeats \altoMusic \firstlinealto} }
	>>
	\context Lyrics = firstverse { s1 }
	\context Staff = men {
	  <<
	    \clef bass
%          \set Staff.midiInstrument = #"oboe"
	    \context Voice = tenors
	    { \voiceOne {\global R2 \unfoldRepeats \tenorMusic \firstlinetenor} }
%          \set Staff.midiInstrument = #"bassoon"
	    \context Voice = basses
	    { \voiceTwo {\global R2 \unfoldRepeats \bassMusic \firstlinebass} }
	  >>
	}
	\context Lyrics = firstverse \lyricsto tenors {
	  \MfirstverseA  \MfirstverseC   \MfirstverseD
	  \MsecondverseA \MsecondverseC \MsecondverseD
	  \MfourthverseA \MfourthverseC \MfourthverseD}
      >>
    >>
    \midi { }
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
%          \set Staff.midiInstrument = #"flute"
	  \context Voice =
	  sopranos { \voiceOne {\global R2 \unfoldRepeats \sopMusic \firstlinesop } }
%          \set Staff.midiInstrument = #"clarinet"
	  \context Voice =
	  altos { \voiceTwo {\global R2 \unfoldRepeats \altoMusic \firstlinealto} }
	>>
	\context Lyrics = firstverse { s1 }
	\context Staff = men {
	  <<
	    \clef bass
%          \set Staff.midiInstrument = #"oboe"
	    \context Voice = tenors
	    { \voiceOne {\global R2 \unfoldRepeats \tenorMusic \firstlinetenor} }
%          \set Staff.midiInstrument = #"bassoon"
	    \context Voice = basses
	    { \voiceTwo {\global R2 \unfoldRepeats \bassMusic \firstlinebass} }
	  >>
	}
	\context Lyrics = firstverse \lyricsto basses {
	  \MfirstverseA  \MfirstverseC   \MfirstverseE
	  \MsecondverseA \MsecondverseC \MsecondverseE
	  \MfourthverseA \MfourthverseC \MfourthverseE}
      >>
    >>
    \midi { }
  }
  \score { % soprano MP3
    \context Staff
      \context Voice { \global R2 \unfoldRepeats \sopMusic \firstlinesop}
    \midi { }
  }
  \score { % alto MP3
    \context Staff
      \context Voice { \global R2 \unfoldRepeats \altoMusic \firstlinealto}
    \midi { }
  }
  \score { % tenor MP3
    \context Staff
      \context Voice { \global R2 \unfoldRepeats \tenorMusic \firstlinetenor}
    \midi { }
  }
  \score { % bass MP3
    \context Staff
      \context Voice { \global R2 \unfoldRepeats \bassMusic \firstlinebass}
    \midi { }
  }
}

