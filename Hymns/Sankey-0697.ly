\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Our God is Marching on."
  subtitle    = "Sankey No. 697"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. Steffe."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Julia Ward Howe."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2
  \textMark \markup { \box \bold "B" }    s1*2 s2
  \textMark \markup { \box \bold "C" } s2 s1*3
  \textMark \markup { \box \bold "D" }    s1*4
  \textMark \markup { \box \bold "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed g'8.(16) \slurSolid |}
  \tag #'v1         {            g4                  |}
  \tag #'(v2 v3 v4) {            g8. 16             |}
  8. 16 8. f16 e8 g c d | e8. 16 8. d16 c4 8 b |
  a8. 16 8. b16 c8 b c a | g8. a16 g8. e16 g4 8 8 | 8. 16 8. f16 \bar "|" \break
  e8 g c d | e8. 16 8. d16 c4 4 | d d c b | c2. r4 |
  \section \sectionLabel \markup\smallCaps Chorus.
  g4. f8 e g c8. d16 | e2 c4 r | a4. b8 c8. b16 c8. a16 | g2 e4 r |
  g4. f8 e g c8. d16 | e2 c4 4 | d d c b | c2.
}

alto = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed e'8.(16) \slurSolid |}
  \tag #'v1         {            e4                  |}
  \tag #'(v2 v3 v4) {            e 8. 16             |}
  8. 16 8. d16 c8 e g a | g8. 16 8. f16 e4 g8 g |
  f8. 16 8. g16 a8 gis a f | e8. f16 e8. c16 e4 8 8 | 8. 16 8. d16
  c8 d g a | g8. 16 8. f16 e4 g | f f e d | e2. r4 \section
  e4. d8 c e e8. f16 | g2 e4 r | f4. g8 a8. gis16 a8. f16 | e2 c4 r |
  e4. d8 c e e8. f16 | g2 e4 g | f f e d | e2.
}

tenor = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed c'8.(16) \slurSolid |}
  \tag #'v1         {            c4                  |}
  \tag #'(v2 v3 v4) {            c8.  16             |}
  8. 16 8. g16 8 c c c | 8. 16 b8. g16 4 c8 c |
  c8. 16 8. 16 8 8 8 8 | 8. 16 8. g16 c4 8 8 | 8. 16 8. g16
  g8 c c c | 8. 16 b8. 16 c4 c | a a g g | 2. r4 \section
  c4. g8 g c c8. 16 | 2 4 r | 4. 8 8. f16 8. c16 | 2 g4 r |
  c4. g8 8 c c8. 16 | 2 4 4 | a a g g | 2.
}

bass = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed c8.(16) \slurSolid |}
  \tag #'v1         {            c4                 |}
  \tag #'(v2 v3 v4) {            c8. 16             |}
  8. 16 8. b16 c8 8 e f | c8. 16 b8. g16 4 c8 8 |
  f8. 16 8. 16 8 8 8 8 | c8. 16 8. 16 4 8 8 | 8. 16 8. b16
  c8 8 e f | g8. 16 8. gis16 a4 e | f e g g, | c2. r4 \section
  c4. 8 8 8 8. 16 | 2 4 r | f4. 8 8. 16 8. 16 | c2 4 r |
  c4. 8 8 8 8. 16 | 2 4 e | f d g g, | c2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Glo -- ry, glo -- ry! Hal -- le -- lu -- jah!
  Glo -- ry, glo -- ry! Hal -- le -- lu -- jah!
  Glo -- ry, glo -- ry! Hal -- le -- lu -- jah!
  Our God is march -- ing on.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Mine eyes have seen the glo -- ry of the com -- ing of the Lord;
  He is tramp -- ling out the vin -- tage where the grapes of wrath are stored;
  He hath loosed the fate -- ful light -- ning of His ter -- rib -- le, swift sword:
  Our God is march -- ing on.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  \nom I have \yesm seen him in the watch -- fires of a hun -- dred cir -- cling camps;
  They have build -- ed Him an al -- tar in the ev -- 'ning dews and damps;
  I can read His right -- eous sen -- tence by the dim and flar -- ing lamps:
  Our God is march -- ing on.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  \nom He has \yesm sound -- ed forth the trum -- pet that shall nev -- er call re -- treat;
  He is sif -- ting out the hearts of men be -- fore His judg -- ment- seat;
  Oh be swift, my soul, to an -- swer Him! be ju -- bi -- lant, me feet!
  Our God is march -- ing on.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  \nom In the \yesm beau -- ty of the lil -- ies Christ was born a -- cross the sea,
  With a glo -- ry in His bos -- om that trans -- fig -- ures you and me;
  As He died to make men ho -- ly let us die to make men free,
  While God is march -- ing on.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Mine " "eyes " "have " "seen " "the " glo "ry " "of " "the " com "ing " "of " "the " "Lord; "
  "\nHe " "is " tramp "ling " "out " "the " vin "tage " "where " "the " "grapes " "of " "wrath " "are " "stored; "
  "\nHe " "hath " "loosed " "the " fate "ful " light "ning " "of " "His " ter rib "le, " "swift " "sword: "
  "\nOur " "God " "is " march "ing " "on. "
  "\nGlo" "ry, " glo "ry! " Hal le lu "jah! "
  "\nGlo" "ry, " glo "ry! " Hal le lu "jah! "
  "\nGlo" "ry, " glo "ry! " Hal le lu "jah! "
  "\nOur " "God " "is " march "ing " "on.\n"

  \set stanza = "2."
  "\nI " "have " "seen " "him " "in " "the " watch "fires " "of " "a " hun "dred " cir "cling " "camps; "
  "\nThey " "have " build "ed " "Him " "an " al "tar " "in " "the " ev "'ning " "dews " "and " "damps; "
  "\nI " "can " "read " "His " right "eous " sen "tence " "by " "the " "dim " "and " flar "ing " "lamps: "
  "\nOur " "God " "is " march "ing " "on. "
  "\nGlo" "ry, " glo "ry! " Hal le lu "jah! "
  "\nGlo" "ry, " glo "ry! " Hal le lu "jah! "
  "\nGlo" "ry, " glo "ry! " Hal le lu "jah! "
  "\nOur " "God " "is " march "ing " "on.\n"

  \set stanza = "3."
  "\nHe " "has " sound "ed " "forth " "the " trum "pet " "that " "shall " nev "er " "call " re "treat; "
  "\nHe " "is " sif "ting " "out " "the " "hearts " "of " "men " be "fore " "His " judg ment "seat; "
  "\nOh " "be " "swift, " "my " "soul, " "to " an "swer " "Him! " "be " ju bi "lant, " "me " "feet! "
  "\nOur " "God " "is " march "ing " "on. "
  "\nGlo" "ry, " glo "ry! " Hal le lu "jah! "
  "\nGlo" "ry, " glo "ry! " Hal le lu "jah! "
  "\nGlo" "ry, " glo "ry! " Hal le lu "jah! "
  "\nOur " "God " "is " march "ing " "on.\n"

  \set stanza = "4."
  "\nIn " "the " beau "ty " "of " "the " lil "ies " "Christ " "was " "born " a "cross " "the " "sea, "
  "\nWith " "a " glo "ry " "in " "His " bos "om " "that " trans fig "ures " "you " "and " "me; "
  "\nAs " "He " "died " "to " "make " "men " ho "ly " "let " "us " "die " "to " "make " "men " "free, "
  "\nWhile " "God " "is " march "ing " "on. "
  "\nGlo" "ry, " glo "ry! " Hal le lu "jah! "
  "\nGlo" "ry, " glo "ry! " Hal le lu "jah! "
  "\nGlo" "ry, " glo "ry! " Hal le lu "jah! "
  "\nOur " "God " "is " march "ing " "on. "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash  \alto }
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice \partCombine #'(2 . 88) {
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
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
            }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
