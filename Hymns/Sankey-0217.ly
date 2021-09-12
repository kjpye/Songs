\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jerusalem the Golden!"
  subtitle    = "Sankey No. 217"
  subsubtitle = "Sankey 880 No. 612"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup {\smallCaps "Alex. Ewing," "by per."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup {\smallCaps "Bernard of Morlaix" "(tr." \smallCaps "J. M. Neale" "),"}
  meter       = \markup\smallCaps "7.6."
  piece       = \markup\smallCaps "Ewing."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4
  e4 d g fis
  e2 d4 fis
  a4 d cis ais
  b2. \bar "|" \break 4
  a4 fis fis e % B
  d2 e4 fis
  fis4 4 e d
  e2. \bar "|" \break 4
  g4 fis b cis % C
  d2 e4 a,
  fis'4. 8 e4 d
  cis2. \bar "|" \break b4
  a4 fis fis e % D
  d2 e4 fis
  fis4 4 e4. d8
  d2.
}

alto = \relative {
  \autoBeamOff
  a4
  a4 4 d d
  d4(cis) d d
  d4 fis fis e
  d2. <d g>4
  fis4 d cis ais % B
  b2 cis4 d
  d4 d b b
  cis2. 4
  d4 4 4 fis % C
  fis2 a4 4
  a4 4 b g
  a2. e4
  a4 d, cis ais % D
  b2 cis4 d
  d4 d cis4. d8
  d2.
}

tenor = \relative {
  \autoBeamOff
  fis4
  g4 fis b a
  g2 fis4 a
  a4 4 ais cis
  b2. d4
  d4 a ais fis % B
  fis2 a4 4
  a4 4 g fis
  a2. 4
  b4 a b ais % C
  b2 cis4 4
  d4 4 b e
  e2. cis4
  d4 a ais fis % D
  fis2 a4 4
  a4 4 g4. fis8
  fis2.
}

bass = \relative {
  \autoBeamOff
  d4
  d4 4 4 4
  a2 d4 4
  fis4 d fis fis
  b,2. g4
  d'4 4 fis fis, % B
  b2 a4 d
  d4 4 g, b
  a2. 4
  g4 d' g fis % C
  b2 a4 4
  d,4 4 g e
  a2. g4
  fis4 d fis fis, % D
  b2 a4 d
  d4 fis, a4. d8
  d2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- ru -- sa -- lem, the gold -- en!
  With milk and hon -- ey blest;
  Be -- neath thy con -- tem -- pla -- tion
  Sink heart and voice op -- prest.
  I know not, oh, I know not
  What ho -- ly joys are there;
  What ra -- dian -- cy of glo -- ry,
  What bliss be -- yond com -- pare.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  They stand, those halls of Zi -- on,
  All ju -- bi -- lant with song,
  And bright with mant an an -- gel,
  And all the mar -- tyr throng.
  There is the throne of Da -- vid;
  And there, from toil re -- leased,
  The shout of them that tri -- umph,
  The song of them that feast.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  And they who, with their Lea -- der,
  Have con -- quered in the fight,
  For ev -- er and for ev -- er
  Are clad in robes of white.
  O land that seest no sor -- row!
  O state that fear'st no strife!
  O roy -- al land of flow -- ers!
  O realm and home of life!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O sweet and bles -- sed coun -- try!
  The home of God's e -- lect!
  O sweet and bles -- sed coun -- try
  That eag -- er hearts ex -- pect!
  Je -- sus, in mer -- cy bring us
  To that dear land of rest;
  Who art, with God the Fa -- ther,
  And Spi -- rit, ev -- er blest!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" ru sa "lem, " "the " gold "en! "
  "\nWith " "milk " "and " hon "ey " "blest; "
  "\nBe" "neath " "thy " con tem pla "tion "
  "\nSink " "heart " "and " "voice " op "prest. "
  "\nI " "know " "not, " "oh, " "I " "know " "not "
  "\nWhat " ho "ly " "joys " "are " "there; "
  "\nWhat " ra dian "cy " "of " glo "ry, "
  "\nWhat " "bliss " be "yond " com "pare. "

  \set stanza = "2."
  "\nThey " "stand, " "those " "halls " "of " Zi "on, "
  "\nAll " ju bi "lant " "with " "song, "
  "\nAnd " "bright " "with " "mant " "an " an "gel, "
  "\nAnd " "all " "the " mar "tyr " "throng. "
  "\nThere " "is " "the " "throne " "of " Da "vid; "
  "\nAnd " "there, " "from " "toil " re "leased, "
  "\nThe " "shout " "of " "them " "that " tri "umph, "
  "\nThe " "song " "of " "them " "that " "feast. "

  \set stanza = "3."
  "\nAnd " "they " "who, " "with " "their " Lea "der, "
  "\nHave " con "quered " "in " "the " "fight, "
  "\nFor " ev "er " "and " "for " ev "er "
  "\nAre " "clad " "in " "robes " "of " "white. "
  "\nO " "land " "that " "seest " "no " sor "row! "
  "\nO " "state " "that " "fear'st " "no " "strife! "
  "\nO " roy "al " "land " "of " flow "ers! "
  "\nO " "realm " "and " "home " "of " "life! "

  \set stanza = "4."
  "\nO " "sweet " "and " bles "sed " coun "try! "
  "\nThe " "home " "of " "God's " e "lect! "
  "\nO " "sweet " "and " bles "sed " coun "try "
  "\nThat " eag "er " "hearts " ex "pect! "
  "\nJe" "sus, " "in " mer "cy " "bring " "us "
  "\nTo " "that " "dear " "land " "of " "rest; "
  "\nWho " "art, " "with " "God " "the " Fa "ther, "
  "\nAnd " Spi "rit, " ev "er " "blest! "
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
                                % bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
