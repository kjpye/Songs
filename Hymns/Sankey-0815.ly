\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Go, Labour On!"
  subtitle    = "Sankey No. 815"
  subsubtitle = "Sankey 880 No. 619"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps ""
  arranger    = \markup{Arr. \smallCaps "Dr. L. Mason."}
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar, D.D."
  meter       = \markup\smallCaps "l.m."
  piece       = \markup\smallCaps "Rothwell."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*6
  \textMark \markup { \box \bold "B" }    s2.*7
  \textMark \markup { \box \bold "C" }    s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 | g2 bes4 | ees2 bes4 | aes(g) f | ees2 f4 | g2 aes4 | bes2 4 |
  c4(bes) aes | bes2 4 | ees2 bes4 | c2 bes4 | 4(aes) g | g(f) f | g2 f4 |
  ees4(f) g8[aes] | bes2 aes4 | g2 bes4 | ees4.(d8) c4 | bes2 ees,8.[f16] | g2 f4 | ees2
}

alto = \relative {
  \autoBeamOff
  ees'4 | g2 bes4 | ees,2 4 | f(ees) d | ees2 d4 | ees2 4 | d2 f4 |
  ees4(d) c | d2 ees4 | 2 4 | 2 4 | d2 ees4 | 4(d) bes | ees2 bes4 |
  g4(bes) ees8[f] | g2 f4 | ees2 4 | 2 4 | 2 ees16[f8.] | ees2 d4 | ees2
}

tenor = \relative {
  \autoBeamOff
  ees4 | g2 bes4 | ees2 bes4 | c(bes) aes | g2 bes4 | 2 f4 | 2 4 |
  g4(f) f | 2 g4 | bes2 g4 | aes2 bes4 | 2 4 | 2 r4 | \apart R2. |
  \auto R2. \apart | R | r4 r \auto g | 4.(bes8) aes4 | g8.(aes16 bes4) c | bes2 aes4 | g2
}

bass = \relative {
  \autoBeamOff
  ees4 | g2 bes4 | ees,2 g4 | aes(bes) bes, | ees2 bes4 | ees2 c4 | bes2 d4 |
  ees4(f) f | bes,2 ees4 | g2 ees4 | aes2 g4 | f2 ees4 | bes2 r4 | ees,2 r4 |
  R2. ees'2 bes4 | ees,2 ees'4 | 2 4 | 8.(f16 g4) aes | bes2 bes,4 | ees2
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Go, la -- bour on; spend and be spent—
  Thy joy to do the Fa -- ther's will;
  It is the way the Mas -- ter went;
  Should not the ser -- vant tread it still?
  Should not the ser -- vant tread it still?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Go, la -- bour on; 'tis not for naught;
  Thine earth -- ly loss is heaven -- ly gain;
  Men heed thee. love thee, praise thee not;
  The Mas -- ter prais -- es— what are men!
  The Mas -- ter prais -- es— what are men!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Go, la -- bour on; e -- nough, while here.
  If He shall praise thee, if He deign
  Thy will -- ing heart to mark and cheer;
  No toil for Him shall be in vain.
  No toil for Him shall be in vain.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Toil on, and in thy toil re -- joice!
  For toil comes rest, for ex -- ile home;
  Soon shalt thou hear the Bride -- groom's voice,
  The mid -- night peal: “Be -- hold, I come!”
  The mid -- night peal: “Be -- hold, I come!”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Go, " la "bour " "on; " "spend " "and " "be " "spent—"
  "\nThy " "joy " "to " "do " "the " Fa "ther's " "will; "
  "\nIt " "is " "the " "way " "the " Mas "ter " "went; "
  "\nShould " "not " "the " ser "vant " "tread " "it " "still? "
  "\nShould " "not " "the " ser "vant " "tread " "it " "still?\n"

  \set stanza = "2."
  "\nGo, " la "bour " "on; " "'tis " "not " "for " "naught; "
  "\nThine " earth "ly " "loss " "is " heaven "ly " "gain; "
  "\nMen " "heed " "thee. " "love " "thee, " "praise " "thee " "not; "
  "\nThe " Mas "ter " prais "es—" "what " "are " "men! "
  "\nThe " Mas "ter " prais "es—" "what " "are " "men!\n"

  \set stanza = "3."
  "\nGo, " la "bour " "on; " e "nough, " "while " "here. "
  "\nIf " "He " "shall " "praise " "thee, " "if " "He " "deign "
  "\nThy " will "ing " "heart " "to " "mark " "and " "cheer; "
  "\nNo " "toil " "for " "Him " "shall " "be " "in " "vain. "
  "\nNo " "toil " "for " "Him " "shall " "be " "in " "vain.\n"

  \set stanza = "4."
  "\nToil " "on, " "and " "in " "thy " "toil " re "joice! "
  "\nFor " "toil " "comes " "rest, " "for " ex "ile " "home; "
  "\nSoon " "shalt " "thou " "hear " "the " Bride "groom's " "voice, "
  "\nThe " mid "night " "peal: " “Be "hold, " "I " "come!” "
  "\nThe " mid "night " "peal: " “Be "hold, " "I " "come!” "
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
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
