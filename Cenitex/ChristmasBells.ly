\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "Christmas Bells"
  copyright = \today
}

global = {
  \key ees \major
  \time 4/4
  \tempo 4=120
}

melodyA = \relative c'' {
  g4 bes aes f
}

melodyB = \relative c' {
  ees2^\markup{\bold \huge {*}} bes2
  g'4 bes aes f
  ees1
  g4 bes ees c
  bes2 g
  g4 f ees g
}

melodyC = \relative c'' {
  bes1
}

melodyOne  = { \repeat volta 2 {\melodyA \melodyB \melodyC} }
melodyTwo  = { \repeat volta 2 {\melodyC \melodyA \melodyB} }

wordsA = \lyricmode {
  Christ- mas bells are
}

wordsB = \lyricmode {
  ring- ing;
  An- gels sing, "\"No-" "el!\""
  praise and wel- come bring- ing
  To Em- ma- nu-
  }

wordsC = \lyricmode {
  el.
}

wordsOne = { \wordsA \wordsB \wordsC }
wordsTwo = { \wordsC \wordsA \wordsB }

MwordsA = \lyricmode {
  "\Christ" "mas " "bells " "are "
}

MwordsB = \lyricmode {
  ring "ing;"
  "/An" "gels " "sing, " "\"No" "el!\""
  "/praise " "and " wel "come " bring "ing"
  "/To " Em ma nu
  }

MwordsC = \lyricmode {
  "el."
}

MwordsOne = { \MwordsA \MwordsB \MwordsC }
MwordsTwo = { \MwordsC \MwordsA \MwordsB }

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
%	\context Lyrics = partOne { s1 }
	\context Lyrics = partOne \lyricsto partOne { \wordsOne }
%	\context Lyrics = partTwo \lyricsto partTwo { \wordsTwo }
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
		     \oneVoice << \global \melodyOne >> }
	>>
	\context Lyrics = partOne { s1 }
	\context Staff = partTwo <<
	  \context Voice =
	  partTwo { \set midiInstrument = #"oboe"
		     \oneVoice << \global \melodyTwo >> }
	>>
%	\context Lyrics = partOne { s1 }
	\context Lyrics = partOne \lyricsto partOne { \MwordsOne }
%	\context Lyrics = partTwo \lyricsto partTwo { \MwordsTwo }
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
		     \oneVoice << \global \melodyOne >> }
	>>
%	\context Lyrics = partOne { s1 }
	\context Staff = partTwo <<
	  \context Voice =
	  partTwo { \set midiInstrument = #"oboe"
		     \oneVoice << \global \melodyTwo >> }
	>>
	\context Lyrics = partOne { s1 }
%	\context Lyrics = partOne \lyricsto partOne { \MwordsOne }
	\context Lyrics = partTwo \lyricsto partTwo { \MwordsTwo }
      >>
    >>
    \midi {
    }
%    \layout {}
  }
}
