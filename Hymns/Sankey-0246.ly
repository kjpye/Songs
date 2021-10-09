\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My God, I Thank Thee."
  subtitle    = "Sankey No. 246"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "F. C. Maker."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Adelaide Anne Proctor."
  meter       = \markup\smallCaps "8.4."
  piece       = \markup\smallCaps "Wentworth."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4
  c4 4 b a
  g4 e c d
  e2 a
  d,2. \bar "|" \break e4
  e4 4 c' b % B
  a4 g fis e
  d2 a'
  g2. \bar "|" \break g4
  a4 4 g c, % C
  f4 4 e c
  d2 f
  e2.
}

alto = \relative {
  \autoBeamOff
  g'4
  c4 4 b a
  g4 e c b
  c2 2
  b2. c4
  c4 d e e % B
  e4 4 d c
  c2 2
  b2. d4
  d4 4 e c % C
  c4 b c c
  c2 b
  c2.
}

tenor = \relative {
  \autoBeamOff
  g4
  c4 4 b a
  g4 e c g'
  g2 a
  g2. 4
  g4 gis a d % B
  c4 bes a g
  a2 fis
  g2. b4
  b4 4 c g % C
  a4 g g g
  a2 g
  g2.
}

bass = \relative {
  \autoBeamOff
  g4
  c4 4 b a
  g4 e c g
  c2 f
  g2. c,4
  c4 b a b % B
  c4 cis d e
  fis2 d
  g,2. g'4
  f4 4 e e % C
  d4 4 c <e, e'>
  <f f'>2 <g g'>
  c2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  My God, I thank Thee, who hast made
  The earth so bright,
  So full of splen -- dour and of joy,
  Beau -- ty and light;
  So ma -- ny glo -- rious things are here,
  No -- ble and right.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I thank Thee, too, that Thou hast made
  Joy to a -- bound;
  So ma -- ny gen -- tle thoughts and deeds
  Cir -- cling us round;
  That in the dark -- est spot of earth
  Some love is found.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I thank Thee more that all my joy
  Is touched with pain;
  That sha -- dows fall on bright -- est hours,
  That thorns re -- main;
  So that earth's bliss may be my guide,
  And not my chain.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  For Thou who know -- est, Lord, how soon
  Our weak heart clings,
  Hast given us joys, ten -- der and true,
  Yet all with wings,
  So that we see, gleam -- ing on high,
  Div -- in -- er things.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  I thank Thee, Lord, that Thou hast kept
  The best in store;
  I have e -- nough, yet not too much,
  To long for more;
  A yearn -- ing for a deep -- er peace
  Not known be -- fore.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  I thank Thee, Lord, that here our souls,
  Though amp -- ly blest,
  Can ne -- ver find, al -- though they seek
  A per -- fect rest—
  Nor ev -- er shall, un -- til they lean
  On Je -- sus' breast.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " "God, " "I " "thank " "Thee, " "who " "hast " "made "
  "\nThe " "earth " "so " "bright, "
  "\nSo " "full " "of " splen "dour " "and " "of " "joy, "
  "\nBeau" "ty " "and " "light; "
  "\nSo " ma "ny " glo "rious " "things " "are " "here, "
  "\nNo" "ble " "and " "right. "

  \set stanza = "2."
  "\nI " "thank " "Thee, " "too, " "that " "Thou " "hast " "made "
  "\nJoy " "to " a "bound; "
  "\nSo " ma "ny " gen "tle " "thoughts " "and " "deeds "
  "\nCir" "cling " "us " "round; "
  "\nThat " "in " "the " dark "est " "spot " "of " "earth "
  "\nSome " "love " "is " "found. "

  \set stanza = "3."
  "\nI " "thank " "Thee " "more " "that " "all " "my " "joy "
  "\nIs " "touched " "with " "pain; "
  "\nThat " sha "dows " "fall " "on " bright "est " "hours, "
  "\nThat " "thorns " re "main; "
  "\nSo " "that " "earth's " "bliss " "may " "be " "my " "guide, "
  "\nAnd " "not " "my " "chain. "

  \set stanza = "4."
  "\nFor " "Thou " "who " know "est, " "Lord, " "how " "soon "
  "\nOur " "weak " "heart " "clings, "
  "\nHast " "given " "us " "joys, " ten "der " "and " "true, "
  "\nYet " "all " "with " "wings, "
  "\nSo " "that " "we " "see, " gleam "ing " "on " "high, "
  "\nDiv" in "er " "things. "

  \set stanza = "5."
  "\nI " "thank " "Thee, " "Lord, " "that " "Thou " "hast " "kept "
  "\nThe " "best " "in " "store; "
  "\nI " "have " e "nough, " "yet " "not " "too " "much, "
  "\nTo " "long " "for " "more; "
  "\nA " yearn "ing " "for " "a " deep "er " "peace "
  "\nNot " "known " be "fore. "

  \set stanza = "6."
  "\nI " "thank " "Thee, " "Lord, " "that " "here " "our " "souls, "
  "\nThough " amp "ly " "blest, "
  "\nCan " ne "ver " "find, " al "though " "they " "seek "
  "\nA " per "fect " "rest— "
  "\nNor " ev "er " "shall, " un "til " "they " "lean "
  "\nOn " Je "sus' " "breast. "
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack }
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
