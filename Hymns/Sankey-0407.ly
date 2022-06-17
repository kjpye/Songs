\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Thou Weary!"
  subtitle    = "Sankey No. 407"
  subsubtitle = "Sankey 880 No. 394"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. C. Morgan."
  meter       = \markup\smallCaps "8.5.8.3."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*8
  \mark \markup { \box "B" } s1*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'2 2 2 c'
  bes2 aes f aes
  ees2 c' bes bes
  bes1. r2
  c2 2 2 bes % B
  aes2 2 2 f
  ees1 f2(g)
  aes1. r2
}

alto = \relative {
  \autoBeamOff
  c'2 des ees ees
  des2 c des f
  ees2 2 2 d
  ees1. r2
  e2 2 2 g % B
  f2 ges f d
  bes2(ees) d(des)
  c1. r2
}

tenor = \relative {
  \autoBeamOff
  aes2 g aes aes
  g2 aes aes aes
  aes2 2 g aes
  g1. r2
  g2 2 2 c % B
  c2 2 des aes
  g1 aes2(bes)
  aes1. r2
}

bass = \relative {
  \autoBeamOff
  aes,2 bes c aes
  ees'2 f des des
  c2 aes bes bes ees1. r2
  c2 2 2 e % B
  f2 ees des des
  ees1 1
  aes,1. r2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, thou wea -- ry! Je -- sus calls thee
  To His wound -- ed side,
  "\"Come" to "Me,\"" saith He, "\"and" ev -- er
  Safe a -- "bide.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Seek" -- ing Je -- sus? Je -- sus seeks thee—
  Wants thee as thou art;
  He is knock -- ing, e -- ver knock -- ing
  At thy heart.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  If thou let Him, He will save thee—
  Make thee all His own;
  Guide thee; keep thee; take thee, dy -- ing,
  To His throne.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Wilt thou still re -- fuse His of -- fer?
  Wilt thou say Him nay?
  Wilt thou let Him, grieved, re -- ject -- ed,
  Go a -- way?
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Dost thou feel thy life is wea -- ry?
  Is thy soul dis -- trust?
  Take His of -- fer, wait no long -- er:
  Be at rest!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "thou " wea "ry! " Je "sus " "calls " "thee "
  "\nTo " "His " wound "ed " "side, "
  "\n\"Come " "to " "Me,\" " "saith " "He, " "\"and " ev "er "
  "\nSafe " a "bide.\" "

  \set stanza = "2."
  "\n\"Seek" "ing " Je "sus? " Je "sus " "seeks " "thee— "
  "\nWants " "thee " "as " "thou " "art; "
  "\nHe " "is " knock "ing, " e "ver " knock "ing "
  "\nAt " "thy " "heart. "

  \set stanza = "3."
  "\nIf " "thou " "let " "Him, " "He " "will " "save " "thee— "
  "\nMake " "thee " "all " "His " "own; "
  "\nGuide " "thee; " "keep " "thee; " "take " "thee, " dy "ing, "
  "\nTo " "His " "throne. "

  \set stanza = "4."
  "\nWilt " "thou " "still " re "fuse " "His " of "fer? "
  "\nWilt " "thou " "say " "Him " "nay? "
  "\nWilt " "thou " "let " "Him, " "grieved, " re ject "ed, "
  "\nGo " a "way? "

  \set stanza = "5."
  "\nDost " "thou " "feel " "thy " "life " "is " wea "ry? "
  "\nIs " "thy " "soul " dis "trust? "
  "\nTake " "His " of "fer, " "wait " "no " long "er: "
  "\nBe " "at " "rest! "
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
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
