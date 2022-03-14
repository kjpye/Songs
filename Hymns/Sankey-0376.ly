\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, ye Sinners."
  subtitle    = "Sankey No. 376"
  subsubtitle = "Sankey 880 No. 130"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. J. Rousseau"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Hart."
  meter       = \markup\smallCaps "8.7.8.7.4.7."
  piece       = \markup\smallCaps "Rousseau."

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
  \mark \markup { \box "A" } s1*3
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 8[g] f4 4
  g4 4 a8[g] f4
  c'4 8[bes] a4 4
  g8[f] g[a] f2 % B
  a4 8[bes] c4 4
  d4 4 c8[bes] a4
  a4 8[bes] c4 4 % C
  d4 4 c2
  a4 8[g] f4 4
  g4 4 a8[g] f4 % D
  c'4 8[bes] a4 4
  g8[f] g[a] f2
}

alto = \relative {
  \autoBeamOff
  f'4 4 4 4
  e4 4 f4 4
  f4 4 4 4
  g8[f] e4 f2 % B
  f4 4 4 4
  f4 4 4 4
  f4 4 4 4 % C
  f4 4 2
  f4 4 4 4
  e4 4 f f % D
  f4 4 4 4
  g8[f] e4 f2
}

tenor = \relative {
  \autoBeamOff
  c'4 8[bes] a4 4
  c4 4 8[bes] a4
  a4 8[g] f4 c'
  bes8[a] bes[c] a2 % B
  f4 8[g] a4 4
  ces4 4 a8[g] f4
  f4 8[g] a4 4 % C
  bes4 4 a2
  c4 8[bes] a4 4
  c4 4 8[bes] a4 % D
  a4 8[g] f4 c'
  bes8[a] bes[c] a2
}

bass = \relative {
  \autoBeamOff
  f4 4 4 4
  c4 4 f f
  f4 4 4 4
  c4 4 f2 % B
  f4 8[g] f4 4
  bes,4 d f f
  f4 4 4 4 % C
  bes,4 d f2
  f4 4 4 4
  c4 4 f f % D
  f4 4 4 4
  c4 4 f2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, ye sin -- ners, poor and need -- y,
  Weak and wound -- ed. sick and sore;
  Je -- sus rea -- dy stands to save you,
  Full of pi -- ty, love, and  power:
  He is a -- ble, He is a -- ble,
  He is will -- ing: doubt no more.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Now, ye need -- y, come and wel -- come;
  God's free boun -- ty glo -- ri -- fy:
  True be -- lief and true re -- pent -- ance—
  Ev -- 'ry grace that brings you nigh—
  With -- out mo -- ney,
  With -- out mo -- ney,
  Come to Je -- sus Christ and buy.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Let not con -- science make you lin -- ger,
  Nor of fit -- ness fond -- ly dream;
  All the fit -- ness He re -- quir -- eth
  Is to feel you need of Him:
  This He gives you,
  This He gives you—
  'Tis the Spi -- rit's ri -- sing beam.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come, ye wea -- ry, hea -- vy la -- den,
  Bruised and ru -- ined by the Fall;
  If you tar -- ry till you're bet -- ter,
  You will nev -- er come at allL:
  Not the righ -- teous,
  Not the righ -- teous—
  Sin -- ners, Je -- sus came to call.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  View Him pros -- trate in the gar -- den,
  On the ground your Mak -- er lies!
  On the blood -- y tree be -- hold Him,
  hear Him cry be -- fore He dies,
  \markup\italic "\"It" \markup\italic is \markup\italic fi -- \markup\italic "nished!\""
  \markup\italic "\"It" \markup\italic is \markup\italic fi -- \markup\italic "nished!\""
  Sin -- ner, will not this suf -- fice?
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Lo, "th' in" -- car -- nate God, as -- cend -- ed,
  Pleads the me -- rit of His blood;
  Ven -- ture on Him, ven -- ture who -- ly,
  Let no oth -- er trust in -- trude;
  None but Je -- sus
  None but Je -- sus
  Can do help -- less sin -- ners good.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "ye " sin "ners, " "poor " "and " need "y, "
  "\nWeak " "and " wound "ed. " "sick " "and " "sore; "
  "\nJe" "sus " rea "dy " "stands " "to " "save " "you, "
  "\nFull " "of " pi "ty, " "love, " "and "  "power: "
  "\nHe " "is " a "ble, " "He " "is " a "ble, "
  "\nHe " "is " will "ing: " "doubt " "no " "more. "

  \set stanza = "2."
  "\nNow, " "ye " need "y, " "come " "and " wel "come; "
  "\nGod's " "free " boun "ty " glo ri "fy: "
  "\nTrue " be "lief " "and " "true " re pent "ance— "
  "\nEv" "'ry " "grace " "that " "brings " "you " "nigh— "
  "\nWith" "out " mo "ney, "
  "\nWith" "out " mo "ney, "
  "\nCome " "to " Je "sus " "Christ " "and " "buy. "

  \set stanza = "3."
  "\nLet " "not " con "science " "make " "you " lin "ger, "
  "\nNor " "of " fit "ness " fond "ly " "dream; "
  "\nAll " "the " fit "ness " "He " re quir "eth "
  "\nIs " "to " "feel " "you " "need " "of " "Him: "
  "\nThis " "He " "gives " "you, "
  "\nThis " "He " "gives " "you— "
  "\n'Tis " "the " Spi "rit's " ri "sing " "beam. "

  \set stanza = "4."
  "\nCome, " "ye " wea "ry, " hea "vy " la "den, "
  "\nBruised " "and " ru "ined " "by " "the " "Fall; "
  "\nIf " "you " tar "ry " "till " "you're " bet "ter, "
  "\nYou " "will " nev "er " "come " "at " "allL: "
  "\nNot " "the " righ "teous, "
  "\nNot " "the " righ "teous— "
  "\nSin" "ners, " Je "sus " "came " "to " "call. "

  \set stanza = "5."
  "\nView " "Him " pros "trate " "in " "the " gar "den, "
  "\nOn " "the " "ground " "your " Mak "er " "lies! "
  "\nOn " "the " blood "y " "tree " be "hold " "Him, "
  "\nhear " "Him " "cry " be "fore " "He " "dies, "
  "\n\"It " "is " fi "nished!\" "
  "\n\"It " "is " fi "nished!\" "
  "\nSin" "ner, " "will " "not " "this " suf "fice? "

  \set stanza = "6."
  "\nLo, " "th' in" car "nate " "God, " as cend "ed, "
  "\nPleads " "the " me "rit " "of " "His " "blood; "
  "\nVen" "ture " "on " "Him, " ven "ture " who "ly, "
  "\nLet " "no " oth "er " "trust " in "trude; "
  "\nNone " "but " Je "sus "
  "\nNone " "but " Je "sus "
  "\nCan " "do " help "less " sin "ners " "good. "
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
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
      \pointAndClickOff
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
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
      \pointAndClickOff
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
    page-breaking = #ly:one-page-breaking
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
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
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
