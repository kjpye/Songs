\version "2.18.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key g \major
  \time 4/4
}

tempoTrack = {
  \partial 8 s8^\mf
  \repeat volta 3 {
    \tempo 8 = 200
    s4 s4 s2
    s1 s1 s1 s1 s1 s1 s1
    \time 6/8 \tempo  8 = 200
    s4^\mp s2
    s2. s2. s2.
    s4^\pp s2
    s2. s2.
  }
  \alternative {{s2 s8 s8^\mf} {s2.}}
  \bar "||"
}

sopMusic = \relative c' {
    \partial 8 b8
  \repeat volta 3 {
    \set melismaBusyProperties = #'()
    \slurUp
    \slurDashed
    e8(e4) e8 fis4 fis
    g4 fis e d
    e8 e4. fis4 d
    b2.(b4)
    \unset melismaBusyProperties
    e4. e8 fis4 fis
    g4 a b c
    \set melismaBusyProperties = #'()
    \slurUp
    \slurDashed
    b8 g4(g8) a4 fis
    \unset melismaBusyProperties
    e2. r4
    d'4 d8 b8. c16 d8
    c8. b16 a8 b b a
    g4 g8 g4 e8
    g4. r
    d'4 d8 b8. c16 d8
    c8. b16 a8 b b a
    g4 g8 g4 e8
  }
  \alternative {{g2 r8 b} {g2 r4}}
}

altoMusic = \relative c' {
  \partial 8 b8
  \repeat volta 3 {
    \set melismaBusyProperties = #'()
    \slurDown
    \slurDashed
    b8(b4) b8 d4 d
    e4 d c b
    b8 b4. d4 d
    b2.(b4)
    \unset melismaBusyProperties
    b4. b8 d4 d
    e4 e d g
    \set melismaBusyProperties = #'()
    \slurDown
    \slurDashed
    g8 d4(d8) e4 e
    \unset melismaBusyProperties
    e2. r4
    fis4 fis8 g8. fis16 g8
    fis8. g16 fis8 fis fis fis
    e4 e8 e4 d8
    d4. r
    fis4 fis8 g8. fis16 g8
    fis8. g16 fis8 fis fis fis
    e4 e8 e4 d8
  }
  \alternative {{d2 r8 b} {d2 r4}}
}

tenorMusic = \relative c' {
    \partial 8 g8
  \repeat volta 3 {
    \set melismaBusyProperties = #'()
    \slurUp
    \slurDashed
    g8(g4) g8 a4 a
    b4 g a fis
    g8 g4. a4 fis
    g2.(g4)
    \unset melismaBusyProperties
    g4. g8 a4 a
    b4 c b c
    \set melismaBusyProperties = #'()
    \slurUp
    \slurDashed
    d8 b4(b8) c4 d
    \unset melismaBusyProperties
    b2. r4
    b4 b8 b8. a16 b8
    c8. d16 e8 b b b
    b4 b8 b4 b8
    b4. r
    b4 b8 b8. a16 b8
    c8. d16 e8 b b b
    b4 b8 b4 b8
  }
  \alternative {{b2 r8 g} {b2 r4}}
}

bassMusic = \relative c {
    \partial 8 e8
  \repeat volta 3 {
    \set melismaBusyProperties = #'()
    \slurDown
    \slurDashed
    e8(e4) e8 d4 d
    c4 c a b
    e8 c4. b4 b
    c2.(e4)
    \unset melismaBusyProperties
    e4. e8 d4 d
    c4 c g' e
    \set melismaBusyProperties = #'()
    \slurDown
    \slurDashed
    d8 d4(d8) d4 d
    \unset melismaBusyProperties
    e2. r4
    b4 b8 e8. e16 e8
    e8. e16 e8 dis dis b
    e4 d8 c4 c8
    g'4. r
    b,4 b8 e8. e16 e8
    e8. e16 e8 dis dis b
    e4 d8 c4 c8
  }
  \alternative {{g'2 r8 e} {g2 r4}}
}

firstverse = \lyricmode {
  \set stanza = "1. "
  The cam- els that bore the Wise Men Three
  That star ry win- ter night
  _ Fol- lowed, sway- ing si- lent- ly
  A heav'n- ly _ sil- ver light.
}

chorus = \lyricmode {
  Gent- ly rock- ing they ten- der- ly car- ried the Kings to Beth- le- hem.
  Gent- ly rock- ing they ten- der- ly car- ried the Kings to Beth- le- hem.
  They
  hem.
}

Mchorus = \lyricmode {
  "/Gent" "ly " "rock" "ing " "they " "ten" "der" "ly " "car" "ried " "the " "Kings " "to " "Beth" "le" "hem."
  "/Gent" "ly " "rock" "ing " "they " "ten" "der" "ly " "car" "ried " "the " "Kings " "to " "Beth" "le" "hem."
}

Mfirstverse =\lyricmode {
  "\The " "cam" "els " "that " "bore " "the " "Wise " "Men " "Three "
  "/That " star "ry " "win" "ter " "night "
  "" "/Fol" "lowed, " "sway" "ing " "si" "lent" "ly "
  "/A " "heav'n" "ly " "" "sil" "ver " "light. "
}

secondverse = \lyricmode {
  \set stanza = "2. "
  They car- ried the Kings through field and wood
  Of ced- ar, pine and fir,
  _ Bring- ing gifts to One so good
  Of frank- in- _ cense and myrrh.
}

Msecondverse = \lyricmode {
  "\They " car "ried " "the " "Kings " "through " "field " "and " "wood "
  "/Of " ced "ar, " "pine " "and " "fir, "
  "" "/Bring" "ing " "gifts " "to " "One " "so " "good "
  "/Of " frank in "" "cense " "and " "myrrh. "
}

thirdverse = \lyricmode {
  \set stanza = "3. "
  They knelt, _ be- side the new born Child
  While an- ges sang a- bove,
  And saw with- in the man- ger mild
  The prom- ise of peace and love.
}

Mthirdverse = \lyricmode {
  "\They " "knelt, " "" "be" "side " "the " "new " "born " "Child "
  "/While " "an" "gels " "sang " "a" "bove, "
  "/And " "saw " "with" "in " "the " "man" "ger " "mild "
  "/The " "prom" "ise " "of " "peace " "and " "love. "
}

\book
{
  \header {
    title = "The Camels' Carol"
    composer = "Rick Asher"
    poet = "Robert Bode"
    copyright = \today
  }
  \score {
    \context ChoirStaff <<
      \context Staff = women <<
        \context Voice { \tempoTrack }
	\context Voice =
	sopranos { \voiceOne { \global \sopMusic } }
	\context Voice =
	altos { \voiceTwo { \global \altoMusic } }
      >> % staff women
      \new Lyrics = "firstverse" \lyricsto "sopranos" {
        <<
          {\firstverse}
          \new Lyrics = "secondverse"
	    \with { alignBelowContext = #"firstverse" }
	    {\set associatedVoice = "sopranos" {\secondverse}}
          \new Lyrics = "thirdverse"
	    \with { alignBelowContext = #"secondverse" }
	    {\set associatedVoice = "sopranos" {\thirdverse}}
        >> % lyrics
        \chorus
      }
      \context Staff = men <<
	\clef bass
	\context Voice =
	tenors { \voiceOne {\global \tenorMusic } }
	\context Voice =
	basses { \voiceTwo {\global \bassMusic } }
      >> % staff men
    >> % choirstaff
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
  \score { % Karaoke file
    <<
    % \context ChoirStaff <<
      \context Voice { \tempoTrack }
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
      \context Lyrics = firstverse \lyricsto basses {
	\Mfirstverse  \Mchorus
	\Msecondverse \Mchorus
	\Mthirdverse  \Mchorus
      }
    >>
    
    \midi { }
  }
  \score { % Sopranos only
    <<
      \context Staff <<
        \context Voice { \tempoTrack }
	\context Voice { \voiceOne { \global \unfoldRepeats \sopMusic } }
      >>
    >>
    
    \midi { }
  }
  \score { % Altos only
    <<
      \context Staff <<
        \context Voice { \tempoTrack }
	\context Voice { \voiceOne { \global \unfoldRepeats \altoMusic } }
      >>
    >>
    
    \midi { }
  }
  \score { % Tenors only
    <<
      \context Staff <<
        \context Voice { \tempoTrack }
	\context Voice { \voiceOne { \global \unfoldRepeats \tenorMusic } }
      >>
    >>
    
    \midi { }
  }
  \score { % Basses only
    <<
      \context Staff <<
        \context Voice { \tempoTrack }
	\context Voice { << \tempoTrack {\global \unfoldRepeats \bassMusic } >> }
      >>
    >>
    
    \midi { }
  }
}
