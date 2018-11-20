\include "english.ly"
\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\paper {
%  oddFooterMarkup = #(ly:format "Compiled ~a by ~a (~a)"
%                                today (cuserid) revision)
} 

global= {
  \key a \minor
}

cantusMusicChorus = \relative a' {
  \time 5/4
  a4^\markup{\bold Chorus} a g a8 b c4 
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  c8 b4 a8 g4 g | 
  g a b4. a8 
  \time 5/4
  g4 a8 b4 a8 g4 a
  \bar ":|"
}

altusMusicChorus = \relative c' {
  \time 5/4
  e4 e e f8 g g4 
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  g8 g4 a8 e4 e | e e g4. a8 
  \time 5/4
  e4 d8 d4 g8 d4 e 
  \bar ":|"
}

tenorMusicChorus = \relative c' {
  \time 5/4
  c4 c b c8 d e4 
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  e8 d4 c8 b4 b | b c d4. c8 
  \time 5/4
  b4 c8 d4 c8 b4 c 
  \bar ":|"
}

bassusMusicChorus = \relative c {
  \time 5/4
  a4 a e' e8 d c4
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  a8 d4 d8 e4 e | e c g4. g8
  \time 5/4
  e4 g8 g4 g8 e4 a
  \bar ":|"
}

altusMusicVerse = \relative a' {
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  a8^\markup{Solo} a g a c b a4 | a8 f e f d4 d |
  d8 d f d f g a4 | c8 a b c a4 a
  \bar "||"
}

bassusMusicVerse = \relative c {
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  a8^\markup{Solo} e' e d c b a4 | b8 c b a g4 e |
  a8 c b c d b g4 | c8 a g b a4 a
}

blankMusicChorus = {
  \skip 4*18
}

blankMusicVerse = {
  \skip 4*16
}

wordsChorus = \lyricmode {
  Gau- de- te, Gau- de- te! Chri- stus est na- tus
  Ex Ma- ri- a Vir- gi- ne: gau- de- te
}

wordsVerseA = \lyricmode {
  \set stanza = "Female Solo 1."
  Tem- pus ad- est gra- ti- ae, Hoc quod op- ta- ba- mus
  Car- mi- na lae- ti- ti- ae De- vo- te red- da- mus.
}

wordsVerseB = \lyricmode {
  \set stanza = "Male Solo 2."
  De- us ho- mo fac- tus est, na- tu- ra mi- ran- te
  Mun- dus re- no- va- tus est a Chri- sto reg- nan- te.
}

wordsVerseC = \lyricmode {
  \set stanza = "Female Solo 3."
  Eze- chi- e- lis por- \skip 8 ta clau- sa per- tran- si- tur
  Un- de lux est or- \skip 8 ta Sa- lus in- ve- ni- tur.
}

wordsVerseD = \lyricmode {
  \set stanza = "Male Solo 4."
  Er- go nos- tra con- ci- o Psal- lat iam in lus- tro
  Be- ne- di- cat Do- mi- no Sa- lus Re- gi nos- tro.
}

MwordsChorus = \lyricmode {
  "\Gau"4 "de" "te, " "Gau"8 "de" "te! "4 "Chri"8 "stus "4 "est "8 "na"4 "tus "
  "/Ex " "Ma" "ri"4. "a "8 "Vir"4 "gi"8 "ne: "4 "gau"8 "de"4 "te "
}

MwordsVerseA = \lyricmode {
  "/Tem"8 "pus " "ad" "est " "gra" "ti" "ae, "4 "Hoc "8 "quod " "op" "ta" "ba"4 "mus "
  "/Car"8 "mi" "na " "lae" "ti" "ti" "ae "4 "De"8 "vo" "te " "red" "da"4 "mus. "
}

MwordsVerseB = \lyricmode {
  "/De"8 "us " "ho" "mo " "fac" "tus " "est, "4 "na"8 "tu" "ra " "mi" "ran"4 "te "
  "/Mun"8 "dus " "re" "no" "va" "tus " "est "4 "a "8 "Chri" "sto " "reg" "nan"4 "te. "
}

MwordsVerseC = \lyricmode {
  "/Eze"8 "chi" "e" "lis " "por"4 "ta " "clau"8 "sa " "per" "tran" "si"4 "tur "
  "/Un"8 "de " "lux " "est " "or"4 "ta " "Sa"8 "lus " "in" "ve" "ni"4 "tur. "
}

MwordsVerseD = \lyricmode {
  "/Er"8 "go " "nos" "tra " "con" "ci" "o "4 "Psal"8 "lat " "iam " "in " "lus"4 "tro "
  "/Be"8 "ne" "di" "cat " "Do" "mi" "no "4 "Sa"8 "lus " "Re" "gi " "nos"4 "tro. "
}

\book {

  \header{
    title = "Gaudete"
    tagline = "" 
    copyright = \today
  }

  \score {
    <<
      \context ChoirStaff <<
	\context Staff = treble <<
	  \context Voice = cantus { \voiceOne \global \repeat volta 4 { \repeat volta 2 {\cantusMusicChorus} \break \altusMusicVerse} }
	  \context Voice = altus { \voiceTwo  \global \repeat volta 4 { \repeat volta 2 {\altusMusicChorus \skip 4*16 } } }
	>>
	\context Lyrics = chorusLyricsA { s1 }
	\context Lyrics = chorusLyricsB { s1 }
	\context Lyrics = chorusLyricsC { s1 }
	\context Lyrics = chorusLyricsD { s1 }
	\context Staff = bass <<
	  \clef bass
	  \context Voice = tenor { \voiceOne { \global \tenorMusicChorus} }
	  \context Voice = bassus { \voiceTwo { \global \bassusMusicChorus \bassusMusicVerse} }
	>>

      >>

      \lyricsto "cantus" \context Lyrics = chorusLyricsA { \wordsChorus \wordsVerseA }
      \lyricsto "cantus" \context Lyrics = chorusLyricsB { _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ \wordsVerseB }
      \lyricsto "cantus" \context Lyrics = chorusLyricsC { _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ \wordsVerseC }
      \lyricsto "cantus" \context Lyrics = chorusLyricsD { _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ \wordsVerseD }

    >>

  \layout { }
}

  \score {
    <<
      \context ChoirStaff <<
	\context Staff = soprano <<
	  \context Voice = cantus { \voiceOne { \global
             \set Staff.midiInstrument = "flute"
             \cantusMusicChorus
             \cantusMusicChorus
             \blankMusicVerse
             \cantusMusicChorus
             \blankMusicVerse
             \cantusMusicChorus
             \blankMusicVerse
             \cantusMusicChorus
             \blankMusicVerse
             \cantusMusicChorus
             \cantusMusicChorus
          } }
       >>
       \context Staff = alto <<
	  \context Voice = altus { \voiceTwo { \global
             \set Staff.midiInstrument = "clarinet"
             \altusMusicChorus
             \altusMusicChorus
             \blankMusicVerse
             \altusMusicChorus
             \blankMusicVerse
             \altusMusicChorus
             \blankMusicVerse
             \altusMusicChorus
             \blankMusicVerse
             \altusMusicChorus
             \altusMusicChorus
          } }
	>>
	\context Staff = tenor <<
	  \context Voice = tenor { \voiceOne { \global
             \set Staff.midiInstrument = "oboe"
             \tenorMusicChorus
             \tenorMusicChorus
             \blankMusicVerse
             \tenorMusicChorus
             \blankMusicVerse
             \tenorMusicChorus
             \blankMusicVerse
             \tenorMusicChorus
             \blankMusicVerse
             \tenorMusicChorus
             \tenorMusicChorus
          } }
       >>
       \context Staff = bass <<
	  \context Voice = bassus { \voiceTwo { \global
             \set Staff.midiInstrument = "violin"
             \bassusMusicChorus
             \bassusMusicChorus
             \altusMusicVerse
             \bassusMusicChorus
             \blankMusicVerse
             \bassusMusicChorus
             \altusMusicVerse
             \bassusMusicChorus
             \blankMusicVerse
             \bassusMusicChorus
          } }
	>>
       \context Staff = maleSolo <<
	  \context Voice = malesolo { \voiceTwo { \global
             \set Staff.midiInstrument = "cello"
             \blankMusicChorus
             \blankMusicChorus
             \blankMusicVerse
             \blankMusicChorus
             \blankMusicVerse
             \blankMusicChorus
             \blankMusicVerse
             \blankMusicChorus
             \blankMusicVerse
             \blankMusicChorus
             \blankMusicChorus
          } }
	>>
       \context Staff = femaleSolo <<
	  \context Voice = femalesolo { \voiceTwo { \global
             \set Staff.midiInstrument = "violin"
             \blankMusicChorus
             \blankMusicChorus
             \altusMusicVerse
             \blankMusicChorus
             \altusMusicVerse
             \blankMusicChorus
             \altusMusicVerse
             \blankMusicChorus
             \altusMusicVerse
             \blankMusicChorus
             \blankMusicChorus
          } }
	>>

      >>

      \context Lyrics = chorusLyricsA {
         \MwordsChorus
         \MwordsChorus
         \MwordsVerseA
         \MwordsChorus
         \MwordsVerseB
         \MwordsChorus
         \MwordsVerseC
         \MwordsChorus
         \MwordsVerseD
         \MwordsChorus
         \MwordsChorus
      }
    >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }
  }
  }

