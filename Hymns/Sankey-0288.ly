\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Father, in High Heaven dwelling."
  subtitle    = "Sankey No. 288"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. jackson."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "G. Rawson."
  meter       = \markup\smallCaps "8.8.7. D."
  piece       = \markup\smallCaps "Evening Hymn."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key ees \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*8
  \mark \markup { \box "B" } s2.*8
  \mark \markup { \box "C" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2 4
  aes2 g4
  g4(f) ees
  d4 ees r
  aes2 g4
  f2 g4
  bes4(aes) g
  g4 f r \break
  ees'4(aes,) c % B
  bes4(ees,) a
  g2 f4
  ees2.
  f2 4
  g2 bes4
  c4(bes) g
  bes4(aes) g \break
  f2 aes4 % C
  g2 bes4
  c4(bes) ees
  d4(c) bes
  aes2 g4
  g4(f) aes
  g2 f4
  ees2.
}

alto = \relative {
  \autoBeamOff
  ees'2 4
  f2 ees4
  c2 4
  bes4 4 r
  ees4(f) ees
  d2 ees4
  bes2 4
  bes4 4 r
  aes'2 ees4 % B
  ees2 4
  ees2 d4
  ees2.
  d2 4
  ees2 4
  ees2 4
  f2 ees4(
  ees4) d f~ % C
  f4 ees ees
  ees2 g4
  aes2 ees4
  d2 ees4
  c2 f4
  ees2 d4
  ees2.
}

tenor = \relative {
  \autoBeamOff
  bes2 4
  bes2 4
  c2 aes4
  aes4 g r
  c4(bes) 4
  bes2 4
  d2 ees4
  ees4 d r
  ees2 a,4 % B
  bes2 c4
  bes2 aes4
  g2.
  bes2 4
  bes2 ees4
  ees2 bes4
  bes2 4
  bes2 4 % C
  bes2 4
  aes4(ees') ees
  ees2 4
  bes2 4
  bes4(aes) c
  bes2 aes4
  g2.
}

bass = \relative {
  \autoBeamOff
  ees2 4
  d2 ees4
  aes,2 4
  bes4 ees r
  c4(d) ees
  aes2 g4
  f2 ees4
  bes4 4 r
  c'2 aes4 % B
  g2 aes4
  bes2 bes,4
  ees2.
  bes2 4
  ees2 g4
  aes4(g) ees
  d2 ees4
  bes2 4 % C
  ees2 g4
  aes4(g) ees
  aes2 g4
  f2 ees4
  aes,2 f4
  bes2 4
  ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Fa -- ther, in high hea -- ven dwell -- ing,
  May our ev -- 'ning song be tell -- ing
  Of Thy mer -- cy large and free:
  Thro' the day Thy love has fed us,
  Thro' the day Thy care has led us,
  With Di -- vi -- nest cha -- ri -- ty.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  This day's sins, oh par -- don, Sa -- viour,
  E -- vil thoughts, per -- verse be -- ha -- viour,
  En -- vy, pride, and van -- i -- ty:
  From the world, the flesh, de -- li -- ver—
  Save us now, and save us ev -- er,
  O Thou Lamb of Cal -- va -- ry!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  From en -- tice -- ments of the de -- vil,
  From the might of spi -- rits e -- vil,
  Be our shield and pan -- o -- ply;
  Let Thy power this night de -- fend us,
  And a heaven -- ly peace at -- tend us,
  And an -- gel -- ic com -- pa -- ny.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Whilst the night- -- dews are dis -- till -- ing,
  Ho -- ly Ghost, each heart be fill -- ing
  With Thine own ser -- en -- i -- ty:
  Soft -- ly let the eyes be clos -- ing,
  Lov -- ing souls on Thee re -- pos -- ing,
  Ev -- er bless -- ed Tri -- ni -- ty!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Fa" "ther, " "in " "high " hea "ven " dwell "ing, "
  "\nMay " "our " ev "'ning " "song " "be " tell "ing "
  "\nOf " "Thy " mer "cy " "large " "and " "free: "
  "\nThro' " "the " "day " "Thy " "love " "has " "fed " "us, "
  "\nThro' " "the " "day " "Thy " "care " "has " "led " "us, "
  "\nWith " Di vi "nest " cha ri "ty. "

  \set stanza = "2."
  "\nThis " "day's " "sins, " "oh " par "don, " Sa "viour, "
  "\nE" "vil " "thoughts, " per "verse " be ha "viour, "
  "\nEn" "vy, " "pride, " "and " van i "ty: "
  "\nFrom " "the " "world, " "the " "flesh, " de li "ver— "
  "\nSave " "us " "now, " "and " "save " "us " ev "er, "
  "\nO " "Thou " "Lamb " "of " Cal va "ry! "

  \set stanza = "3."
  "\nFrom " en tice "ments " "of " "the " de "vil, "
  "\nFrom " "the " "might " "of " spi "rits " e "vil, "
  "\nBe " "our " "shield " "and " pan o "ply; "
  "\nLet " "Thy " "power " "this " "night " de "fend " "us, "
  "\nAnd " "a " heaven "ly " "peace " at "tend " "us, "
  "\nAnd " an gel "ic " com pa "ny. "

  \set stanza = "4."
  "\nWhilst " "the " night- "dews " "are " dis till "ing, "
  "\nHo" "ly " "Ghost, " "each " "heart " "be " fill "ing "
  "\nWith " "Thine " "own " ser en i "ty: "
  "\nSoft" "ly " "let " "the " "eyes " "be " clos "ing, "
  "\nLov" "ing " "souls " "on " "Thee " re pos "ing, "
  "\nEv" "er " bless "ed " Tri ni "ty! "
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
    paper-height = 2000\mm
    ragged-bottom = true
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
