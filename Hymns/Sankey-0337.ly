\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Weeping will not Save Me!"
  subtitle    = "Sankey No. 337"
  subsubtitle = "Sankey 880 No. 278"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
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
  \mark \markup { \box "C" } s1*5
  \mark \markup { \box "D" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 4 4 ees
  f2 ees
  f4 4 4 ees
  g4 bes4 2
  f4 4 4 ees % B
  g4 bes4 2
  c4 4 bes g
  bes4 4 g2
  ees4 g bes g % C
  f2 ees \bar "||"
  c'4^\markup\smallCaps Refrain. 4 4 ees
  bes 4 4 2
  c4 4 4 ees
  bes4 4 2 % D
  c4 4 bes g
  bes4 4 g2
  ees4 g bes g
  f2 ees
}

alto = \relative {
  \autoBeamOff
  d'4 4 4 ees
  d2 ees
  d4 4 4 ees
  ees4 4 d2
  d4 4 4 ees % B
  ees4 d ees2
  ees4 4 4 4
  f4 d ees2
  ees4 4 g ees % C
  d2 ees
  ees4 4 4 4
  ees4 d ees2
  ees4 4 4 4
  ees4 d ees2
  ees4 4 4 4 % D
  f4 d ees2
  ees4 4 g ees
  d2 ees
}

tenor = \relative {
  \autoBeamOff
  bes4 4 aes g
  aes2 g
  bes4 4 aes g
  bes4 g f2
  bes4 4 aes g % B
  ees4 f g2
  aes4 4 g bes
  bes4 4 2
  g4 bes ees bes % C
  aes2 g
  aes4 4 4 4
  g4 f g2
  aes4 4 4 4
  g4 f g2 % D
  aes4 4 g bes
  bes4 4 2
  g4 bes ees bes
  aes2 g
}

bass = \relative {
  \autoBeamOff
  bes,4 4 4 ees
  bes2 ees
  bes4 4 4 ees
  ees4 4 bes2
  bes4 4 4 ees % B
  ees4 bes ees2
  aes,4 c ees ees
  d4 bes ees2
  ees4 4 4 4 % C
  bes2 ees
  aes,4 4 4 c
  ees4 bes ees2
  aes,4 4 4 c
  ees4 bes ees2
  aes,4 c ees ees
  d4 bes ees2
  ees4 4 4 4
  bes2 ees
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Je -- sus wept and died for me;
  Je -- sus suf -- fered in the tree;
  Je -- sus waits to make me free;
  He a -- lone can save me!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Weep -- ing will not save me!
  Tho' my face were bathed in tears
  That would not al -- lay my fears,
  Could not wash the sins of years!
  Weep -- ing will not save me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Work -- ing will not save me!
  Pu -- rst deeds that I can do,
  Ho -- liesrt thoughts and feel -- ings too,
  Can -- not form my soul a -- new:
  Work -- ing will not save me!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Wait -- ing will not save me!
  Help -- less, guilt -- y, lost, I lie;
  In my ear is mer -- cy's cry;
  If I wait I can but die:
  Wait -- ing will not save me!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Faith in Christ will save me!
  Let me trust Thy weep -- ing Son,
  Trust the work that He has done;
  To His arms, Lord, help me run:
  Faith in Christ will save me!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Weep" "ing " "will " "not " "save " "me! "
  "\nTho' " "my " "face " "were " "bathed " "in " "tears "
  "\nThat " "would " "not " al "lay " "my " "fears, "
  "\nCould " "not " "wash " "the " "sins " "of " "years! "
  "\nWeep" "ing " "will " "not " "save " "me! "
  "\nJe" "sus " "wept " "and " "died " "for " "me; "
  "\nJe" "sus " suf "fered " "in " "the " "tree; "
  "\nJe" "sus " "waits " "to " "make " "me " "free; "
  "\nHe " a "lone " "can " "save " "me! "

  \set stanza = "2."
  "\nWork" "ing " "will " "not " "save " "me! "
  "\nPu" "rst " "deeds " "that " "I " "can " "do, "
  "\nHo" "liesrt " "thoughts " "and " feel "ings " "too, "
  "\nCan" "not " "form " "my " "soul " a "new: "
  "\nWork" "ing " "will " "not " "save " "me! "
  "\nJe" "sus " "wept " "and " "died " "for " "me; "
  "\nJe" "sus " suf "fered " "in " "the " "tree; "
  "\nJe" "sus " "waits " "to " "make " "me " "free; "
  "\nHe " a "lone " "can " "save " "me! "

  \set stanza = "3."
  "\nWait" "ing " "will " "not " "save " "me! "
  "\nHelp" "less, " guilt "y, " "lost, " "I " "lie; "
  "\nIn " "my " "ear " "is " mer "cy's " "cry; "
  "\nIf " "I " "wait " "I " "can " "but " "die: "
  "\nWait" "ing " "will " "not " "save " "me! "
  "\nJe" "sus " "wept " "and " "died " "for " "me; "
  "\nJe" "sus " suf "fered " "in " "the " "tree; "
  "\nJe" "sus " "waits " "to " "make " "me " "free; "
  "\nHe " a "lone " "can " "save " "me! "

  \set stanza = "4."
  "\nFaith " "in " "Christ " "will " "save " "me! "
  "\nLet " "me " "trust " "Thy " weep "ing " "Son, "
  "\nTrust " "the " "work " "that " "He " "has " "done; "
  "\nTo " "His " "arms, " "Lord, " "help " "me " "run: "
  "\nFaith " "in " "Christ " "will " "save " "me! "
  "\nJe" "sus " "wept " "and " "died " "for " "me; "
  "\nJe" "sus " suf "fered " "in " "the " "tree; "
  "\nJe" "sus " "waits " "to " "make " "me " "free; "
  "\nHe " a "lone " "can " "save " "me! "
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
