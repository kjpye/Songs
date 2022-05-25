\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Art Thou Weary?"
  subtitle    = "Sankey No. 401"
  subsubtitle = "Sankey 880 No. 261"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Sir H. W. Baker."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{ Tr. \smallCaps "J. M. Neale."}
  meter       = \markup\smallCaps "8.5.8.3."
  piece       = \markup\smallCaps "Stephanos."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 4 4 a
  b4 d d c
  b4 4 a g
  a2. r4
  d,4 fis8[g] g4 fis % B
  g4 a8[b] c4 b
  a2 2
  g1
}

alto = \relative {
  \autoBeamOff
  d'4 4 4 4
  d4 4 g d
  d4 4 4 4
  d2. r4
  d4 4 4 4 % B
  d4 4 c d
  e2 d
  b1
}

tenor = \relative {
  \autoBeamOff
  g4 4 4 fis
  g4 a b a
  g4 b c b
  fis2. r4
  d'4 c b a % B
  b4 a g g
  g2 fis
  g1
}

bass = \relative {
  \autoBeamOff
  g,4 b d d
  g4 fis e fis
  g4 4 fis g
  d2. r4
  b'4 a g d % B
  g4 fis e d
  c2 d
  g,1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 7

wordsOne = \lyricmode {
  \set stanza = "1."
  Art thou wea -- ry? art thou lan -- guid?
  Art thou sore dis -- trest?
  "\"Come" to "Me.\"" saith One; "\"and" com -- ing,
  Be at "rest!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Hath He marks to lead me to Him,
  If He be my guide?
  "\"In" His feet and hands are wound- -- prints,
  And His "side.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Is there di -- a -- dem as Mon -- arch
  That His brow a -- dorns?
  "\"Yes," a crown in ve -- ry sure -- ty
  But of "thorns.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  If I find Him, if I fol -- low,
  What His guer -- don here?
  "\"Man" -- "y a" sor -- row, man -- "y a" la -- bour,
  Man -- "y a" "tear.\""
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  If I still hold close -- ly to Him,
  What hath He at ;ast?
  "\"Sor" -- row van -- quished, la -- bour end -- ed,
  Jor -- dan "passed.\""
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  If I ask Him to re -- ceive me,
  Will He say me nay?
  "\"Not" till earth, and not till hea -- ven,
  Pass a -- "way.\""
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  Find -- ing, fol -- lowing, keep -- ing, strug -- gling,
  Is He sure to bless?
  "\"Saints," A -- pos -- tles, Pro -- phets, Mar -- tyrs,
  Ans -- wer— "Yes!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Art " "thou " wea "ry? " "art " "thou " lan "guid? "
  "\nArt " "thou " "sore " dis "trest? "
  "\n\"Come " "to " "Me.\" " "saith " "One; " "\"and " com "ing, "
  "\nBe " "at " "rest!\" "

  \set stanza = "2."
  "\nHath " "He " "marks " "to " "lead " "me " "to " "Him, "
  "\nIf " "He " "be " "my " "guide? "
  "\n\"In " "His " "feet " "and " "hands " "are " wound- "prints, "
  "\nAnd " "His " "side.\" "

  \set stanza = "3."
  "\nIs " "there " di a "dem " "as " Mon "arch "
  "\nThat " "His " "brow " a "dorns? "
  "\n\"Yes, " "a " "crown " "in " ve "ry " sure "ty "
  "\nBut " "of " "thorns.\" "

  \set stanza = "4."
  "\nIf " "I " "find " "Him, " "if " "I " fol "low, "
  "\nWhat " "His " guer "don " "here? "
  "\n\"Man" "y a " sor "row, " man "y a " la "bour, "
  "\nMan" "y a " "tear.\" "

  \set stanza = "5."
  "\nIf " "I " "still " "hold " close "ly " "to " "Him, "
  "\nWhat " "hath " "He " "at " ";ast? "
  "\n\"Sor" "row " van "quished, " la "bour " end "ed, "
  "\nJor" "dan " "passed.\" "

  \set stanza = "6."
  "\nIf " "I " "ask " "Him " "to " re "ceive " "me, "
  "\nWill " "He " "say " "me " "nay? "
  "\n\"Not " "till " "earth, " "and " "not " "till " hea "ven, "
  "\nPass " a "way.\" "

  \set stanza = "7."
  "\nFind" "ing, " fol "lowing, " keep "ing, " strug "gling, "
  "\nIs " "He " "sure " "to " "bless? "
  "\n\"Saints, " A pos "tles, " Pro "phets, " Mar "tyrs, "
  "\nAns" "wer— " "Yes!\" "
}

wordsMidiMen = \lyricmode {
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
            \addlyrics \wordsMidiMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
