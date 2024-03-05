\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Press On!"
  subtitle    = "Sankey No. 834"
  subsubtitle = "N. H. No. 99"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "7.6. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key des \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*4
  \textMark \markup { \box \bold "B" }    s1*5
  \textMark \markup { \box \bold "C" }    s1*4 s2.
  \textMark \markup { \box \bold "D" } s4 s1*5
  \textMark \markup { \box \bold "E" }    s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  des'4 | f f ges ees | des4 2 8[f] | aes4 4 bes aes | f2. 4 |
  ges4 f bes aes | 4.(ges8) f4 f | ees4 4 f g | aes2. 4 | bes4 aes bes c |
  des4 aes2 4 | bes des c bes | aes2. ges4 | f aes des f | ees des c \bar "|" \break
  bes4 | aes8 des4. 4. c8 | bes2. r4
  \section \sectionLabel \markup\smallCaps Refrain.
  ees8 4. des ees8 | f2. r4 | ees8 4. des bes8 |
  aes2. ges4 | f aes des f | ees des c bes | aes8 des4. 4. c8 | des2.
}

alto = \relative {
  \autoBeamOff
  des'4 | 4 4 ees c | des4 2 4 | c c c ees | des2. 4 |
  des4 4 4 4 | 4(ees) des4 4 | c c des des | c2. des4 | 4 4 ges ges |
  f4 2 4 | ges aes g g | aes2. c,4 | des ees aes4 4 | ges4 4 4
  e4 | f8 4. ges4. 8 | f2. r4 \section | aes8 4. 4. ges8 | f2. r4 | aes8 4. g4. 8 |
  aes2. c,4 | des ees aes4 4 | ges4 4 4 e | f8 4. ges4. 8 | f2.
}

tenor = \relative {
  \autoBeamOff
  f4 | bes4 4 4 ges | f4 2  bes4 | 4 ees4 4 bes | 2. 4 |
  bes4 aes ges aes | bes(c) des aes | 4 4 des bes | aes2. f4 ges4 aes c aes |
  aes4 des2 4 | 4 4 ees des | c(ees des) aes | 4 c des ces | bes4 4 c
  des4 | 8 aes4. ees' aes,8 | 2. r4 \section | c8 4. des c8 | des2. r4 | c8 4. bes des8 |
  c4(ees des) aes | 4 c des ces | bes4 4 c des | 8 aes4. ees' aes,8 | 2.
}

bass = \relative {
  \autoBeamOff
  des4 | 4 4 aes4 4 | des4 2 f8[des] | aes4 4 4 c | des2. 4 |
  des4 4 ges f | ees(aes,) des4 4 | ees4 4 4 4 | aes,2. des4 | ges4 f ees4 4 |
  des4 2 4 | ges f ees4 4 | aes(ges f) ees | des ges f des | ges4 4 4
  g4 | aes8 4. aes,4. 8 | des2. r4 \section aes'8 4. f ees8 | des2. r4 | ees8 4. 4. 8 |
  aes4(ges f) ees | des ges f des | ges4 4 4 g | aes8 4. aes,4. 8 | des2.
}

chorus = \lyricmode {
  Ga -- ther o -- ver there!
  Ga -- ther o -- ver there!
  And soon, be -- yond the swell -- ing tide,
  We'll ga -- ther o -- ver there!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Press on, press on, O pil -- grim,
  Re -- joic -- ing in the Lord;
  Be -- liev -- ing in His prom -- ise,
  And trust -- ing in His word;
  Fear not! for He is with us,
  What -- e'er the cross we bear;
  And soon be -- yond the swell -- ing tide,
  We'll ga -- ther o -- ver there!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Press on, press on, O pil -- grim,
  A -- long the heaven -- ly way;
  Re -- mem -- ber, God com -- mands us
  To watch, and work, and pray;
  He bids us all be faith -- ful,
  And cast on Him our care;
  And soon be -- yond the swell -- ing tide,
  We'll ga -- ther o -- ver there!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Press on, press on, O pil -- grim,
  Though clouds and storms may rise;
  The Light that nev -- er fail -- eth
  Shines bright -- ly in the skies:
  Press on where crowns a -- wait us,
  In yon -- der man -- sions fair;
  And soon be -- yond the swell -- ing tide,
  We'll ga -- ther o -- ver there!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Press " "on, " "press " "on, " "O " pil "grim, "
  "\nRe" joic "ing " "in " "the " "Lord; "
  "\nBe" liev "ing " "in " "His " prom "ise, "
  "\nAnd " trust "ing " "in " "His " "word; "
  "\nFear " "not! " "for " "He " "is " "with " "us, "
  "\nWhat" "e'er " "the " "cross " "we " "bear; "
  "\nAnd " "soon " be "yond " "the " swell "ing " "tide, "
  "\nWe'll " ga "ther " o "ver " "there! "
  "\nGa" "ther " o "ver " "there! "
  "\nGa" "ther " o "ver " "there! "
  "\nAnd " "soon, " be "yond " "the " swell "ing " "tide, "
  "\nWe'll " ga "ther " o "ver " "there!\n"

  \set stanza = "2."
  "\nPress " "on, " "press " "on, " "O " pil "grim, "
  "\nA" "long " "the " heaven "ly " "way; "
  "\nRe" mem "ber, " "God " com "mands " "us "
  "\nTo " "watch, " "and " "work, " "and " "pray; "
  "\nHe " "bids " "us " "all " "be " faith "ful, "
  "\nAnd " "cast " "on " "Him " "our " "care; "
  "\nAnd " "soon " be "yond " "the " swell "ing " "tide, "
  "\nWe'll " ga "ther " o "ver " "there! "
  "\nGa" "ther " o "ver " "there! "
  "\nGa" "ther " o "ver " "there! "
  "\nAnd " "soon, " be "yond " "the " swell "ing " "tide, "
  "\nWe'll " ga "ther " o "ver " "there!\n"

  \set stanza = "3."
  "\nPress " "on, " "press " "on, " "O " pil "grim, "
  "\nThough " "clouds " "and " "storms " "may " "rise; "
  "\nThe " "Light " "that " nev "er " fail "eth "
  "\nShines " bright "ly " "in " "the " "skies: "
  "\nPress " "on " "where " "crowns " a "wait " "us, "
  "\nIn " yon "der " man "sions " "fair; "
  "\nAnd " "soon " be "yond " "the " swell "ing " "tide, "
  "\nWe'll " ga "ther " o "ver " "there! "
  "\nGa" "ther " o "ver " "there! "
  "\nGa" "ther " o "ver " "there! "
  "\nAnd " "soon, " be "yond " "the " swell "ing " "tide, "
  "\nWe'll " ga "ther " o "ver " "there! "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
            \addlyrics \wordsMidiMen
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
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

\book {
  \paper {
    output-suffix = singlepage
  }
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
