\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Room at the Cross"
  subtitle    = "Sankey No. 114"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*4
  \mark \markup { \box "B" } s2.*6
  \mark \markup { \box "C" } s2.*6
  \mark \markup { \box "D" } s2.*5
  \mark \markup { \box "E" } s2.*5
  \mark \markup { \box "F" } s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  ees'8. 16
  aes4 4 4
  c4 bes aes
  f4 g aes
  ees2 8. 16
  aes4 4 4 % B
  aes4 g aes
  bes2.~
  bes2 8. 16
  des4 c bes
  c4 bes aes
  f4 g aes % C
  ees2 8. 16
  f4 bes aes
  g4 f g
  aes2.~
  aes2 r4
  bes2^\markup\smallCaps Chorus. 8. 16 % D
  bes2 aes8. bes16
  c2 8. 16
  c2 8. 16
  bes4 4 4
  bes4 c bes % E
  ees2.~
  ees2 c8. des16
  ees4 d ees
  c2 bes8. aes16
  aes4 g f % F
  ees2 8. 16
  f4 bes aes
  g4 f g
  aes2.~2
}

alto = \relative {
  c'8. 16
  c4 4 4
  ees4 4 4
  des4 4 4
  c2 8. 16
  c4 4 4 % B
  d4 4 4
  ees2.~
  ees2 8. 16
  ees4 4 4
  ees4 4 4
  des4 4 4 % C
  c2 8. 16
  des4 f f
  des4 4 4
  c2.~
  c2 r4
  ees2 8. 16 % D
  ees2 8. 16
  ees2 8. 16
  ees2 8. 16
  g4 4 4
  aes4 4 4 % E
  g2.~
  g2 ees8. 16
  aes4 4 4
  ees2 8. 16
  f4 ees des % F
  c2 8. 16
  des4 f f
  des4 4 4
  c2.~
  c2
}

tenor = \relative {
  aes8. 16
  aes4 ees ees
  aes4 g aes
  aes4 4 4
  aes2 8. 16
  aes4 4 4 % B
  bes4 4 f
  g2.~
  g2 8. aes16
  bes4 aes g
  aes4 g aes
  aes4 4 4 % C
  aes2 8. 16
  aes4 des bes
  bes4 aes bes
  aes2.~
  aes2 r4
  g2 8. 16 % D
  g2 aes8. g16
  aes2 8. 16
  aes2 ees'8. 16
  ees4 4 bes
  d4 c d % E
  ees2.~
  ees2 aes,8. bes16
  c4 b c
  aes2 8. 16
  aes4 4 4 % F
  aes2 8. 16
  aes4 des bes
  bes4 aes bes
  aes2.~
  aes2
}

bass= \relative {
  aes,8. 16
  aes4 4 4
  aes4 bes c
  des4 4 f
  aes2 8. 16
  f4 4 4 % B
  bes,4 4 4
  ees2.~
  ees2 8. 16
  ees4 4 4
  aes,4 bes c
  des4 4 f % C
  aes2 8. 16
  des,4 bes bes
  ees4 4 4
  aes,2.~
  aes2 r4
  ees'2 8. 16 % D
  ees2 c8. ees16
  aes2 8. 16
  as2 8. 16
  bes4 4 4
  bes4 4 4 % E
  ees,2.~
  ees2 aes8. 16
  aes4 4 4
  aes2 c,8. 16
  des4 4 4 % F
  aes2 8. 16
  des4 bes bes
  ees4 4 4
  aes,2.~
  aes2
}

chorus = \lyricmode {
  Room at the cross, there is room at the cross,
  And a wel -- come that all may re -- ceive; __
  There is room at the cross of the Cru -- ci -- fied One,
  And re -- demp -- tion for all who be -- lieve. __
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Look a -- way to the cross of the Cru -- ci -- fied One,
  Where He pur -- chased sal -- va -- tion for you; __
  When He laid down His life, and com -- ple -- ted the work
  That the Fa -- ther had sent Him to do. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Look a -- way to the cross of the Cru -- ci -- fied One,
  To the cross where He suf -- fer'd and bled; __
  And to -- day He in -- vites you to come if you will,
  And be cleansed in the blood that He shed. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Look a -- way to the cross of the Cru -- ci -- fied One,
  Where the wine -- press a -- lone He hath trod; __
  Where He cried in His an -- guish, "\"'Tis" fin -- ish'd, 'tis "done!\""
  And com -- mend -- ed His spi -- rit to God. __
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  There is life at the cross of the Cru -- ci -- fied One,
  Anjd its hope is a -- bid -- ing and sure; __
  For the rap -- ture that flows from the love He be -- stows
  Shall for ev -- er and ev -- er en -- dure. __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Look " a "way " "to " "the " "cross " "of " "the " Cru ci "fied " "One, "
  "\nWhere " "He " pur "chased " sal va "tion " "for " "you; " 
  "\nWhen " "He " "laid " "down " "His " "life, " "and " com ple "ted " "the " "work "
  "\nThat " "the " Fa "ther " "had " "sent " "Him " "to " "do. " 
  "\nRoom " "at " "the " "cross, " "there " "is " "room " "at " "the " "cross, "
  "\nAnd " "a " wel "come " "that " "all " "may " re "ceive; " 
  "\nThere " "is " "room " "at " "the " "cross " "of " "the " Cru ci "fied " "One, "
  "\nAnd " re demp "tion " "for " "all " "who " be "lieve. " 

  \set stanza = "2."
  "\nLook " a "way " "to " "the " "cross " "of " "the " Cru ci "fied " "One, "
  "\nTo " "the " "cross " "where " "He " suf "fer'd " "and " "bled; " 
  "\nAnd " to "day " "He " in "vites " "you " "to " "come " "if " "you " "will, "
  "\nAnd " "be " "cleansed " "in " "the " "blood " "that " "He " "shed. " 
  "\nRoom " "at " "the " "cross, " "there " "is " "room " "at " "the " "cross, "
  "\nAnd " "a " wel "come " "that " "all " "may " re "ceive; " 
  "\nThere " "is " "room " "at " "the " "cross " "of " "the " Cru ci "fied " "One, "
  "\nAnd " re demp "tion " "for " "all " "who " be "lieve. " 

  \set stanza = "3."
  "\nLook " a "way " "to " "the " "cross " "of " "the " Cru ci "fied " "One, "
  "\nWhere " "the " wine "press " a "lone " "He " "hath " "trod; " 
  "\nWhere " "He " "cried " "in " "His " an "guish, " "\"'Tis " fin "ish'd, " "'tis " "done!\" "
  "\nAnd " com mend "ed " "His " spi "rit " "to " "God. " 
  "\nRoom " "at " "the " "cross, " "there " "is " "room " "at " "the " "cross, "
  "\nAnd " "a " wel "come " "that " "all " "may " re "ceive; " 
  "\nThere " "is " "room " "at " "the " "cross " "of " "the " Cru ci "fied " "One, "
  "\nAnd " re demp "tion " "for " "all " "who " be "lieve. " 

  \set stanza = "4."
  "\nThere " "is " "life " "at " "the " "cross " "of " "the " Cru ci "fied " "One, "
  "\nAnjd " "its " "hope " "is " a bid "ing " "and " "sure; " 
  "\nFor " "the " rap "ture " "that " "flows " "from " "the " "love " "He " be "stows "
  "\nShall " "for " ev "er " "and " ev "er " en "dure. " 
  "\nRoom " "at " "the " "cross, " "there " "is " "room " "at " "the " "cross, "
  "\nAnd " "a " wel "come " "that " "all " "may " re "ceive; " 
  "\nThere " "is " "room " "at " "the " "cross " "of " "the " Cru ci "fied " "One, "
  "\nAnd " re demp "tion " "for " "all " "who " be "lieve. " 
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
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
                                  % Soprano staff
          \new Staff = soprano
          <<
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % alto staff
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
      >>
    >>
    \midi {}
  }
}
