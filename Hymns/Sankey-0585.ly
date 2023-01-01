\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O jesus Christ, grow Thou in me."
  subtitle    = "Sankey No. 585"
%  subsubtitle = "Sankey 880 No. 439"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Isaac Smith."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "J. C. Lavater" "(tr. Mrs. E. L. Smith)."}
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "Abridge."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*6 s2
  \textMark \markup { \box \bold "B" } s4 s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  ees'4 | bes'2 ees4 | ees(d) c | bes(aes) g | g(f) g | c2 bes4 | 2 a4 | bes2 \bar "|" \break
  bes4 | g(aes) c | bes2 4 | c(d) ees | ees(d) bes | ees(g,) bes | aes(g) f | ees2
}

alto = \relative {
  \autoBeamOff
  ees'4 | 2 4 | g(f) f | g(f) ees | ees(d) ees | 2 f4 | g2 f4 | 2 
  d4 | ees2 d4 | ees2 4 | ees(a) g | g(f) d | ees2 4 | 2 d4 | ees2 
}

tenor = \relative {
  \autoBeamOff
  g4 | 2 bes4 | 2 d4 | ees(bes) bes | 2 4 | ees2 d4 | c2 4 | d2
  bes4 | 4(aes) aes | bes2 g4 | aes2 bes4 | 2 4 | 2 4 | c(bes) aes | g2
}

bass = \relative {
  \autoBeamOff
  ees4 | 2 g4 | bes2 aes4 | g(d) ees | bes2 ees4 | c2 d4 | ees2 f4 | bes,2
  bes4 | ees(f) aes | g2 ees4 | aes(f) ees | bes2 aes'4 | g(ees) g | aes(bes) bes, | ees2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  O Je -- sus Christ, grow Thou in me,
  And all things else re -- cede!
  My heart be dai -- ly near -- er Thee,
  From sin be dai -- ly freed.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Each day let Thy sup -- port -- ing might
  My weak -- ness still em -- brace;
  My dark -- ness van -- ish in Thy light,
  Thy life my death ef -- face.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In Thy bright beams which on me fall
  Fade ev -- 'ry e -- vil thought;
  That I am no -- thing, Thou art all,
  I would be dai -- ly taught.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  More of Thy glo -- ry let me see,
  Thou Ho -- ly, Wise, and True!
  I would Thy liv -- ing im -- age be,
  In joy and sor -- row too.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Fill me with glad -- ness from a -- bove,
  Hold me by strength di -- vine:
  Lord, let the glow of Thy great love
  Through my whole be -- ing shine.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Make this poor self grow less and less,
  Be Thou my life and aim;
  Oh, make me dai -- ly through Thy grace
  More meet to bear Thy name!
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " Je "sus " "Christ, " "grow " "Thou " "in " "me, "
  "\nAnd " "all " "things " "else " re "cede! "
  "\nMy " "heart " "be " dai "ly " near "er " "Thee, "
  "\nFrom " "sin " "be " dai "ly " "freed.\n"

  \set stanza = "2."
  "\nEach " "day " "let " "Thy " sup port "ing " "might "
  "\nMy " weak "ness " "still " em "brace; "
  "\nMy " dark "ness " van "ish " "in " "Thy " "light, "
  "\nThy " "life " "my " "death " ef "face.\n"

  \set stanza = "3."
  "\nIn " "Thy " "bright " "beams " "which " "on " "me " "fall "
  "\nFade " ev "'ry " e "vil " "thought; "
  "\nThat " "I " "am " no "thing, " "Thou " "art " "all, "
  "\nI " "would " "be " dai "ly " "taught.\n"

  \set stanza = "4."
  "\nMore " "of " "Thy " glo "ry " "let " "me " "see, "
  "\nThou " Ho "ly, " "Wise, " "and " "True! "
  "\nI " "would " "Thy " liv "ing " im "age " "be, "
  "\nIn " "joy " "and " sor "row " "too.\n"

  \set stanza = "5."
  "\nFill " "me " "with " glad "ness " "from " a "bove, "
  "\nHold " "me " "by " "strength " di "vine: "
  "\nLord, " "let " "the " "glow " "of " "Thy " "great " "love "
  "\nThrough " "my " "whole " be "ing " "shine.\n"

  \set stanza = "6."
  "\nMake " "this " "poor " "self " "grow " "less " "and " "less, "
  "\nBe " "Thou " "my " "life " "and " "aim; "
  "\nOh, " "make " "me " dai "ly " "through " "Thy " "grace "
  "\nMore " "meet " "to " "bear " "Thy " "name! "
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      #(layout-set-staff-size 19)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
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
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
