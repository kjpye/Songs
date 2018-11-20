\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = \transpose g f {
  \key g \major
  \time 4/4
}

descantMusic = \transpose g f \relative c'' {
  d4.-\f (c8) b(c) d(b) c4.(b8) a(b c a) b4 d g e d2 d
  b4(cis) d e d cis8(b) a4 d, a'(d2) cis4 d2. r4
  g4.-\ff ( fis8 e fis g e fis4. e8 dis e fis dis e4) b b8(a) b(cis) d2 d4 r4
  r1 r4 d,4-\mf d'2(d4) r4 r2
  r4 d,4-\f d'2(d4) \cresc g, d' e fis8(g fis e) d2 \! d4-\ff (g2) fis4 g1 \bar "|."
}

sopMusic = \transpose g f \relative c'' {
  \partial 4 g4
  \repeat volta 2 {
    g2 d4 g
    a2 d,
    b'4 a b c
    b2 a4 g
    g2 fis4 e
    fis( g) a b
    fis2( e4.) d8
    d2. r4
    d'2 c4 b
    c2 b
    a4 b g a
    fis2 d4 g
    g fis g a
    g2 d4 b'
    b a b c
    b2 a4 b
    c b a g
    fis2 g4( c)
    b2( a4.) g8
    g1
  }
}

melodyMusic = \transpose g f \relative c'' {
  g2-\f d4 g
  a2 d,
  b'4 a b c
  b2 a2
  g2 fis4 e
  fis g a b
  fis2( e4.) d8
  d2. r4
  d'2-\ff c4 b c2( b2) a4( b) g( a) fis2 d4
  g-\mf g fis g a g2 d4
  \cresc b' b a b c b2 a4 \!
  b-\f \cresc c b a g fis2 g4( c) \!
  b2-\ff ( a4.) g8 g1
}

altoMusic = \transpose g f \relative c' {
  \partial 4 d4
  d2 d4 d
  e2 d
  d4 d d e
  d2 d4 b
  b4( cis) d cis
  d2 d4 d
  d2( cis4.) d8
  d2. r4
  d2 e8(fis) g4
  g( fis) g2
  d4 d e e
  d2 d4 r4
  r1
  r2 r4 d4
  d d d d
  d2 d4 g
  fis g d d8( cis)
  d2 d4(e)
  d2(d4.) b8
  b1
}

tenorMusic = \transpose g f \relative c' {
  \partial 4 b4 b2 b4 b c2 a g4 a g g g2 fis4
  g g2 a4 a a( g) fis d a'2( g4.) fis8 fis2. r4
  b2 c4 d c2 d2 d4 g, b c a2 fis4
  r4 r1 r2 r4
  g4 g fis g a g2 fis4
  d'4 d d a a a2 g
  g( fis4.) g8 g1
}

bassMusic = \transpose g f \relative c' {
  \partial 4 g4 g2 g4 g g2 fis g4 fis g c, d2 d4
  e e2 d4 a d( b) fis g a2( a4.) d8 d2. r4
  b'2 a4 g a2 g fis4 g e c d2 d4
  r4 r1 r1 r1 r2 r4
  g4 a g fis e d( c) b( c) d2( d4.) g,8 g1
}

firstverse =\lyricmode {
  \set stanza = "1. "
  O come all ye faith- ful, Joy- ful and tri- um- phant,
  O come ye, O come ye to Beth- le- hem.
  Come and be- hold him, born the King of An- gels:
}

chorus = \lyricmode {
  O come, let us a- dore him,
  O come, let us a- dore him,
  O come, let us a- dore him,
  Christ, the Lord!
}

secondverse = \lyricmode {
  \set stanza = "2. "
  _ God of _ __ God, _ Light _ of _ Light, _
  _ Lo! He ab- hors not the Vir- gins womb,
  Ve- ry _ God, Be- got- ten, not cre- a- ted:
}

thirdverse = \lyricmode {
  \set stanza = "6. "
  Sing, choirs of an- gels, Sing in ex- ul- ta- tion,
  Sing, all ye cit- i- zens of heav'n a- bove;
  Glo- ry to God In the high- est:
}

descant = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Glo- ry in the high- est:
  O come, O come, let us a- dore him,
  Christ the Lord.
}

Mfirstverse =\lyricmode {
  "O " "come " "all " "ye " "faith" "ful, "
  "/Joy" "ful " "and " "tri" "um" "phant,"
  "/O " "come " "ye, "
  "/O " "come " "ye " "to " "Beth" "le" "hem."
  "/Come " "and " "be" "hold " "him, "
  "/born " "the " "King " "of " "An" "gels:"
}

Mchorus = \lyricmode {
  "\O " "come, " "let " "us " "a" "dore " "him,"
  "/O " "come, " "let " "us " "a" "dore " "him,"
  "/O " "come, " "let " "us " "a" "dore " "him,"
  "/Christ, " "the " "Lord!"
}

Msecondverse = \lyricmode {
  "\God " "of " "" "God, " "" "Light " "" "of " "" "Light, " ""
  "" "/Lo! " "He " "ab" "hors " "not " "the " "Vir" "gins " "womb,"
  "/Ve" "ry " "" "God, " "Be" "got" "ten, " "not " "cre" "a" "ted:"
}

MthirdverseA = \lyricmode {
  "\Sing, " "choirs " "of " "an" "gels, "
  "/Sing " "in " "ex" "ul" "ta" "tion,"
  "/Sing, " "all " "ye " "cit" "i" "zens "
  "/of " "heav'n " "a" "bove;"
}

MthirdverseB = \lyricmode {
  "/Glo" "ry " "to " "God "
  "/In " "the " "high" "est:"
}

Mdescant = \lyricmode {
  "/Glo" "ry " "in " "the " "high" "est:"
  "\O " "come, " "O " "come, " "let " "us " "a" "dore " "him,"
  "/Christ " "the " "Lord."
}

trebleaccone = \transpose g f \relative c'' {
  <b d>4. <a c>8 <g b> <a c> <b d> <g b> c4. b8 a b c a b4 d g e d2 d
  b4 cis d e d cis8 b a4 e a d e2
  fis4. e8 d e fis d g4. fis8 e fis g e fis4. e8 dis e fis dis e4 b b8 a b cis
  d2. g,4 g fis g a g2 d4 b' b a b c b2  <fis a>4 b c b8 c d4 e fis8 g fis e d2 d4 g2 fis4 g1
}
trebleacctwo = \transpose g f \relative c' {
  d1 <c e>2 d <d g>4 a' <g b> <fis c'> <g b> << { a8 g} e4 >> <d fis>2
  <e g> <d a'>4 <e a> <fis b> <e g> << fis4 { e8 d} >> cis8 b <d fis>4 <fis a> a2 a(a)
  <g d>2 <g c>4 <g b> <a c>2 <fis b> a4 fis <e g>2 <d fis>2.
  g4 d1(d2) b4 <d g> << {d4(d2.)}{g4 a g(g8) fis g2 <fis a>4}>>
  <d g>4 <d fis> <d g> <d a'> <<g4 {b8 c}>> <a d>2 g4(<e g c>) <g b>2 <a c> <g b>1
}
bassacc = \transpose g f \relative c' {
  g2 d4 g a2 d, b'4 a b c b2 a g fis4 e fis g a b fis2 e d <a' d fis>
  <g d>2 <g c e>4 <g b e> <a c>2 <<fis2 {b4 dis}>> <a e>4 b <g b> a a2. r4
  << {b4 a b c b2 g4 <g b> <g b> <fis a> <g b> <a c> <fis b>2 <fis a>4}
     {d1( d d d2.)}>>
  <d g b>4 <d a> <d g> <d a> << {g4 a2 g}{b8 c d2(d4) c}>>
  <g b d>2 <d a c> <d g b>1
}
pedalacc = \transpose g f \relative c {
  g1( g2) fis g4 fis e a b c d2
  e d4 cis b e, fis g a1 d2 c
  b2 c4 e a,2 b cis4 dis e a, dis2.
  r4 d,1(d d d2.)
  g4 a g fis e d c' b a d2 d, g1
}

\book
{
  \header {
    title = "O Come, All Ye Faithful"
    copyright = \today
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  \context Voice = sopranos { \voiceOne \global \sopMusic \descantMusic}
	  \context Voice = altos { \voiceTwo << \global \altoMusic >> }
	>>
	\context Lyrics = firstverse { s1 }
	\context Lyrics = secondverse { s1 }
	\context Lyrics = thirdverse { s1 }
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice = tenors { \voiceOne <<\global \tenorMusic >> }
	    \context Voice = basses { \voiceTwo <<\global \bassMusic >> }
	  >>
	  << \clef treble
	     \context Voice = melody { \voiceOne << \melodyMusic >> }
	   >>
	}
	\context Lyrics = firstverse \lyricsto sopranos {\firstverse \chorus \descant \chorus}
	\context Lyrics = secondverse \lyricsto altos {\secondverse}
	\context Lyrics = thirdverse \lyricsto melody {\thirdverse \chorus}
      >>
      \context PianoStaff
      <<
	\context Staff = treble
	{
	  \key g \major\skip 4 \skip 1*20
	  <<
	    \context Voice = trebleaccone { \stemUp \trebleaccone }
	    \context Voice = trebleacctwo { \stemDown \trebleacctwo }
	  >> }
	\context Staff = bass
	{
	  \clef bass \key g \major \skip 4 \skip 1*20
	  <<
	    \context Voice = bassacc { \stemUp \bassacc }
	    \context Voice = pedalacc { \stemDown \pedalacc }
	  >> }
      >>
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
        }
	\context {\RemoveEmptyStaffContext
	\override VerticalAxisGroup #'remove-first = ##t }
    }
  }
% Now the midi files
% First for sopranos singing descant
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  \context Voice =
	  descant { \set midiInstrument = #"piccolo"
		     \voiceOne {\global r4 \unfoldRepeats \sopMusic \descantMusic} }
	  \context Voice =
	  sopranos { \set midiInstrument = #"flute"
		     \voiceOne {\global r4 \unfoldRepeats \sopMusic \melodyMusic} }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo {\global r4 \altoMusic \altoMusic \melodyMusic} }
	>>
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"oboe"
		     \voiceOne {\global r4 \tenorMusic \tenorMusic \melodyMusic} }
	    \context Voice =
	    basses { \set midiInstrument = #"bassoon"
		     \voiceTwo {\global r4 \bassMusic \bassMusic \melodyMusic} }
	  >>
	}
	\context Lyrics = firstverse \lyricsto descant {\Mfirstverse \Mchorus \Msecondverse \Mchorus \MthirdverseA \Mdescant}
      >>
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
	tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
  }
% Sopranos singing melody
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  \context Voice =
	  descant { \set midiInstrument = #"piccolo"
		     \voiceOne {\global r4 \unfoldRepeats \sopMusic \descantMusic} }
	  \context Voice =
	  sopranos { \set midiInstrument = #"flute"
		     \voiceOne {\global r4 \unfoldRepeats \sopMusic \melodyMusic} }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo {\global r4 \altoMusic \altoMusic \melodyMusic} }
	>>
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"oboe"
		     \voiceOne {\global r4 \tenorMusic \tenorMusic \melodyMusic} }
	    \context Voice =
	    basses { \set midiInstrument = #"bassoon"
		     \voiceTwo {\global r4 \bassMusic \bassMusic \melodyMusic} }
	  >>
	}
	\context Lyrics = firstverse \lyricsto sopranos {\Mfirstverse \Mchorus \Msecondverse \Mchorus \MthirdverseA \MthirdverseB \Mchorus }
      >>
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
	tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
  }
% Altos
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  \context Voice =
	  descant { \set midiInstrument = #"piccolo"
		     \voiceOne {\global r4 \unfoldRepeats \sopMusic \descantMusic} }
	  \context Voice =
	  sopranos { \set midiInstrument = #"flute"
		     \voiceOne {\global r4 \unfoldRepeats \sopMusic \melodyMusic} }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo {\global r4 \altoMusic \altoMusic \melodyMusic} }
	>>
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"oboe"
		     \voiceOne {\global r4 \tenorMusic \tenorMusic \melodyMusic} }
	    \context Voice =
	    basses { \set midiInstrument = #"bassoon"
		     \voiceTwo {\global r4 \bassMusic \bassMusic \melodyMusic} }
	  >>
	}
	\context Lyrics = firstverse \lyricsto altos {\Mfirstverse \Mchorus \Msecondverse \Mchorus \MthirdverseA \MthirdverseB \Mchorus }
      >>
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
	tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
  }
% Tenors
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  \context Voice =
	  descant { \set midiInstrument = #"piccolo"
		     \voiceOne {\global r4 \unfoldRepeats \sopMusic \descantMusic} }
	  \context Voice =
	  sopranos { \set midiInstrument = #"flute"
		     \voiceOne {\global r4 \unfoldRepeats \sopMusic \melodyMusic} }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo {\global r4 \altoMusic \altoMusic \melodyMusic} }
	>>
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"oboe"
		     \voiceOne {\global r4 \tenorMusic \tenorMusic \melodyMusic} }
	    \context Voice =
	    basses { \set midiInstrument = #"bassoon"
		     \voiceTwo {\global r4 \bassMusic \bassMusic \melodyMusic} }
	  >>
	}
	\context Lyrics = firstverse \lyricsto tenors {\Mfirstverse \Mchorus \Msecondverse \Mchorus \MthirdverseA \MthirdverseB \Mchorus }
      >>
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
	tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
  }
% Basses
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  \context Voice =
	  descant { \set midiInstrument = #"piccolo"
		     \voiceOne {\global r4 \unfoldRepeats \sopMusic \descantMusic} }
	  \context Voice =
	  sopranos { \set midiInstrument = #"flute"
		     \voiceOne {\global r4 \unfoldRepeats \sopMusic \melodyMusic} }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo {\global r4 \altoMusic \altoMusic \melodyMusic} }
	>>
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"oboe"
		     \voiceOne {\global r4 \tenorMusic \tenorMusic \melodyMusic} }
	    \context Voice =
	    basses { \set midiInstrument = #"bassoon"
		     \voiceTwo {\global r4 \bassMusic \bassMusic \melodyMusic} }
	  >>
	}
	\context Lyrics = firstverse \lyricsto basses {\Mfirstverse \Mchorus \Msecondverse \Mchorus \MthirdverseA \MthirdverseB \Mchorus }
      >>
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
	tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
  }
}
