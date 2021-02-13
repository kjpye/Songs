\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Song of Immanuel"
  subtitle    = "Sankey No. 54"
  subsubtitle = "C.C. No. 142"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup \smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup \smallCaps "Mrs. R. N. Turner."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*2 s4.
  \mark \markup { \box "B" } s4. s2.*3
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*3 s4.
  \mark \markup { \box "E" } s4. s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  s8
  s2.*14
  s2 \tempo 4=30 s8 \tempo 4=120 s
  s4. s4
}

soprano = \relative {
  g'8
  g8. a16 g8 e g c
  c4. b4 f8
  f8. f16 f8 \bar "|" \break \partial 4. d8 g f
  e4.~4 g8 % B
  g8. a16 g8 e g c
  e4. c4 a8
  g8. fis16 g8 a b d % C
  c4.~4 \bar "||" \partial 8 g8^\markup\smallCaps Chorus.
  d'8. c16 b8 b8. c16 d8
  c4. g4 c8 % D
  c8. c16 c8 c b c
  d4.~4 g,8
  e'8. d16 c8 \bar "|" \break \partial 4. e,8 g c
  b4. a4 a8 % E
  g8. a16 b8 c e\fermata d
  c4.~4
}

alto = \relative {
  e'8
  e8. f16 e8 c e g
  f4. f4 d8
  d8. e16 d8 b b d
  c4.~4 e8 % B
  e8. f16 e8 c e e
  g4. e4 f8
  e8. dis16 e8 f f f % C
  e4.~4 g8
  f8. f16 f8 f8. e16 f8
  e4. e4 g8 % D
  e8. e16 e8 fis8 fis fis
  g4. g4 g8
  g8. f16 e8 c8 e g
  g4. f4 f8 % E
  e8. e16 f8 g g\fermata f
  e4.~4
}

tenor = \relative {
  c'8
  c8. c16 c8 g c c
  d4. d4 b8
  b8. b16 b8 g g g
  g4.~4 c8 % b
  c8. c16 c8 g c c
  c4. c4 c8
  c8. c16 c8 b d c % C
  c4.~4 g8
  b8. c16 d8 d8. c16 b8
  c4. c4 c8 % D
  c8. c16 c8 c d c
  b4.~4 g8
  c8. g16 g8 g c c
  c4. c4 c8 % E
  c8. c16 d8 e c\fermata b
  g4.~4
}

bass= \relative {
  c8
  c8. c16 c8 c c e
  g4. g4 g8
  g8. g16 g8 g g, g
  c4.~4 c8 % B
  c8. c16 c8 c c c
  c4. c4 f8
  g8. a16 g8 g g g,
  c4.~c4 g'8 g8. g16 g8 g8. g16 g8
  c,4. c4 e8 % D
  a8. a16 a8 d, d d
  g4.~4 g8
  c,8. c16 c8 c c e
  f4. f4 f8 % E
  g8. g16 g8 g g\fermata g,
  c4.~4
}

chorus = \lyricmode {
  Then loud let our ca -- rols of glad -- ness
  Re -- e -- cho the song of the skies;
  Once more to the ti -- dings of glo -- ry
  The earth in its ful -- ness re -- plies.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, sing the sweet song of the a -- ges—
  The son of Im -- man -- u -- el sing!
  There comes thro' the por -- tals e -- ter -- nal
  An an -- them of praise to the King!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Fore -- told by the world of the pro -- phets;
  De -- creed by the wis -- dom of God;
  We hail the ful -- fil -- ment of mer -- cy,
  We praise our Re -- deem -- er and Lord.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The cen -- tur -- ies sing of His com -- ing;
  The nat -- ions His won -- ders pro -- claim;
  And e -- ver in -- creas -- ing in glo -- ry,
  We sing of His won -- der -- ful name.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The song that is sweet -- est and no -- blest
  We sing to the Lord we a -- dore;
  And crown Him who comes to re -- deem us—
  Im -- man -- u -- el, King e -- ver -- more!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nCome, " "sing " "the " "sweet " "song " "of " "the " a "ges— "
  "\nThe " "son " "of " Im man u "el " "sing! "
  "\nThere " "comes " "thro' " "the " por "tals " e ter "nal "
  "\nAn " an "them " "of " "praise " "to " "the " "King! "
  "\nThen " "loud " "let " "our " ca "rols " "of " glad "ness "
  "\nRe" e "cho " "the " "song " "of " "the " "skies; "
  "\nOnce " "more " "to " "the " ti "dings " "of " glo "ry "
  "\nThe " "earth " "in " "its " ful "ness " re "plies. "

  \set stanza = "2."
  "\nFore" "told " "by " "the " "world " "of " "the " pro "phets; "
  "\nDe" "creed " "by " "the " wis "dom " "of " "God; "
  "\nWe " "hail " "the " ful fil "ment " "of " mer "cy, "
  "\nWe " "praise " "our " Re deem "er " "and " "Lord. "
  "\nThen " "loud " "let " "our " ca "rols " "of " glad "ness "
  "\nRe" e "cho " "the " "song " "of " "the " "skies; "
  "\nOnce " "more " "to " "the " ti "dings " "of " glo "ry "
  "\nThe " "earth " "in " "its " ful "ness " re "plies. "

  \set stanza = "3."
  "\nThe " cen tur "ies " "sing " "of " "His " com "ing; "
  "\nThe " nat "ions " "His " won "ders " pro "claim; "
  "\nAnd " e "ver " in creas "ing " "in " glo "ry, "
  "\nWe " "sing " "of " "His " won der "ful " "name. "
  "\nThen " "loud " "let " "our " ca "rols " "of " glad "ness "
  "\nRe" e "cho " "the " "song " "of " "the " "skies; "
  "\nOnce " "more " "to " "the " ti "dings " "of " glo "ry "
  "\nThe " "earth " "in " "its " ful "ness " re "plies. "

  \set stanza = "4."
  "\nThe " "song " "that " "is " sweet "est " "and " no "blest "
  "\nWe " "sing " "to " "the " "Lord " "we " a "dore; "
  "\nAnd " "crown " "Him " "who " "comes " "to " re "deem " "us— "
  "\nIm" man u "el, " "King " e ver "more! "
  "\nThen " "loud " "let " "our " ca "rols " "of " glad "ness "
  "\nRe" e "cho " "the " "song " "of " "the " "skies; "
  "\nOnce " "more " "to " "the " ti "dings " "of " glo "ry "
  "\nThe " "earth " "in " "its " ful "ness " re "plies. "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour

          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \RehearsalTrack
              \RehearsalTrack
              \RehearsalTrack
              \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \RehearsalTrack
              \RehearsalTrack
              \RehearsalTrack
              \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
