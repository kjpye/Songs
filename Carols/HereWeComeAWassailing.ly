\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

#(set-default-paper-size "a4")

global = {
  \key f \major
  \time 6/8
  \tempo 4. = 100
}

sopVerse = \relative c' {
  e4 fis8 gis4 fis8
  e4 fis8 gis4 fis8
  e4 b'8 b4 b8
  b4. ~ b4 b8
  cis4 cis8 b4 gis8
  b4 b8 a4 gis8
  \voiceOne << { fis4 e8 \oneVoice } \new Voice {\voiceTwo \hideNotes \slurDashed fis4(e8) \unHideNotes } >> fis4 gis8
  a4.
}

sopChorus = \relative c'' {
  \time 2/2 \tempo 2 = 100 \partial 2 gis4 a4
  b2 e4 cis4
  b2 gis4 a4
  b4 b e cis
  b2 gis4 a
  b2 cis4 gis
  a4(gis) e4 e
  e4. (fis8) gis4 e
  a2 gis4 a
  b2 cis4 gis
  a4(fis) e dis
}

sopMusic = \transpose e f \relative c' {
  e8
%  \repeat volta 5 {
  \repeat volta 4 {
    \sopVerse
    \sopChorus
  }
  \alternative
  {
    {
      e2 r4. e8
    } {
      e2 r2 \bar "||"
    }
  }
}

altoVerse = \relative c' {
  e4. ~ e4 fis8
  e4. ~ e4 fis8
  e4. ~ e4. ~
  e4. gis
  e4 fis8 gis4.
  dis4 e8 fis4 gis8
  fis4 e8 fis4 gis8
  a4.
}

altoChorus = \relative c' {
  \time 2/2 \partial 2 e4 cis
  e2 e4 a
  fis2 e4 e
  fis4 dis e a
  fis2 e4 e
  d2 cis4 cis
  cis2 b4 b
  b2 b4 e
  e2 e4 e
  fis4(gis) a e
  cis2 b4 b
}

altoMusic = \transpose e f \relative c' {
  r8
  \altoVerse
  \altoChorus
  b2 r2
  b2
}

tenorVerse = \relative c' {
  b4. ~ b4 cis8
  b4. ~ b4 cis8
  d4 cis8 b4 a8
  gis4 fis8 e fis gis
  cis4 dis8 e4.
  b4 cis8 dis4 e8
  a,4. d4 b8
  cis4.
  }

tenorChorus = \relative c' {
  \time 2/2 \partial 2 e,4 fis
  gis2 b4 e
  dis2 b4 cis
  dis4 b b e
  dis2 b4 cis
  fis,4(gis) a e
  fis4(a) gis fis
  gis4.(a8) b4 gis
  cis2 b4 cis
  d2 cis4 cis
  a2 gis4 fis
  }

tenorMusic = \transpose e f \relative c' {
  r8
  \tenorVerse
  \tenorChorus
  gis2 r2
  gis2
}

bassVerse = \relative c {
  e2. ~
  e2. ~
  e2. ~
  e2.
  a4. gis4 e8
  gis4. fis4 e8
  d2.
  b'4.
  }

bassChorus = \relative c {
  \time 2/2 \partial 2 r2
  r2 gis4 a
  b2 e4 cis
  b2 gis4 a
  b4 b e cis
  b2 a4 cis
  fis,2 b4 b
  e2 e4 e
  a,2 e'4 cis
  b2 a4 cis
  fis2 b,4 b
  }

bassMusic = \transpose e f \relative c {
  r8
  \bassVerse
  \bassChorus
  e2 r2
  e2 r2
}

verseOne = \lyricmode {
  \set stanza = "1. "
  _ Here we come a- was- sail- ing
  A- mong the leaves so green;
  _ Here we come a- was- sail- ing
  So fair _ to be seen:
}

MverseOne = \lyricmode {
  "Here " "we " "come " "a" "was" "sail" "ing "
  "/A" "mong " "the " "leaves " "so " "green; " ""
  "/Here " "we " "come " "a" "was" "sail" "ing "
  "/So " "fair " "" "to " "be " "seen: "
}

chorusHigh = \lyricmode {
  Love and joy come to you,
%  And to you your was- sail, too,
  And to all your fam'- ly, too,
  And God bless you and send you a hap- py new year,
  And God send you a hap- py new year. _ year.
}

MchorusHigh = \lyricmode {
  "\Love " "and " "joy " "come " "to " "you, "
%  "/And " "to " "you " "your " "was" "sail, " "too, "
  "/And " "to " "all " "your " "fam'" "ly, " "too, "
  "/And " "God " "bless " "you " "and " "send " "you " "a " "hap" "py " "new " "year, "
  "/And " "God " "send " "you " "a " "hap" "py " "new " "year. "
}

chorusLow = \lyricmode {
  _ _ _ _ _ _ _ _ _
  Love and joy come to you,
%  And to you your was- sail too;
  And to all your fam'- ly too;
  And God send you a hap- py new year,
  And God send you a hap- py new year. year.
}

MchorusLow = \lyricmode {
  "\Love " "and " "joy " "come " "to " "you, "
%  "/And " "to " "you " "your " "was" "sail " "too; "
  "/And " "to " "all " "your " "fam'" "ly " "too; "
  "/And " "God " "send " "you " "a " "hap" "py " "new " "year, "
  "/And " "God " "send " "you " "a " "hap" "py " "new " "year. "
}

verseTwo = \lyricmode {
  \set stanza = "2. "
%  We are not dai- ly beg- _ gars
%  That beg from door to door,
%  But we are neigh- bours' child- _ ren,
%  Whom you have seen be- fore.
%  _ Join us now at Cen- IT- ex
  _ Join us at V G S O
  To hear a Christ- mas song.
  _ Joy- ous- ly we sing to you
  And you can sing a- long.
}

MverseTwo = \lyricmode {
%  "\We " "are " "not " "dai" "ly " "beg" "" "gars "
%  "/That " "beg " "from " "door " "to " "door, "
%  "/But " "we " "are " "neigh" "bours' " "child" "" "ren, "
%  "/Whom " "you " "have " "seen " "be" "fore. "
  "" "\Join " "us " "now " "at " "Cen" "IT" "ex "
  "/To " "hear " "a " "Christ" "mas " "song. "
  "" "/Joy" "ous" "ly " "we " "sing " "to " "you "
  "/And " "you " "can " "sing " "a" "long. "
}

verseThree = \lyricmode {
  \set stanza = "3. "
%  _ We have got a lit- tle purse
%  Of stret- ching leath- er- skin;
%  We want a lit- tle mon- _ ey
%  To line it well with- in.
%  Tech- no- lo- gy de- liv- er- y
  _ Le- _ gal de- liv- er- y
  Is what we do all year,
  But now _ 'tis the sea- _ son
  To share some Christ- mas cheer.
}

MverseThree = \lyricmode {
%  "\We " "have " "got " "a " "lit" "tle " "purse "
%  "/Of " "stret" "ching " "leath" "er" "skin; "
%  "/We " "want " "a " "lit" "tle " "mon" "" "ey "
%  "/To " "line " "it " "well " "with" "in. "
  "\Tech" "no" "lo" "gy " "de" "liv" "er" "y "
  "/Is " "what " "we " "do " "all " "year, "
  "/But " "now " "" "'tis " "the " "sea" "" "son "
  "/To " "share " "some " "Christ" "mas " "cheer. "
}

verseFour = \lyricmode {
  \set stanza = "4. "
%  God bless the mas- ter of this house
%  Like- wise the mis- tress too;
%  And all the lit- tle child- _ ren,
%  That round the tab- le go.
  And all your kin and kins- _ folk
  That dwell both far and near
  We wish you mer- ry Christ- _ mas
  And Hap- _ py New Year.
}

MverseFour = \lyricmode {
%  "\God " "bless " "the " "mas" "ter " "of " "this " "house "
%  "/Like" "wise " "the " "mis" "tress " "too; "
%  "/And " "all " "the " "lit" "tle " "child" "" "ren, "
%  "/That " "round " "the " "tab" "le " "go. "
  "\And " "all " "your " "kin " "and " "kins" "" "folk "
  "/That " "dwell " "both " "far " "and " "near "
  "/We " "wish " "you " "mer" "ry " "Christ" "" "mas "
  "/And " "Hap" "" "py " "New " "Year. "
}

verseFive = \lyricmode {
  \set stanza = "5. "
  Good mas- ter and good mis- tress
  While you're sit- ting by the fire,
  Pray think of us poor child- _ ren,
  A- wand'- ring in the mire:
}

MverseFive = \lyricmode {
  "\Good " "mas" "ter " "and " "good " "mis" "tress "
  "/While " "you're " "sit" "ting " "by " "the " "fire, "
  "/Pray " "think " "of " "us " "poor " "child" "" "ren, "
  "/A-" "wand'" "ring " "in " "the " "mire: "
}

\book
{
  \header {
    title = "Here We Come a-Wassailing"
    subtitle = "CenITex version"
    subtitle = "VGSO version"
    copyright = \today
    composer = "Traditional"
    poet = "Additional lyrics: Erik Petersen"
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  #(set-accidental-style 'modern)
	  \context Voice =
	  sopranos { \voiceOne << {\global \partial 8 \sopMusic} >> }
	  \context Voice =
	  altos { \voiceTwo <<{ \global \partial 8 \altoMusic}>> }
	>>
	\context Lyrics = verseOne   \lyricsto sopranos { \verseOne}
	\context Lyrics = verseTwo   \lyricsto sopranos { \verseTwo }
	\context Lyrics = verseThree \lyricsto sopranos { \verseThree \chorusHigh }
	\context Lyrics = verseFour  \lyricsto sopranos { \verseFour }
%	\context Lyrics = verseFive  \lyricsto sopranos { \verseFive }
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \voiceOne <<{\global \partial 8 \tenorMusic} >> }
	    \context Voice =
	    basses { \voiceTwo <<{\global \partial 8 \bassMusic} >> }
	  >>
	}
	\context Lyrics = choruslow \lyricsto basses { \chorusLow }
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
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  #(set-accidental-style 'modern)
	  \context Voice =
	  sopranos { \set midiInstrument = #"flute"
		     \voiceOne << {\global \transpose e f {\partial 8 r8
				   \sopVerse \sopChorus e'2 r4. e'8
%				   \sopVerse \sopChorus e'2 r4. r8
				   \sopVerse \sopChorus e'2 r4. e'8
				   \sopVerse \sopChorus e'2 r4. e'8
%				   \sopVerse \sopChorus e'2 r4. e'8
				   \sopVerse \sopChorus e'2
				   r2} } >> }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo { \global \transpose e f { \partial 8 r8
			      \sopVerse \altoChorus e'2 r4. e'8
%			      \sopVerse \altoChorus e'2 r4. r8
			      \sopVerse \altoChorus e'2 r4. e'8
			      \sopVerse \altoChorus e'2 r4. e'8
%			      \sopVerse \altoChorus e'2 r4. e'8
			      \sopVerse \altoChorus e'2
			      r2 } } }
	>>
	\context Lyrics = words { s1 }
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"oboe"
		     \voiceOne << { \global \transpose e f {\partial 8 r8
				   \transpose c' c \sopVerse \tenorChorus e'2 r4. e'8
%				   \transpose c' c \sopVerse \tenorChorus e'2 r4. r8
				   \transpose c' c \sopVerse \tenorChorus e'2 r4. e'8
				   \transpose c' c \sopVerse \tenorChorus e'2 r4. e'8
%				   \transpose c' c \sopVerse \tenorChorus e'2 r4. e'8
				   \transpose c' c \sopVerse \tenorChorus e'2
				   r2} } >> }
	    \context Voice =
	    basses { \set midiInstrument = #"bassoon"
		     \voiceTwo << { \global
				    \transpose e f {
				      \partial 8 r8
				   \transpose c' c \sopVerse \bassChorus e'2 r4. e'8
%				   \transpose c' c \sopVerse \bassChorus e'2 r4. r8
				   \transpose c' c \sopVerse \bassChorus e'2 r4. e'8
				   \transpose c' c \sopVerse \bassChorus e'2 r4. e'8
%				   \transpose c' c \sopVerse \bassChorus e'2 r4. e'8
				   \transpose c' c \sopVerse \bassChorus e'2
				  r2} } >> }
	  >>
	}
	\context Lyrics = words \lyricsto sopranos {
	  \MverseOne   \MchorusHigh
	  \MverseTwo   \MchorusHigh
	  \MverseThree \MchorusHigh
	  \MverseFour  \MchorusHigh
%	  \MverseFive  \MchorusHigh
	}
      >>
    >>
    
%    \layout {
%      \context {
%				% a little smaller so lyrics
%				% can be closer to the staff
%	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
%      }
%      \context {\RemoveEmptyStaffContext
%		\override VerticalAxisGroup #'remove-first = ##t }
%    }
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
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  #(set-accidental-style 'modern)
	  \context Voice =
	  sopranos { \set midiInstrument = #"flute"
		     \voiceOne << {\global \transpose e f {\partial 8 r8
				   \sopVerse \sopChorus e'2 r4. e'8
%				   \sopVerse \sopChorus e'2 r4. r8
				   \sopVerse \sopChorus e'2 r4. e'8
				   \sopVerse \sopChorus e'2 r4. e'8
%				   \sopVerse \sopChorus e'2 r4. e'8
				   \sopVerse \sopChorus e'2
				   r2} } >> }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo { \global \transpose e f {\partial 8 r8
			      \sopVerse \altoChorus e'2 r4. e'8
%			      \sopVerse \altoChorus e'2 r4. r8
			      \sopVerse \altoChorus e'2 r4. e'8
			      \sopVerse \altoChorus e'2 r4. e'8
%			      \sopVerse \altoChorus e'2 r4. e'8
			      \sopVerse \altoChorus e'2
			      r2 } } }
	>>
	\context Lyrics = words { s1 }
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"oboe"
		     \voiceOne << { \global \transpose e f {\partial 8 r8
				   \transpose c' c \sopVerse \tenorChorus e'2 r4. e'8
%				   \transpose c' c \sopVerse \tenorChorus e'2 r4. r8
				   \transpose c' c \sopVerse \tenorChorus e'2 r4. e'8
				   \transpose c' c \sopVerse \tenorChorus e'2 r4. e'8
%				   \transpose c' c \sopVerse \tenorChorus e'2 r4. e'8
				   \transpose c' c \sopVerse \tenorChorus e'2
				   r2} } >> }
	    \context Voice =
	    basses { \set midiInstrument = #"bassoon"
		     \voiceTwo << {\global \transpose e f { \partial 8 r8
				   \transpose c' c \sopVerse \bassChorus e'2 r4. e'8
%				   \transpose c' c \sopVerse \bassChorus e'2 r4. r8
				   \transpose c' c \sopVerse \bassChorus e'2 r4. e'8
				   \transpose c' c \sopVerse \bassChorus e'2 r4. e'8
%				   \transpose c' c \sopVerse \bassChorus e'2 r4. e'8
				   \transpose c' c \sopVerse \bassChorus e'2
				  r2} } >> }
	  >>
	}
	\context Lyrics = words \lyricsto basses {
	  \MverseOne   \MchorusLow
	  \MverseTwo   \MchorusLow
	  \MverseThree \MchorusLow
	  \MverseFour  \MchorusLow
%	  \MverseFive  \MchorusLow
	}
      >>
    >>
    
%    \layout {
%      \context {
%				% a little smaller so lyrics
%				% can be closer to the staff
%	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
%      }
%      \context {\RemoveEmptyStaffContext
%		\override VerticalAxisGroup #'remove-first = ##t }
%    }
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
  
