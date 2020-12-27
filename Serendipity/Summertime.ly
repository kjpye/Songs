\version "2.19.80"

SopranoMusic = \relative c' {
  \key c \major
  \time 2/2
  \tempo 2=80
  \compressMMRests {
    \override MultiMeasureRest.expand-limit = #2
    R1 * 5
    fis2^\p\<(gis)\!
    fis2\<(gis)\!
    fis2\<(gis\!
    a8) r b8. a16 gis8. gis16 gis4
    a2 e~
    e4 r r2
    r2 d'8^\mf d4.
    r4 c8.^\mp^\markup{\italic{un poco rit.}} a16\< c8. a16\! c4
    b1^\mf^\markup{\italic{a tempo}} ~
    b2 r8 e4 c8
    e8 e4 e8~e2~
    e8 r d8. c16 d8. e16 c4
    a2 e2~
    e2 r4 e
    g4 e8 g a4 c
    e8^>(d4.) c2
    c16^>(a8.)~a2.~
    a2 r
    r1
    r2 \times 2/3 {e'4^\markup{\italic{poco rit}} e c}
    e4^\markup{\italic{a tempo}} e2.~
    e8. e16 d8. c16 d8.(e16) c4
    a2 e2~
    e2 e'4^\mf c4
    d8 d4 d8(d2)
    r4 c8. a16 c8.(a16) c4
    b1~
    b2 r8 e e c
    e8 e4.~e2
    e8 r d8. c16 d8. e16 c4
    a2 e2~
    e2 r4 e
    f4 e8 g a4 c
    e8(d4.) c2
    c16^>(a8.)~a2.~
    a1\>~
    a2.^\pp r4
    \bar "|."
  }  
}

AltoMusic = \relative c' {
}

TenorMusic = \relative c' {
}

BassMusic = \relative c' {
}

SopranoWords = \lyrics {
  oo __ oo __ oo __
  an' the liv- in' is eas- y
  jump- in', an' the cot- ton is high.
  Oh, yo dad- dy's rich,
  an' yo ma is good- look- in',
  So hush, lit- tle ba- by, don' yo' cry.
  One of these morn- in's __
  You goin' to rise up sing- in',
  then you'll spread yo' wings an' you'll take the sky.
  But till that morn-= in' __ there's a noth- in' can harm you __
  With Dad- dy an' Mam- my stand- in' by.
}

\header {
  title    = "Summertime"
  subtitle = "Soprano Line"
  composer = "George Gershwin"
  arranger = "arr. William Stickles"
  poet     = "DuBose Heyward"
}

%\book { % all parts
%  \score {
%    <<
%      \new ChoirStaff <<
%	\new Staff = "sopranos" <<
%	  \new Voice = "sopranos" { \voiceOne \SopranoMusic }
%	  \new Voice = "altos" { \voiceTwo \AltoMusic }
%	  \context Lyrics = "firstverse" \lyricsto "sopranos" \verseOne
%	  \context Lyrics = "secondverse" \lyricsto "sopranos" \verseTwo
%	>>
%	\new Staff = "tenori" <<
%	  \new Voice = "tenors" { \clef bass \voiceOne \TenorMusic }
%	  \new Voice = "basses" { \clef bass \voiceTwo \BassMusic }
%	>>
%      >>
%
%    >>
%    \layout{}
%    \midi{}
%  }
%}

\book { % soprano
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice = "sopranos" { \oneVoice \unfoldRepeats \SopranoMusic }
          \context Lyrics \lyricsto "sopranos" \SopranoWords
	>>
      >>

    >>
    \layout{}
    \midi{}
  }
}

%\book { % alto
%  \score {
%    <<
%      \new ChoirStaff <<
%	\new Staff = "sopranos" <<
%	  \new Voice = "altos" { \voiceTwo \unfoldRepeats \AltoMusic }
%	>>
%      >>
%
%    >>
%    \midi{}
%  }
%}
%
%\book { % tenor
%  \score {
%    <<
%      \new ChoirStaff <<
%	\new Staff = "sopranos" <<
%	  \new Voice = "tenors" { \clef bass \voiceOne \unfoldRepeats \TenorMusic }
%	>>
%      >>
%
%    >>
%    \midi{}
%  }
%}
%
%\book { % bass
%  \score {
%    <<
%      \new ChoirStaff <<
%	\new Staff = "sopranos" <<
%	  \new Voice = "basses" { \clef bass \voiceTwo \unfoldRepeats \BassMusic }
%	>>
%      >>
%
%    >>
%    \midi{}
%  }
%}
