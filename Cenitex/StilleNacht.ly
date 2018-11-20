\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key bes \major
  \time 6/8
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
    bes4 f8 f8. f16 e8 ees4. r4.
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
  Stil- le Nacht! Heil'- ge Nacht! 
  Al- les schläft; ein- sam wacht 
  Nur das traut- e hoch heil- ige Paar. 
  Hol- der Knab' _ im lock- i- gen Haar,
  Schlafe in himm- lisch- er Ruh!
  Schlafe in himm- lisch- er Ruh!
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
  Stil- le Nacht! Heil'- ge Nacht! 
  Got- tes Sohn, o wie lacht 
  Lieb' aus dein- _ em gött- lich- en Mund, 
  Da uns schlägt die ret- tende Stund'. 
  Jes- us in dein- er Geb- urt!
  Jes- us in dein- er Geb- urt!
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
  Stil- le Nacht! Heil'- ge Nacht! 
  Die der Welt Heil geb- racht, 
  Aus des Him- mels gold- en- en Höhn, 
  Uns der Gnad- en Fül-le läßt sehn, 
  Jes- um in Mens- chen- ges- talt!
  Jes- um in Mens- chen- ges- talt!
}

fourthverse = \lyricmode {
  \set stanza = "4. "
  Stil- le Nacht! Heil'- ge Nacht! 
  Wo sich heut al- le Macht 
  Vät- er- lich- er Liebe erg- oß, 
  Und als Brud- er huld- voll umsch- loß 
  Jes- us die Völ- ker der Welt!
  Jes- us die Völ- ker der Welt!
}

fifthverse = \lyricmode {
  \set stanza = "5. "
  Stil- le Nacht! Heil'- ge Nacht! 
  Lang- e schon uns bed- acht, 
  Als der Herr vom Grim- me bef- reit 
  In der Vät- er urg- rauer Zeit 
  All- er Welt Schon- ung ver- hieß!
  All- er Welt Schon- ung ver- hieß!
}

sixthverse = \lyricmode {
  \set stanza = "6. "
  Stil- le Nacht! Heil'- ge Nacht! 
  Hir- ten erst kund- ge- macht 
  Durch der Eng- el Al- le- lu- ja, 
  Tönt es laut bei Ferne und Nah: 
  "\"Jes-" us der Ret- ter ist "da!\""
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
    title = "Stille Nacht"
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
      \context Lyrics = sixthverse { s1 }
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
      \context Lyrics = fourthverse \lyricsto basses \fourthverse
      \context Lyrics = fifthverse \lyricsto basses \fifthverse
      \context Lyrics = sixthverse \lyricsto basses \sixthverse
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
  \score {
    <<
    % \context ChoirStaff <<
      \context Staff = sopranos <<
        \set Staff.midiInstrument = #"flute"
	\context Voice =
	sopranos { \voiceOne { \global R2. \unfoldRepeats \sopMusicLoud } }
      >>
      \context Staff = altos <<
        \set Staff.midiInstrument = #"clarinet"
	\context Voice =
	altos { \voiceTwo { \global R2. \unfoldRepeats \altoMusic } }
      >>
      \context Lyrics = firstverse { s1 }
      \context Lyrics = secondverse { s1 }
      \context Lyrics = thirdverse { s1 }
      \context Staff = tenors <<
        \set Staff.midiInstrument = #"oboe"
	\clef bass
	\context Voice =
	tenors { \voiceOne {\global R2. \unfoldRepeats \tenorMusic } }
      >>
      \context Staff = basses <<
        \set Staff.midiInstrument = #"bassoon"
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
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }
  }
}
