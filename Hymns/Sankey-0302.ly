\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sun of my Soul."
  subtitle    = "Sankey No. 302"
  subsubtitle = "Sankey 880 No. 616"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Paul Ritter."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John Keble."
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Hursley."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key f \major
  \time 3/4
}

RehearsalTrack = {
 \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*8
  \mark \markup { \box "B" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 4 4
  f4(e) f
  g4(a) g
  f2.
  a4 4 4
  a4(g) a
  c4(bes) a
  g2.
  g4 4 a % B
  bes2 g4
  a2 bes4
  c2.
  d4 4 4
  c2 a4
  bes4(a) g
  f2.
}

alto = \relative {
  \autoBeamOff
  c'4 4 4
  c2 4
  e2 4
  f2.
  f4 4 4
  f4(e) f
  f4(e) f
  e2.
  e4 g fis % B
  g4(d) e
  f2 4
  e2.
  f4 4 4
  f4(e) f
  f2 e4
  f2.
}

tenor = \relative {
  \autoBeamOff
  a4 4 4
  a4(g) a
  bes4(c) bes
  a2.
  c4 4 4
  c2 4
  c2 4
  c2.
  c4 d c % B
  bes2 c4
  c2 f,4
  g2.
  bes4 4 4
  g2 f4
  d'4(c) bes
  a2.
}

bass = \relative {
  \autoBeamOff
  f4 4 4
  f2 4
  c2 4
  f2.
  f4 4 4
  f2 4
  a4(g) f
  c2.
  c'4 bes a % B
  g2 c,4
  f2 d4
  c2.
  bes4 4 4
  c2 d4
  bes4(c) c
  f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Sun of my soul, Thou Sa -- viour dear,
  It is not night if Thou be near;
  Oh, may no earth- -- born cloud a -- rise,
  To hide Thee from Thy ser -- vant's eyes!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When the soft dews of kind -- ly sleep
  My wea -- ried eye -- lids gen -- tly steep,
  Be my last thought— How sweet to rest
  For ev -- er on my Sa -- viour's breast!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  A -- bide with me from morn till eve,
  For with -- out Thee I can -- not live;
  A -- bide with me when night is nigh,
  For with -- out Thee I dare not die.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  If some poor wan -- d'ring child of Thine
  Have spurned to -- day the voice Di -- vine,
  Now, Lord, the gra -- cious work be -- gin;
  Let him no more lie down in sin.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Come near and bless us when we wake,
  Ere through the world our way we take;
  Till, in the o -- cean of Thy love,
  We lose our -- selves in heaven a -- bove.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sun " "of " "my " "soul, " "Thou " Sa "viour " "dear, "
  "\nIt " "is " "not " "night " "if " "Thou " "be " "near; "
  "\nOh, " "may " "no " earth- "born " "cloud " a "rise, "
  "\nTo " "hide " "Thee " "from " "Thy " ser "vant's " "eyes! "

  \set stanza = "2."
  "\nWhen " "the " "soft " "dews " "of " kind "ly " "sleep "
  "\nMy " wea "ried " eye "lids " gen "tly " "steep, "
  "\nBe " "my " "last " "thought— " "How " "sweet " "to " "rest "
  "\nFor " ev "er " "on " "my " Sa "viour's " "breast! "

  \set stanza = "3."
  "\nA" "bide " "with " "me " "from " "morn " "till " "eve, "
  "\nFor " with "out " "Thee " "I " can "not " "live; "
  "\nA" "bide " "with " "me " "when " "night " "is " "nigh, "
  "\nFor " with "out " "Thee " "I " "dare " "not " "die. "

  \set stanza = "4."
  "\nIf " "some " "poor " wan "d'ring " "child " "of " "Thine "
  "\nHave " "spurned " to "day " "the " "voice " Di "vine, "
  "\nNow, " "Lord, " "the " gra "cious " "work " be "gin; "
  "\nLet " "him " "no " "more " "lie " "down " "in " "sin. "

  \set stanza = "5."
  "\nCome " "near " "and " "bless " "us " "when " "we " "wake, "
  "\nEre " "through " "the " "world " "our " "way " "we " "take; "
  "\nTill, " "in " "the " o "cean " "of " "Thy " "love, "
  "\nWe " "lose " our "selves " "in " "heaven " a "bove. "
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
