\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Crowning Day."
  subtitle    = "Sankey No. 176"
  subsubtitle = "Sankey 880 No. 363"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El nathan"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s1 s2..
  \mark \markup { \box "B" } s8 s1 s2..
  \mark \markup { \box "C" } s8 s1 s2.
  \mark \markup { \box "D" } s4 s1 s2.
  \mark \markup { \box "E" } s4 s1 s1
  \mark \markup { \box "F" } s1 s1 s2
  \mark \markup { \box "G" } s2 s1 s1 s2..
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s8
  s1*11
  s2. \tempo 4=20 s8 \tempo 4=120 s
  s1*3 s2..
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8
  ees8 aes aes bes c4 bes8 aes
  f8 aes8 8. f16 ees4. \bar "|" \break
    \tag #'dash  { \slurDashed ees16(16) \slurSolid }
    \tag #'none  {             ees16 16             }
    \tag #'solid {             ees8                 }
  ees8 aes aes bes c4 8 des % B
  ees8 c c aes bes4. \bar "|" \break 8
  bes8 des c bes aes4 8 g % C
  f8 aes g f ees4 \bar "|" \break aes8 bes
  c8 ees des f ees16 c8. bes aes16
  aes2. \bar "|" \break aes8^\markup\smallCaps Chorus. 8
  aes8 des des des des16 f4. 16 % E
  f16 ees8. 8. c16 ees4 c8 bes \break
  aes8. 16 8 8 4 g8 aes % F
  bes8. aes16 bes8 c bes4 ees8\fermata des
  c8. des16 ees8 c \bar "|" \break aes4 8 g
  f16 aes8. 8. f16 ees4 aes8 bes % G
  c8 ees des f ees16 c8. bes aes16
  aes2. r8
}

alto = \relative {
  \autoBeamOff
  c'8
  c8 c c des ees4 des8 c
  des8 8 8. 16 c4.
    \tag #'dash  { \slurDashed 16(16) \slurSolid }
    \tag #'none  {             16 16             }
    \tag #'solid {             8                 }
  c8 8 ees8 8 4 8 aes % B
  aes8 8 8 8 g4. 8
  g8 bes aes g f4 8 e % C
  f8 f ees d c4 ees8 8
  aes8 8 8 8 16 8. g8. ees16 % D
  ees2. 8 8
  f8 8 8 8 16 aes4. 16 % E
  aes16 8. 8. 16 4 8 g
  f8. 16 8 8 4 e8 f % F
  g8. fis16 g8 aes g4 8\fermata bes
  aes8. 16 8 ees8 4 8 8
  des16 f8. 8. d16 c4 ees8 8 % G
  f8 8 8 8 16 8. g8. ees16
  ees2. r8
}

tenor = \relative {
  \autoBeamOff
  aes8
  aes8 ees ees aes aes4 aes8 aes
  aes8 f8 8. aes16 4.
    \tag #'dash  { \slurDashed 16(16) \slurSolid }
    \tag #'none  {             16 16             }
    \tag #'solid {             8                 }
  aes8 ees aes g aes4 8 bes % B
  c8 ees ees ees ees4. 8
  ees8 8 8 des c4 8 bes % C
  aes8 des des aes8 4 c8 des
  ees8 c f des c16 ees8. des c16 % D
  c2. 8 8
  des8 aes8 8 8 16 des4. 16 % E
  des16 c8. 8. ees16 c4 ees8 d
  c8. 16  8 8 4 8 8 % F
  ees8. 16 8 8 4 bes8\fermata ees
  ees8. des16 c8 ees c4 8 bes
  aes16 des8. 8. aes16 4 c8 des % G
  ees8 c f des c16 ees8. des c16
  c2. r8
}

bass = \relative {
  \autoBeamOff
  aes,8
  aes8 8 8 8 4 8 8
  des8 8 8. 16 aes4.
    \tag #'dash  { \slurDashed aes16(16) \slurSolid }
    \tag #'none  {             aes16 16            }
    \tag #'solid {             aes8                 }
  aes8 8 c ees aes4 8 8 % B
  aes8 8 8 c, ees4. 8
  ees8 8 8 8 f4 8 ees % C
  des8 8 8 8 aes4 aes'8 8
  aes8 8 des,8 8 ees16 8. 8. 16 % D
  aes,2. aes'8 8
  des,8 8 8 8 16 4. 16 % E
  aes'16 8. 8. 16 4 8 ees
  f8. 16 8 8 4 c8 f % F
  ees8. 16 8 8 4 8\fermata 8
  aes8. 16 8 8 4 8 c,
  des16 8. 8. 16 aes4 aes'8 8 % G
  aes8 8 des,8 8 c16 8. 8. 16
  aes2. r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, the crown -- ing day is com -- ing!
  Is com -- ing by- and- by!
  When our Lord shall come in "\"pow" -- "er\""
  And "\"glo" -- "ry\"" from on high!
  Oh, the glo -- rious sight will glad -- den
  Each wait -- ing, watch -- ful eye.
  In the crown -- ing day that's com -- ing by- and- by.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Our Lord is now re -- ject -- ed,
  And by the world dis -- owned;
  \nom By the \yesm \markup\italic ma -- \markup\italic ny still neg -- lect -- ed,
  And by the \markup\italic few en -- throned;
  But soon He'll come in glo -- ry!
  The hour is draw -- ing nigh,
  For the crown -- ing day is com -- ing by- and- by.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The heav'ns shall glow with splen -- dour'
  But bright -- er far than they,
  The saints shall shine in glo -- ry,
  As Christ shall them ar -- ray:
  The beau -- ty of the Sa -- viour
  Shall daz -- zle ev -- 'ry eye,
  In the crown -- ing day is com -- ing by- and- by.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Our pain shall then be o -- ver:
  We'll sin and sigh no more;
  Be -- hind us all of sor -- row,
  And naught but joy be -- fore—
  A joy in our Re -- deem -- er,
  As we to Him are nigh,
  In the crown -- ing day is com -- ing by- and- by.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Let all that look for, has -- ten
  The com -- ing joy -- ful day,
  By earn -- est con -- se -- cra -- tion,
  To walk the nar -- row day;
  By gath -- ering in the lost ones,
  For whom our Lord did die,
  For the crown -- ing day is com -- ing by- and- by.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Our " "Lord " "is " "now " re ject "ed, "
  "\nAnd " "by " "the " "world " dis "owned; "
  "\nBy " "the " ma "ny " "still " neg lect "ed, "
  "\nAnd " "by " "the " "few " en "throned; "
  "\nBut " "soon " "He'll " "come " "in " glo "ry! "
  "\nThe " "hour " "is " draw "ing " "nigh, "
  "\nFor " "the " crown "ing " "day " "is " com "ing " by and "by. "
  "\nOh, " "the " crown "ing " "day " "is " com "ing! "
  "\nIs " com "ing " by and "by! "
  "\nWhen " "our " "Lord " "shall " "come " "in " "\"pow" "er\" "
  "\nAnd " "\"glo" "ry\" " "from " "on " "high! "
  "\nOh, " "the " glo "rious " "sight " "will " glad "den "
  "\nEach " wait "ing, " watch "ful " "eye. "
  "\nIn " "the " crown "ing " "day " "that's " com "ing " by and "by. "

  \set stanza = "2."
  "\nThe " "heav'ns " "shall " "glow " "with " splen "dour' "
  "\nBut " bright "er " "far " "than " "they, "
  "\nThe " "saints " "shall " "shine " "in " glo "ry, "
  "\nAs " "Christ " "shall " "them " ar "ray: "
  "\nThe " beau "ty " "of " "the " Sa "viour "
  "\nShall " daz "zle " ev "'ry " "eye, "
  "\nIn " "the " crown "ing " "day " "is " com "ing " by and "by. "
  "\nOh, " "the " crown "ing " "day " "is " com "ing! "
  "\nIs " com "ing " by and "by! "
  "\nWhen " "our " "Lord " "shall " "come " "in " "\"pow" "er\" "
  "\nAnd " "\"glo" "ry\" " "from " "on " "high! "
  "\nOh, " "the " glo "rious " "sight " "will " glad "den "
  "\nEach " wait "ing, " watch "ful " "eye. "
  "\nIn " "the " crown "ing " "day " "that's " com "ing " by and "by. "

  \set stanza = "3."
  "\nOur " "pain " "shall " "then " "be " o "ver: "
  "\nWe'll " "sin " "and " "sigh " "no " "more; "
  "\nBe" "hind " "us " "all " "of " sor "row, "
  "\nAnd " "naught " "but " "joy " be "fore— "
  "\nA " "joy " "in " "our " Re deem "er, "
  "\nAs " "we " "to " "Him " "are " "nigh, "
  "\nIn " "the " crown "ing " "day " "is " com "ing " by and "by. "
  "\nOh, " "the " crown "ing " "day " "is " com "ing! "
  "\nIs " com "ing " by and "by! "
  "\nWhen " "our " "Lord " "shall " "come " "in " "\"pow" "er\" "
  "\nAnd " "\"glo" "ry\" " "from " "on " "high! "
  "\nOh, " "the " glo "rious " "sight " "will " glad "den "
  "\nEach " wait "ing, " watch "ful " "eye. "
  "\nIn " "the " crown "ing " "day " "that's " com "ing " by and "by. "

  \set stanza = "4."
  "\nLet " "all " "that " "look " "for, " has "ten "
  "\nThe " com "ing " joy "ful " "day, "
  "\nBy " earn "est " con se cra "tion, "
  "\nTo " "walk " "the " nar "row " "day; "
  "\nBy " gath "ering " "in " "the " "lost " "ones, "
  "\nFor " "whom " "our " "Lord " "did " "die, "
  "\nFor " "the " crown "ing " "day " "is " com "ing " by and "by. "
  "\nOh, " "the " crown "ing " "day " "is " com "ing! "
  "\nIs " com "ing " by and "by! "
  "\nWhen " "our " "Lord " "shall " "come " "in " "\"pow" "er\" "
  "\nAnd " "\"glo" "ry\" " "from " "on " "high! "
  "\nOh, " "the " glo "rious " "sight " "will " glad "den "
  "\nEach " wait "ing, " watch "ful " "eye. "
  "\nIn " "the " crown "ing " "day " "that's " com "ing " by and "by. "
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice = "women" \partCombine { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
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
            \new NullVoice = "aligner" { \keepWithTag #'none  \soprano
                                         \keepWithTag #'solid \soprano
                                         \keepWithTag #'solid \soprano
                                         \keepWithTag #'solid \soprano }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'none  \soprano
                                                \keepWithTag #'solid \soprano
                                                \keepWithTag #'solid \soprano
                                                \keepWithTag #'solid \soprano
                                                \bar "|." }
                                              { \global
                                                \keepWithTag #'none  \alto \nl
                                                \keepWithTag #'solid \alto \nl
                                                \keepWithTag #'solid \alto \nl
                                                \keepWithTag #'solid \alto
                                              }
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
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'none  \tenor
                                              \keepWithTag #'solid \tenor
                                              \keepWithTag #'solid \tenor
                                              \keepWithTag #'solid \tenor
                                            }
                                            { \global
                                              \keepWithTag #'none  \bass
                                              \keepWithTag #'solid \bass
                                              \keepWithTag #'solid \bass
                                              \keepWithTag #'solid \bass
                                            }
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
    system-system-spacing.basic-distance = #15
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
            \new NullVoice = "aligner" { \keepWithTag #'none  \soprano
                                         \keepWithTag #'solid \soprano
                                         \keepWithTag #'solid \soprano
                                         \keepWithTag #'solid \soprano }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'none  \soprano
                                                \keepWithTag #'solid \soprano
                                                \keepWithTag #'solid \soprano
                                                \keepWithTag #'solid \soprano
                                                \bar "|." }
                                              { \global
                                                \keepWithTag #'none  \alto \nl
                                                \keepWithTag #'solid \alto \nl
                                                \keepWithTag #'solid \alto \nl
                                                \keepWithTag #'solid \alto
                                              }
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
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'none  \tenor
                                              \keepWithTag #'solid \tenor
                                              \keepWithTag #'solid \tenor
                                              \keepWithTag #'solid \tenor
                                            }
                                            { \global
                                              \keepWithTag #'none  \bass
                                              \keepWithTag #'solid \bass
                                              \keepWithTag #'solid \bass
                                              \keepWithTag #'solid \bass
                                            }
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
            \new Voice { \global
                         \keepWithTag #'none  \soprano
                         \keepWithTag #'solid \soprano
                         \keepWithTag #'solid \soprano
                         \keepWithTag #'solid \soprano
                         \bar "|."
                       }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'none  \alto \nl
                         \keepWithTag #'solid \alto \nl
                         \keepWithTag #'solid \alto \nl
                         \keepWithTag #'solid \alto
                       }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'none  \tenor
                         \keepWithTag #'solid \tenor
                         \keepWithTag #'solid \tenor
                         \keepWithTag #'solid \tenor
                       }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'none  \bass
                         \keepWithTag #'solid \bass
                         \keepWithTag #'solid \bass
                         \keepWithTag #'solid \bass
                       }
          >>
        >>
    \midi {}
  }
}
