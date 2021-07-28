\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We'll Watch and Wait."
  subtitle    = "Sankey No. 173"
  subsubtitle = "C.C. No. 248"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. L. Hastings."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*2 s4.
  \mark \markup { \box "B" } s4. s2.*3
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*3
  \mark \markup { \box "E" } s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4.=120
  s8
  s2.*13
  s4. \tempo 4.=28 s4 \tempo 4.=120 s8
  s2.
  s4. s4
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'16 aes
  bes8. 16 8 8 c d
  ees4. bes4 16 16
  bes8. aes16 8 \bar "|" \break c8 bes c
  g4.~4 % B
    \tag #'dash  { \slurDashed bes16(16) \slurSolid }
    \tag #'solid {             bes8                 }
    \tag #'none  {             bes16 16             }
  c8. 16 8 ees d c
  bes4. ees4 16 16 \break
  d8. 16 8 ees d c % C
  bes4.~4 \bar "||" c16^\markup\smallCaps Chorus. d
  ees4 d8 c8. d16 ees8 \break
  bes4. 4 8 % D
  bes8. aes16 8 c8. bes16 aes8
  g4.~4 bes8 \break
  c4 8 d8. c16 d8 % E
  ees4. 4\fermata c8
  bes4 8 8. c16 bes8
  ees,4.~4
}

alto = \relative {
  \autoBeamOff
  ees'16 f
  g8. 16 8 aes8 8 8
  bes4. g4 16 16
  g8. f16 8 aes g f
  ees4.~4 % B
    \tag #'dash  { \slurDashed aes16(16) \slurSolid }
    \tag #'solid {             aes8                 }
    \tag #'none  {             aes16 16             }
  aes8. 16 8 c bes aes
  g4. 4 16 16
  f8. 16 8 g f ees % C
  d4.~4 ees16 f
  ees4 8 8. 16 8
  ees4(d8) ees4 8 % D
  g8. f16 8 aes8. g16 f8
  ees4.~4 8
  ees4 8 g8. 16 8 % E
  g4. aes4\fermata ees8
  ees4 8 d8. 16 8 ees4.~4
}

tenor = \relative {
  \autoBeamOff
  bes16 16
  ees8. 16 8 d ees f
  ees4. 4 bes16 16
  bes8. 16 8 \bar "|" \break 8 8 8
  bes4.~4 % B
    \tag #'dash  { \slurDashed ees16(16) \slurSolid }
    \tag #'solid {             ees8                 }
    \tag #'none  {             ees16 16             }
  ees8. 16 8 8 8 8
  ees4. bes4 16 16
  bes8. 16 8 a8 8 8 % C
  bes4.~4 16 16
  bes4 8 aes8. bes16 c8
  bes4(aes8) g4 8
  bes8. 16 8 8. 16 8
  bes4.~4 g8
  aes4 c8 b8. a16 bes8 % E
  c4(des8) c4\fermata a8
  g4 8 aes8. 16 8
  g4.~4
}

bass = \relative {
  \autoBeamOff
  ees16 16
  ees8. 16 8 f f f
  g4. ees4 16 16
  bes8. 16 8 8 c d
  ees4.~4 % B
    \tag #'dash  { \slurDashed 16(16) \slurSolid }
    \tag #'solid {             8                 }
    \tag #'none  {             16 16             }
  aes8. 16 8 8 8 8
  ees4. 4 16 16
  f8. 16 8 8 8 8 % C
  bes,4.~4 aes'16 16
  g4 8 aes8. 16 8
  g4(f8) ees4 8 % D
  bes8. 16 8 8. c16 d8
  ees4.~4 8
  aes4 8 g8. 16 8 % E
  c4(bes8) aes4\fermata aes,8
  bes4 8 8. 16 8
  ees4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  So we'll wait and watch for the dawn -- ing,
  The day of e -- ter -- ni -- ty blest;
  Then take the wings of the morn -- ing,
  And fly a -- way to our rest.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  There's a light that is shi -- ning in dark -- ness,
  While we wait for the dawn -- ing of day;
  \nom And it \yesm cheers us a -- long on our jour -- ney,
  Till the sha -- dows shall van -- ish a -- way!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  From the sure word the pro -- phets have spo -- ken,
  There is light flash -- ing forth thro' the gloom;
  \nom For the \yesm Scrip -- ture can nev -- be bro - ken,
  And the King in His glo -- ry will come.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Now we sing 'mid the dark -- ness and sha -- dows,
  And we pray and we watch for the dawn;
  \nom Till the \yesm Day -- star, in glo -- ry a -- ri -- sing,
  Shall be -- to -- ken the com -- ing of morn.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  We are not of the night nor of dark -- ness;
  Let us walk, then, as chil -- dren of day:
  Our weep -- ing shall be for a mom -- ent,
  And our joy shall ne'er van -- ish a -- way!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nThere's " "a " "light " "that " "is " shi "ning " "in " dark "ness, "
  "\nWhile " "we " "wait " "for " "the " dawn "ing " "of " "day; "
  "\nAnd " "it " "cheers " "us " a "long " "on " "our " jour "ney, "
  "\nTill " "the " sha "dows " "shall " van "ish " a "way! "
  "\nSo " "we'll " "wait " "and " "watch " "for " "the " dawn "ing, "
  "\nThe " "day " "of " e ter ni "ty " "blest; "
  "\nThen " "take " "the " "wings " "of " "the " morn "ing, "
  "\nAnd " "fly " a "way " "to " "our " "rest. "

  \set stanza = "2."
  "\nFrom " "the " "sure " "word " "the " pro "phets " "have " spo "ken, "
  "\nThere " "is " "light " flash "ing " "forth " "thro' " "the " "gloom; "
  "\nFor " "the " Scrip "ture " "can " nev "be " "bro "  "ken, "
  "\nAnd " "the " "King " "in " "His " glo "ry " "will " "come. "
  "\nSo " "we'll " "wait " "and " "watch " "for " "the " dawn "ing, "
  "\nThe " "day " "of " e ter ni "ty " "blest; "
  "\nThen " "take " "the " "wings " "of " "the " morn "ing, "
  "\nAnd " "fly " a "way " "to " "our " "rest. "

  \set stanza = "3."
  "\nNow " "we " "sing " "'mid " "the " dark "ness " "and " sha "dows, "
  "\nAnd " "we " "pray " "and " "we " "watch " "for " "the " "dawn; "
  "\nTill " "the " Day "star, " "in " glo "ry " a ri "sing, "
  "\nShall " be to "ken " "the " com "ing " "of " "morn. "
  "\nSo " "we'll " "wait " "and " "watch " "for " "the " dawn "ing, "
  "\nThe " "day " "of " e ter ni "ty " "blest; "
  "\nThen " "take " "the " "wings " "of " "the " morn "ing, "
  "\nAnd " "fly " a "way " "to " "our " "rest. "

  \set stanza = "4."
  "\nWe " "are " "not " "of " "the " "night " "nor " "of " dark "ness; "
  "\nLet " "us " "walk, " "then, " "as " chil "dren " "of " "day: "
  "\nOur " weep "ing " "shall " "be " "for " "a " mom "ent, "
  "\nAnd " "our " "joy " "shall " "ne'er " van "ish " a "way! "
  "\nSo " "we'll " "wait " "and " "watch " "for " "the " dawn "ing, "
  "\nThe " "day " "of " e ter ni "ty " "blest; "
  "\nThen " "take " "the " "wings " "of " "the " morn "ing, "
  "\nAnd " "fly " a "way " "to " "our " "rest. "
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
            \new NullVoice = "aligner" \keepWithTag dash \soprano
            \new Voice = "women" \partCombine { \global \keepWithTag #'dash \soprano \bar "|." }
                                              { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \keepWithTag #'dash \tenor }
                                            { \global \keepWithTag #'dash \bass  }
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
            \new NullVoice = "aligner" \keepWithTag #'dash { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \keepWithTag #'none  \soprano
                                                \keepWithTag #'none  \soprano
                                                \keepWithTag #'none  \soprano
                                                \keepWithTag #'solid \soprano
                                                \bar "|." }
            { \global \keepWithTag #'none  \alto \nl
              \keepWithTag #'none  \alto \nl
              \keepWithTag #'none  \alto \nl
              \keepWithTag #'solid \alto }
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
            \new Voice = "men" \partCombine { \global \keepWithTag #'none \tenor
                                              \keepWithTag #'none \tenor
                                              \keepWithTag #'none \tenor
                                              \keepWithTag #'solid \tenor }
            { \global \keepWithTag #'none  \bass
              \keepWithTag #'none  \bass
              \keepWithTag #'none \bass
              \keepWithTag #' solid \bass }
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
    system-system-spacing.basic-distance = #12
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" \keepWithTag #'dash { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \keepWithTag #'none  \soprano
                                                \keepWithTag #'none  \soprano
                                                \keepWithTag #'none  \soprano
                                                \keepWithTag #'solid \soprano
                                                \bar "|." }
            { \global \keepWithTag #'none  \alto \nl
              \keepWithTag #'none  \alto \nl
              \keepWithTag #'none  \alto \nl
              \keepWithTag #'solid \alto }
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
            \new Voice = "men" \partCombine { \global \keepWithTag #'none \tenor
                                              \keepWithTag #'none \tenor
                                              \keepWithTag #'none \tenor
                                              \keepWithTag #'solid \tenor }
            { \global \keepWithTag #'none  \bass
              \keepWithTag #'none  \bass
              \keepWithTag #'none \bass
              \keepWithTag #' solid \bass }
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
            \new Voice { \global \keepWithTag #'none  \soprano
                         \keepWithTag #'none  \soprano
                         \keepWithTag #'none  \soprano
                         \keepWithTag #'solid \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \keepWithTag #'none  \alto \nl
                         \keepWithTag #'none  \alto \nl
                         \keepWithTag #'none  \alto \nl
                         \keepWithTag #'solid \alto }
          >>
                                  % Tenor staff
          \new Staff = bass
          <<
            \clef "treble_8"
            \new Voice { \global \keepWithTag #'none \tenor
                         \keepWithTag #'none \tenor
                         \keepWithTag #'none \tenor
                         \keepWithTag #'solid \tenor
                       }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \keepWithTag #'none  \bass
                         \keepWithTag #'none  \bass
                         \keepWithTag #'none \bass
                         \keepWithTag #' solid \bass }
          >>
        >>
    \midi {}
  }
}
