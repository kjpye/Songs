\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Calvary!"
  subtitle    = "Sankey No. 116"
  subsubtitle = "Sankey 880 No. 539"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. M'K. Darwood."
  meter       = "L.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key bes \major
  \time 4/4
  \tempo 4=120
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2 s1*2
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*2 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
  \mark \markup { \box "E" } s4 s1*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  r8 d'' c8. bes16
  f2~8 d f8. b16
  a2~8 ees' d8. c16
  g2~8 a g8. f16 % B
  d2~8 d' c8. bes16
  f2~8 d f8. bes16
  g2~8 ees' d8. cis16 % C
  d2~8 bes a8. c16
  bes2. \bar "||" \break \partial 4 f4^\markup\smallCaps Chorus.
  c'8. b16 c2 d4 % D
  bes8. g16 f2 4
  g8 g ees' d c4 bes
  \appoggiatura a8 c2.\fermata \bar "|" \break \partial 4 f,4
  d'8. c16 bes2 a4 % E
  g8. bes16 ees2 g,4
  f4.^\markup\italic rit. bes8 a bes d8. c16
  bes2
}

alto = \relative {
  r2
  r8 d'8 8. 16 4 r
  r8 ees8 8. 16 4 r
  r8 ees8 8. 16 4 r % B
  r8 bes8 8. 16 4 r
  r8 d8 8. 16 4 r
  r8 d8 8. 16 8 g f8. e16 % C
  f2~8 8 8. ees16
  d2. f4
  ees8. 16 ees2 f4 % D
  d8. ees16 d2 4
  ees8 8 g8 8 4 4
  f4. e8 ees4\fermata f4
  f8. ees16 d2 f4 % E
  ees8. g16 2 ees4
  d4. f8 8 8 8. ees16
  d2
}

tenor = \relative {
  r2
  r8 bes8 8. 16 4 r
  r8 f8 8. 16 4 r
  r8 a8 8. 16 4 r % B
  r8 f8 8. 16 4 r
  r8 bes8 8. 16 4 r
  r8 bes8 8. 16 4 r % C
  r8 bes8 8. 16 8 d c8. a16
  bes2. f4
  a8. gis16 a2 f4 % D
  f8. bes16 2 4
  bes8 8 c b c4 4
  \appoggiatura c8 a4. bes8 c4\fermata g4
  bes8. f16 2 bes4
  bes8. 16 2 4
  bes4. d8 ees d bes8. a16
  bes2
}

bass= \relative {
  r2
  r8 bes,8 8. 16 4 r
  r8 c8 8. 16 4 r
  r8 f8 8. 16 4 r % B
  r8 bes,8 8. 16 4 r
  r8 bes8 8. 16 4 r
  r8 ees8 8. 16 4 r % C
  r8 f8 8. 16 8 8 8. 16
  bes,2. f'4
  f8. 16 2 4 % D
  bes,8. 16 2 4
  ees8 8 c d ees4 e
  f4. g8 a4\fermata g4
  bes,8. 16 2 d4 % E
  ees8. 16 2 4
  g4. 8 8 8 8. 16
  bes,2
}

chorusSop = \lyricmode {
  O Cal -- va -- ry! dark Cal -- va -- ry!
  Where Je -- sus shed His blood for me;
  O Cal -- va -- ry! blest Cal -- va -- ry!
  'Twas there my Sa -- viour died for me.
}

chorus = \lyricmode {
  O Cal -- va -- ry! dark Cal -- va -- ry!
  Where Je -- sus shed His blood for me, for me;
  O Cal -- va -- ry! blest Cal -- va -- ry!
  'Twas there my Sa -- viour died for me.
}

wordsOneSop = \lyricmode {
  \set stanza = "1."
  On Cal -- v'ry's brow __ my Sa -- viour died, __
  'Twas there my Lord __ was cru -- ci -- fied: __
  'Twas on the cross __ He bled for me, __
  And pur -- chased there __ my par -- don free.
}
  
wordsOne = \lyricmode {
  \set stanza = "1."
  On Cal -- v'ry's brow my Sa -- viour died,
  'Twas there my Lord was cru -- ci -- fied:
  'Twas on the cross He bled for \set associatedVoice = alignerMen me,
  And pur -- chased there my par -- don free.
}
  
wordsTwoSop = \lyricmode {
  \set stanza = "2."
  'Mid rend -- ing rocks __ and dark -- 'ning skies, __
  My Sa -- viour bows __ His head and dies; __
  The op -- 'ning vail __ re -- veals the way __
  To hea -- ven's joys __ and end -- less day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  'Mid rend -- ing rocks and dark -- 'ning skies,
  My Sa -- viour bows His head and dies;
  The op -- 'ning vail re -- veals the way
  To hea -- ven's joys and end -- less day.
}
  
wordsThreeSop = \lyricmode {
  \set stanza = "3."
  O Je -- sus, Lord, __ how can it be, __
  That Thou shouldst give __ Thy life for me?— __
  To bear the cross __ and ag -- o -- ny,— __
  In that dread hour __ on Cal -- va -- ry!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O Je -- sus, Lord, how can it be,
  That Thou shouldst give Thy life for me?—
  To bear the cross and ag -- o -- ny,—
  In that dread hour on Cal -- va -- ry!
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "On " Cal "v'ry's " "brow "  "my " Sa "viour " "died, " 
  "\n'Twas " "there " "my " "Lord "  "was " cru ci "fied: " 
  "\n'Twas " "on " "the " "cross "  "He " "bled " "for " "me, " 
  "\nAnd " pur "chased " "there "  "my " par "don " "free. "
  "\nO " Cal va "ry! " "dark " Cal va "ry! "
  "\nWhere " Je "sus " "shed " "His " "blood " "for " "me; "
  "\nO " Cal va "ry! " "blest " Cal va "ry! "
  "\n'Twas " "there " "my " Sa "viour " "died " "for " "me. "

  \set stanza = "2."
  "\n'Mid " rend "ing " "rocks "  "and " dark "'ning " "skies, " 
  "\nMy " Sa "viour " "bows "  "His " "head " "and " "dies; " 
  "\nThe " op "'ning " "vail "  re "veals " "the " "way " 
  "\nTo " hea "ven's " "joys "  "and " end "less " "day. "
  "\nO " Cal va "ry! " "dark " Cal va "ry! "
  "\nWhere " Je "sus " "shed " "His " "blood " "for " "me; "
  "\nO " Cal va "ry! " "blest " Cal va "ry! "
  "\n'Twas " "there " "my " Sa "viour " "died " "for " "me. "

  \set stanza = "3."
  "\nO " Je "sus, " "Lord, "  "how " "can " "it " "be, " 
  "\nThat " "Thou " "shouldst " "give "  "Thy " "life " "for " "me?— " 
  "\nTo " "bear " "the " "cross "  "and " ag o "ny,— " 
  "\nIn " "that " "dread " "hour "  "on " Cal va "ry! "
  "\nO " Cal va "ry! " "dark " Cal va "ry! "
  "\nWhere " Je "sus " "shed " "His " "blood " "for " "me; "
  "\nO " Cal va "ry! " "blest " Cal va "ry! "
  "\n'Twas " "there " "my " Sa "viour " "died " "for " "me. "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "On " Cal "v'ry's " "brow " "my " Sa "viour " "died, "
  "\n'Twas " "there " "my " "Lord " "was " cru ci "fied: "
  "\n'Twas " "on " "the " "cross " "He " "bled " "for " "\set " "associatedVoice " "= " "alignerMen " "me, "
  "\nAnd " pur "chased " "there " "my " par "don " "free. "
  "\nO " Cal va "ry! " "dark " Cal va "ry! "
  "\nWhere " Je "sus " "shed " "His " "blood " "for " "me, " "for " "me; "
  "\nO " Cal va "ry! " "blest " Cal va "ry! "
  "\n'Twas " "there " "my " Sa "viour " "died " "for " "me. "

  \set stanza = "2."
  "\n'Mid " rend "ing " "rocks " "and " dark "'ning " "skies, "
  "\nMy " Sa "viour " "bows " "His " "head " "and " "dies; "
  "\nThe " op "'ning " "vail " re "veals " "the " "way "
  "\nTo " hea "ven's " "joys " "and " end "less " "day. "
  "\nO " Cal va "ry! " "dark " Cal va "ry! "
  "\nWhere " Je "sus " "shed " "His " "blood " "for " "me, " "for " "me; "
  "\nO " Cal va "ry! " "blest " Cal va "ry! "
  "\n'Twas " "there " "my " Sa "viour " "died " "for " "me. "

  \set stanza = "3."
  "\nO " Je "sus, " "Lord, " "how " "can " "it " "be, "
  "\nThat " "Thou " "shouldst " "give " "Thy " "life " "for " "me?— "
  "\nTo " "bear " "the " "cross " "and " ag o "ny,— "
  "\nIn " "that " "dread " "hour " "on " Cal va "ry! "
  "\nO " Cal va "ry! " "dark " Cal va "ry! "
  "\nWhere " Je "sus " "shed " "His " "blood " "for " "me, " "for " "me; "
  "\nO " Cal va "ry! " "blest " Cal va "ry! "
  "\n'Twas " "there " "my " Sa "viour " "died " "for " "me. "
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "On " Cal "v'ry's " "brow " "my " Sa "viour " "died, "
  "\n'Twas " "there " "my " "Lord " "was " cru ci "fied: "
  "\n'Twas " "on " "the " "cross " "He " "bled " "for " "\set " "associatedVoice " "= " "alignerMen " "me, "
  "\nAnd " pur "chased " "there " "my " par "don " "free. "
  "\nO " Cal va "ry! " "dark " Cal va "ry! "
  "\nWhere " Je "sus " "shed " "His " "blood " "for " "me, " "for " "me; "
  "\nO " Cal va "ry! " "blest " Cal va "ry! "
  "\n'Twas " "there " "my " Sa "viour " "died " "for " "me. "

  \set stanza = "2."
  "\n'Mid " rend "ing " "rocks " "and " dark "'ning " "skies, "
  "\nMy " Sa "viour " "bows " "His " "head " "and " "dies; "
  "\nThe " op "'ning " "vail " re "veals " "the " "way "
  "\nTo " hea "ven's " "joys " "and " end "less " "day. "
  "\nO " Cal va "ry! " "dark " Cal va "ry! "
  "\nWhere " Je "sus " "shed " "His " "blood " "for " "me, " "for " "me; "
  "\nO " Cal va "ry! " "blest " Cal va "ry! "
  "\n'Twas " "there " "my " Sa "viour " "died " "for " "me. "

  \set stanza = "3."
  "\nO " Je "sus, " "Lord, " "how " "can " "it " "be, "
  "\nThat " "Thou " "shouldst " "give " "Thy " "life " "for " "me?— "
  "\nTo " "bear " "the " "cross " "and " ag o "ny,— "
  "\nIn " "that " "dread " "hour " "on " Cal va "ry! "
  "\nO " Cal va "ry! " "dark " Cal va "ry! "
  "\nWhere " Je "sus " "shed " "His " "blood " "for " "me, " "for " "me; "
  "\nO " Cal va "ry! " "blest " Cal va "ry! "
  "\n'Twas " "there " "my " Sa "viour " "died " "for " "me. "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice { \global \soprano \bar "|." }
            \addlyrics { \wordsOneSop \chorusSop }
            \addlyrics \wordsTwoSop
            \addlyrics \wordsThreeSop
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerMen { \tenor }
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
            \new Lyrics \with { alignAboveContext = men } \lyricsto alignerMen { \wordsOne \chorus }
            \new Lyrics \with { alignAboveContext = men } \lyricsto alignerMen { \wordsTwo \chorus }
            \new Lyrics \with { alignAboveContext = men } \lyricsto alignerMen { \wordsThree \chorus }
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
                                  % Soprano staff
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
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics { \wordsOneSop   \chorusSop
                         \wordsTwoSop   \chorusSop
                         \wordsThreeSop \chorusSop
                       }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice = alignerMen { \tenor \tenor \tenor }
          >>
          \new Lyrics \with {
            alignAboveContext = men
          } \lyricsto alignerMen { \wordsOne \chorus
                                   \wordsTwo \chorus
                                   \wordsThree \chorus
                                 }
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
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
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics { \wordsOneSop   \chorusSop
                         \wordsTwoSop   \chorusSop
                         \wordsThreeSop \chorusSop
                       }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new NullVoice = alignerMen { \tenor \tenor \tenor }
          >>
          \new Lyrics \with {
            alignAboveContext = men
          } \lyricsto alignerMen { \wordsOne \chorus
                                   \wordsTwo \chorus
                                   \wordsThree \chorus
                                 }
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
  \bookOutputSuffix "midi=sop"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff =soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
            \new Voice  { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff =soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidiAlto
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
            \new Voice  { \global \bass \bass \bass }
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
          \new Staff =soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
            \new Voice  { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
