\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He is Coming!"
  subtitle    = "Sankey No. 172"
  subsubtitle = "Sankey 880 No. 463"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Alice Monteith."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'8 c
  ees4 c8 aes f aes
  ees4 aes aes8 bes
  c4 des c
  bes2 \bar "|" \break aes8 c
  ees4 c8 aes f aes % B
  ees4 aes4 8 bes
  c4 4 bes
  aes2 \bar "|" \break ees8.^\markup\smallCaps Chorus. 16
  bes'4 4 ees,8. 16 % C
  c'4 4 8. 16
  bes4 ees d
  ees2 \bar "|" \break c8 des
  ees4 c8 aes f aes % D
  ees4 aes4 8 bes
  c4 4 bes
  aes2
}

alto = \relative {
  \autoBeamOff
  c'8 ees
  aes4 ees8 ees des des
  c4 4 ees8 8
  ees4 4 8[aes]
  g2 aes8 8
  aes4 ees8 8 des des % B
  c4 4 ees8 f
  ees4 aes g
  aes2 ees8. 16
  des4 4 ees8. 16 % C
  ees4 4 aes8. 16
  g4 4 f
  g2 ees8 8
  aes4 ees8 8 des des % D
  c4 ees4 8 f
  ees4 aes ees
  ees2
}

tenor = \relative {
  \autoBeamOff
  aes8 8
  c4 aes8 8 8 8
  aes4 4 8 g
  aes4 bes aes8[c]
  ees2 c8 ees
  c4 aes8 8 8 8 % B
  aes4 4 8 8
  aes4 ees' des
  c2 ees,8. 16
  g4 4 ees8. 16 % C
  aes4 4 ees'8. 16
  ees4 bes bes
  bes2 aes8 bes
  c4 aes8 8 8 8 % D
  aes4 c aes8 8
  aes8[c] ees4 des
  c2
}

bass = \relative {
  \autoBeamOff
  aes8 8
  aes4 8 c, des f
  aes4 aes, c8 ees
  aes4 g aes
  ees2 aes8 8
  aes4 8 c, des f % B
  aes4 aes, c8 des
  ees4 4 4
  aes2 ees8. 16
  ees4 4 8. 16 % C
  aes,4 4 8. 16
  bes4 4 4
  ees2 aes8 8
  aes4 aes,8 c des f % D
  aes4 4 c,8 des
  ees4 4 4
  aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Hal -- le -- ju -- jah!
  Hal -- le -- ju -- jah!
  He is com -- ing a -- gainl
  And with joy we will gath -- er round Him,
  At His com -- ing to reign!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  He is com -- ing, the "\"Man" of Sor -- "rows,\""
  Now ex -- alt -- ed on high;
  He is com -- ing with loud ho -- san -- nas,
  In the clouds of the sky.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He is com -- ing, our lov -- ing Sa -- viour,
  Bles -- sed Lamb that was slain!
  In the glo -- ry of God the Fa -- ther,
  On the earth He shall reign.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He is com -- ing, our Lord and Mas -- ter,
  Our Re -- deem -- er and King;
  We shall see Him in all His beau -- ty,
  And His praise we shall sing.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  He shall gath -- er His cho -- sen peo -- ple,
  Who are called by His name;
  And the ran -- somed of ev -- ;ry na -- tion,
  For His own He shall claim.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "He " "is " com "ing, " "the " "\"Man " "of " Sor "rows,\" "
  "\nNow " ex alt "ed " "on " "high; "
  "\nHe " "is " com "ing " "with " "loud " ho san "nas, "
  "\nIn " "the " "clouds " "of " "the " "sky. "
  "\nHal" le ju "jah! "
  "\nHal" le ju "jah! "
  "\nHe " "is " com "ing " a "gainl "
  "\nAnd " "with " "joy " "we " "will " gath "er " "round " "Him, "
  "\nAt " "His " com "ing " "to " "reign! "

  \set stanza = "2."
  "\nHe " "is " com "ing, " "our " lov "ing " Sa "viour, "
  "\nBles" "sed " "Lamb " "that " "was " "slain! "
  "\nIn " "the " glo "ry " "of " "God " "the " Fa "ther, "
  "\nOn " "the " "earth " "He " "shall " "reign. "
  "\nHal" le ju "jah! "
  "\nHal" le ju "jah! "
  "\nHe " "is " com "ing " a "gainl "
  "\nAnd " "with " "joy " "we " "will " gath "er " "round " "Him, "
  "\nAt " "His " com "ing " "to " "reign! "

  \set stanza = "3."
  "\nHe " "is " com "ing, " "our " "Lord " "and " Mas "ter, "
  "\nOur " Re deem "er " "and " "King; "
  "\nWe " "shall " "see " "Him " "in " "all " "His " beau "ty, "
  "\nAnd " "His " "praise " "we " "shall " "sing. "
  "\nHal" le ju "jah! "
  "\nHal" le ju "jah! "
  "\nHe " "is " com "ing " a "gainl "
  "\nAnd " "with " "joy " "we " "will " gath "er " "round " "Him, "
  "\nAt " "His " com "ing " "to " "reign! "

  \set stanza = "4."
  "\nHe " "shall " gath "er " "His " cho "sen " peo "ple, "
  "\nWho " "are " "called " "by " "His " "name; "
  "\nAnd " "the " ran "somed " "of " ev ";ry " na "tion, "
  "\nFor " "His " "own " "He " "shall " "claim. "
  "\nHal" le ju "jah! "
  "\nHal" le ju "jah! "
  "\nHe " "is " com "ing " a "gainl "
  "\nAnd " "with " "joy " "we " "will " gath "er " "round " "Him, "
  "\nAt " "His " com "ing " "to " "reign! "
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
    system-system-spacing.basic-distance = #15
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
