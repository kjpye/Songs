\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "Christmas is Coming"
  copyright = \today
}

global = {
  \key c \major
  \time 4/4
  \tempo 4=150
}

melodyA = \relative c'' {
  c2 g4. g8
  c4 c2 c4
  c4 c b a
  g1
}

melodyB = \relative c'' {
  c4.^\markup{\bold \huge *} c,8 c4 d
  e c e g
  a2 g4(f)
  e1
}

melodyC = \relative c' {
  e4.^\markup{\bold \huge *} f8 f4 d
  c4 c' g e
  f2 g4(b,)
  c1
}

melodyOne   = { \repeat volta 3 {\melodyA \break \melodyB \break \melodyC} }
melodyTwo   = { \repeat volta 3 {\melodyC \melodyA \melodyB} }
melodyThree = { \repeat volta 3 {\melodyB \melodyC \melodyA} }

wordsA = \lyricmode {
  Christ- mas is com- ing, The goose is get- ting fat;
}

wordsB = \lyricmode {
  Please to put a pen- ny in the old man's hat,
}

wordsC = \lyricmode {
  Please to put a pen- ny in the old man's hat.
}

wordsOne   = { \wordsA \wordsB \wordsC }
wordsTwo   = { \wordsC \wordsA \wordsB }
wordsThree = { \wordsB \wordsC \wordsA }

MwordsA = \lyricmode {
  "\Christ" "mas " "is " com "ing, " "The " "goose " "is " get "ting " "fat;"
}

MwordsB = \lyricmode {
  "/Please " "to " "put " "a " pen "ny " "in " "the " "old " "man's " "hat,"
}

MwordsC = \lyricmode {
  "/Please " "to " "put " "a " pen "ny " "in " "the " "old " "man's " "hat,"
}

MwordsOne   = { \MwordsA \MwordsB \MwordsC }
MwordsTwo   = { \MwordsC \MwordsA \MwordsB }
MwordsThree = { \MwordsB \MwordsC \MwordsA }

\book
{
  \score { % this version for the printed page
    <<
      \context ChoirStaff <<
	\context Staff = partOne <<
	  \context Voice =
	  partOne { \set midiInstrument = #"clarinet"
		     \oneVoice << \global \melodyOne >> }
	>>
	\context Lyrics = partOne { s1 }
%	\context Staff = partTwo <<
%	  \context Voice =
%	  partTwo { \set midiInstrument = #"oboe"
%		     \oneVoice << \global \melodyTwo >> }
%	>>
%	\context Lyrics = partTwo { s1 }
%	\context Staff = partThree <<
%	  \context Voice =
%	  partThree { \set midiInstrument = #"oboe"
%		     \oneVoice << \global \melodyThree >> }
%	>>
%	\context Lyrics = partThree { s1 }
	\context Lyrics = partOne   \lyricsto partOne   { \wordsOne   }
%	\context Lyrics = partTwo   \lyricsto partTwo   { \wordsTwo   }
%	\context Lyrics = partThree \lyricsto partThree { \wordsThree }
      >>
    >>
    \layout {
    }
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = partOne <<
	  \context Voice =
	  partOne { \set midiInstrument = #"clarinet"
		     \oneVoice << \global \unfoldRepeats \melodyOne >> }
	>>
	\context Lyrics = partOne { s1 }
	\context Staff = partTwo <<
	  \context Voice =
	  partTwo { \set midiInstrument = #"oboe"
		     \oneVoice << \global \unfoldRepeats \melodyTwo >> }
	>>
%	\context Lyrics = partTwo { s1 }
	\context Staff = partThree <<
	  \context Voice =
	  partThree { \set midiInstrument = #"bassoon"
		     \oneVoice << \global \unfoldRepeats \melodyThree >> }
	>>
%	\context Lyrics = partThree { s1 }
	\context Lyrics = partOne   \lyricsto partOne   { \MwordsOne   \MwordsOne   \MwordsOne   }
%	\context Lyrics = partTwo   \lyricsto partTwo   { \MwordsTwo   \MwordsTwo   \MwordsTwo   }
%	\context Lyrics = partThree \lyricsto partThree { \MwordsThree \MwordsThree \MwordsThree }
      >>
    >>
    \midi {
    }
%    \layout {}
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = partOne <<
	  \context Voice =
	  partOne { \set midiInstrument = #"clarinet"
		     \oneVoice << \global \unfoldRepeats \melodyOne >> }
	>>
%	\context Lyrics = partOne { s1 }
	\context Staff = partTwo <<
	  \context Voice =
	  partTwo { \set midiInstrument = #"oboe"
		     \oneVoice << \global \unfoldRepeats \melodyTwo >> }
	>>
	\context Lyrics = partTwo { s1 }
	\context Staff = partThree <<
	  \context Voice =
	  partThree { \set midiInstrument = #"bassoon"
		     \oneVoice << \global \unfoldRepeats \melodyThree >> }
	>>
%	\context Lyrics = partThree { s1 }
%	\context Lyrics = partOne   \lyricsto partOne   { \MwordsOne   \MwordsOne   \MwordsOne   }
	\context Lyrics = partTwo   \lyricsto partTwo   { \MwordsTwo   \MwordsTwo   \MwordsTwo   }
%	\context Lyrics = partThree \lyricsto partThree { \MwordsThree \MwordsThree \MwordsThree }
      >>
    >>
    \midi {
    }
%    \layout {}
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = partOne <<
	  \context Voice =
	  partOne { \set midiInstrument = #"clarinet"
		     \oneVoice << \global \unfoldRepeats \melodyOne >> }
	>>
%	\context Lyrics = partOne { s1 }
	\context Staff = partTwo <<
	  \context Voice =
	  partTwo { \set midiInstrument = #"oboe"
		     \oneVoice << \global \unfoldRepeats \melodyTwo >> }
	>>
%	\context Lyrics = partTwo { s1 }
	\context Staff = partThree <<
	  \context Voice =
	  partThree { \set midiInstrument = #"bassoon"
		     \oneVoice << \global \unfoldRepeats \melodyThree >> }
	>>
	\context Lyrics = partThree { s1 }
%	\context Lyrics = partOne   \lyricsto partOne   { \MwordsOne   \MwordsOne   \MwordsOne   }
%	\context Lyrics = partTwo   \lyricsto partTwo   { \MwordsTwo   \MwordsTwo   \MwordsTwo   }
	\context Lyrics = partThree \lyricsto partThree { \MwordsThree \MwordsThree \MwordsThree }
      >>
    >>
    \midi {
    }
%    \layout {}
  }
}
