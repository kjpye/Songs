\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, for all Things are Ready!"
  subtitle    = "Sankey No. 405"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. H. Edmunds."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*4
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*4 s2
  \mark \markup { \box "D" } s4 s2.*4
  \mark \markup { \box "E" }    s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8. 16
  f4 4 g
  a4 4 f8. 16
  a4 4 bes
  c2 8. 16
  d4 bes d % B
  c4 a c8. 16
  c4 bes a
  g2 c,8. 16
  f4 4 g
  a4 4 f8. 16 % C
  a4 4 bes
  c2 8. 16
  d4 bes d
  c4 a \bar "|" \break c8. 16
  bes4 a g % D
  f2 \bar "|" c'8.^\markup\smallCaps Chorus. 16
  c4 a f
  f4 e bes'8. 16
  bes4 a g % E
  a2 c8. 16
  d4 bes d
  c4 a c
  bes4 a g
  f2
}

alto = \relative {
  \autoBeamOff
  c'8. 16
  c4 4 4
  f4 4 c8. 16
  f4 4 e
  f2 8. 16
  f4 4 4 % B
  f4 4 8. 16
  f4 e f
  e2 c8. 16
  c4 4 4
  f4 4 c8. 16 % C
  f4 4 e
  f2 8. 16
  f4 4 4
  f4 4 8. 16
  e4 4 4 % D
  c2 f8. 16
  f4 4 c
  c4 4 e8. 16
  e4 4 4 % E
  f2 8. 16
  f4 4 4
  f4 4 4
  e4 4 4
  c2
}

tenor = \relative {
  \autoBeamOff
  a8. 16
  a4 4 bes
  c4 4 a8. 16
  c4 4 4
  c2 a8. 16
  bes4 d bes % B
  a4 c a8. 16
  c4 4 4
  c2 a8. 16
  a4 4 bes
  c4 4 a8. 16 % C
  c4 4 4
  c2 a8. 16
  bes4 d bes
  a4 c a8. 16
  g4 c bes % D
  a2 8. 16
  a4 c a
  bes4 4 g8. 16
  g4 c c % E
  c2 a8. 16
  bes4 4 4
  a4 c a
  c4 4 bes
  a2
}

bass = \relative {
  \autoBeamOff
  f8. 16
  f4 4 4
  f4 4 8. 16
  f4 4 g
  a2 f8. 16
  bes,4 4 4 % B
  f'4 4 8. 16
  a4 g f
  c2 f8. 16
  f4 4 4
  f4 4 8. 16 % C
  f4 4 g
  a2 f8. 16
  bes,4 4 4
  f'4 4 8. 16
  c4 4 4 % D
  f2 8. 16
  f4 4 4
  g4 4 c,8. 16
  c4 4 4 % E
  f2 8. 16
  bes,4 d bes
  f'4 4 4
  g4 c, c
  <f, f'>2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, what ful -- ness in Je -- sus!
  Oh, what glad -- ness to know,
  Tho' our sins be as scar -- let,
  He'll make them as snow.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, for all things are rea -- dy!
  'Tis a ban -- quet of love;
  Here's a free in -- vi -- ta -- tion
  From the Mas -- ter a -- bove:
  It is writ -- ten in crim -- son,
  Drawn from Cal -- va -- ry's flood,
  From the won -- der -- ful foun -- tain
  Of the soul -- clean -- sing blood.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come, for all things are rea -- dy!
  Hea -- ven's boun -- ty is spread;
  Take the cup of sal -- va -- tion,
  Take the life- giv -- ing bread:
  Come, tho' poor and un -- wor -- thy:
  Come, tho' sin -- ful and weak;
  'Tis the hun -- gry and thirs -- ty
  Whom the Mas -- ter doth seek.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come, for all things are rea -- dy!
  Here's a robe, snow -- y white,
  Fair -- er far than the rai -- ment
  Of the an -- gels of light:
  For the beau -- ty of Je -- sus
  Will thy cov -- er -- ing be;
  On -- ly ask for this gar -- ment,
  "'T will" be giv -- en to thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "for " "all " "things " "are " rea "dy! "
  "\n'Tis " "a " ban "quet " "of " "love; "
  "\nHere's " "a " "free " in vi ta "tion "
  "\nFrom " "the " Mas "ter " a "bove: "
  "\nIt " "is " writ "ten " "in " crim "son, "
  "\nDrawn " "from " Cal va "ry's " "flood, "
  "\nFrom " "the " won der "ful " foun "tain "
  "\nOf " "the " soul clean "sing " "blood. "
  "\nOh, " "what " ful "ness " "in " Je "sus! "
  "\nOh, " "what " glad "ness " "to " "know, "
  "\nTho' " "our " "sins " "be " "as " scar "let, "
  "\nHe'll " "make " "them " "as " "snow. "

  \set stanza = "2."
  "\nCome, " "for " "all " "things " "are " rea "dy! "
  "\nHea" "ven's " boun "ty " "is " "spread; "
  "\nTake " "the " "cup " "of " sal va "tion, "
  "\nTake " "the " "life-" giv "ing " "bread: "
  "\nCome, " "tho' " "poor " "and " un wor "thy: "
  "\nCome, " "tho' " sin "ful " "and " "weak; "
  "\n'Tis " "the " hun "gry " "and " thirs "ty "
  "\nWhom " "the " Mas "ter " "doth " "seek. "
  "\nOh, " "what " ful "ness " "in " Je "sus! "
  "\nOh, " "what " glad "ness " "to " "know, "
  "\nTho' " "our " "sins " "be " "as " scar "let, "
  "\nHe'll " "make " "them " "as " "snow. "

  \set stanza = "3."
  "\nCome, " "for " "all " "things " "are " rea "dy! "
  "\nHere's " "a " "robe, " snow "y " "white, "
  "\nFair" "er " "far " "than " "the " rai "ment "
  "\nOf " "the " an "gels " "of " "light: "
  "\nFor " "the " beau "ty " "of " Je "sus "
  "\nWill " "thy " cov er "ing " "be; "
  "\nOn" "ly " "ask " "for " "this " gar "ment, "
  "\n'T will " "be " giv "en " "to " "thee. "
  "\nOh, " "what " ful "ness " "in " Je "sus! "
  "\nOh, " "what " glad "ness " "to " "know, "
  "\nTho' " "our " "sins " "be " "as " scar "let, "
  "\nHe'll " "make " "them " "as " "snow. "
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
