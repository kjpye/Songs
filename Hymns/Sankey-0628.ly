\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Abiding!"
  subtitle    = "Sankey No. 628"
  subsubtitle = "C. C. No. 100"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "S. C. Wright."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. B. J. Root."
  meter       = \markup\smallCaps "L. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 6/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4  s1.*2 s2.
  \textMark \markup { \box \bold "B" } s2. s1.*3
  \textMark \markup { \box \bold "C" }     s1.*3
  \textMark \markup { \box \bold "D" }     s1.*3 s2.
  \textMark \markup { \box \bold "E" } s2. s1.*2 s2. s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 | c'2 bes4 aes(g) aes | bes4(aes) f ees2 4 | 4(f) g \bar "|" \break
  aes2 c4 | 2 bes4 2 ees,4 | ees'2 des4 c2 bes4 | aes2 d4 bes2 ees,4 | \break
  ees4(f) g a(des) c | 2 bes4 aes2 \section \sectionLabel \markup\smallCaps Chorus. ees4 | c'2. aes2 ees4 | \break
  des'2. bes2 r4 | des2 4 4(ees) des | c2.~2 ees,4 | ees'2. \bar "|" \break
  c2 r4 | des2. f,2 r4 | ees2 aes4 g(f) g | aes2.~2
}

alto = \relative {
  \autoBeamOff
  c'4 | ees2 des4 c(bes) c | des2 4 c2 4 | ees4(des) ees
  ees2 4 | c2 d4 ees2 4 | 2 4 2 e4 | f2 4 g2 ees4 |
  ees4(des) ees ees(f) f | ees2 d4 c2 \section 4 | ees2. c2 4 |
  ees2. 2 r4 | g2 4 2 4 | ees2.~2 4 | 2.
  ees2 r4 | f2. des2 r4 | c2 ees4 des2 4 | c4 des des c2 
}

tenor = \relative {
  \autoBeamOff
  aes4 | 2 ees4 2 4 | f2 aes4 2 4 | 2 bes4
  aes2 4 | 2 4 g2 des'4 | c2 bes4 aes2 c4 | 2 bes4 2 g4 |
  aes2 bes4 aes2 4 | 2 g4 aes2 \section 4 | 4 4 4 ees2 aes4 |
  bes4 4 4 g2 r4 | bes2 4 4(c) bes | aes2.~2 c4 | 4 4 4
  aes4 4 r | 4 4 4 4 4 r | 2 c4 bes(aes) bes | aes f fes ees2
}

bass = \relative {
  \autoBeamOff
  aes,4 | 2 4 2 4 | des2 4 aes2 4 | c(des) ees
  c2 aes4 | f'2 bes,4 ees2 g4 | aes2 4 2 g4 | f2 bes,4 ees2 des4 |
  c4(des) des c(des) d | ees2 4 aes,2 \section 4 | 4 4 4 2 aes'4 |
  ees4 4 4 2 r4 | 2 4 2 4 | aes,2.~2 aes'4 | 4 4 4
  aes4 4 r | des,4 4 4 4 4 r | ees2 4 2 4 | aes,2.~2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  A -- bi -- ding, a -- bid -- ing,
  Oh, how won -- drous sweet!
  I'm rest -- ing, rest -- ing
  At the Sa -- viour's feet. __
}

chorusMen = \lyricmode {
  \repeat unfold 32 _
  A -- bi -- ding in Hom,
  I'm rest -- ing in Him,
  _ _ _ _ _
  I'm rest -- ing, yes, rest -- ing,
  rest -- ing, yes, rest -- ing,
  At the Sa -- viour's feet, at His feet.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- bid -- ing, oh, so won -- drous sweet!
  I'm rest -- ing at the Sa -- viour's feet;
  I trust in Him, I'm sat -- is -- fied;
  I'm rest -- ing in the Cru -- ci -- fied!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He speaks, and by His word is giv'n
  His peace, a rich fore -- taste of heav'n;
  Not as the world, He peace doth give:
  'Tis through this hope my soul shall live.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I live, but through His grace a -- lone
  By whom the migh -- ty work is done;
  Dead to my -- self, a -- live to Him,
  I count all loss His rest to win.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Now rest, my heart, the work is done,
  I'm saved by faith thro' Christ the Son!
  Let ev -- ;ry power my soul em -- ploy,
  To tell the world my peace and joy.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "A" bid "ing, " "oh, " "so " won "drous " "sweet! "
  "\nI'm " rest "ing " "at " "the " Sa "viour's " "feet; "
  "\nI " "trust " "in " "Him, " "I'm " sat is "fied; "
  "\nI'm " rest "ing " "in " "the " Cru ci "fied! "
  "\nA" bi "ding, " a bid "ing, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " rest "ing "
  "\nAt " "the " Sa "viour's " "feet.\n" 

  \set stanza = "2."
  "\nHe " "speaks, " "and " "by " "His " "word " "is " "giv'n "
  "\nHis " "peace, " "a " "rich " fore "taste " "of " "heav'n; "
  "\nNot " "as " "the " "world, " "He " "peace " "doth " "give: "
  "\n'Tis " "through " "this " "hope " "my " "soul " "shall " "live. "
  "\nA" bi "ding, " a bid "ing, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " rest "ing "
  "\nAt " "the " Sa "viour's " "feet.\n" 

  \set stanza = "3."
  "\nI " "live, " "but " "through " "His " "grace " a "lone "
  "\nBy " "whom " "the " migh "ty " "work " "is " "done; "
  "\nDead " "to " my "self, " a "live " "to " "Him, "
  "\nI " "count " "all " "loss " "His " "rest " "to " "win. "
  "\nA" bi "ding, " a bid "ing, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " rest "ing "
  "\nAt " "the " Sa "viour's " "feet.\n" 

  \set stanza = "4."
  "\nNow " "rest, " "my " "heart, " "the " "work " "is " "done, "
  "\nI'm " "saved " "by " "faith " "thro' " "Christ " "the " "Son! "
  "\nLet " ev ";ry " "power " "my " "soul " em "ploy, "
  "\nTo " "tell " "the " "world " "my " "peace " "and " "joy. "
  "\nA" bi "ding, " a bid "ing, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " rest "ing "
  "\nAt " "the " Sa "viour's " "feet. " 
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "A" bid "ing, " "oh, " "so " won "drous " "sweet! "
  "\nI'm " rest "ing " "at " "the " Sa "viour's " "feet; "
  "\nI " "trust " "in " "Him, " "I'm " sat is "fied; "
  "\nI'm " rest "ing " "in " "the " Cru ci "fied! "
  "\nA" bi "ding, " a bid "ing, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " rest "ing "
  "\nAt " "the " Sa "viour's " "feet, " "at " "His " "feet\n"

  \set stanza = "2."
  "\nHe " "speaks, " "and " "by " "His " "word " "is " "giv'n "
  "\nHis " "peace, " "a " "rich " fore "taste " "of " "heav'n; "
  "\nNot " "as " "the " "world, " "He " "peace " "doth " "give: "
  "\n'Tis " "through " "this " "hope " "my " "soul " "shall " "live. "
  "\nA" bi "ding, " a bid "ing, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " rest "ing "
  "\nAt " "the " Sa "viour's " "feet, " "at " "His " "feet.\n"

  \set stanza = "3."
  "\nI " "live, " "but " "through " "His " "grace " a "lone "
  "\nBy " "whom " "the " migh "ty " "work " "is " "done; "
  "\nDead " "to " my "self, " a "live " "to " "Him, "
  "\nI " "count " "all " "loss " "His " "rest " "to " "win. "
  "\nA" bi "ding, " a bid "ing, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " rest "ing "
  "\nAt " "the " Sa "viour's " "feet, " "at " "His " "feet.\n"

  \set stanza = "4."
  "\nNow " "rest, " "my " "heart, " "the " "work " "is " "done, "
  "\nI'm " "saved " "by " "faith " "thro' " "Christ " "the " "Son! "
  "\nLet " ev ";ry " "power " "my " "soul " em "ploy, "
  "\nTo " "tell " "the " "world " "my " "peace " "and " "joy. "
  "\nA" bi "ding, " a bid "ing, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " rest "ing "
  "\nAt " "the " Sa "viour's " "feet, " "at " "His " "feet. "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "A" bid "ing, " "oh, " "so " won "drous " "sweet! "
  "\nI'm " rest "ing " "at " "the " Sa "viour's " "feet; "
  "\nI " "trust " "in " "Him, " "I'm " sat is "fied; "
  "\nI'm " rest "ing " "in " "the " Cru ci "fied! "
  "\nA" bi "ding " "in " "Him, " "I'm " rest "ing " "in " "Him, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " "yes, " rest "ing, " rest "ing, " "yes " rest "ing, "
  "\nAt " "the " Sa "viour's " "feet, " "at " "His " "feet.\n"

  \set stanza = "2."
  "\nHe " "speaks, " "and " "by " "His " "word " "is " "giv'n "
  "\nHis " "peace, " "a " "rich " fore "taste " "of " "heav'n; "
  "\nNot " "as " "the " "world, " "He " "peace " "doth " "give: "
  "\n'Tis " "through " "this " "hope " "my " "soul " "shall " "live. "
  "\nA" bi "ding " "in " "Him, " "I'm " rest "ing " "in " "Him, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " "yes, " rest "ing, " rest "ing, " "yes " rest "ing, "
  "\nAt " "the " Sa "viour's " "feet, " "at " "His " "feet.\n"

  \set stanza = "3."
  "\nI " "live, " "but " "through " "His " "grace " a "lone "
  "\nBy " "whom " "the " migh "ty " "work " "is " "done; "
  "\nDead " "to " my "self, " a "live " "to " "Him, "
  "\nI " "count " "all " "loss " "His " "rest " "to " "win. "
  "\nA" bi "ding " "in " "Him, " "I'm " rest "ing " "in " "Him, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " "yes, " rest "ing, " rest "ing, " "yes " rest "ing, "
  "\nAt " "the " Sa "viour's " "feet, " "at " "His " "feet.\n"

  \set stanza = "4."
  "\nNow " "rest, " "my " "heart, " "the " "work " "is " "done, "
  "\nI'm " "saved " "by " "faith " "thro' " "Christ " "the " "Son! "
  "\nLet " ev ";ry " "power " "my " "soul " em "ploy, "
  "\nTo " "tell " "the " "world " "my " "peace " "and " "joy. "
  "\nA" bi "ding " "in " "Him, " "I'm " rest "ing " "in " "Him, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " "yes, " rest "ing, " rest "ing, " "yes " rest "ing, "
  "\nAt " "the " Sa "viour's " "feet, " "at " "His " "feet. "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "A" bid "ing, " "oh, " "so " won "drous " "sweet! "
  "\nI'm " rest "ing " "at " "the " Sa "viour's " "feet; "
  "\nI " "trust " "in " "Him, " "I'm " sat is "fied; "
  "\nI'm " rest "ing " "in " "the " Cru ci "fied! "
  "\nA" bi "ding " "in " "Him, " "I'm " rest "ing " "in " "Him, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " "yes, " rest "ing, " rest "ing, " "yes " rest "ing, "
  "\nAt " "the " Sa "viour's " "feet.\n"

  \set stanza = "2."
  "\nHe " "speaks, " "and " "by " "His " "word " "is " "giv'n "
  "\nHis " "peace, " "a " "rich " fore "taste " "of " "heav'n; "
  "\nNot " "as " "the " "world, " "He " "peace " "doth " "give: "
  "\n'Tis " "through " "this " "hope " "my " "soul " "shall " "live. "
  "\nA" bi "ding " "in " "Him, " "I'm " rest "ing " "in " "Him, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " "yes, " rest "ing, " rest "ing, " "yes " rest "ing, "
  "\nAt " "the " Sa "viour's " "feet.\n"

  \set stanza = "3."
  "\nI " "live, " "but " "through " "His " "grace " a "lone "
  "\nBy " "whom " "the " migh "ty " "work " "is " "done; "
  "\nDead " "to " my "self, " a "live " "to " "Him, "
  "\nI " "count " "all " "loss " "His " "rest " "to " "win. "
  "\nA" bi "ding " "in " "Him, " "I'm " rest "ing " "in " "Him, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " "yes, " rest "ing, " rest "ing, " "yes " rest "ing, "
  "\nAt " "the " Sa "viour's " "feet.\n"

  \set stanza = "4."
  "\nNow " "rest, " "my " "heart, " "the " "work " "is " "done, "
  "\nI'm " "saved " "by " "faith " "thro' " "Christ " "the " "Son! "
  "\nLet " ev ";ry " "power " "my " "soul " em "ploy, "
  "\nTo " "tell " "the " "world " "my " "peace " "and " "joy. "
  "\nA" bi "ding " "in " "Him, " "I'm " rest "ing " "in " "Him, "
  "\nOh, " "how " won "drous " "sweet! "
  "\nI'm " rest "ing, " "yes, " rest "ing, " rest "ing, " "yes " rest "ing, "
  "\nAt " "the " Sa "viour's " "feet. "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
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
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidiTenor
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
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidiBass
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
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\tiny \chorusMen}
        >>
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
