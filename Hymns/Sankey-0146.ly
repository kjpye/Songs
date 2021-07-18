\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus is Risen!"
  subtitle    = "Sankey No. 146"
  subsubtitle = "C.C. No. 266"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. A. Barnes."
  meter       = \markup\smallCaps "c.m."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*4
  \mark \markup { \box "C" } s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4 s1*15 s2 \tempo 4=30 s4
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4
  g4. 8 e g c8. d16
  c2. g4
  b4. a8 b4 c
  d2. \bar "|" \break g,4
  e'4. d8 c b c8. a16 % B
  g2. 4
  a4. 8 d4 b
  c2. r4 \bar "||"
  e,8^\markup\smallCaps Chorus. 4 8 a a4. % C
  g4 f e2
  c'8 4 8 8 8 b c
  d2. \bar "|" \break g,4
  e'4. d8 c4 g8 8 % D
  e'4. d8 c2
  a8^\markup\italic Maestoso. [b] c d e4 c
  d4 b8. 16 c4\fermata
}

alto = \relative {
  \autoBeamOff
  e'4
  e4. 8 c e e8. f16
  e2. 4
  f4. 8 4 e
  f2. g4
  g4. f8 e d e8. f16 % B
  e2. 4
  f4. 8 4 4
  e2. r4
  e8 4 8 a a4. % C
  g4 f e2
  e8 4 8 fis8 8 8 8
  f2. g4
  g4. f8 e4 8 8 % D
  g4. f8 e2
  f4 g8 8 4 a
  a4 g8. 16 4\fermata
}

tenor = \relative {
  \autoBeamOff
  c'4
  c4. 8 g g g8. 16
  g2. c4
  d4. c8 d4 c
  b2. 4
  c4. g8 8 8 8. c16 % B
  c2. 4
  c4. a8 4 g
  g2. r4
  e8 4 8 a a4. % C
  g4 f e2
  a8 4 8 8 8 d c
  b2. 4
  c4. g8 4 c8 8 % D
  c4. g8 4(c)
  c8[d] c b c4 e
  f4 d8. 16 e4\fermata
}

bass = \relative {
  \autoBeamOff
  c4
  c4. 8 8 8 8. 16
  c2. 4
  g'4. 8 4 4
  g2. 4
  c,4. 8 8 8 8. 16 % B
  c2. 4
  f4. 8 d4 g
  c,2. r4
  e8 4 8 a8 4. % C
  g4 f e2
  a8 4 8 d,8 8 8 8
  g2. 4
  c,4. 8 4 8 8 % D
  c4. 8 2
  f4 e8 g c4 a
  f4 g8. 16 c,4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Je -- sus is ris -- en, as He said—
  Ris -- en in tri -- umph from the grave!
  Re -- joice and sing on this Eas -- ter- tide—
  Je -- sus is ris -- en, migh -- ty to save!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Be -- hold, the Eas -- ter- -- tide is here,
  With Eas -- ter joy and bloom:
  Be -- hold, the stone is roll'd a -- way,
  To show a con -- quer'd tomb.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Be -- hold, the ves -- tures of the dead,
  All fold -- ed back with care:
  Be -- hold, the dark and va -- cant tomb
  For Je -- sus is not there.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Be -- hold, He walks the earth a -- gain,
  Ex -- al -- ted in His love:
  Be -- hold, the glo -- ry on His brow,
  Re -- flec -- ted from a -- bove.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be -- hold the Eas -- ter- -- tide is here,
  With Eas -- ter song and word:
  Be -- hold, a -- mid these Eas -- ter gifts,
  The tri -- umph of the Lord.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be" "hold, " "the " Eas ter- "tide " "is " "here, "
  "\nWith " Eas "ter " "joy " "and " "bloom: "
  "\nBe" "hold, " "the " "stone " "is " "roll'd " a "way, "
  "\nTo " "show " "a " con "quer'd " "tomb. "
  "\nJe" "sus " "is " ris "en, " "as " "He " "said— "
  "\nRis" "en " "in " tri "umph " "from " "the " "grave! "
  "\nRe" "joice " "and " "sing " "on " "this " Eas ter "tide— "
  "\nJe" "sus " "is " ris "en, " migh "ty " "to " "save! "

  \set stanza = "2."
  "\nBe" "hold, " "the " ves "tures " "of " "the " "dead, "
  "\nAll " fold "ed " "back " "with " "care: "
  "\nBe" "hold, " "the " "dark " "and " va "cant " "tomb "
  "\nFor " Je "sus " "is " "not " "there. "
  "\nJe" "sus " "is " ris "en, " "as " "He " "said— "
  "\nRis" "en " "in " tri "umph " "from " "the " "grave! "
  "\nRe" "joice " "and " "sing " "on " "this " Eas ter "tide— "
  "\nJe" "sus " "is " ris "en, " migh "ty " "to " "save! "

  \set stanza = "3."
  "\nBe" "hold, " "He " "walks " "the " "earth " a "gain, "
  "\nEx" al "ted " "in " "His " "love: "
  "\nBe" "hold, " "the " glo "ry " "on " "His " "brow, "
  "\nRe" flec "ted " "from " a "bove. "
  "\nJe" "sus " "is " ris "en, " "as " "He " "said— "
  "\nRis" "en " "in " tri "umph " "from " "the " "grave! "
  "\nRe" "joice " "and " "sing " "on " "this " Eas ter "tide— "
  "\nJe" "sus " "is " ris "en, " migh "ty " "to " "save! "

  \set stanza = "4."
  "\nBe" "hold " "the " Eas ter- "tide " "is " "here, "
  "\nWith " Eas "ter " "song " "and " "word: "
  "\nBe" "hold, " a "mid " "these " Eas "ter " "gifts, "
  "\nThe " tri "umph " "of " "the " "Lord. "
  "\nJe" "sus " "is " ris "en, " "as " "He " "said— "
  "\nRis" "en " "in " tri "umph " "from " "the " "grave! "
  "\nRe" "joice " "and " "sing " "on " "this " Eas ter "tide— "
  "\nJe" "sus " "is " ris "en, " migh "ty " "to " "save! "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
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
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
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
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
