\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "How Pleased and Blest was I."
  subtitle    = "Sankey No. 271"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Crusader's Melody."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D.D."
  meter       = \markup\smallCaps "6.6.8.6.6.8."
  piece       = \markup\smallCaps "Ascalon"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*6
  \mark \markup { \box "C" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'2^\markup\italic Quickly. 4 4
  g4 e f2
  a2 4 4
  bes4 g a2
  c2 f4 d
  c2 bes4(a) % B
  bes2 a
  g1
  c2 d4 c
  c4 a bes2
  bes2 c4 bes
  bes4 g a a % C
  a2 2
  c2. bes4
  a2 g
  f1
}

alto = \relative {
  \autoBeamOff
  c'2 d4 4
  d4 c4 2
  c2 f4 4
  g4 e f2
  f2 4 4
  f2 e4(f) % B
  g2 f
  e1
  e2 d4 fis
  g4 d4 2
  d2 c4 e
  f4 c4 4 4 % C
  c2 f4(g)
  a4(f e) d
  c4(f) e2
  f1
}

tenor = \relative {
  \autoBeamOff
  a2 4 4
  g4 4 a2
  a2 d4 4
  d4 c c2
  a2 c4 bes
  c2 2 % B
  c2 2
  c1
  c2 a4 4
  g4 c bes2
  bes2 g4 4
  f4 bes a a % C
  a2 4(g)
  f2. 4
  f4(a) c(bes)
  a1
}

bass = \relative {
  \autoBeamOff
  f2 d4 4
  bes4 c f2
  f2 d4 4
  bes4 c f2
  f2 a4 bes
  a2 g4(f) % B
  e2 f
  c1
  a'2 fis4 d
  e4 fis g2
  g2 e4 c
  bes4 c d d % C
  f4(e) d2
  a2 bes
  c2 2
  f1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  How pleased and blest was I
  To hear the peo -- ple cry:
  Come let us seek our God to -- day!
  Yes, with a cheer -- ful seal
  We haste to Zi -- on's hill.
  And there our vows __ and __ hon -- ours pay.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Zi -- on, thrice hap -- py place,
  A -- dorned with won -- drous grace,
  And walls of strength em -- brace thee round;
  In thee our tribes ap -- pear,
  To pray and praise and hear
  The as -- cred Gos -- pel's joy -- ful sound.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  There Da -- vid's great -- er Son
  Has fixed His roy -- al throne—
  He sits for grace and judg -- ment there;
  He bids the saint be glad,
  He makes the sin -- ber sad,
  And hum -- ble souls __ re -- joice __ with fear.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  May peace at -- tend thy gate,
  And joy with -- in thee wait
  To bless the soul of ev -- 'ry guest;
  The man that seeks they peace,
  And wish -- es thine in -- crease,
  A thou -- sand bless -- ings on __ him rest.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  My tongue re -- peats her vows,
  Peace to this sa -- cred house!
  For there my friends and kin -- dred dwell;
  And since my glo -- rious God
  Makes thee His blest a -- bode,
  My soul shall ev -- er love thee well.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "How " "pleased " "and " "blest " "was " "I "
  "\nTo " "hear " "the " peo "ple " "cry: "
  "\nCome " "let " "us " "seek " "our " "God " to "day! "
  "\nYes, " "with " "a " cheer "ful " "seal "
  "\nWe " "haste " "to " Zi "on's " "hill. "
  "\nAnd " "there " "our " "vows "  "and "  hon "ours " "pay. "

  \set stanza = "2."
  "\nZi" "on, " "thrice " hap "py " "place, "
  "\nA" "dorned " "with " won "drous " "grace, "
  "\nAnd " "walls " "of " "strength " em "brace " "thee " "round; "
  "\nIn " "thee " "our " "tribes " ap "pear, "
  "\nTo " "pray " "and " "praise " "and " "hear "
  "\nThe " as "cred " Gos "pel's " joy "ful " "sound. "

  \set stanza = "3."
  "\nThere " Da "vid's " great "er " "Son "
  "\nHas " "fixed " "His " roy "al " "throne— "
  "\nHe " "sits " "for " "grace " "and " judg "ment " "there; "
  "\nHe " "bids " "the " "saint " "be " "glad, "
  "\nHe " "makes " "the " sin "ber " "sad, "
  "\nAnd " hum "ble " "souls "  re "joice "  "with " "fear. "

  \set stanza = "4."
  "\nMay " "peace " at "tend " "thy " "gate, "
  "\nAnd " "joy " with "in " "thee " "wait "
  "\nTo " "bless " "the " "soul " "of " ev "'ry " "guest; "
  "\nThe " "man " "that " "seeks " "they " "peace, "
  "\nAnd " wish "es " "thine " in "crease, "
  "\nA " thou "sand " bless "ings " "on "  "him " "rest. "

  \set stanza = "5."
  "\nMy " "tongue " re "peats " "her " "vows, "
  "\nPeace " "to " "this " sa "cred " "house! "
  "\nFor " "there " "my " "friends " "and " kin "dred " "dwell; "
  "\nAnd " "since " "my " glo "rious " "God "
  "\nMakes " "thee " "His " "blest " a "bode, "
  "\nMy " "soul " "shall " ev "er " "love " "thee " "well. "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
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
            \new NullVoice = "aligner" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
