\version "2.25.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key d \major
  \time 2/4
  \tempo 2 = 72
}

sopMusic = \relative c' {
  d'4 cis8. b16 a4. g8 fis4 e d4. % Should be rall after third note
  a'8 b4. b8 cis4. cis8 d2 ~ d4.
  d8 d(cis) b(a) a8.(g16 fis8) d'8 d(cis) b(a) a8.(g16 fis8)
  fis8 fis fis fis fis16(g) a4.
  g16(fis) e8 e e e16(fis) g4.
  fis16(e) d8(d'4) b8 a8.( g16 fis8) g fis4 e d2
}

firstlinealto = \relative c' {
    fis4 a8. g16 fis4. e8 d4 cis d4.
    d8 g4. g8 e4. e8 fis2 ~ fis4.
}

altoMusic = \relative c' {
    \firstlinealto
    fis8 fis(a) g(fis) fis8.(e16 d8) fis8 fis(a) g(fis) fis8.(e16 d8)
    d8 d d d d16(e) fis4. e16(d) cis8 cis cis cis16(d) e4.
    d16(cis) d8(fis4) g8 fis8.(e16 d8) e8 d4 cis d2
}

firstlinetenor = \relative c' {
}

tenorMusic = \relative c' {
    a4 d8. d16 d4. b8 a4. g8 fis4.
    d'8 d4. d8 a4. a8 a2 ~ a4.
    a8 | 4 d | 4. a8 | 4 d | 4. r8 | r4.
    a8 | a a a a a2(a4.) a16(g) fis8(a4) d8 d4. b8 a4 a8(g) fis2
}

firstlinebass = \relative c {
    d4 d8. d16 d4. g,8 a4 a d4.
    fis8 g4. g8 a4. a8 d,2 ~ d4.
}

bassMusic = \relative c {
    \firstlinebass
    d8 | 4 4 | 4. 8 | 4 4 | 4. r8 | r4.
    d8 | d d d d a4. a8 a a a a d4. d8 d4. g,8 a4 a d2
}

firstVerse = \lyricmode {
  \set stanza = "ff 1. "
  Joy to the world! The Lord is come;
  Let earth re- ceive her King;
  Let ev- 'ry heart pre- pare Him room,
  And heav'n and na- ture sing,
  And heav'n and na- ture sing,
  And heav'n, and heav'n, and na- ture sing.
}

MfirstverseA = \lyricmode {
  "Joy " "to " "the " "world! " "The " "Lord " "is " "come;"
  "/Let " "earth " "re" "ceive " "her " "King;"
}

firstverseB = \lyricmode {
}

MfirstverseB = \lyricmode {
  "/Let " "ev" "'ry " "heart " "pre" "pare " "Him " "room,"
  "/And " "heav'n " "and " "na" "ture " "sing,"
  "/And " "heav'n " "and " "na" "ture " "sing,"
}

firstverseC = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  And heav'n and na- ture sing,
  And heav'n and na- ture sing,
  And heav'n and na- ture sing.
}

MfirstverseC = \lyricmode {
  "/And " "heav'n " "and " "na" "ture " "sing,"
}

firstverseD = \lyricmode {
%  And heav'n, and heav'n and na- ture sing.
}

firstVerseBass = {\firstverseC \firstverseD}

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


fourthVerse = \lyricmode {
  \set stanza = "mf 4. "
  He rules the world with truth and grace,
  And makes the na- tions prove
  The glo- ries of His right- eous- ness,
  And won- ders of His love,
  And won- ders of His love,
  And won- ders, won -- ders, of His love,
}

MfourthverseA = \lyricmode {
  "\He " "rules " "the " "world " "with " "truth " "and " "grace,"
  "/And " "makes " "the " "na" "tions " "prove"
}

fourthverseB = \lyricmode {
}

MfourthverseB = \lyricmode {
  "/The " "glo" "ries " "of " "His " "right" "eous" "ness,"
  "/And " "won" "ders " "of " "His " "love,"
  "/And " "won" "ders " "of " "His " "love,"
}

fourthVerseBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  And won- ders of His love,
  And won- ders of His love,
  And won- ders of His love.
}

MfourthverseC = \lyricmode {
  "/And " "won" "ders " "of " "His " "love,"
}

fourthverseD = \lyricmode {
%  And wonders, and won- ders of His love,
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

#(set-global-staff-size 18)

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
          \context Voice = sopranos { \voiceOne \global \sopMusic \sopMusic }
          \addlyrics {\firstVerse \fourthVerse}
	  \context Voice = altos { \voiceTwo \global \altoMusic \altoMusic }
	>>
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice = tenors { \voiceOne \global \tenorMusic \tenorMusic }
	    \context Voice = basses { \voiceTwo \global \bassMusic \bassMusic }
           \addlyrics {\firstVerseBass \fourthVerseBass}
	  >>
	}
      >>
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3)
        }
	\context { % \Staff \RemoveEmptyStaves
	\override VerticalAxisGroup.remove-first = ##t }
    }
  }
}

