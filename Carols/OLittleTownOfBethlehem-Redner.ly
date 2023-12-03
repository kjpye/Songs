\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Little Town of Bethlehem"
%  subtitle    = "Sankey No. X"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Lewis H. Rednet"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Phillips Brooks"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*6
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 | b b ais b |
  \tag #'dash       {\slurDashed d4(c) \slurSolid e, a |}
  \tag #'v2         {            d4(c)            e, a |}
  \tag #'(v1 v3 v4) {            d4 c             e, a |}
  g fis8([g]) a4 d, | b'2. 4 |
  b4 b e d | d c e, a | g fis8([g]) b4 a | g2. b4 |
  b4 b a g | fis2 4 4 | e fis g a | b2. 4 |
  b4 b ais b | d c e, e' | d g, b4. a8 | g2.
}

alto = \relative {
  \autoBeamOff
  d'4 | d d cis d |
  \tag #'dash       {\slurDashed f(e) \slurSolid c e |}
  \tag #'v2         {            f(e)            c e |}
  \tag #'(v1 v3 v4) {            f e             c e |}
  d d d d | 2. 4 |
  d4 g gis gis | a e c e | d d fis fis | g2. 4 |
  g4 g fis e | dis2 4 4 | e fis g e | fis2. g4 |
  d4 d cis d | e e c e8([fis]) | g4 cis, d4. c8 | b2.
}

tenor = \relative {
  \autoBeamOff
  g4 | g g g g |
  \tag #'dash       {\slurDashed gis(a) \slurSolid a c |}
  \tag #'v2         {            gis(a)            a c |}
  \tag #'(v1 v3 v4) {            gis a             a c |}
  b a8([b]) c4 c | b2. g4 |
  g4 b b e | e e e c | b ais8([b]) d4 c | b2. d4 |
  d4 b c cis | dis2 4 b | e, fis g e' | dis2. d4 |
  g,4 g g g | gis a a c | b a g4. fis8 | g2.
}

bass = \relative {
  \autoBeamOff
  g4 | g g g g |
  \tag #'dash       {\slurDashed c,4(c) \slurSolid c  c |}
  \tag #'v2         {            c2                c4 c |}
  \tag #'(v1 v3 v4) {            c c               c  c |}
  d d d d | g,2. g'4 |
  g4 f e e | a a a, c | d d d d | g2. 4 |
  g4 g a ais | b2 4 b, | e fis g c | b2. g4 |
  g4 g g g | c, c c c | d e d4. 8 | g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O lit -- tle town of \nom Beth -- le -- hem! \yesm
  How still we see thee lie;
  A -- bove thy deep and dream -- less sleep
  The si -- lent stars go by;
  Yet in thy dark streets shin -- eth
  The ev -- er -- last -- ing Light;
  The hopes and fears of all the years
  Are met in thee to -- night.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  For Christ is born of Ma -- ry;
  And gath -- er'd all a -- bove,
  While mor -- tals sleep, the an -- gels keep
  Their watch of won -- d'ring love.
  O morn -- ing stars, to -- geth -- er
  pro -- claim the ho -- ly birth!
  And prais -- es sing to God the King,
  And peace to men on earth.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  How si -- lent -- ly, how \nom si -- lent -- ly, \yesm
  The won -- drous gift is giv'n!
  So God im -- parts to hu -- man hearts
  The bless -- ings of His heav'n.
  No ear may hear His com -- ing,
  But in this world of sin,
  Where meek souls will re -- ceive Him still
  The dear Christ en -- ters in.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O Ho -- ly child of \nom Beth -- le -- hem! \yesm
  De -- scend to us, we pray;
  Castr out our sins, and en -- ter in,
  Be born in us to -- day.
  We hear the Christ -- mas an -- gfels
  The great glad tid -- ings tell,
  O come to us, a -- bide with us;
  Our Lord Em -- man -- u -- el!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " lit "tle " "town " "of " Beth le "hem! "
  "\nHow " "still " "we " "see " "thee " "lie; "
  "\nA" "bove " "thy " "deep " "and " dream "less " "sleep "
  "\nThe " si "lent " "stars " "go " "by; "
  "\nYet " "in " "thy " "dark " "streets " shin "eth "
  "\nThe " ev er last "ing " "Light; "
  "\nThe " "hopes " "and " "fears " "of " "all " "the " "years "
  "\nAre " "met " "in " "thee " to "night.\n"

  \set stanza = "2."
  "\nFor " "Christ " "is " "born " "of " Ma "ry; "
  "\nAnd " gath "er'd " "all " a "bove, "
  "\nWhile " mor "tals " "sleep, " "the " an "gels " "keep "
  "\nTheir " "watch " "of " won "d'ring " "love. "
  "\nO " morn "ing " "stars, " to geth "er "
  "\npro" "claim " "the " ho "ly " "birth! "
  "\nAnd " prais "es " "sing " "to " "God " "the " "King, "
  "\nAnd " "peace " "to " "men " "on " "earth.\n"

  \set stanza = "3."
  "\nHow " si lent "ly, " "how " si lent "ly, "
  "\nThe " won "drous " "gift " "is " "giv'n! "
  "\nSo " "God " im "parts " "to " hu "man " "hearts "
  "\nThe " bless "ings " "of " "His " "heav'n. "
  "\nNo " "ear " "may " "hear " "His " com "ing, "
  "\nBut " "in " "this " "world " "of " "sin, "
  "\nWhere " "meek " "souls " "will " re "ceive " "Him " "still "
  "\nThe " "dear " "Christ " en "ters " "in.\n"

  \set stanza = "4."
  "\nO " Ho "ly " "child " "of " Beth le "hem! "
  "\nDe" "scend " "to " "us, " "we " "pray; "
  "\nCastr " "out " "our " "sins, " "and " en "ter " "in, "
  "\nBe " "born " "in " "us " to "day. "
  "\nWe " "hear " "the " Christ "mas " an "gfels "
  "\nThe " "great " "glad " tid "ings " "tell, "
  "\nO " "come " "to " "us, " a "bide " "with " "us; "
  "\nOur " "Lord " Em man u "el! "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
%            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
          >>
        >>
    \layout { }
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
%            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
%            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \soprano
                                                 \keepWithTag #'v2 \soprano
                                                 \keepWithTag #'v3 \soprano
                                                 \keepWithTag #'v4 \soprano
                                                 \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \keepWithTag #'v4 \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \tenor
                                                 \keepWithTag #'v2 \tenor
                                                 \keepWithTag #'v3 \tenor
                                                 \keepWithTag #'v4 \tenor
                                               }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
              \keepWithTag #'v4 \bass
            }
          >>
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
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
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
