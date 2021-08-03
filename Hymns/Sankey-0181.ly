\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Watch ye, therefore!"
  subtitle    = "Sankey No. 181"
  subsubtitle = "C.C. No. 57"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. A. Ogden."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Dr. G. L. Mitchell."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1 s1 s2
  \mark \markup { \box "B" } s2 s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*4
  \mark \markup { \box "E" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 \tuplet 3/2 {g8 8 8} f4 d8.[f16]
  bes8. 16 8. c16 bes4 g
  f4 \tuplet 3/2 {ees8 8 8} \bar "|" \break f4 4
  bes8. f16 bes8. d16 c2 % B
  c4 b8. 16 c4 f,
  c'8. b16 c8. d16 e4 4 \break
  d4 \tuplet 3/2 {d8 c bes} g4 c % C
  bes8. 16 a8. 16 bes2 \bar "||"
  f4^\markup\smallCaps Chorus. e f d \break
  g8. 16 8. 16 2 % D
  f4 e f bes
  c8. b16 c8. d16 c2
  d4 8. c16 bes4 f \break
  g8. 16 8. a16 bes4. g8 % E
  f4 8. 16 bes8. 16 8. c16
  d4 c bes2
}

alto = \relative {
  \autoBeamOff
  d'4 \tuplet 3/2 {cis8 8 8} d4 b8.[d16]
  d8. 16 f8. 16 g4 ees
  d4 \tuplet 3/2 {cis8 8 8} d4 4
  d8. 16 f8. 16 2 % B
  f4 8. 16 4 4
  f8. 16 8. 16 4 4
  f4 \tuplet 3/2 {f8 8 8} ees4 4 % C
  d8. 16 c8. ees16 d2 \bar "||"
  d4 cis d d
  ees8. 16 8. 16 2 % D
  d4 cis d f
  f8. 16 8. 16 2
  f4 8. ees16 d4 4
  ees8. 16 8. f16 g4. ees8 % E
  d4 8. 16 f8. 16 8. g16
  f4 ees d2
}

tenor = \relative {
  \autoBeamOff
  f4 \tuplet 3/2 {e8 8 8} f4 4
  f8. 16 bes8. 16 4 4
  bes4 \tuplet 3/2 {g8 8 8} f4 bes
  bes8. 16 8. 16 a2 % B
  a4 gis8. 16 a4 4
  a8. gis16 a8. bes16 c4 4
  bes4 \tuplet 3/2 {bes8 8 8} 4 g % C
  f8. 16 8. 16 2 \bar "||"
  bes4 g f bes
  bes8. 16 8. 16 2 % D
  bes4 g f f
  a8. gis16 a8. bes16 a2
  bes4 8. f16 4 bes
  bes8. 16 8. 16 4. 8 % E
  bes4 8. 16 8. 16 8. 16
  bes4 a bes2
}

bass = \relative {
  \autoBeamOff
  bes,4 \tuplet 3/2 {8 8 8} 4 4
  bes8. 16 d8. 16 ees4 4
  bes4 \tuplet 3/2 {8 8 8} 4 4
  bes8. 16 d8. bes16 f'2
  f4 8. 16 4 4
  f8. 16 8. 16 4 4
  bes,4 \tuplet 3/2 {bes8 c d} ees4 4 % C
  f8. 16 f,8. 16 bes2 \bar "||"
  bes4 4 4 4
  ees8. 16 8. 16 2 % D
  bes4 4 4 d
  f8. 16 8. 16 2
  bes,4 8. 16 4 4
  ees8. 16 8. 16 4. 8 % E
  bes4 8. 16 d8. 16 8. ees16
  f4 4 bes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Watch ye, pray ye, sol -- diers of the Lord;
  Work ye, wait ye, trust -- ing in His word;
  Keep His com -- mand -- ments. and His law o -- bey,
  And He will re -- ward you in the last great day.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Watch, earn -- est -- ly watch,
  The Lord's ap -- proach is near -- ing;
  Pray, fer -- vent -- ly pray,
  No man can know the hour;
  Like as a thief at night is His ap -- pear -- ing;
  He Com -- eth to judge the world in truth and power.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Work, joy -- ful -- ly work,
  All ye who know His chast -- 'ning;
  Wait, pa -- tient -- ly wait,
  For your re -- ward is nigh;
  Lift up your ehads, the day of rest is hast -- 'ning;
  Rest, glo -- ri -- ous rst, with Je -- sus by- and- by.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Trust, loy -- al -- ly trust,
  And as to Him thou'rt cling -- ing,
  Keep, faith -- ful -- y keep,
  The Sa -- viour's blest com -- mands;
  Then in thy heart the blest as -- sur -- ance ring -- ing,
  Know sure -- ly thy name is writ -- ten in His hands.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Watch, " earn est "ly " "watch, "
  "\nThe " "Lord's " ap "proach " "is " near "ing; "
  "\nPray, " fer vent "ly " "pray, "
  "\nNo " "man " "can " "know " "the " "hour; "
  "\nLike " "as " "a " "thief " "at " "night " "is " "His " ap pear "ing; "
  "\nHe " Com "eth " "to " "judge " "the " "world " "in " "truth " "and " "power. "
  "\nWatch " "ye, " "pray " "ye, " sol "diers " "of " "the " "Lord; "
  "\nWork " "ye, " "wait " "ye, " trust "ing " "in " "His " "word; "
  "\nKeep " "His " com mand "ments. " "and " "His " "law " o "bey, "
  "\nAnd " "He " "will " re "ward " "you " "in " "the " "last " "great " "day. "

  \set stanza = "2."
  "\nWork, " joy ful "ly " "work, "
  "\nAll " "ye " "who " "know " "His " chast "'ning; "
  "\nWait, " pa tient "ly " "wait, "
  "\nFor " "your " re "ward " "is " "nigh; "
  "\nLift " "up " "your " "ehads, " "the " "day " "of " "rest " "is " hast "'ning; "
  "\nRest, " glo ri "ous " "rst, " "with " Je "sus " by and "by. "
  "\nWatch " "ye, " "pray " "ye, " sol "diers " "of " "the " "Lord; "
  "\nWork " "ye, " "wait " "ye, " trust "ing " "in " "His " "word; "
  "\nKeep " "His " com mand "ments. " "and " "His " "law " o "bey, "
  "\nAnd " "He " "will " re "ward " "you " "in " "the " "last " "great " "day. "

  \set stanza = "3."
  "\nTrust, " loy al "ly " "trust, "
  "\nAnd " "as " "to " "Him " "thou'rt " cling "ing, "
  "\nKeep, " faith ful "y " "keep, "
  "\nThe " Sa "viour's " "blest " com "mands; "
  "\nThen " "in " "thy " "heart " "the " "blest " as sur "ance " ring "ing, "
  "\nKnow " sure "ly " "thy " "name " "is " writ "ten " "in " "His " "hands. "
  "\nWatch " "ye, " "pray " "ye, " sol "diers " "of " "the " "Lord; "
  "\nWork " "ye, " "wait " "ye, " trust "ing " "in " "His " "word; "
  "\nKeep " "His " com mand "ments. " "and " "His " "law " o "bey, "
  "\nAnd " "He " "will " re "ward " "you " "in " "the " "last " "great " "day. "
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
