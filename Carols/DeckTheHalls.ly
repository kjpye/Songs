\version "2.14.2"
#(set-default-paper-size "a4")

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key d \major
  \time 4/4
  \tempo 4=180
}

melody = \relative c'' {
  \repeat volta 3 {
    a4. g8 fis4 e
    d4 e fis d
    e8 fis g e fis4. e8
    d4 cis d2
    a'4. g8 fis4 e
    d4 e fis d
    e8 fis g e fis4. e8
    d4 cis d2
    e4. fis8 g4 e
    fis4. g8 a4 e
    fis8 g a4 b8 cis d4
    cis4 b a2
    a4. g8 fis4 e
    d4 e fis d
    b'8 b b b a4. g8
    fis4 e d2
  }
}

guitarchords = \chordmode {
  \repeat volta 3 {
    d1
    d1
    a2:7 d
    a2:7 d
    d1
    d1
    a2:7 d
    a2:7 d
    a1
    d2 a
    d2 g
    e2:7 a
    d1
    d1
    g2 d
    a2:7 d
  }
}

verseOne = \lyricmode {
  \set stanza = "1. "
  Deck the halls with boughs of hol- ly,
  Fa la la la la la la la la!
  'Tis the sea- son to be jol- ly,
  Fa la la la la la la la la!
  Don we now our gay ap- par- rel,
  Fa la la la la la la la la!
  Troll the an- cient Yule- tide car- ol!
  Fa la la la la la la la la!
}

verseTwo = \lyricmode {
  \set stanza = "2. "
  See the blaz- ing Yule be- fore us,
  Fa la la la la la la la la!
  Strike the harp and join the chor- us,
  Fa la la la la la la la la!
  Fol- low me in mer- ry mea- sure,
  Fa la la la la la la la la!
  While I tell of yule- tide trea- sure,
  Fa la la la la la la la la!
}

verseThree = \lyricmode {
  \set stanza = "3. "
  Fast a- way the old year pas- ses,
  Fa la la la la la la la la!
  Hail the new, ye lads and las- ses,
  Fa la la la la la la la la!
  Sing we joy- ous, all to- geth- er,
  Fa la la la la la la la la!
  Heed- less of the wind and wea- ther,
  Fa la la la la la la la la!
}

MverseOne = \lyricmode {
  "Deck " "the " "halls " "with " "boughs " "of " "hol" "ly,"
  "/Fa " "la " "la " "la " "la " "la " "la " "la " "la!"
  "/'Tis " "the " "sea" "son " "to " "be " "jol" "ly,"
  "/Fa " "la " "la " "la " "la " "la " "la " "la " "la!"
  "/Don " "we " "now " "our " "gay " "ap" "par" "rel,"
  "/Fa " "la " "la " "la " "la " "la " "la " "la " "la!"
  "/Troll " "the " "an" "cient " "Yule" "tide " "car" "ol!"
  "/Fa " "la " "la " "la " "la " "la " "la " "la " "la!"
}

MverseTwo = \lyricmode {
  "\See " "the " "blaz" "ing " "Yule " "be" "fore " "us,"
  "/Fa " "la " "la " "la " "la " "la " "la " "la " "la!"
  "/Strike " "the " "harp " "and " "join " "the " "chor" "us,"
  "/Fa " "la " "la " "la " "la " "la " "la " "la " "la!"
  "/Fol" "low " "me " "in " "mer" "ry " "mea" "sure,"
  "/Fa " "la " "la " "la " "la " "la " "la " "la " "la!"
  "/While " "I " "tell " "of " "yule" "tide " "trea" "sure,"
  "/Fa " "la " "la " "la " "la " "la " "la " "la " "la!"
}

MverseThree = \lyricmode {
  "\Fast " "a" "way " "the " "old " "year " "pas" "ses,"
  "/Fa " "la " "la " "la " "la " "la " "la " "la " "la!"
  "/Hail " "the " "new, " "ye " "lads " "and " "las" "ses,"
  "/Fa " "la " "la " "la " "la " "la " "la " "la " "la!"
  "/Sing " "we " "joy" "ous, " "all " "to" "geth" "er,"
  "/Fa " "la " "la " "la " "la " "la " "la " "la " "la!"
  "/Heed" "less " "of " "the " "wind " "and " "wea" "ther,"
  "/Fa " "la " "la " "la " "la " "la " "la " "la " "la!"
}

\book
{
  \header
  {
    title = "Deck the Halls"
    arranger = "Arr: Gilbert DeBenedetti"
    copyright = \today
  }
  \score
  {
    <<
      \new ChordNames {
	\set chordChanges = ##t
	\guitarchords
      }
      \new Staff \new Voice = melody { \voiceOne << \global \melody >> }
      \new Lyrics \lyricsto melody \verseOne
      \new Lyrics \lyricsto melody \verseTwo
      \new Lyrics \lyricsto melody \verseThree
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
  \score
  {
    <<
      \new ChordNames {
	\set chordChanges = ##t
	\set Staff.midiInstrument = #"acousticguitar"
	\unfoldRepeats \guitarchords
      }
      \new Staff \new Voice = melody { \voiceOne << \global \unfoldRepeats \melody >> }
      \new Lyrics \lyricsto melody { \MverseOne \MverseTwo \MverseThree }
    >>
    
    \midi {
    }
  }
}