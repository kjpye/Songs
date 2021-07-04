\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My God, I have Found."
  subtitle    = "Sankey No. 131"
  subsubtitle = "Sankey 880 No. 72"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "English Air."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Denham Smith."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  d'4
  g4 4 4
  g2 \slurDashed g8(a)
  b4 4 4
  b2 g8(b) \slurSolid
  d4 4 4
  e4 d b % B
  b4 a a
  a2 \bar "||" \partial 4 d8.^\markup\smallCaps Chorus. 16
  e4 d b8. a16
  g4 4 d'8 8
  e4 d c % C
  a2 d8 8
  e4 d b8. a16
  g4 4 b
  c4 b a
  g2
}

sopranoA = \relative {
  d'4
  g4 4 4
  g2 g8(a)
  b4 4 4
  b2 g8(b)
  d4 4 4
  e4 d b % B
  b4 a a
  a2 \bar "||" \partial 4 d8.^\markup\smallCaps Chorus. 16
  e4 d b8. a16
  g4 4 d'8 8
  e4 d c % C
  a2 d8 8
  e4 d b8. a16
  g4 4 b
  c4 b a
  g2
}

sopranoB = \relative {
  d'4
  g4 4 4
  g2 g8 a
  b4 4 4
  b2 g8 b
  d4 4 4
  e4 d b % B
  b4 a a
  a2 \bar "||" \partial 4 d8.^\markup\smallCaps Chorus. 16
  e4 d b8. a16
  g4 4 d'8 8
  e4 d c % C
  a2 d8 8
  e4 d b8. a16
  g4 4 b
  c4 b a
  g2
}

alto = \relative {
  d'4
  d4 4 4
  d2 \slurDashed 8(8)
  d4 4 4
  d2 8(8)
  g4 4 4
  g4 4 d % B
  d4 4 4
  d2 b'8. 16
  g4 4 d8. 16
  d4 4 g8 8
  g4 4 d % C
  d2 b'8 8
  g4 4 d8. 16
  d4 4 4
  e4 d e
  d2
}

altoA = \relative {
  d'4
  d4 4 4
  d2 4
  d4 4 4
  d2 4
  g4 4 4
  g4 4 d % B
  d4 4 4
  d2 b'8. 16
  g4 4 d8. 16
  d4 4 g8 8
  g4 4 d % C
  d2 b'8 8
  g4 4 d8. 16
  d4 4 4
  e4 d e
  d2
}

altoB = \relative {
  d'4
  d4 4 4
  d2 8 8
  d4 4 4
  d2 8 8
  g4 4 4
  g4 4 d % B
  d4 4 4
  d2 b'8. 16
  g4 4 d8. 16
  d4 4 g8 8
  g4 4 d % C
  d2 b'8 8
  g4 4 d8. 16
  d4 4 4
  e4 d e
  d2
}

tenor = \relative {
  b4
  b4 4 4
  b2 \slurDashed d8(c8)
  b4 g g
  g2 b8(8)
  b4 4 4
  c4 b b % B
  g4 fis fis
  fis2 b8. 16
  c4 b
  g8. 16
  b4 4 8 8
  c4 b g % C
  fis2 b8 8
  c4 b g8. a16
  b4 4 4
  a4 b c
  b2
}

tenorA = \relative {
  b4
  b4 4 4
  b2 d8(c8)
  b4 g g
  g2 b4
  b4 4 4
  c4 b b % B
  g4 fis fis
  fis2 b8. 16
  c4 b
  g8. 16
  b4 4 8 8
  c4 b g % C
  fis2 b8 8
  c4 b g8. a16
  b4 4 4
  a4 b c
  b2
}

tenorB = \relative {
  b4
  b4 4 4
  b2 d8 c8
  b4 g g
  g2 b8 8
  b4 4 4
  c4 b b % B
  g4 fis fis
  fis2 b8. 16
  c4 b
  g8. 16
  b4 4 8 8
  c4 b g % C
  fis2 b8 8
  c4 b g8. a16
  b4 4 4
  a4 b c
  b2
}

bass = \relative {
  g4
  g4 d b
  g2 \slurDashed g'8(fis)
  g4 d b
  g2 g'8(8)
  g4 4 4
  g4 4 4 % B
  d4 4 4
  d2 g8. 16
  c,4 d4 8. 16
  g,4 4 g'8 8
  c,4 d d % C
  d2 g8 8
  c,4 d4 8. 16
  g,4 4 4
  c4 d d
  g,2
}

bassA = \relative {
  g4
  g4 d b
  g2 g'8(fis)
  g4 d b
  g2 g'4
  g4 4 4
  g4 4 4 % B
  d4 4 4
  d2 g8. 16
  c,4 d4 8. 16
  g,4 4 g'8 8
  c,4 d d % C
  d2 g8 8
  c,4 d4 8. 16
  g,4 4 4
  c4 d d
  g,2
}

bassB = \relative {
  g4
  g4 d b
  g2 g'8 fis
  g4 d b
  g2 g'8 8
  g4 4 4
  g4 4 4 % B
  d4 4 4
  d2 g8. 16
  c,4 d4 8. 16
  g,4 4 g'8 8
  c,4 d d % C
  d2 g8 8
  c,4 d4 8. 16
  g,4 4 4
  c4 d d
  g,2
}

chorus = \lyricmode {
  Hal -- le -- lu -- jah! Thine the glo -- ry!
  Hal -- le -- lu -- jah! A -- men
  Hal -- le -- lu -- jah! Thine the glo -- ry, re -- vive us a -- gain.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  My God, I have found the thrice -- bless -- ed ground
  Where life and where joy and true com -- fort a -- bound.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  'Tis found in the blood of Him who once stood
  My re -- fuge and safe -- ty, my Sure -- ty with God.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He bore on the tree the sen -- tence for me,
  And now both the Sure -- ty and sin -- ner are free.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  \set ignoreMelismata = ##t
  Ac -- cep -- ted I am in the once -- off -- ered Lamb,
  It was God who Him -- self had de -- vis -- ed the plan.
  \unset ignoreMelismata
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  And though here be -- low, 'mid sor -- row and woe,
  My place is in hea -- ven with Je -- sus I know.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  And this I shall find, for such is His mind,
  "\"He'll" not be in glo -- ry, and leave me be -- "hind.\""
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  For soon He will come, and take me safe home,
  And make me to sit with Him -- self on His throne.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " "God, " "I " "have " "found " "the " thrice bless "ed " "ground "
  "\nWhere " "life " "and " "where " "joy " "and " "true " com "fort " a "bound. "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry! "
  "\nHal" le lu "jah! " A "men "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry, " re "vive " "us " a "gain. "

  \set stanza = "2."
  "\n'Tis " "found " "in " "the " "blood " "of " "Him " "who " "once " "stood "
  "\nMy " re "fuge " "and " safe "ty, " "my " Sure "ty " "with " "God. "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry! "
  "\nHal" le lu "jah! " A "men "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry, " re "vive " "us " a "gain. "

  \set stanza = "3."
  "\nHe " "bore " "on " "the " "tree " "the " sen "tence " "for " "me, "
  "\nAnd " "now " "both " "the " Sure "ty " "and " sin "ner " "are " "free. "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry! "
  "\nHal" le lu "jah! " A "men "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry, " re "vive " "us " a "gain. "

  \set stanza = "4."
  \set ignoreMelismata = ##t
  "\nAc" cep "ted " "I " "am " "in " "the " once off "ered " "Lamb, "
  "\nIt " "was " "God " "who " Him "self " "had " de vis "ed " "the " "plan. "
  \unset ignoreMelismata
  "\nHal" le lu "jah! " "Thine " "the " glo "ry! "
  "\nHal" le lu "jah! " A "men "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry, " re "vive " "us " a "gain. "

  \set stanza = "5."
  "\nAnd " "though " "here " be "low, " "'mid " sor "row " "and " "woe, "
  "\nMy " "place " "is " "in " hea "ven " "with " Je "sus " "I " "know. "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry! "
  "\nHal" le lu "jah! " A "men "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry, " re "vive " "us " a "gain. "

  \set stanza = "6."
  "\nAnd " "this " "I " "shall " "find, " "for " "such " "is " "His " "mind, "
  "\n\"He'll " "not " "be " "in " glo "ry, " "and " "leave " "me " be "hind.\" "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry! "
  "\nHal" le lu "jah! " A "men "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry, " re "vive " "us " a "gain. "

  \set stanza = "7."
  "\nFor " "soon " "He " "will " "come, " "and " "take " "me " "safe " "home, "
  "\nAnd " "make " "me " "to " "sit " "with " Him "self " "on " "His " "throne. "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry! "
  "\nHal" le lu "jah! " A "men "
  "\nHal" le lu "jah! " "Thine " "the " glo "ry, " re "vive " "us " a "gain. "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
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
            \new Lyrics \lyricsto "aligner"   \wordsSeven
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
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
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \sopranoA \sopranoA \sopranoA \sopranoB \sopranoA \sopranoA \sopranoA }
            \new Voice = "women" \partCombine { \global \sopranoA \sopranoA \sopranoA \sopranoB \sopranoA \sopranoA \sopranoA \bar "|." }
                                               { \global \altoA \nl \altoA \nl \altoA \nl \altoB \nl \altoA \nl \altoA \nl \altoA }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorA \tenorA \tenorA \tenorB \tenorB \tenorB \tenorB }
                                            { \global \bassA \bassA \bassA \bassB \bassA \bassA \bassA }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
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
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \sopranoA \sopranoA \sopranoA \sopranoB \sopranoA \sopranoA \sopranoA }
            \new Voice = "women" \partCombine { \global \sopranoA \sopranoA \sopranoA \sopranoB \sopranoA \sopranoA \sopranoA \bar "|." }
                                               { \global \altoA \nl \altoA \nl \altoA \nl \altoB \nl \altoA \nl \altoA \nl \altoA }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorA \tenorA \tenorA \tenorB \tenorB \tenorB \tenorB }
                                            { \global \bassA \bassA \bassA \bassB \bassA \bassA \bassA }
          >>
        >>
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
    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoA \sopranoA \sopranoA \sopranoB \sopranoA \sopranoA \sopranoA \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoA \nl \altoA \nl \altoA \nl \altoB \nl \altoA \nl \altoA \nl \altoA }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorA \tenorA \tenorA \tenorB \tenorB \tenorB \tenorB }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassA \bassA \bassA \bassB \bassA \bassA \bassA }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
