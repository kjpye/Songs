\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Let the Saviour in!"
  subtitle    = "Sankey No. 363"
  subsubtitle = "N. H. No. 114"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. O. Excell."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "I. B. Atchison."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key des \major
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
  f'8 ges
  aes4 f' des bes
  aes2. r4
  aes2. bes4
  aes2. \bar "|" \break f8 ges
  aes4 f'4 des4 bes % B
  aes2. r4
  aes2. bes8[c]
  des2.\fermata \bar "|" \break aes8 8
  bes4 des c bes % C
  aes2. f8 ges
  aes4 des c des
  ees2. \bar "|" \break f8 ees
  des4 aes bes bes % D
  aes2. r4
  aes2. bes8[c]
  des2.^\markup\italic rit.
}

alto = \relative {
  \autoBeamOff
  des'8 ees
  f4 aes aes ges
  f2. r4
  ees8 8 c des ees4 r
  f8 8 des ees f4 des8 ees
  f4 aes aes ges % B
  f2. r4
  ees8 8 c des ees4 r
  c8 e ges ges f4\fermata 8 8
  ges4 bes aes ges % C
  f2. des8 ees
  f4 4 aes g
  aes2. 8 ges
  f4 4 ges ges % D
  f2. r4
  ees8 8 c des ees4 r
  f8 e ges ges f4
}

tenor = \relative {
  \autoBeamOff
  aes8 8
  des4 4 4 4
  des4(aes2) r4
  ges8 8 ees f ges4 r
  aes8 8 f ges aes4 8 8
  des4 4 4 4
  des4(aes2) r4
  ges8 8 ees f ees4 r
  aes8 g bes8 8 aes4\fermata des8 8
  des4 4 4 4 % C
  des2. aes8 8
  des4 aes aes bes
  c2. 8 8
  des4 4 4 4 % D
  des4(aes2) r4
  ges8 8 ees f ges4 r
  aes8 g bes bes aes4
}

bass = \relative {
  \autoBeamOff
  des8 8
  des4 4 f ges
  des2. r4
  aes8 8 8 8 4 r
  des8 8 8 8 4 8 8
  des4 4 f ges % B
  des2. r4
  aes8 8 8 8 4 r
  des8 8 8 8 4\fermata 8 8
  ges4 4 4 4 % C
  des2. 8 8
  des4 4 f f
  aes2. 8 8
  des,4 4 ges ges % D
  des2. r4
  aes8 8 8 8 4 r
  des8 8 8 8 4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusAlt = \lyricmode {
  _ _ _ _ _ _ _
  Let the Sa -- viour in! Let the Sa -- viour in!
  _ _ _ _ _ _ _
  Let the Sa -- viour in! Let the Sa -- viour in!
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Let the Sa -- viour in! Let the Sa -- viour in!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  There's a Stran -- ger at the door:
  Let Him in!
  He has been there oft be -- fore:
  Let Him in!
  Let Him in, ere He is gone:
  Let Him in, the Ho -- ly One,
  Je -- sus Christ, the Fa -- ther's Son:
  Let Him in!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O -- pen now to Him your heart:
  Let Him in!
  If you wait He will de -- part:
  Let Him in!
  Let Him in: He is your friend;
  He your soul will sure de -- fend;
  He will keep you to the end:
  Let Him in!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hear you now His lov -- ing voice?
  Let Him in!
  Now, oh, now make Him your choice:
  Let Him in!
  He is stand -- ing at the door;
  Joy to you He will re -- stoer,
  And His name you will a -- dore:
  Let Him in!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Now ad -- mit the heaven -- ly Guest:
  Let Him in!
  He will make for you a feast:
  Let Him in!
  He will speak your sins for -- giv'n;
  And when earth -- ties all are riv'n,
  He will take you home to heav'n:
  Let Him in!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There's " "a " Stran "ger " "at " "the " "door: "
  "\nLet " "the " Sa "viour " "in! " "Let " "the " Sa "viour " "in! "
  "\nHe " "has " "been " "there " "oft " be "fore: "
  "\nLet " "the " Sa "viour " "in! " "Let " "the " Sa "viour " "in! "
  "\nLet " "Him " "in, " "ere " "He " "is " "gone: "
  "\nLet " "Him " "in, " "the " Ho "ly " "One, "
  "\nJe" "sus " "Christ, " "the " Fa "ther's " "Son: "
  "\nLet " "the " Sa "viour " "in! " "Let " "the " Sa "viour " "in! "

  \set stanza = "2."
  "\nO" "pen " "now " "to " "Him " "your " "heart: "
  "\nLet " "the " Sa "viour " "in! " "Let " "the " Sa "viour " "in! "
  "\nIf " "you " "wait " "He " "will " de "part: "
  "\nLet " "the " Sa "viour " "in! " "Let " "the " Sa "viour " "in! "
  "\nLet " "Him " "in: " "He " "is " "your " "friend; "
  "\nHe " "your " "soul " "will " "sure " de "fend; "
  "\nHe " "will " "keep " "you " "to " "the " "end: "
  "\nLet " "the " Sa "viour " "in! " "Let " "the " Sa "viour " "in! "

  \set stanza = "3."
  "\nHear " "you " "now " "His " lov "ing " "voice? "
  "\nLet " "the " Sa "viour " "in! " "Let " "the " Sa "viour " "in! "
  "\nNow, " "oh, " "now " "make " "Him " "your " "choice: "
  "\nLet " "the " Sa "viour " "in! " "Let " "the " Sa "viour " "in! "
  "\nHe " "is " stand "ing " "at " "the " "door; "
  "\nJoy " "to " "you " "He " "will " re "stoer, "
  "\nAnd " "His " "name " "you " "will " a "dore: "
  "\nLet " "the " Sa "viour " "in! " "Let " "the " Sa "viour " "in! "

  \set stanza = "4."
  "\nNow " ad "mit " "the " heaven "ly " "Guest: "
  "\nLet " "the " Sa "viour " "in! " "Let " "the " Sa "viour " "in! "
  "\nHe " "will " "make " "for " "you " "a " "feast: "
  "\nLet " "the " Sa "viour " "in! " "Let " "the " Sa "viour " "in! "
  "\nHe " "will " "speak " "your " "sins " for "giv'n; "
  "\nAnd " "when " earth "ties " "all " "are " "riv'n, "
  "\nHe " "will " "take " "you " "home " "to " "heav'n: "
  "\nLet " "the " Sa "viour " "in! " "Let " "the " Sa "viour " "in! "
}

wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "There's " "a " Stran "ger " "at " "the " "door: "
  "\nLet " "Him " "in! "
  "\nHe " "has " "been " "there " "oft " be "fore: "
  "\nLet " "Him " "in! "
  "\nLet " "Him " "in, " "ere " "He " "is " "gone: "
  "\nLet " "Him " "in, " "the " Ho "ly " "One, "
  "\nJe" "sus " "Christ, " "the " Fa "ther's " "Son: "
  "\nLet " "Him " "in! "

  \set stanza = "2."
  "\nO" "pen " "now " "to " "Him " "your " "heart: "
  "\nLet " "Him " "in! "
  "\nIf " "you " "wait " "He " "will " de "part: "
  "\nLet " "Him " "in! "
  "\nLet " "Him " "in: " "He " "is " "your " "friend; "
  "\nHe " "your " "soul " "will " "sure " de "fend; "
  "\nHe " "will " "keep " "you " "to " "the " "end: "
  "\nLet " "Him " "in! "

  \set stanza = "3."
  "\nHear " "you " "now " "His " lov "ing " "voice? "
  "\nLet " "Him " "in! "
  "\nNow, " "oh, " "now " "make " "Him " "your " "choice: "
  "\nLet " "Him " "in! "
  "\nHe " "is " stand "ing " "at " "the " "door; "
  "\nJoy " "to " "you " "He " "will " re "stoer, "
  "\nAnd " "His " "name " "you " "will " a "dore: "
  "\nLet " "Him " "in! "

  \set stanza = "4."
  "\nNow " ad "mit " "the " heaven "ly " "Guest: "
  "\nLet " "Him " "in! "
  "\nHe " "will " "make " "for " "you " "a " "feast: "
  "\nLet " "Him " "in! "
  "\nHe " "will " "speak " "your " "sins " for "giv'n; "
  "\nAnd " "when " earth "ties " "all " "are " "riv'n, "
  "\nHe " "will " "take " "you " "home " "to " "heav'n: "
  "\nLet " "Him " "in! "
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
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
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
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
            \new NullVoice = "alignerA" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "alignerA"  \chorusAlt
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
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
            \new Lyrics \lyricsto alignerA { \repeat unfold \verses \chorusAlt}
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
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
            \new Lyrics \lyricsto alignerA {\repeat unfold \verses \chorusAlt}
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
