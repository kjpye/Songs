\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Brother, Life's Journey Beginning!"
  subtitle    = "Sankey No. 699"
  subsubtitle = "Sankey 880 No. 601"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 6/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1.*3 s2. s2
  \textMark \markup { \box \bold "B" } s4 s1.*3 s2. s2
  \textMark \markup { \box \bold "C" } s4 s1.*3 s2. s2
  \textMark \markup { \box \bold "D" } s4 s1.*3 s2. s2
  \textMark \markup { \box \bold "E" } s4 s1.*3 s2. s2
  \textMark \markup { \box \bold "F" } s4 s1.*3 s2. s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 | f d ees f g a | bes2. f2 4 | g a bes c bes g | f2.~f2 \bar "|" \break
  f4 | f d ees f g a | bes2. f2 bes4 | a a a c bes g | f2.~2 \bar "|" \break
  f4 | f a c ees d c | d bes2~4 r f | f a c ees d c | d2.~2 \bar "|" \break
  d4 | d2 8 8 bes4 c d | f ees2~4 r g, | f8 bes4. 4 4. c8 a4 | bes2.~2
  \section \sectionLabel \markup\smallCaps Chorus. \break
  d4 | 8 4. 4 bes8 4. c4 | bes4 a2~4 r ees' | 8 4. 4 4 d c | d2.~2 \bar "|" \break
  f,4 | bes4. 8 4 d8 4. f4 | 4 ees2~4 r g, | f8 bes4. 4 4. c8 a4 | bes2.~2
}

alto = \relative {
  \autoBeamOff
  d'4 | d bes c d ees ees | d2. 2 4 | ees4 4 d ees4 4 4 | d2.~2
  d4 | d bes c d ees ees | d2. 2 f4 | f f f ees4 4 4 | f2.~2
  f4 | f f f f f f | f d2~4 r f | f f f f f f | 2.~2
  f4 | 2 8 8 4 4 aes | g4 2~4 r ees | d8 f4. d4 4. ees8 c4 | d2.~2 \section
  f4 | 8 4. 4 8 4. g4 | f4 2~4 r f | 8 4. 4 4 4 4 | 2.~2
  d4 | 4. 8 4 f8 4. aes4 | g4 2~4 r ees | d8 f4. 4 d4. ees8 c4 | d2.~2
}

tenor = \relative {
  \autoBeamOff
  bes4 | 4 f f bes bes f | f2. bes2 4 | 4 f f g g bes | 2.~2
  bes4 | 4 f f bes4 4 f | 2. bes2 4 | c c c g g bes | a2.~2
  a4 | a c a c bes a | bes f2~4 r bes | a c a c bes a | bes2.~2
  bes4 | 2 8 8 4 a bes | 4 2~4 r bes4 | 8 d4. bes4 f4. 8 4 | 2.~2 \section
  bes4 | 8 4. 4 8 4. ees4 | d c2~4 r c | 8 4. 4 4 bes a | bes2.~2
  bes4 | f4. 8 4 bes8 4. 4 | 4 2~4 r bes | 8 d4. 4 bes4. a8 f4 | 2.~2
}

bass = \relative {
  \autoBeamOff
  bes,4 | 4 4 4 4 4 4 | 2. 2 4 | 4 4 4 ees4 4 4 | bes2.~2
  bes4 | 4 4 4 4 4 4 | 2. 2 d4 | c4 4 4 4 4 4 | f2.~2
  f4 | 4 4 4 4 4 4 | bes,4 2~4 r d | f f f f f f | bes2.~2
  bes4 | 2 8 8 d,4 f bes | ees,4 2~4 r ees4 | f8 4. 4 4. 8 4 | bes,2.~2 \section
  bes4 | 8 4. 4 d8 4. ees4 | f4 2~4 r f | 8 4. 4 4 4 4 | bes,2.~2
  bes4 | 4. 8 4 8 4. d4 | ees4 2~4 r ees | f8 4. 4 4. 8 4 | bes,2.~2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  God help you to fol -- low His ban -- ner,
  And serve Him wher -- ev -- er you go;
  And when you are temp -- ted, my bro -- ther,
  God give you the grace to say “No.”
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  O bro -- ther, life's jour -- ney be -- gin -- ning,
  With cou -- rage and firm -- ness a -- rise!
  Look well  to the course thou art choos -- ing;
  Be earn -- est, be watch -- ful, and wise!
  Re -- mem -- ber, two paths are be -- fore thee,
  And both thy at -- ten -- tion in -- vite;
  But one lead -- eth on to de -- struc -- tion,
  The o -- ther to joy and de -- light.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O bro -- ther, yield not to the temp -- ter,
  No mat -- ter what o -- thers may do;
  Stand firm in the strength of the Mas -- ter—
  Be loy -- al, be faith -- ful, and true!
  Each tri -- al will make you the strong -- er,
  If you, in the name of the Lord,
  Fight man -- ful -- ly un -- der your Lead -- er,
  O -- bey -- ing the voice of His word.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O bro -- ther, the Sa -- viour is call -- ing!
  Be -- ware of the dan -- ger of sin;
  Re -- sist not the voice of the Spi -- rit,
  That whis -- pers so gen -- tly with -- in.
  God calls you to en -- ter His ser -- vice—
  To live for Him here, day by day;
  And share by- and- by in the glo -- ry
  That nev -- er shall van -- ish a -- way.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " bro "ther, " "life's " jour "ney " be gin "ning, "
  "\nWith " cou "rage " "and " firm "ness " a "rise! "
  "\nLook " "well "  "to " "the " "course " "thou " "art " choos "ing; "
  "\nBe " earn "est, " "be " watch "ful, " "and " "wise! "
  "\nRe" mem "ber, " "two " "paths " "are " be "fore " "thee, "
  "\nAnd " "both " "thy " at ten "tion " in "vite; "
  "\nBut " "one " lead "eth " "on " "to " de struc "tion, "
  "\nThe " o "ther " "to " "joy " "and " de "light. "
  "\nGod " "help " "you " "to " fol "low " "His " ban "ner, "
  "\nAnd " "serve " "Him " wher ev "er " "you " "go; "
  "\nAnd " "when " "you " "are " temp "ted, " "my " bro "ther, "
  "\nGod " "give " "you " "the " "grace " "to " "say " "“No.”\n"

  \set stanza = "2."
  "\nO " bro "ther, " "yield " "not " "to " "the " temp "ter, "
  "\nNo " mat "ter " "what " o "thers " "may " "do; "
  "\nStand " "firm " "in " "the " "strength " "of " "the " Mas "ter— "
  "\nBe " loy "al, " "be " faith "ful, " "and " "true! "
  "\nEach " tri "al " "will " "make " "you " "the " strong "er, "
  "\nIf " "you, " "in " "the " "name " "of " "the " "Lord, "
  "\nFight " man ful "ly " un "der " "your " Lead "er, "
  "\nO" bey "ing " "the " "voice " "of " "His " "word. "
  "\nGod " "help " "you " "to " fol "low " "His " ban "ner, "
  "\nAnd " "serve " "Him " wher ev "er " "you " "go; "
  "\nAnd " "when " "you " "are " temp "ted, " "my " bro "ther, "
  "\nGod " "give " "you " "the " "grace " "to " "say " "“No.”\n"

  \set stanza = "3."
  "\nO " bro "ther, " "the " Sa "viour " "is " call "ing! "
  "\nBe" "ware " "of " "the " dan "ger " "of " "sin; "
  "\nRe" "sist " "not " "the " "voice " "of " "the " Spi "rit, "
  "\nThat " whis "pers " "so " gen "tly " with "in. "
  "\nGod " "calls " "you " "to " en "ter " "His " ser "vice— "
  "\nTo " "live " "for " "Him " "here, " "day " "by " "day; "
  "\nAnd " "share " by and "by " "in " "the " glo "ry "
  "\nThat " nev "er " "shall " van "ish " a "way. "
  "\nGod " "help " "you " "to " fol "low " "His " ban "ner, "
  "\nAnd " "serve " "Him " wher ev "er " "you " "go; "
  "\nAnd " "when " "you " "are " temp "ted, " "my " bro "ther, "
  "\nGod " "give " "you " "the " "grace " "to " "say " "“No.” "
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
