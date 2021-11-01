\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sit down beneath His Shadow."
  subtitle    = "Sankey No. 284"
  subsubtitle = "Sankey 880 No. 714"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Gauntlett."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. Havergal."
  meter       = \markup\smallCaps "7.6."
  piece       = \markup\smallCaps "St. Alphege."

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
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4
  b4 c d g,
  fis2 g4 4
  fis4 g c b
  a2. \bar "|" \break g4
  b4 c d d
  e2 d4 g,
  g4 a b a
  g2.
}

alto = \relative {
  \autoBeamOff
  d'4
  g4 e d c
  c2 b4 d
  d4 4 a' g
  fis2. g4
  g4 4 fis g
  g4(fis) g d
  g4 4 4 fis
  g2.
}

tenor = \relative {
  \autoBeamOff
  b4
  g4 4 4 4
  a2 g4 d'
  c4 b d d
  d2. b4
  d4 g, a b % B
  c4(a) b b
  b4 e d4. c8
  b2.
}

bass = \relative {
  \autoBeamOff
  g4
  e4 c b e
  d2 g,4 b'
  a4 g fis g
  d2. g4
  g4 e d g % B
  c,2 g'4 b,
  e4 c d d
  g2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Sit down be -- neath His sha -- dow,
  And rest with great de -- light;
  The faith that now be -- holds Him
  Is pledge of fu -- ture sighs.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Our mas -- ter's love re -- mem -- ber,
  Ex -- ceed -- ing great and free;
  Lift up thy heart in glad -- ness,
  For He re -- mem -- bers thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Bring ev -- 'ry wea -- ry bur -- den,
  Thy sin, thy fear, thy grief;
  He calls the hea -- vy la -- den,
  And gives them kind re -- lief.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  A lit -- tle while, though par -- ted,
  Re -- mem -- ber, wait and love;
  Un -- til He comes in glo -- ry,
  Un -- til we meet a -- bove.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Till in the Fa -- ther's King -- dom
  The heaven -- ly feast is spread,
  And we be -- hold His beau -- ty,
  Whose blood for us was shed!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sit " "down " be "neath " "His " sha "dow, "
  "\nAnd " "rest " "with " "great " de "light; "
  "\nThe " "faith " "that " "now " be "holds " "Him "
  "\nIs " "pledge " "of " fu "ture " "sighs. "

  \set stanza = "2."
  "\nOur " mas "ter's " "love " re mem "ber, "
  "\nEx" ceed "ing " "great " "and " "free; "
  "\nLift " "up " "thy " "heart " "in " glad "ness, "
  "\nFor " "He " re mem "bers " "thee. "

  \set stanza = "3."
  "\nBring " ev "'ry " wea "ry " bur "den, "
  "\nThy " "sin, " "thy " "fear, " "thy " "grief; "
  "\nHe " "calls " "the " hea "vy " la "den, "
  "\nAnd " "gives " "them " "kind " re "lief. "

  \set stanza = "4."
  "\nA " lit "tle " "while, " "though " par "ted, "
  "\nRe" mem "ber, " "wait " "and " "love; "
  "\nUn" "til " "He " "comes " "in " glo "ry, "
  "\nUn" "til " "we " "meet " a "bove. "

  \set stanza = "5."
  "\nTill " "in " "the " Fa "ther's " King "dom "
  "\nThe " heaven "ly " "feast " "is " "spread, "
  "\nAnd " "we " be "hold " "His " beau "ty, "
  "\nWhose " "blood " "for " "us " "was " "shed! "
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
