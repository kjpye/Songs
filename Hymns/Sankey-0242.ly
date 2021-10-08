\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Love Divine, all Loves Excelling."
  subtitle    = "Sankey No. 242"
  subsubtitle = "Sankey 880 No. 404"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "John Zundel."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "8.7.d"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 4 g f
  d'4 c8[d] c4 bes
  a4 g bes g
  f4 ees8[f] d2
  f4 4 g f % B
  d'4 c8[d] c4 bes
  g4 ees' d bes
  a4 g8[a] bes2
  bes4 4 4 a % C
  g4 a8[g] fis4 d
  d'4 4 ees d
  c4 8[d] c2
  f,4 4 g f % D
  d'4 c8[d] c4 bes
  g4 ees' d bes
  a4 g8[a] bes2
}

alto = \relative {
  \autoBeamOff
  d'4 4 ees d
  f4 ees8[f] ees4 d
  f4 ees g ees
  d4 c bes2
  d4 4 ees d % B
  f4 ees8[f] ees4 d
  ees4 g f f
  ees4 4 d2
  d4 g fis fis % C
  g4 d d d
  d4 f g f
  f4 e f(ees)
  d4 4 ees d % D
  f4 ees8[d] ees4 d
  ees4 g f f
  ees4 4 d2
}

tenor = \relative {
  \autoBeamOff
  f4 4 g f
  bes4 a a bes
  bes4 4 4 4
  bes4 a f2

  f4 4 g f % B
  bes4 a a bes
  bes4 4 4 d
  c4 f, f2
  g4 d' d c % C
  bes4 c8[bes] a4 d,
  f4 bes4 4 4
  a4 bes a2
  f4 4 g f % D
  bes4 a a bes
  bes4 4 4 d
  c4 f,4 2
}

bass = \relative {
  \autoBeamOff
  bes,4 4 4 4
  bes4 f' f bes,
  ees4 4 4 4
  f4 f, bes2
  bes4 4 4 4 % B
  bes4 f' fis g
  ees4 4 f f
  f4 f, bes2
  g4 bes d d % C
  d4 4 4 4
  bes4 4 bes' bes,
  c4 4 f2
  bes,4 4 4 4 % D
  bes4 f' fis g
  ees4 4 f f
  f4 f, bes2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Love Di -- vine, all loves ex -- cel -- ling,
  Joy of heaven, to earth come down;
  Fix in us Thy hum -- ble dwell -- ing,
  All Thy faith -- ful mer -- cies crown.
  Je -- sus, Thou art all com -- pas -- sion,
  Pure un -- bound -- ed love Thou art;
  Vis -- it us with Thy sal -- va -- tion,
  En -- ter ev -- 'ry long -- ing heart!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Breathe, oh breathe Thy lov -- ing spi -- rit
  In -- to ev -- 'ry trou -- bled breast!
  Let us all in Thee in -- her -- it,
  Let us find Thy prom -- ised rest.
  Come, Al -- migh -- ty to de -- li -- ver!
  Let us all Thy grace re -- ceive;
  Sud -- den -- ly re -- turn, and ne -- ver,
  Ne -- ver- -- more Thy tem -- ples leave.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Fin -- ish, then, Thy new cre -- a -- tion,
  Pure and spot -- less may we be:
  Let us see our whole sal -- va -- tion
  Per -- fect -- ly se -- cured by Thee:
  Changed from glo -- ry in -- to glo -- ry,
  Till in heaven we take our place;
  Till we cast our crowns be -- fore Thee,
  Lost in won -- der, love, and praise!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Love " Di "vine, " "all " "loves " ex cel "ling, "
  "\nJoy " "of " "heaven, " "to " "earth " "come " "down; "
  "\nFix " "in " "us " "Thy " hum "ble " dwell "ing, "
  "\nAll " "Thy " faith "ful " mer "cies " "crown. "
  "\nJe" "sus, " "Thou " "art " "all " com pas "sion, "
  "\nPure " un bound "ed " "love " "Thou " "art; "
  "\nVis" "it " "us " "with " "Thy " sal va "tion, "
  "\nEn" "ter " ev "'ry " long "ing " "heart! "

  \set stanza = "2."
  "\nBreathe, " "oh " "breathe " "Thy " lov "ing " spi "rit "
  "\nIn" "to " ev "'ry " trou "bled " "breast! "
  "\nLet " "us " "all " "in " "Thee " in her "it, "
  "\nLet " "us " "find " "Thy " prom "ised " "rest. "
  "\nCome, " Al migh "ty " "to " de li "ver! "
  "\nLet " "us " "all " "Thy " "grace " re "ceive; "
  "\nSud" den "ly " re "turn, " "and " ne "ver, "
  "\nNe" ver- "more " "Thy " tem "ples " "leave. "

  \set stanza = "3."
  "\nFin" "ish, " "then, " "Thy " "new " cre a "tion, "
  "\nPure " "and " spot "less " "may " "we " "be: "
  "\nLet " "us " "see " "our " "whole " sal va "tion "
  "\nPer" fect "ly " se "cured " "by " "Thee: "
  "\nChanged " "from " glo "ry " in "to " glo "ry, "
  "\nTill " "in " "heaven " "we " "take " "our " "place; "
  "\nTill " "we " "cast " "our " "crowns " be "fore " "Thee, "
  "\nLost " "in " won "der, " "love, " "and " "praise! "
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
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
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}
