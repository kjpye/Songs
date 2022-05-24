\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come to the Saviour now,"
  subtitle    = "Sankey No. 399"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "F. C. Maker."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. M. Wigner."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2 4 4
  g4. f8 4 g
  aes4 4 g f
  g1
  c2 4 4 % B
  c4. bes8 4 aes
  g4 4 f ees
  f1
  ees2 4 f % C
  g4. 8 4 aes
  bes4 4 aes g
  c1
  d2 c4 bes % D
  ees4. ees,8 4 f
  g4 4 aes d,
  ees1
  ees2^\< aes^\>
  g1\!
}

alto = \relative {
  \autoBeamOff
  ees'2 4 4
  ees4. d8 4 ees
  ees4 4 4 d
  ees1
  ees2 4 4 % B
  ees4. 8 4 f
  ees4 4 c c
  d1
  ees2 4 4 % C
  ees4. 8 4 d
  ees4 4 d ees
  ees1
  f2 d4 4 % D
  ees4. 8 4 4
  ees4 4 c bes
  bes1
  ees2^\< 2^\>
  ees1\!
}

tenor = \relative {
  \autoBeamOff
  bes2 4 4
  bes4. 8 4 4
  c4 4 bes bes
  bes1
  aes2 4 4 % B
  aes4. g8 4 bes
  bes4 4 a a
  bes1
  g2 4 aes % C
  bes4. 8 4 4
  bes4 4 4 4
  aes1
  bes2 4 4 % D
  bes4. 8 4 c
  bes4 g f aes
  g1
  c2\omit\< 2\omit\>
  bes1\!
}

bass = \relative {
  \autoBeamOff
  ees2 4 4
  ees4. bes8 4 ees
  aes,4 4 bes bes
  ees1
  aes,2 4 c % B
  ees4. 8 4 d
  ees4 4 f f
  bes,1
  ees2 4 4 % C
  ees4. 8 4 f
  g4 4 f ees
  aes,1
  bes'2 4 4 % D
  bes4. 8 4 c
  bes4 g f aes
  g1
  aes2\omit\< aes,\omit\>
  ees'1\!
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
  Come to the Sa -- viour now!
  He gen -- tly call -- eth thee:
  In true re -- pen -- tance bow,
  Be -- fore Him bend the knee:
  He wait -- eth to be -- stow
  Sal -- va -- tion, peace, and love,
  True joy on earth be -- low,
  A home in heaven a -- bove.
  Come, come, come.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come to the Sa -- viour now!
  Gaze on that cleans -- ing tide—
  Wa -- ter and blood that flow
  Forth from His wound -- ed side.
  Hark to the suf -- f'ring One:
  "\"'Tis" fin -- "ished!\"" now He cries:
  Re -- demp -- tion's work is done,
  Then bows His head and dies.
  Come, come, come.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come to the Sa -- viour now!
  He suf -- fered all for thee:
  And in His mer -- its thou
  Hast an un -- fail -- ing plea:
  No vain ex -- cu -- ses frame,
  For feel -- ings do not stay:
  one who to Je -- sus came
  Were ev -- er sent a -- way.
  Come, come, come.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come to the Sa -- viour now!
  Ye who have wan -- dered far.
  Re -- new your sol -- emn vow,
  For His by right you are.
  Come, like poor wan -- dering sheep
  Re -- turn -- ing to His fold—
  His arm will safe -- ly keep,
  His love will ne'er grow cold.
  Come, come, come.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Come to the Sa -- viour all!
  What -- e'er your bur -- dens be;
  Hear now His lov -- ing call—
  "\"Cast" all your care on "Me.\""
  Come, and for ev -- ery grief
  In Je -- sus you will find
  A sure and safe re -- lief,
  A lov -- ing Friend and kind.
  Come, come, come.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come " "to " "the " Sa "viour " "now! "
  "\nHe " gen "tly " call "eth " "thee: "
  "\nIn " "true " re pen "tance " "bow, "
  "\nBe" "fore " "Him " "bend " "the " "knee: "
  "\nHe " wait "eth " "to " be "stow "
  "\nSal" va "tion, " "peace, " "and " "love, "
  "\nTrue " "joy " "on " "earth " be "low, "
  "\nA " "home " "in " "heaven " a "bove. "
  "\nCome, " "come, " "come. "

  \set stanza = "2."
  "\nCome " "to " "the " Sa "viour " "now! "
  "\nGaze " "on " "that " cleans "ing " "tide— "
  "\nWa" "ter " "and " "blood " "that " "flow "
  "\nForth " "from " "His " wound "ed " "side. "
  "\nHark " "to " "the " suf "f'ring " "One: "
  "\n\"'Tis " fin "ished!\" " "now " "He " "cries: "
  "\nRe" demp "tion's " "work " "is " "done, "
  "\nThen " "bows " "His " "head " "and " "dies. "
  "\nCome, " "come, " "come. "

  \set stanza = "3."
  "\nCome " "to " "the " Sa "viour " "now! "
  "\nHe " suf "fered " "all " "for " "thee: "
  "\nAnd " "in " "His " mer "its " "thou "
  "\nHast " "an " un fail "ing " "plea: "
  "\nNo " "vain " ex cu "ses " "frame, "
  "\nFor " feel "ings " "do " "not " "stay: "
  "\none " "who " "to " Je "sus " "came "
  "\nWere " ev "er " "sent " a "way. "
  "\nCome, " "come, " "come. "

  \set stanza = "4."
  "\nCome " "to " "the " Sa "viour " "now! "
  "\nYe " "who " "have " wan "dered " "far. "
  "\nRe" "new " "your " sol "emn " "vow, "
  "\nFor " "His " "by " "right " "you " "are. "
  "\nCome, " "like " "poor " wan "dering " "sheep "
  "\nRe" turn "ing " "to " "His " "fold— "
  "\nHis " "arm " "will " safe "ly " "keep, "
  "\nHis " "love " "will " "ne'er " "grow " "cold. "
  "\nCome, " "come, " "come. "

  \set stanza = "5."
  "\nCome " "to " "the " Sa "viour " "all! "
  "\nWhat" "e'er " "your " bur "dens " "be; "
  "\nHear " "now " "His " lov "ing " "call— "
  "\n\"Cast " "all " "your " "care " "on " "Me.\" "
  "\nCome, " "and " "for " ev "ery " "grief "
  "\nIn " Je "sus " "you " "will " "find "
  "\nA " "sure " "and " "safe " re "lief, "
  "\nA " lov "ing " "Friend " "and " "kind. "
  "\nCome, " "come, " "come. "
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
