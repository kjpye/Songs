\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\include "predefined-guitar-fretboards.ly"

\header {
  title = "Go Tell It on the Mountain"
  copyright = \today
}

global = {
  \key d \major
  \time 4/4
  \tempo 4=120
}

drum = \drummode {
  hihat4 hh hh hh
  hihat4 hh hh hh
  \repeat volta 3 {
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
  }
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
}

drumdouble = \drummode {
  hihat4 hh hh hh
  hihat4 hh hh hh
  \repeat volta 3 {
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat4 hh hh hh
    hihat8 hh hh hh hh hh hh hh
    hihat8 hh hh hh hh hh hh hh
    hihat8 hh hh hh hh hh hh hh
    hihat8 hh hh hh hh hh hh hh
  }
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
}

chordtrack = \chordmode {
  d2 a
  d2 a
  \repeat volta 3 {
    d2. a4
    d1
    a1
    fis2:m g4 a
    d2. a4
    d2 b:m
    d2 a
    d4 fis:m g a
    d1
    g2 d
    s1
    g2 d
  }
}

melodyA = \relative c' {
  r1
  r1
}

melodyB = \relative c' {
      fis2 fis8 e d b
      a2 d
      fis8 fis~fis e fis4. d8
      fis4 a b8(a fis e)
      fis2 fis8 e d b
      a2 d4 g
      fis4. d8 e4. e8
      d2. r8 d^\markup{FINE}
}

melodyC = \relative c' {
    fis8 a a b a fis4 d8
    e8 d d e fis(a4) d,8
    fis8 a a b a fis4 d8
    e8 d d b a2
}

melody = \relative c' {
  \melodyA
  \repeat volta 3 {
    \melodyB
    \melodyC
  }
}

melodyBassA = \relative c {
  d4(b8 a) r a b a %1
  d4(b8 a~a2)
}

melodyBassB = \relative c {
      d4^\markup{\musicglyph #"scripts.segno"}( b8 a) r a b a
      d4(b8 a~a2)
      d4(b8 a) r a b a %5
      d4 cis b(a)
      d4(b8 a) r a b a
      d4(b8 a~a4)b
      d4. a8 cis4. cis8
      d4(cis b a) \bar "||" %10
}

melodyBassC = \relative c {
    d4(cis b a)
    d4(cis b a)
    d4(cis b a)
    cis4(b a2^\markup{D.S. al FINE})
}

melodyBass = \relative c {
  \melodyBassA
  \repeat volta 3 {
    \melodyBassB
    \melodyBassC
  }
  %gis2^\markup{\musicglyph #"scripts.segno"} gis8 fis e cis
  %e2.^\fermata^\markup{D.S. al FINE}
}

accBass = \relative c {
  <fis a>1
  q1
  \repeat volta 3 {
    %\repeat volta 2 {
      q1
      q1
      <e a>1
      <fis a>1
      q1
      q2. g4
      q2 a2
      q1
    %}
    q1
    <e a> 1
    <fis b>1
    <fis a>2 e
  }
}

refrain = \lyricmode {
  Go tell it on the moun- tain,
  O- ver the hills and ev- 'ry- where,
  Go tell it on the moun- tain
  That Je- sus Christ is born.
}

Mrefrain = \lyricmode {
 "Go " "tell " "it " "on " "the " "moun" "tain, "
 "O" "ver " "the " "hills " "and " "ev" "'ry" "where, "
 "Go " "tell " "it " "on " "the " "moun" "tain "
 "That " "Je" "sus " "Christ " "is " "born. "
}

emptyrefrain = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

firstverse = \lyricmode {
  \set stanza = "1. "
  _ When I was a sin- ner
  I prayed both night and day
  I asked the Lord to help me
  and He showed me the way
}

Mfirstverse = \lyricmode {
 _ "When " "I " "was " "a " "sin" "ner "
 "I " "prayed " "both " "night " "and " "day "
 "I " "asked " "the " "Lord " "to " "help " "me "
 "and " "He " "showed " "me " "the " "way "
}

secondverse = \lyricmode {
  \set stanza = "2. "
  While shep- herds kept their watch- ing
  O'er wand' ring flocks by night
  Be- hold from out the Heav- ens
  There shone a Ho- ly light
}

Msecondverse = \lyricmode {
 "While " "shep" "herds " "kept " "their " "watch" "ing "
 "O'er " "wand' " "ring " "flocks " "by " "night "
 "Be" "hold " "from " "out " "the " "Heav" "ens "
 "There " "shone " "a " "Ho" "ly " "light "
}

thirdverse = \lyricmode {
  \set stanza = "3. "
  _ God made me a watch- er
  Up- on the cit- y wall
  And if I am a christ- ian
  I am the least of all
}

Mthirdverse = \lyricmode {
 _ "God " "made " "me " "a " "watch" "er "
 "Up" "on " "the " "cit" "y " "wall "
 "And " "if " "I " "am " "a " "christ" "ian "
 "I " "am " "the " "least " "of " "all "
}

basswords = \lyricmode {
  Go Go tell it Go
  Go Go tell it Go
  Go Go tell it ev- 'ry where
  Go Go tell it Go that Je- sus Christ is born
  Go Go Go Go
}

Mbassintro = \lyricmode {
 "\Go " "Go " "tell " "it " "Go "
}

Mbassrefrain = \lyricmode {
 "/Go " "Go " "tell " "it " "Go "
 "/Go " "Go " "tell " "it " "ev" "'ry " "where "
 "/Go " "Go " "tell " "it " "Go " "/that " "Je" "sus " "Christ " "is " "born "
}

Mbasswords = \lyricmode {
%  "/Go " "Go " "tell " "it " "Go"
%  "/Go " "Go " "tell " "it " "Go"
%  "/Go " "Go " "tell " "it " "ev" "'ry" "where"
%  "/Go " "Go " "tell " "it " "Go " "that " "Je" "sus " "Christ " "is " "born"
  "/Go " "Go " "Go " "Go"
}

\book
{
  \score { % this version for the printed page
    \context GrandStaff <<
    <<
      <<
        \new ChordNames { \chordtrack }
        \new FretBoards { \chordtrack }
      >>
    \context ChoirStaff <<
	\context Staff = melody <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \oneVoice << \global \melody >> }
	>>
	\context Lyrics = firstverse { s1 }
	\context Lyrics = secondverse { s1 }
	\context Lyrics = thirdverse { s1 }
	\context Staff = bass <<
	  \clef bass
          \context Voice = acc  { \voiceOne \global \accBass }
	  \context Voice = bass { \voiceTwo \global \melodyBass }
	>>
        \context Lyrics = basswords { s1 }
	\context Lyrics = firstverse \lyricsto sopranos {\refrain \firstverse}
	\context Lyrics = secondverse \lyricsto sopranos {\emptyrefrain \secondverse}
	\context Lyrics = thirdverse \lyricsto sopranos {\emptyrefrain \thirdverse}
	\context Lyrics = basswords \lyricsto bass {\basswords}
    >>
>> >>
    \layout {
    }
  }
  \score { % this version for the karaoke output
    <<
	\context Staff = melody <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \oneVoice { \global \melodyA \melodyB \melodyC
                                                  \melodyB \melodyC
                                                  \melodyB \melodyC
                                                  \melodyB
                               }
                   }
	>>
	\context Lyrics = firstverse { s1 }
        \context Staff = bass <<
          \clef bass
          \context Voice = bass <<
            { \global \unfoldRepeats \accBass }
            { \global { \melodyBassA \melodyBassB \melodyBassC
                                     \melodyBassB \melodyBassC
                                     \melodyBassB \melodyBassC
                                     \melodyBassB
                      }
            }
          >>
        >>
        \context Lyrics = firstverse \lyricsto bass { \Mrefrain
                                                          \Mfirstverse
                                                          \Mrefrain
                                                          \Msecondverse
                                                          \Mrefrain
                                                          \Mthirdverse
                                                          \Mrefrain
                                                        }
      \new DrumStaff
      <<
        \unfoldRepeats \drum
      >>
    >>
    \midi {
    }
  }

  \score { % this version for the bass karaoke
    <<
	\context Staff = melody <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \oneVoice { \global \melodyA \melodyB \melodyC
                                                  \melodyB \melodyC
                                                  \melodyB \melodyC
                                                  \melodyB
                               }
                   }
	>>
	\context Lyrics = firstverse { s1 }
        \context Staff = bass <<
          \clef bass
          \context Voice = bass <<
            { \global \unfoldRepeats \accBass }
            { \global \melodyBassA \melodyBassB \melodyBassC
                                   \melodyBassB \melodyBassC
                                   \melodyBassB \melodyBassC
                                   \melodyBassB
            }
          >>
        >>
        \context Lyrics = firstverse \lyricsto bass { \Mbassintro
                                                      \Mbassrefrain
                                                      \Mbasswords
                                                      \Mbassrefrain
                                                      \Mbasswords
                                                      \Mbassrefrain
                                                      \Mbasswords
                                                      \Mbassrefrain
                                                      \Mbasswords
                                                    }
    \new DrumStaff { \unfoldRepeats \drum }
    >>
    \midi {
    }
  }
  \score { % melody mp3
    <<
	\context Staff <<
	  \context Voice
		     \oneVoice { \global \melodyA \melodyB \melodyC
                                                  \melodyB \melodyC
                                                  \melodyB \melodyC
                                                  \melodyB
                               }
	>>
    \new DrumStaff { \unfoldRepeats \drum }
    >>
    \midi {
    }
  }

  \score { % this version for the bass mp3
    \context Staff = bass <<
      \clef bass
      \context Voice = bass { \global \melodyBassA \melodyBassB \melodyBassC
                                                   \melodyBassB \melodyBassC
                                                   \melodyBassB \melodyBassC
                                                   \melodyBassB
                            }
    \new DrumStaff { \unfoldRepeats \drum }
    >>
    \midi {
    }
  }
}
