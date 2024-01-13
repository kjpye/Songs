\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "They that be Wise."
  subtitle    = "Sankey No. 775"
  subsubtitle = "Sankey 880 No. 518"
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
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*2
  \textMark \markup { \box \bold "B" }    s2.*3
  \textMark \markup { \box \bold "C" }    s2.*2 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2 s8
  \textMark \markup { \box \bold "E" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'8 | 8 g aes bes c d | ees d c bes4 8 |
  bes8 aes g f g aes | g4.~4 bes8 | c8. 16 8 8 d ees |
  ees16 bes8. 8 4 8 | 8. 16 8 c[d] ees | d4.~8
  \section \sectionLabel \markup\smallCaps Chorus. \break
  c8 d | ees4 8 8 d c | bes4.~8 g aes | bes8. 16 8 16 aes8. f8 | g4.~4 \bar "|" \break
  bes8 | c8. 16 8 8 d ees | 4^\markup\italic rit. bes8 8 g aes | bes4 8 4 d,8 | ees4.~4
}

alto = \relative {
  \autoBeamOff
  ees'8 | 8 8 f g aes8 8 | g bes aes g4 ees8 |
  g8 f ees d ees f | ees4.~4 8 | 8. 16 8 8 8 aes |
  g16 ees8. 8 4 8 | d8. 16 8 f4 8 | 4.~8 \section
  f8 8 | ees4 8 8 8 8 | 4.~8 8 d | ees8. 16 8 d16 8. 8 | ees4.~4
  ees8 | 8. 16 8 8 aes8 8 | g4 ees8 8 8 8 | 4 c8 d4 bes8 | 4.~4
}

tenor = \relative {
  \autoBeamOff
  g8 | g bes8 8 ees8 8 bes | 8 8 c ees4 bes8 |
  bes8 8 8 8 8 8 | 4.~4 g8 | aes8. 16 8 8 bes c |
  bes16 g8. 8 4 8 | bes8. 16 8 a[bes] c | bes4.~8 \section
  d8 bes | 4 8 c bes aes | g4.~8 bes8 8 | 8. 16 8 16 8. 8 | 4.~4
  g8 | aes8. 16 8 8 bes c | bes4 g8 g bes aes | g4 ees8 f4 aes8 | g4.~4
}

bass = \relative {
  \autoBeamOff
  ees8 | 8 8 8 8 aes f | ees8 8 8 4 g8 |
  bes8 8 8 bes,8 8 8 | ees4.~4 8 | aes8. 16 8 8 8 8 |
  ees16 8. 8 4 8 | f8. 16 8 4 8 | bes4.~8 \section
  aes8 8 | g4 8 aes8 8 8 | ees4.~8 8 f | g8. 16 8 f16 8. bes,8 | ees4.~4
  ees8 | aes8. 16 8 8 f ees | 4 8 8 8 c | bes4 8 4 8 | ees4.~4
}

chorus = \lyricmode {
  They shall shine as bright as the stars,
  In the firm -- a -- ment jew -- elled with light;
  And they that turn ma -- ny to right -- eous -- ness,
  As the stars for ev -- er bright.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, list to the voice of the pro -- phet of old,
  Pro -- claim -- ing in lan -- guage Di -- vine,
  The won -- der -- ful, won -- der -- ful mes -- sage of truth—
  That “they that be wise shall shine!”
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Though rug -- ged the path where our du -- ty may lead,
  Oh, why should we ev -- er re -- pine?
  When faith -- ful and true is the pro -- mise to all—
  That “they that be wise shall shine!”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The gran -- deur of wealth, and the tem -- ples of fame,
  Where beau -- ty and splen -- dour com -- bine,
  Will per -- ish for -- got -- ten, and crum -- ble in dust;
  But “they that be wise shall shine!”
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Then let us go forth to the work yet to do,
  With zeal that shall nev -- er de -- cline;
  Be strong in the Lord, and the prom -- ise be -- lieve—
  That “they that be wise shall shine!”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "list " "to " "the " "voice " "of " "the " pro "phet " "of " "old, "
  "\nPro" claim "ing " "in " lan "guage " Di "vine, "
  "\nThe " won der "ful, " won der "ful " mes "sage " "of " "truth— "
  "\nThat " "“they " "that " "be " "wise " "shall " "shine!” "
  "\nThey " "shall " "shine " "as " "bright " "as " "the " "stars, "
  "\nIn " "the " firm a "ment " jew "elled " "with " "light; "
  "\nAnd " "they " "that " "turn " ma "ny " "to " right eous "ness, "
  "\nAs " "the " "stars " "for " ev "er " "bright.\n"

  \set stanza = "2."
  "\nThough " rug "ged " "the " "path " "where " "our " du "ty " "may " "lead, "
  "\nOh, " "why " "should " "we " ev "er " re "pine? "
  "\nWhen " faith "ful " "and " "true " "is " "the " pro "mise " "to " "all— "
  "\nThat " "“they " "that " "be " "wise " "shall " "shine!” "
  "\nThey " "shall " "shine " "as " "bright " "as " "the " "stars, "
  "\nIn " "the " firm a "ment " jew "elled " "with " "light; "
  "\nAnd " "they " "that " "turn " ma "ny " "to " right eous "ness, "
  "\nAs " "the " "stars " "for " ev "er " "bright.\n"

  \set stanza = "3."
  "\nThe " gran "deur " "of " "wealth, " "and " "the " tem "ples " "of " "fame, "
  "\nWhere " beau "ty " "and " splen "dour " com "bine, "
  "\nWill " per "ish " for got "ten, " "and " crum "ble " "in " "dust; "
  "\nBut " "“they " "that " "be " "wise " "shall " "shine!” "
  "\nThey " "shall " "shine " "as " "bright " "as " "the " "stars, "
  "\nIn " "the " firm a "ment " jew "elled " "with " "light; "
  "\nAnd " "they " "that " "turn " ma "ny " "to " right eous "ness, "
  "\nAs " "the " "stars " "for " ev "er " "bright.\n"

  \set stanza = "4."
  "\nThen " "let " "us " "go " "forth " "to " "the " "work " "yet " "to " "do, "
  "\nWith " "zeal " "that " "shall " nev "er " de "cline; "
  "\nBe " "strong " "in " "the " "Lord, " "and " "the " prom "ise " be "lieve— "
  "\nThat " "“they " "that " "be " "wise " "shall " "shine!” "
  "\nThey " "shall " "shine " "as " "bright " "as " "the " "stars, "
  "\nIn " "the " firm a "ment " jew "elled " "with " "light; "
  "\nAnd " "they " "that " "turn " ma "ny " "to " right eous "ness, "
  "\nAs " "the " "stars " "for " ev "er " "bright. "
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

#(set-global-staff-size 19)

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
