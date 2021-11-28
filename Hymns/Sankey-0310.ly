\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Faith, a Living Power."
  subtitle    = "Sankey No. 310"
  subsubtitle = "Sankey 880 No. 186"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "L. O. Emerson."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup {\smallCaps "P. Herbert." (tr. \smallCaps "Miss Winkworth" ")." }
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Sessions."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'2 g4 f
  bes2 f
  g4 f bes4.(c8
  d2.) r4 \break
  c2 4 d % B
  c2 2
  d4 c bes2
  bes2 4 g
  bes2 c
  c4 d c2 % C
  f,2 g4 f
  bes4.(c8 d2)
  c2 d4 c
  bes2. r4
}

alto = \relative {
  \autoBeamOff
  d'2 ees4 d
  d2 2
  ees4 d d4.(ees8
  f2.) r4
  f2 4 4 % B
  f2 2
  f4 ees d2
  d2 4 4
  d2 f
  f4 4 2 % C
  d2 ees4 d
  d4.(ees8 f2)
  f2 4 ees
  d2. r4
}

tenor = \relative {
  \autoBeamOff
  bes2 4 4
  f2 bes
  bes4 4 2~
  bes2. r4
  a2 4 bes % B
  a2 2
  bes4 f4 2
  g2 4 bes
  g2 a
  a4 bes a2 % C
  bes2 4 4
  bes1
  a2 bes4 f
  f2. r4
}

bass = \relative {
  \autoBeamOff
  bes,2 4 4
  bes2 2
  bes4 4 2~
  bes2. r4
  f'2 4 4 % B
  f2 2
  f4 4 bes,2
  g'2 4 4
  g2 f
  f4 4 2 % C
  bes,2 4 4
  bes1
  f'2 4 4
  bes,2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Faith is a liv -- ing power from heaven, __
  Which grasps the pro -- mise God has given;
  Se -- cure -- ly fixed on Christ a -- lone,
  A trust that can -- not be o'er -- thrown.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Faith finds in Christ what -- e'er we need. __
  To save and strength -- en, guide and feed;
  Strong in His grace, it joys to share
  His cross, in hope. __ His crown to wear.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Faith to the con -- science whis -- pers peace, __
  And bids the mourn -- er's sigh -- ing cease;
  By faith the child -- ren's right we claim,
  And call up -- on our Fa -- ther's name.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Such faith in us, O God, im -- plant, __
  And to our prayers Thy fa -- vour grant
  In Je -- sus Christ, Thy sav -- ing Son,
  Who is our fount of health a -- lone.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Faith " "is " "a " liv "ing " "power " "from " "heaven, " 
  "\nWhich " "grasps " "the " pro "mise " "God " "has " "given; "
  "\nSe" cure "ly " "fixed " "on " "Christ " a "lone, "
  "\nA " "trust " "that " can "not " "be " o'er "thrown. "

  \set stanza = "2."
  "\nFaith " "finds " "in " "Christ " what "e'er " "we " "need. " 
  "\nTo " "save " "and " strength "en, " "guide " "and " "feed; "
  "\nStrong " "in " "His " "grace, " "it " "joys " "to " "share "
  "\nHis " "cross, " "in " "hope. "  "His " "crown " "to " "wear. "

  \set stanza = "3."
  "\nFaith " "to " "the " con "science " whis "pers " "peace, " 
  "\nAnd " "bids " "the " mourn "er's " sigh "ing " "cease; "
  "\nBy " "faith " "the " child "ren's " "right " "we " "claim, "
  "\nAnd " "call " up "on " "our " Fa "ther's " "name. "

  \set stanza = "4."
  "\nSuch " "faith " "in " "us, " "O " "God, " im "plant, " 
  "\nAnd " "to " "our " "prayers " "Thy " fa "vour " "grant "
  "\nIn " Je "sus " "Christ, " "Thy " sav "ing " "Son, "
  "\nWho " "is " "our " "fount " "of " "health " a "lone. "
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
