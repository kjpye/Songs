\version "2.10.25"
today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))
\header{
	title = "Blow the Man Down"
	copyright = \today
}

global = {
  \time 6/8
  \key f \major
}

sopranomusic = \relative c' {
  \oneVoice
  \partial 4
  f8^Solo a
  \repeat volta 4 {
    c8. d16 c8 a f a
    c8 d c a r4 \voiceOne
    c4.^Chorus d
    bes8. a16 bes8 g4 a8^Solo
    \oneVoice bes8. a16 bes8 g e g
    bes8 a g d'4 \voiceOne f8^Chorus^\fermata
    c16 c8. c8 c4 bes8
  }
  \alternative {
    {
      a8. g16 a8 f8^\fermata f8^Solo a
    }
    {
      a8. g16 a8 f4.^\fermata
    }
  }
}

altomusic = \relative c'' {
  \voiceTwo
  \partial 4 s4
  \repeat volta 4 {
    s2.
    s2.
    a4. a
    g8. g16 g8 e4 r8
    s2.
    s4. s4 f'8
    g,16 a8. bes8 a4 f8
  }
  \alternative {
    {
      a8. g16 a8 f8^\fermata r8 r
    }
    {
      a8. g16 a8 f4.^\fermata
    }
  }
}

tenormusic = \relative c'' {
  \oneVoice
  \partial 4 r4
  \repeat volta 4 {
    r2.
    r2. \voiceOne
    a4. f
    d8. c16 d8 c4 \oneVoice r8
    r2.
    r4. r4 \voiceOne f8^\fermata
    e16 f8. g8 f4 f8
    }
  \alternative {
    {
      e8. e16 e8 f8^\fermata \oneVoice r8 r
    }
    {
      e8. e16 e8 f4.^\fermata
    }
  }
}

bassmusic = \relative c' {
  \voiceTwo
  \partial 4 s4
  \repeat volta 4 {
    s2.
    s2.
    a4. d,
    g,8. g16 g8 c4 s8
    s2.
    s4. s8 s8 f8_\fermata
    e16 e8. c8 f4 d8
    }
  \alternative {
    {
      c8. c16 c8 f8 s8 s
    }
    {
      c8. c16 c8 f4._\fermata
    }
  }
}

verseone = \lyricmode {
  Oh, _ blow the man down, bul- lies,
  blow the man down.
  Way hey, blow the man down.
  Oh, blow the man down, bul- lies,
  blow him a- way.
  Oh, gim- me some time to blow the man down.
}

versetwo = \lyricmode {
  _ _ As I was walk- ing down Win- ches- ter Street,
  Way hey, blow the man down.
  A sau- cy young dam- sel I hap- pened to meet,
  Oh, gim- me some time to blow the man down.
  _ I
}

versethree = \lyricmode {
  _ I said to her, "\"Pol-" ly, and how do you "do,\""
  Way hey, blow the man down.
  Says she, "\"None" the bet- ter for see- ing of "you,\""
  Oh, gim- me some time to blow the man down.
  Oh we'll
}

versefour = \lyricmode {
  Oh we'll blow the man up and we'll blow the man down,
  Way hey, blow the man down.
  We'll blow him a- way in- to Liv- er- pool Town.
  Oh, gim- me some time to _ _ _ _ _ _ blow the man down.
}

chorus = \lyricmode {
}

Mverseone = \lyricmode {
  "Oh, " "" "blow " "the " "man " "down, " bul lies,
  "/blow " "the " "man " down.
  "/Way " "Hey " "blow " "the " "man " down.
  "/Oh, " "blow " "the " "man " "down, " bul lies,
  "/blow " "him " a way.
  "/Oh, " gim "me " "some " "time " "to " "blow " "the " "man " down.
}

Mversetwo = \lyricmode {
  "" "" "\As " "I " "was " walk "ing " "down " Win ches "ter " Street,
  "/Way " "Hey. " "blow " "the " "man " down.
  "/A " sau "cy " "young " dam "sel " "I " hap "pened " "to " meet,
  "/Oh, " gim "me " "some " "time " "to " "blow " "the " "man " down.
}

Mversethree = \lyricmode {
  "" "\I " "said " "to " "her, " "\"Pol" "ly, " "and " "how " "do " "you " "do,\""
  "/Way " "Hey. " "blow " "the " "man " down.
  "/Says " "she, " "\"None " "the " bet "ter " "for " see "ing " "of " "you,\""
  "/Oh, " gim "me " "some " "time " "to " "blow " "the " "man " down.
}

Mversefour = \lyricmode {
  "\Oh " "we'll " "blow " "the " "man " "up " "and " "we'll " "blow " "the " "man " down,
  "/Way " "Hey." "blow " "the " "man " down.
  "/We'll " "blow " "him " a "way " in "to " Liv er "pool " Town.
  "/Oh, " gim "me " "some " "time " "to " "blow " "the " "man " down.
}

\book
{
  \score {
    \new ChoirStaff <<
      \new Staff = "women" <<
        \override Staff.VerticalAxisGroup #'remove-first = ##t
	\new Voice = "sopranos" \transpose f c { \global \sopranomusic}
	\new Voice = "altos" \transpose f c { \global \altomusic}
      >>
      \new Lyrics \lyricsto "sopranos" { \verseone}
      \new Lyrics \lyricsto "sopranos" { \versetwo }
      \new Lyrics \lyricsto "sopranos" { \versethree }
      \new Lyrics \lyricsto "sopranos" { \versefour }
      \new Staff = "men" <<
        \override Staff.VerticalAxisGroup #'remove-first = ##t
	\new Voice = "tenors" \transpose f c { \clef "bass" \global \tenormusic}
	\new Voice = "basses" \transpose f c { \voiceTwo \global \bassmusic}
      >>
    >>
    \layout {
      \context {
        \RemoveEmptyStaffContext
      }
    }
  }
  \score {
    \context ChoirStaff <<
      \context Staff = women <<
        \set Staff.midiInstrument = #"flute"
	\context Voice =
	sopranos \transpose f c { \voiceOne { \global
                                        \unfoldRepeats \sopranomusic
                                        } }
        \set Staff.midiInstrument = #"clarinet"
	\context Voice =
	altos \transpose f c {\voiceTwo \global \unfoldRepeats \altomusic}
      >>
      \context Lyrics = firstverse { s1 }
      \context Staff = men <<
        \override Staff.VerticalAxisGroup #'remove-first = ##t
	\clef bass
        \set Staff.midiInstrument = #"oboe"
	\context Voice =
	tenors \transpose f c {        \override Staff.VerticalAxisGroup #'remove-first = ##t
			\voiceOne \global \unfoldRepeats \tenormusic}
        \set Staff.midiInstrument = #"bassoon"
	\context Voice =
	basses \transpose f c {        \override Staff.VerticalAxisGroup #'remove-first = ##t
			\voiceTwo \global \unfoldRepeats \bassmusic}
      >>
      \context Lyrics = firstverse \lyricsto sopranos { \Mverseone \Mversetwo \Mversethree \Mversefour }
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
	tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }
  }
}
