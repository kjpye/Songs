\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hark, my Soul!"
  subtitle    = "Sankey No. 365"
  subsubtitle = "Sankey 880 No. 688"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. J. B. Dykes."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. Cowper."
  meter       = \markup\smallCaps "7.7.7.7."
  piece       = \markup\smallCaps "St. Bees."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
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
  aes'4 4 4. g8
  f4 g aes2
  bes4 4 c ees,
  f4 bes g2
  bes4 des c4. aes8 % B
  g4 bes aes2
  aes4 bes aes aes
  aes4. g8 aes2
}

alto = \relative {
  \autoBeamOff
  ees'4 4 des4. 8
  des4 4 c2
  ees4 4 4 4
  ees4 des bes2
  ees4 4 4. 8 % B
  des4 4 c2
  f4 4 ees4 4
  ees4. 8 2
}

tenor = \relative {
  \autoBeamOff
  c'4 4 bes4. 8
  aes4 bes c2
  bes4 des c aes
  aes4 f bes2
  bes4 4 c4. 8 % B
  bes4 g aes2
  des4 4 c bes8[aes]
  bes4. 8 c2
}

bass = \relative {
  \autoBeamOff
  aes4 4 ees4. 8
  ees4 4 aes2
  g4 4 aes c,
  des4 4 ees2
  g4 4 aes4. 8 % B
  ees4 4 f2
  des4 4 ees4 4
  ees4. 8 aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Hark, my soul! It is the Lord;
  'Tis thy Sa -- viour, hear His word:
  Je -- sus speaks, and speaks to thee—
  "\"Say," poor sin -- ner, lov'st thou Me?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"I" de -- liv -- er'd thee when bound,
  And, when bleed -- ing, heal'd thy wound;
  Sought thee wan -- d'ring, set thee right;
  Turn'd thy dark -- ness in -- to light.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Can" a wo -- man's ten -- der care
  Cease to -- wards the child she bare?
  Yes! she may for -- get -- ful be;
  Yet will I re -- mem -- ber thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"What" is an un -- chang -- ing love,
  High -- er than the heights a -- bove;
  Dep -- er than the depths be -- neath,
  Free and faith -- ful, strong as death.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  "\"Thou" shalt see My glo -- ry soon,
  When the work of grace is done;
  Part -- ner of My throne shalt be;—
  Say, poor sin -- ner, lov'st thou "Me?\""
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Lord, it is my chief com -- plaint:
  That my love is weak and faint;
  Yet I love Thee, and a -- dore;
  Oh, for grace to love Thee more!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hark, " "my " "soul! " "It " "is " "the " "Lord; "
  "\n'Tis " "thy " Sa "viour, " "hear " "His " "word: "
  "\nJe" "sus " "speaks, " "and " "speaks " "to " "thee— "
  "\n\"Say, " "poor " sin "ner, " "lov'st " "thou " "Me? "

  \set stanza = "2."
  "\n\"I " de liv "er'd " "thee " "when " "bound, "
  "\nAnd, " "when " bleed "ing, " "heal'd " "thy " "wound; "
  "\nSought " "thee " wan "d'ring, " "set " "thee " "right; "
  "\nTurn'd " "thy " dark "ness " in "to " "light. "

  \set stanza = "3."
  "\n\"Can " "a " wo "man's " ten "der " "care "
  "\nCease " to "wards " "the " "child " "she " "bare? "
  "\nYes! " "she " "may " for get "ful " "be; "
  "\nYet " "will " "I " re mem "ber " "thee. "

  \set stanza = "4."
  "\n\"What " "is " "an " un chang "ing " "love, "
  "\nHigh" "er " "than " "the " "heights " a "bove; "
  "\nDep" "er " "than " "the " "depths " be "neath, "
  "\nFree " "and " faith "ful, " "strong " "as " "death. "

  \set stanza = "5."
  "\n\"Thou " "shalt " "see " "My " glo "ry " "soon, "
  "\nWhen " "the " "work " "of " "grace " "is " "done; "
  "\nPart" "ner " "of " "My " "throne " "shalt " "be;— "
  "\nSay, " "poor " sin "ner, " "lov'st " "thou " "Me?\" "

  \set stanza = "6."
  "\nLord, " "it " "is " "my " "chief " com "plaint: "
  "\nThat " "my " "love " "is " "weak " "and " "faint; "
  "\nYet " "I " "love " "Thee, " "and " a "dore; "
  "\nOh, " "for " "grace " "to " "love " "Thee " "more! "
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
