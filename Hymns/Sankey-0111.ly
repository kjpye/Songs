\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Joy to the World!"
  subtitle    = "Sankey No. 111"
  subsubtitle = "Sankey 880 No. 644"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup { \italic "Arr. by " \smallCaps "Dr. L. Mason." }
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D. D."
  meter       = "C.M."
  piece       = \markup\smallCaps "Antioch"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key ees \major
  \time 4/4
  \tempo 4=72
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  \autoBeamOff
  ees''4 d8. c16 bes4. aes8
  g4 f ees4. bes'8
  c4. 8 d4. 8
  ees2. r8 8
  ees8[d] c[bes] bes8.[aes16 g8] ees' % B
  ees8[d] c[bes] bes8.[aes16 g8] g
  g8 8 8 16[aes] bes4. aes16[g]
  f8 8 8 16[g] aes4. g16[f] % C
  g8(ees'4) c8 bes8.[aes16 g8] aes
  g4 f ees2
}

alto = \relative {
  \autoBeamOff
  ees'4 8. 16 4. f8
  ees4 d ees4. bes'8
  aes4. 8 f4. 8
  g2. r8 g
  g8[bes] aes[g] g8.[f16 ees8] g % B
  g8[bes] aes[g] g8.[f16 ees8] ees
  ees8 8 8 16[f] g4. f16[ees]
  d8 8 8 16[ees] f4. ees16[d] % C
  ees8(g4) aes8 g8.[f16 ees8] f
  ees4 d ees2
}

tenor = \relative {
  g4 bes8. aes16 g4. c8
  bes4 aes g4. ees'8
  ees4. 8 bes4. 8
  bes2. r8 bes
  bes4 ees4 4. bes8 % B
  bes4 ees4 4. r8
  r4 r8 bes8 8 8 8 8
  aes4. 8 8 8 8 8 % C
  bes4. ees8 4. c8
  bes4 aes g2
}

bass = \relative {
  ees4 8. 16 4. aes,8
  bes4 4 ees4. g8
  aes4. 8 bes4. 8
  ees,2. r8 ees
  ees4 4 4. 8 % B
  ees4 4 4. r8
  r4 r8 ees8 8 8 8 8
  bes4. 8 8 8 8 8 % C
  ees4. 8 4. aes,8
  bes4 4 ees2
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Joy to the world, the Lord is come!
  Let earth re -- ceive her King;
  Let ev -- 'ry heart pre -- pare Him room,
  And heav'n and na -- ture sing, __
  And heav'n and na -- ture sing, __
  And heav'n, and heav'n and na -- ture sing,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Joy to the world, the Sa -- viour reigns!
  Let men their songs em -- ploy;
  While fields and floods, rocks, hills, and plains,
  Re -- peat the sound -- ing joy, __
  Re -- peat the sound -- ing joy, __
  Re -- peat, re peat  the sound -- ing joy,
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He rules the world with truth and grace,
  And makes the na -- tions prove
  The glo -- ries of His right -- eous -- ness,
  And won -- ders of His love, __
  And won -- ders of His love, __
  And won, -- and won -- ders of His love,
}
  
wordsMenOne = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  And heav'n and na -- ture sing, __
  And heav'n and na -- ture sing,
  _ _ _ _ _ _
}

wordsMenTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  Re -- peat the sound -- ing joy, __
  Re -- peat the sound -- ing joy,
  _ _ _ _ _ _
}

wordsMenThree = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  And won -- ders of His love, __
  And won -- ders of His love,
  _ _ _ _ _ _
}

wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "Joy " "to " "the " "world, " "the " "Lord " "is " "come! "
  "\nLet " "earth " re "ceive " "her " "King; "
  "\nLet " ev "'ry " "heart " pre "pare " "Him " "room, "
  "\nAnd " "heav'n " "and " na "ture " "sing, " 
  "\nAnd " "heav'n " "and " na "ture " "sing, " 
  "\nAnd " "heav'n, " "and " "heav'n " "and " na "ture " "sing, "

  \set stanza = "2."
  "\nJoy " "to " "the " "world, " "the " Sa "viour " "reigns! "
  "\nLet " "men " "their " "songs " em "ploy; "
  "\nWhile " "fields " "and " "floods, " "rocks, " "hills, " "and " "plains, "
  "\nRe" "peat " "the " sound "ing " "joy, " 
  "\nRe" "peat " "the " sound "ing " "joy, " 
  "\nRe" "peat, " "re " "peat "  "the " sound "ing " "joy, "

  \set stanza = "3."
  "\nHe " "rules " "the " "world " "with " "truth " "and " "grace, "
  "\nAnd " "makes " "the " na "tions " "prove "
  "\nThe " glo "ries " "of " "His " right eous "ness, "
  "\nAnd " won "ders " "of " "His " "love, " 
  "\nAnd " won "ders " "of " "His " "love, " 
  "\nAnd " won, "and " won "ders " "of " "His " "love, "
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Joy " "to " "the " "world, " "the " "Lord " "is " "come! "
  "\nLet " "earth " re "ceive " "her " "King; "
  "\nLet " ev "'ry " "heart " pre "pare " "Him " "room, "
  "\nAnd " "heav'n " "and " na "ture " "sing, " 
  "\nAnd " "heav'n " "and " na "ture " "sing, "
  "\nAnd " "heav'n " "and " na "ture " "sing. "

  \set stanza = "2."
  "\nJoy " "to " "the " "world, " "the " Sa "viour " "reigns! "
  "\nLet " "men " "their " "songs " em "ploy; "
  "\nWhile " "fields " "and " "floods, " "rocks, " "hills, " "and " "plains, "
  "\nRe" "peat " "the " sound "ing " "joy, " 
  "\nRe" "peat " "the " sound "ing " "joy, "
  "\nRe" "peat " "the " sound "ing " "joy. "

  \set stanza = "3."
  "\nHe " "rules " "the " "world " "with " "truth " "and " "grace, "
  "\nAnd " "makes " "the " na "tions " "prove "
  "\nThe " glo "ries " "of " "His " right eous "ness, "
  "\nAnd " won "ders " "of " "His " "love, " 
  "\nAnd " won "ders " "of " "His " "love, "
  "\nAnd " won "ders " "of " "His " "love. "
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
%            \new Voice \TempoTrack
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
            \new NullVoice = alignerMen \tenor
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new Lyrics \lyricsto "alignerMen" \wordsMenOne
            \new Lyrics \lyricsto "alignerMen" \wordsMenTwo
            \new Lyrics \lyricsto "alignerMen" \wordsMenThree
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
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
            \new NullVoice = alignerMen { \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \lyricsto "alignerMen" { \wordsMenOne \wordsMenTwo \wordsMenThree }
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
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
            \new NullVoice = alignerMen { \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \lyricsto "alignerMen" { \wordsMenOne \wordsMenTwo \wordsMenThree }
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
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiWomen
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
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
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
            \addlyrics \wordsMidiMen
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
