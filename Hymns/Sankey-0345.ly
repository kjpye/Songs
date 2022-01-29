\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, be Saved!"
  subtitle    = "Sankey No. 345"
  subsubtitle = "Sankey 880 No. 341"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "S. J. Vail."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1.*3
  \mark \markup { \box "B" } s1.*3
  \mark \markup { \box "C" } s1.*4
  \mark \markup { \box "D" } s1.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
  s1.*13
  s2 \tempo 2=100 s1 \tempo 2=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'2 a4 c2 a4
  a2 g4 4 f r
  bes2 4 a2 4
  g2 f4 g2. % B
  f2 a4 c2 a4
  a2 g4 4 f r
  bes2 4 a2 f4 % C
  a2 g4 f2. \bar "||"
  d'2^\markup\smallCaps Chorus. 4 c2 a4
  c2 4 a2.
  bes2 4 a2 4 % D
  g2 b4 c2.
  f,2 a4 c2 a4
  a2 g4^\markup\italic rit. f2.
}

alto = \relative {
  \autoBeamOff
  f'2 4 a2 f4
  f2 e4 4 f r
  f2 4 2 4
  c2 f4 e2. % B
  f2 4 a2 f4
  f2 e4 4 f r
  f2 4 2 4 % C
  f2 e4 f2.
  f2 4 2 4
  e2 4 f2.
  g2 4 f2 4 % D
  e2 d8[f] e2.
  f2 4 a2 f4
  f2 e4 f2.
}

tenor = \relative {
  \autoBeamOff
  a2 c4 2 4
  c2 bes4 4 a r
  d2 4 c2 4
  c2 b4 c2. % B
  a2 c4 2 4
  c2 bes4 4 a r
  d2 4 c2 a4 % C
  c2 bes4 a2.
  bes2 4 a2 4
  g2 c4 2.
  c2 4 2 4 % D
  c2 g4 2.
  a2 c4 2 4
  c2 bes4 a2.
}

bass = \relative {
  \autoBeamOff
  f2 4 2 4
  c2 4 f f r
  f2 4 2 4
  e2 d4 c2. % B
  f2 4 2 4
  c2 4 f f r
  bes,2 4 c2 4 % C
  c2 4 f2.
  bes,2 4 f'2 4
  c2 4 f2.
  e2 4 f2 4 % D
  g2 4 c,2.
  f2 4 2 4
  c2 4 f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, be saved, His grace is free;
  Oh, be saved, He died for thee!
  Oh, be saved, He died for thee!
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Sin -- ner, how thy heart is trou -- bled!
  God is com -- ing ve -- ry near;
  Do not hide the deep e -- mo -- tion,
  Do not check that fall -- ing tear.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Je -- sus now is bend -- ing o'er thee,
  Je -- sus, low -- ly, meek, and mild:
  To the Friend who died to save thee,
  Wilt thou not be re -- con -- ciled?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Art thou wait -- ing till the mor -- row?
  Thou may'st nev -- er see its light;
  Come at once! ac -- cept His mer -- cy:
  He is wait -- ing— come to -- night!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  With a low -- ly, con -- trite spi -- rit,
  Kneel -- ing at the Sa -- viour's feet.
  Thou canst feel, this ve -- ry mo -- ment.
  Par -- don— pre -- cious, pure, and sweet!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Let the an -- gels bear the tid -- ings
  Up -- ward to the courts of heaven;
  Let them sing, with ho -- ly rap -- ture,
  O'er a -- no -- ther soul for -- given!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sin" "ner, " "how " "thy " "heart " "is " trou "bled! "
  "\nGod " "is " com "ing " ve "ry " "near; "
  "\nDo " "not " "hide " "the " "deep " e mo "tion, "
  "\nDo " "not " "check " "that " fall "ing " "tear. "
  "\nOh, " "be " "saved, " "His " "grace " "is " "free; "
  "\nOh, " "be " "saved, " "He " "died " "for " "thee! "
  "\nOh, " "be " "saved, " "He " "died " "for " "thee! "

  \set stanza = "2."
  "\nJe" "sus " "now " "is " bend "ing " "o'er " "thee, "
  "\nJe" "sus, " low "ly, " "meek, " "and " "mild: "
  "\nTo " "the " "Friend " "who " "died " "to " "save " "thee, "
  "\nWilt " "thou " "not " "be " re con "ciled? "
  "\nOh, " "be " "saved, " "His " "grace " "is " "free; "
  "\nOh, " "be " "saved, " "He " "died " "for " "thee! "
  "\nOh, " "be " "saved, " "He " "died " "for " "thee! "

  \set stanza = "3."
  "\nArt " "thou " wait "ing " "till " "the " mor "row? "
  "\nThou " "may'st " nev "er " "see " "its " "light; "
  "\nCome " "at " "once! " ac "cept " "His " mer "cy: "
  "\nHe " "is " wait "ing— " "come " to "night! "
  "\nOh, " "be " "saved, " "His " "grace " "is " "free; "
  "\nOh, " "be " "saved, " "He " "died " "for " "thee! "
  "\nOh, " "be " "saved, " "He " "died " "for " "thee! "

  \set stanza = "4."
  "\nWith " "a " low "ly, " con "trite " spi "rit, "
  "\nKneel" "ing " "at " "the " Sa "viour's " "feet. "
  "\nThou " "canst " "feel, " "this " ve "ry " mo "ment. "
  "\nPar" "don— " pre "cious, " "pure, " "and " "sweet! "
  "\nOh, " "be " "saved, " "His " "grace " "is " "free; "
  "\nOh, " "be " "saved, " "He " "died " "for " "thee! "
  "\nOh, " "be " "saved, " "He " "died " "for " "thee! "

  \set stanza = "5."
  "\nLet " "the " an "gels " "bear " "the " tid "ings "
  "\nUp" "ward " "to " "the " "courts " "of " "heaven; "
  "\nLet " "them " "sing, " "with " ho "ly " rap "ture, "
  "\nO'er " a no "ther " "soul " for "given! "
  "\nOh, " "be " "saved, " "His " "grace " "is " "free; "
  "\nOh, " "be " "saved, " "He " "died " "for " "thee! "
  "\nOh, " "be " "saved, " "He " "died " "for " "thee! "
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
