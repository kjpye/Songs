\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Behold, the Bridegroom Cometh."
  subtitle    = "Sankey No. 165"
  subsubtitle = "Sankey 880 No. 100"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

  meter       = \markup\smallCaps "7.6.d."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*4 s2
  \mark \markup { \box "B" } s2 s1*4
  \mark \markup { \box "C" } s1*4 s2.
  \mark \markup { \box "D" } s4 s1*4
  \mark \markup { \box "E" } s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4
  f4. 8 g4. 8
  a8 c4. r4 c
  d4. c8 4 bes
  a2 r4 c,
  f4. 8 \bar "|" \break g4. 8
  a8 c4. r4 a % B
  a4. g8 4 f
  \appoggiatura e8 g2 r4 g
  bes4. 8 a4 g \break
  a8 c4. r4 a % C
  f4. 8 g4 4
  a2 r4 a
  bes4. a8 g4. 8
  c4. bes8 a4 \bar "|" \break f
  g4. 8 a4 g % D
  f2. r8 \bar "||" c'8^\markup\smallCaps Chorus.
  c4. 8 d4. 8
  c8 a4. r4 a \break
  c4. g8 4 c % E
  a2. f4
  f4. 8 g4 4
  a8 4. r4 a
  bes4. 8 e,4 4
  f2.
}

alto = \relative {
  \autoBeamOff
  c'4
  a4. 8 c4. 8
  f8 a4. r4 a
  bes4. a8 4 g
  f2 r4 c
  a4. 8 c4. 8
  f8 a4. r4 f % B
  f4. e8 4 b
  \appoggiatura c8 e2 r4 e
  g4. 8 f4 e
  f8 a4. r4 c, % C
  d4. 8 4 4
  cis2 r4 cis
  d4. 8 e4. 8
  e4. 8 f4 4
  d4. 8 e4 4 % D
  f2. r8 a
  a4. 8 gis4. 8
  a8 f4. r4 4
  e4. 8 4 4 % E
  f2. d4
  d4. 8 4 4
  cis8 4. r4 cis
  d4. 8 c4 4
  c2.
}

tenor = \relative {
  \autoBeamOff
  c4
  f4. 8 c'4. 8
  c8 4. r4 c
  bes4. c8 4 4
  c2 r4 c,
  f4. 8 c'4. 8
  c8 4. r4 c % B
  b4. 8 4 4
  c2 r4 c
  c4. 8 4 4
  c8 4. r4 f, % C
  a4. 8 d,4 4
  e2 r4 e
  g4. 8 4. 8
  a4. 8 4 c
  d4. 8 c4 bes % D
  a2. r8 c
  c4. 8 b4. 8
  c8 4. r4 c
  c4. 8 4 4 % E
  c2. a4
  a4. 8 d,4 4
  e8 4. r4 e
  g4. 8 bes4 4
  aes2.
}

bass = \relative {
  \autoBeamOff
  c4
  f4. 8 c4. 8
  f8 4. r4 g
  g4. 8 c4 4
  f,2 r4 c
  f4. 8 c4. 8
  f8 4. r4 f % B
  g4. 8 g,4 4
  c2 r4 c
  c4. 8 4 4
  f8 4. r4 f % C
  d4. 8 bes4 4
  a2 r4 a
  g4. 8 c4. 8
  a4. 8 d4 a
  bes4. 8 c4 4 % D
  f2. r8 f
  f4. 8 4. 8
  f8 4. r4 f
  c4. 8 4 4
  f2. d4
  d4. 8 bes4 4
  a8 4. r4 a
  g4. 8 c4 4
  <f, f'>2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Be -- hold, the Bride -- groom com -- eth!
  And all may en -- ter in,
  Whose lamps are trimm'd and burn -- ing,
  Whose robes are white and clean.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Our lamps are trimmed and burn -- ing,
  Our robes are white and clean,
  We've tar -- ried for the Bride -- groom,
  Oh, may we en -- ter in?
  We know we've no -- thing wor -- thy
  That we can call our own;
  The light, the oil, the robes we wear,
  All come from Him a -- lone.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Go forth, go forth to meet Him!
  The way is o -- pen now,
  All light -- ed with the glo -- ry
  That's stream -- ing from His brow.
  Ac -- cept the in -- vi -- ta -- tion.
  Be -- yond de -- serv -- ing kind;
  Make no de -- lay, but take your lamps,
  And joy e -- ter -- nal find.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We see the mar -- riage splen -- dour
  With -- in the o -- pen door;
  We know that those who en -- ter
  Are blest for ev -- er -- more.
  We see He is more love -- ly
  Than all the sons of men;
  But still we know the door once shut
  Will nev -- er ope a -- gain.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Our " "lamps " "are " "trimmed " "and " burn "ing, "
  "\nOur " "robes " "are " "white " "and " "clean, "
  "\nWe've " tar "ried " "for " "the " Bride "groom, "
  "\nOh, " "may " "we " en "ter " "in? "
  "\nWe " "know " "we've " no "thing " wor "thy "
  "\nThat " "we " "can " "call " "our " "own; "
  "\nThe " "light, " "the " "oil, " "the " "robes " "we " "wear, "
  "\nAll " "come " "from " "Him " a "lone. "
  "\nBe" "hold, " "the " Bride "groom " com "eth! "
  "\nAnd " "all " "may " en "ter " "in, "
  "\nWhose " "lamps " "are " "trimm'd " "and " burn "ing, "
  "\nWhose " "robes " "are " "white " "and " "clean. "

  \set stanza = "2."
  "\nGo " "forth, " "go " "forth " "to " "meet " "Him! "
  "\nThe " "way " "is " o "pen " "now, "
  "\nAll " light "ed " "with " "the " glo "ry "
  "\nThat's " stream "ing " "from " "His " "brow. "
  "\nAc" "cept " "the " in vi ta "tion. "
  "\nBe" "yond " de serv "ing " "kind; "
  "\nMake " "no " de "lay, " "but " "take " "your " "lamps, "
  "\nAnd " "joy " e ter "nal " "find. "
  "\nBe" "hold, " "the " Bride "groom " com "eth! "
  "\nAnd " "all " "may " en "ter " "in, "
  "\nWhose " "lamps " "are " "trimm'd " "and " burn "ing, "
  "\nWhose " "robes " "are " "white " "and " "clean. "

  \set stanza = "3."
  "\nWe " "see " "the " mar "riage " splen "dour "
  "\nWith" "in " "the " o "pen " "door; "
  "\nWe " "know " "that " "those " "who " en "ter "
  "\nAre " "blest " "for " ev er "more. "
  "\nWe " "see " "He " "is " "more " love "ly "
  "\nThan " "all " "the " "sons " "of " "men; "
  "\nBut " "still " "we " "know " "the " "door " "once " "shut "
  "\nWill " nev "er " "ope " a "gain. "
  "\nBe" "hold, " "the " Bride "groom " com "eth! "
  "\nAnd " "all " "may " en "ter " "in, "
  "\nWhose " "lamps " "are " "trimm'd " "and " burn "ing, "
  "\nWhose " "robes " "are " "white " "and " "clean. "
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
%    system-separator-markup = \slashSeparator
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
