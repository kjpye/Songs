\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lord of Glory! who is He?"
  subtitle    = "Sankey No. 147"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup {\smallCaps "J.Klug's" \italic Gesangbuch, \smallCaps 1636.}
  arranger    = \markup {"(Adapted by" \smallCaps "M. Luther" ")"}
%  opus        = "opus"

  poet        = \markup\smallCaps "R. C. Chapman."
  meter       = \markup\smallCaps "8.7.8.7.8.8.7."
  piece       = \markup\smallCaps "Luther's Hymn."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4
  g4 b a g
  a4 a b g
  b4 c d b
  a2 g4 \bar "|" \break 4
  g4 b a g % B
  a4 4 b g
  b4 c d b
  a2 g4 b % C
  c4 b a g
  fis4 g a b
  g4 fis g d % D
  g4 a b g
  b4 c d b
  a2 g4
}

alto = \relative {
  \autoBeamOff
  d'4
  d4 4 4 b
  e4 d d d
  d4 g d d
  d4.(c8) b4 d
  e4 d d b % B
  e4 d d d
  e4 e d g
  g4(fis) g d % C
  d4 4 4 8[cis]
  d4 4 4 4
  d4 4 4 4 % D
  b8[d] e[d] d4 4
  e4 4 d d8[g]
  g4(fis) g
}

tenor = \relative {
  \autoBeamOff
  b4
  g4 4 fis g
  g4 fis g b
  d4 g, g g
  g4(fis) g b
  b4 g fis g % B
  g4 fis g b
  g4 g g d'
  e4(d8[c]) b4 g % C
  fis4 g fis g
  a4 b fis g
  d'4 c b a % D
  g4 g8[fis] g4 b
  g4 4 4 b8[d]
  d4.(c8) b4
}

bass = \relative {
  \autoBeamOff
  g,4
  b4 g d' e
  c4 d g, g
  g'4 e b g
  d'2 g,4 g'
  e4 b d e % B
  c4 d g, g'
  e4 c b g
  c4(d) g g, % C
  a4 b8[c] d4 e
  d4 g, d' g
  b4 a g fis % D
  e8[b] c[d] g,4 g'
  e4 c b g
  d'2 g,4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  The Lord of glo -- ry! who is He?
  Who is this King of glo -- ry?
  On -- ly the Son of God can be
  The Christ, the King of glo -- ry:
  Con -- sid -- er all His wounds, and see
  How Je -- sus' death up -- on the tree
  Pro -- claims Him King of glo -- ry.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  A -- bove all heav'ns, at God's right hand,
  Now sits the King of glo -- ry;
  The an -- gels by His fa -- vour stand
  Be -- fore the throne of glo -- ry:
  Swift -- ly they fly at His com -- mand,
  To guard His own of ev -- 'ry land,
  To keep the heirs of glo -- ry.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Death and the grave con -- fess the Lamb
  To be the King of glo -- ry;
  The powers of dark -- ness dread His name,
  All crea -- tures show His glo -- ry:
  He said, "\"Ere" Abr -- aham was I "AM\"—"
  Je -- sus is ev -- er -- more the same,
  Th'Al -- migh -- ty King of glo -- ry.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thrice hap -- py who in Him be -- lieve,
  They soon will share His glo -- ry;
  Born of His Spi -- rit, they re -- ceive
  His sec -- ret pledge of glo -- ry:
  Taught by His cross, for sin they grieve;
  He calls them breth -- ren, and they cleave
  To Him, their hope of glo -- ry.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "Lord " "of " glo "ry! " "who " "is " "He? "
  "\nWho " "is " "this " "King " "of " glo "ry? "
  "\nOn" "ly " "the " "Son " "of " "God " "can " "be "
  "\nThe " "Christ, " "the " "King " "of " glo "ry: "
  "\nCon" sid "er " "all " "His " "wounds, " "and " "see "
  "\nHow " Je "sus' " "death " up "on " "the " "tree "
  "\nPro" "claims " "Him " "King " "of " glo "ry. "

  \set stanza = "2."
  "\nA" "bove " "all " "heav'ns, " "at " "God's " "right " "hand, "
  "\nNow " "sits " "the " "King " "of " glo "ry; "
  "\nThe " an "gels " "by " "His " fa "vour " "stand "
  "\nBe" "fore " "the " "throne " "of " glo "ry: "
  "\nSwift" "ly " "they " "fly " "at " "His " com "mand, "
  "\nTo " "guard " "His " "own " "of " ev "'ry " "land, "
  "\nTo " "keep " "the " "heirs " "of " glo "ry. "

  \set stanza = "3."
  "\nDeath " "and " "the " "grave " con "fess " "the " "Lamb "
  "\nTo " "be " "the " "King " "of " glo "ry; "
  "\nThe " "powers " "of " dark "ness " "dread " "His " "name, "
  "\nAll " crea "tures " "show " "His " glo "ry: "
  "\nHe " "said, " "\"Ere " Abr "aham " "was " "I " "AM\"— "
  "\nJe" "sus " "is " ev er "more " "the " "same, "
  "\nTh'Al" migh "ty " "King " "of " glo "ry. "

  \set stanza = "4."
  "\nThrice " hap "py " "who " "in " "Him " be "lieve, "
  "\nThey " "soon " "will " "share " "His " glo "ry; "
  "\nBorn " "of " "His " Spi "rit, " "they " re "ceive "
  "\nHis " sec "ret " "pledge " "of " glo "ry: "
  "\nTaught " "by " "His " "cross, " "for " "sin " "they " "grieve; "
  "\nHe " "calls " "them " breth "ren, " "and " "they " "cleave "
  "\nTo " "Him, " "their " "hope " "of " glo "ry. "
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
