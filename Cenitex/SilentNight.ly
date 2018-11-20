\version "2.19.49"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key bes \major
  \time 6/8
  \tempo 4. = 55
}

chordtrack = \chordmode {
  \repeat volta 3 {
    bes2.
    s2.
    f2.:7
    bes2.
    ees2.
    bes2.
    ees2.
    bes2.
    f2.:7
    s4. bes
    s2.
    f4.:7 bes
  }
}

sopMusic = \relative c' {
  \repeat volta 3 {
    f8.(\< g16) f8 \> d4. \! f8.(\< g16) f8 \> d4. \!
    c'4 c8 a4. bes4 bes8 f4.
    g4 g8 bes8.(a16) g8 f8. g16 f8 d4.
    g4 g8 bes8. a16 g8 f8. g16 f8 d4.
    c'4 c8 ees8. c16 a8 bes4.(d4.)
    bes8(f) d f8. ees16 c8 bes4. r4.
  }
}

sopMusicLoud = \relative c' {
  \repeat volta 3 {
    f8.(g16) f8 d4. \! f8.(g16) f8 d4. \!
    c'4 c8 a4. bes4 bes8 f4.
    g4 g8 bes8.(a16) g8 f8. g16 f8 d4.
    g4 g8 bes8. a16 g8 f8. g16 f8 d4.
    c'4 c8 ees8. c16 a8 bes4.(d4.)
    bes8(f) d f8. ees16 c8 bes4. r4.
  }
}

altoMusic = \relative c'' {
  \repeat volta 3 {
    d,8.(ees16) d8 bes4. d8.(ees16) d8 bes4.
    ees4 ees8 ees4. d4 d8 d4.
    ees4 ees8 g8.(f16) ees8 d8. ees16 d8 bes4.
    ees4 ees8 g8. f16 ees8 d8. ees16 d8 bes4.
    ees4 ees8 c8. ees16 c8 d4.(f4.)
    d4 bes8 a8. a16 a8 bes4. r4.
  }
}

tenorMusic = \relative c' {
  \repeat volta 3 {
    bes4 bes8 f4. bes4 bes8 f4.
    a4 a8 c4. bes4 bes8 bes4.
    bes4 bes8 ees4 bes8 bes8. bes16 bes8 f4.
    ees4 bes'8 ees8. ees16 bes8 bes8. bes16 bes8 f4.
    a4 a8 a8. a16 f8 f4.(bes4.)
    bes4 f8 f8. f16 ees8 d4. r4.
  }
}

bassMusic = \relative c' {
  \repeat volta 3 {
    bes,4 bes8 bes4. bes4 bes8 bes4.
    f'4 f8 f4. bes,4 bes8 bes4.
    ees4 ees8 ees4 ees8 bes8.bes16 bes8 bes4.
    ees4 ees8 ees8. ees16 ees8 bes8. bes16 bes8 bes4.
    f'4 f8 f8. f16 f8 bes,4. ~ bes4.
    f'4 f8 f,8. f16 f8 bes4. r4.
  }
}

firstverse =\lyricmode {
  \set stanza = "pp 1. "
  Si- lent night, ho- ly night,
  all is calm, all is bright
  round yon vir- gin moth- er and child.
  Ho- ly in- fant so ten- der and mild,
  sleep in heav- en- ly peace,
  sleep in heav- en- ly peace.
}

Mfirstverse =\lyricmode {
  "/Si" "lent " "night, " "ho" "ly " "night,"
  "/all " "is " "calm, " "all " "is " "bright"
  "/round " "yon " "vir" "gin " "moth" "er " "and " "child."
  "/Ho" "ly " "in" "fant " "so " "ten" "der " "and " "mild,"
  "/sleep " "in " "heav" "en" "ly " "peace,"
  "/sleep " "in " "heav" "en" "ly " "peace."
}

secondverse = \lyricmode {
  \set stanza = "mp 2. "
  Si- lent night, ho- ly night,
  shep- herds quake at the sight,
  glo- ries stream from heav- en a- far,
  heav'n- ly hosts _ sing al- le- lu- ia.
  Christ the Sav- iour is born,
  Christ the Sav- iour is born!
}

Msecondverse = \lyricmode {
  "\Si" "lent " "night, " "ho" "ly " "night,"
  "/shep" "herds " "quake " "at " "the " "sight,"
  "/glo" "ries " "stream " "from " "heav" "en " "a" "far,"
  "/heav'n" "ly " "hosts " "" "sing " "al" "le" "lu" "ia."
  "/Christ " "the " "Sav" "iour " "is " "born,"
  "/Christ " "the " "Sav" "iour " "is " "born!"
}

thirdverse = \lyricmode {
  \set stanza = "p 3. "
  Si- lent night, ho- ly night,
  Son of God, love's pure light
  ra- diant beams from thy ho- ly face
  with the dawn of re- deem- _ ing grace,
  Je- sus, Lord at thy birth,
  Je- sus, Lord at thy birth.
}

Mthirdverse = \lyricmode {
  "\Si" "lent " "night, " "ho" "ly " "night,"
  "/Son " "of " "God, " "love's " "pure " "light"
  "/ra" "diant " "beams " "from " "thy " "ho" "ly " "face"
  "/with " "the " "dawn " "of " "re" "deem" "" "ing " "grace,"
  "/Je" "sus, " "Lord " "at " "thy " "birth,"
  "/Je" "sus, " "Lord " "at " "thy " "birth."
}

\book
{
  \header {
    title = "Silent Night"
    copyright = \today
  }
  \score {
    \context GrandStaff <<
      <<
        \new ChordNames { \chordtrack }
%        \new FretBoards { \chordtrack }
      >>
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
      \context Staff = men <<
	\clef bass
	\context Voice =
	tenors { \voiceOne {\global \tenorMusic } }
	\context Voice =
	basses { \voiceTwo {\global \bassMusic } }
      >>
      \context Lyrics = firstverse \lyricsto basses \firstverse
      \context Lyrics = secondverse \lyricsto basses \secondverse
      \context Lyrics = thirdverse \lyricsto basses \thirdverse
    >>
>>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
  \score { % karaoke
    <<
    % \context ChoirStaff <<
      \context Staff = sopranos <<
%        \set Staff.midiInstrument = #"flute"
	\context Voice =
	sopranos { \voiceOne { \global R2. \unfoldRepeats \sopMusicLoud } }
      >>
      \context Staff = altos <<
%        \set Staff.midiInstrument = #"clarinet"
	\context Voice =
	altos { \voiceTwo { \global R2. \unfoldRepeats \altoMusic } }
      >>
      \context Lyrics = firstverse { s1 }
      \context Lyrics = secondverse { s1 }
      \context Lyrics = thirdverse { s1 }
      \context Staff = tenors <<
%        \set Staff.midiInstrument = #"oboe"
	\clef bass
	\context Voice =
	tenors { \voiceOne {\global R2. \unfoldRepeats \tenorMusic } }
      >>
      \context Staff = basses <<
%        \set Staff.midiInstrument = #"bassoon"
	\clef bass
	\context Voice =
	basses { \voiceTwo {\global R2. \unfoldRepeats \bassMusic } }
      >>
      \context Lyrics = firstverse \lyricsto basses { \Mfirstverse \Msecondverse \Mthirdverse }
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
      \tempo 4 = 80
    }
  }
  \score { % sopranos
      \context Staff <<
	\context Voice { \voiceOne { \global R2. \unfoldRepeats \sopMusicLoud } }
      >>
    
    \midi { }
  }
  \score { % altos
      \context Staff <<
	\context Voice { \voiceOne { \global R2. \unfoldRepeats \altoMusic } }
      >>
    
    \midi { }
  }
  \score { % tenors
      \context Staff <<
	\context Voice { \voiceOne { \global R2. \unfoldRepeats \tenorMusic } }
      >>
    
    \midi { }
  }
  \score { % basses
      \context Staff <<
	\context Voice { \voiceOne { \global R2. \unfoldRepeats \bassMusic } }
      >>
    
    \midi { }
  }
}
