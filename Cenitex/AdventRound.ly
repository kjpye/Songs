\version "2.18.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "Advent Round"
  subtitle = "With an appreciative nod to William Billings"
  composer = "Rick Asher"
  copyright = \today
}

global = {
  \key ees \major
  \time 3/4
}

melody = \relative c'' {
  \partial 4 g4
  \repeat volta 3 {
    g2 g4
    bes4.(g8) f4
    g2 g4
    g2 ees4^\markup{\bold \huge *}
    c2 ees4
    d4.(ees8)f4
    ees2 d4
    c2 c4^\markup{\bold \huge *}
    ees2 c4
    bes4.(c8) bes4
    ees2 f4
    g2 g4^\markup{\bold \huge *}
    c2 g4
    f4.(g8) aes4
    g2 f4
    e2 g4
  }
}

firstverse = \lyricmode {
  Through dark- est night the hour grows late.
  We yearn for break of Christ- mas morn;
  'Til mid- night hour we watch and wait
  For hope's re- new- al, love re- born.
  Through
}

Mwords =\lyricmode {
  "/Through " dark "est " "night " "the " "hour " "grows " "late. "
  "\We " "yearn " "for " "break " "of " Christ "mas " "morn; "
  "\'Til " mid "night " "hour " "we " "watch " "and " "wait "
  "For " "hope's " re new "al, " "love " re "born. "
}

\book
{
  \score { % this version for the printed page
    <<
	\context Staff = melody <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \oneVoice << {\global \melody} >> }
	>>
	\context Lyrics = firstverse { s1 }
	\context Lyrics = firstverse \lyricsto sopranos \firstverse
    >>
    \layout {
    }
  }
  \score { % this version for the midi output
    <<
	\context Staff = melody <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \oneVoice { \global \unfoldRepeats \melody} }
	>>
	\context Lyrics = firstverse { s1 }
        \context Lyrics = firstverse \lyricsto sopranos \Mwords
    >>
    \midi {
    }
%    \layout {}
  }
}
