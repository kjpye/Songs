\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thy Word is a Lamp."
  subtitle    = "Sankey No. 267"
  subsubtitle = "C. C. No. 168"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Grace J. Frances."
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
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8  s2.*2 s4.
  \mark \markup { \box "B" } s4. s2.*3
  \mark \markup { \box "C" }     s2.*3
  \mark \markup { \box "D" }     s2.*3 s4.
  \mark \markup { \box "E" } s4. s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8
  g8. f16 g8 aes8. g16 aes8
  bes4 ees8 4 ees,8
  ees8. f16 g8 \bar "|" \break bes8. aes16 g8
  f4.~4 g8 % B
  g8. f16 g8 aes g aes
  bes4 ees8 4 c8
  d8. c16 bes8 c bes a % C
  bes4.~4 \bar "||" 8^\markup\smallCaps Chorus.
  bes8. c16 bes8 b8. a16 b8
  c4.~4 ees8 % D
  d8 c bes c bes a
  bes4.~4 aes8
  g8. f16 g8 \bar "|" \break aes8. g16 aes8
  bes4 ees8 4 c8 % E
  bes8 ees, aes g8. aes16 f8
  ees4.~4
}

alto = \relative {
  \autoBeamOff
  ees'8
  ees8. d16 ees8 d8. 16 d8
  ees8[g] aes g4 ees8
  ees8. 16 8 8. 16 8
  d4.~4 g8 % B
  ees8. d16 ees8 d d d
  ees8[g] aes g4 8
  f8. 16 8 ees d ees % C
  d4.~4 ees8
  ees8. 16 8 f8. 16 8
  ees4.~4 fis8 % D
  g8 8 8 fis8 8 8
  g4.(aes4) f8
  ees8. d16 ees8 d8. 16 8
  ees8[g] aes8 g4 ees8 % E
  ees8 8 8 8. f16 d8
  ees4.~4
}

tenor = \relative {
  \autoBeamOff
  bes8
  bes8. 16 8 8. 16 8
  g8[bes] c  bes4 8
  c8. 16 bes8 c8. 16 a8
  bes4.~4 8 % B
  bes8. 16 8 8 8 8
  g8[bes] c bes4 8
  bes8. ees16 d8 a bes c % C
  bes4.~4 g8
  g8. aes16 g8 8. 16 8
  g4.~4 c8 % D
  d8 ees d a bes c
  d4.~4 bes8
  bes8. 16 8 8. 16 8
  g8[bes] c bes4 aes8 % E
  bes8 c c bes8. 16 aes8
  g4.~4
}

bass = \relative {
  \autoBeamOff
  ees8
  ees8. aes16 g8 f8. 16 8
  ees4 8 4 g8
  aes8. 16 g8 f8. 16 8
  bes4.~4 ees,8 % B
  ees8. aes16 g8 f f f
  ees4 8 4 e8
  f8. 16 8 8 8 8 % C
  bes,4.~4 ees8
  ees8. 16 8 f8. 16 8
  c4.~4 a8 % D
  bes8 c d d d d
  g4.(f4) bes,8
  ees8. aes16 g8 f8. 16 8
  ees4 8 4 aes8
  g8 c, f bes,8. 16 8
  ees4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  O won -- der -- ful, won -- der -- ful Word,
  My trea -- sure, my hope, and my stay;
  Each prom -- ise re -- cord -- ed de -- lights my soul,
  And bright -- ens each step of my way.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Thy Word is a lamp to my feet, O Lord;
  Thy Word is a light to my way;
  It shines in my soul like a star by night,
  And com -- forts and cheers me by day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thy Word is a lamp to my feet, O Lord;
  And, trust -- ing in Thee as my all,
  What -- ev -- er of e -- vil may cross my path,
  I nev -- er, no nev -- er can fall.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thy Word is a lamp to my feet, O Lord;
  And oh, when Thy glo -- ry I see,
  For all the rich bless -- ings its truth has brought,
  The praise will I give un -- to -- Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thy " "Word " "is " "a " "lamp " "to " "my " "feet, " "O " "Lord; "
  "\nThy " "Word " "is " "a " "light " "to " "my " "way; "
  "\nIt " "shines " "in " "my " "soul " "like " "a " "star " "by " "night, "
  "\nAnd " com "forts " "and " "cheers " "me " "by " "day. "
  "\nO " won der "ful, " won der "ful " "Word, "
  "\nMy " trea "sure, " "my " "hope, " "and " "my " "stay; "
  "\nEach " prom "ise " re cord "ed " de "lights " "my " "soul, "
  "\nAnd " bright "ens " "each " "step " "of " "my " "way. "

  \set stanza = "2."
  "\nThy " "Word " "is " "a " "lamp " "to " "my " "feet, " "O " "Lord; "
  "\nAnd, " trust "ing " "in " "Thee " "as " "my " "all, "
  "\nWhat" ev "er " "of " e "vil " "may " "cross " "my " "path, "
  "\nI " nev "er, " "no " nev "er " "can " "fall. "
  "\nO " won der "ful, " won der "ful " "Word, "
  "\nMy " trea "sure, " "my " "hope, " "and " "my " "stay; "
  "\nEach " prom "ise " re cord "ed " de "lights " "my " "soul, "
  "\nAnd " bright "ens " "each " "step " "of " "my " "way. "

  \set stanza = "3."
  "\nThy " "Word " "is " "a " "lamp " "to " "my " "feet, " "O " "Lord; "
  "\nAnd " "oh, " "when " "Thy " glo "ry " "I " "see, "
  "\nFor " "all " "the " "rich " bless "ings " "its " "truth " "has " "brought, "
  "\nThe " "praise " "will " "I " "give " un to "Thee. "
  "\nO " won der "ful, " won der "ful " "Word, "
  "\nMy " trea "sure, " "my " "hope, " "and " "my " "stay; "
  "\nEach " prom "ise " re cord "ed " de "lights " "my " "soul, "
  "\nAnd " bright "ens " "each " "step " "of " "my " "way. "
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
