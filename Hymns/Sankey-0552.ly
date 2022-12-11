\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lord Jesus, Thou dost keep Thy Child."
  subtitle    = "Sankey No. 552"
  subsubtitle = "Sankey 880 No. 747"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Lowell Mason."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Jean Sophia Pigott."
  meter       = \markup\smallCaps "8.8.6. D."
  piece       = \markup\smallCaps "Meribah."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2 s1.*4
  \textMark \markup { \box \bold "B" }    s1.*7 s1
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'2 | g4. 8 4 f g aes | bes1 g2 | c4. 8 4 bes aes g | f1 bes2 |
  d4 c bes2 a | bes1
  \repeat unfold 2 {bes2 | ees4 bes bes g aes c | bes1}
  ees,2 | f4 aes g2 f | ees1
}

alto = \relative {
  \autoBeamOff
  ees'2 | 4. 8 4 d ees f | g1 ees2 | 4. 8 4 4 d ees | d1 2 |
  f4 ees d2 ees | d1
  \repeat unfold 2 {ees2 | g4 4 4 ees ees aes | g1}
  ees2 | 4 4 2 d | ees1
}

tenor = \relative {
  \autoBeamOff
  g2 | bes4. 8 4 4 4 4 | 1 2 | aes4. 8 4 bes4 4 4 | 1 f2 |
  f4 g f2 c' | bes1
  \repeat unfold 2 {g2 | bes4 ees ees bes c ees | 1}
  bes2 | c4 4 bes2 4(aes) | g1
}

bass = \relative {
  \autoBeamOff
  ees2 | 4. 8 4 aes g f | ees1 2 | aes,4. 8 aes'4 g f ees | bes1 2 |
  bes4 ees f2 2 | bes,1
  \repeat unfold 2 {ees2 | 4 4 4 4 c aes | ees'1}
  g,2 | aes4 4 bes2 2 | ees1
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
  Lord Je -- sus, Thou dost keep Thy child
  Thro' sun -- shine or thro' tem -- pests wild;
  Je -- sus I trust in Thee!
  Thine is such won -- drous power to save,
  Thine is the migh -- ty love that gave
  Its all on Cal -- va -- ry.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O glo -- rious Sa -- viour! Thee I praise;
  To Thee my new glad song I raise,
  And tell of what Thou art,
  Thy grace is bound -- less in its store;
  Thy face of love shines ev -- er -- more:
  Thou giv -- est me Thy heart.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Up -- on Thy pro -- mi -- ses I stand,
  Trust -- ing in Thee: Thine own right hand
  Doth keep and com -- fort me!
  My soul doth tri -- umph in Thy Word;
  Thine, Thine be all the praise, dear Lord,
  As Thine the vic -- to -- ry.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Love per -- fect -- eth what it be -- gins;
  Thy power doth saev me from my sins—
  Thy grace up -- hold -- eth me.
  This life if trust— how glad how sweet!
  My need and Thy great ful -- ness meet,
  And I have all in Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lord " Je "sus, " "Thou " "dost " "keep " "Thy " "child "
  "\nThro' " sun "shine " "or " "thro' " tem "pests " "wild; "
  "\nJe" "sus " "I " "trust " "in " "Thee! "
  "\nThine " "is " "such " won "drous " "power " "to " "save, "
  "\nThine " "is " "the " migh "ty " "love " "that " "gave "
  "\nIts " "all " "on " Cal va "ry.\n"

  \set stanza = "2."
  "\nO " glo "rious " Sa "viour! " "Thee " "I " "praise; "
  "\nTo " "Thee " "my " "new " "glad " "song " "I " "raise, "
  "\nAnd " "tell " "of " "what " "Thou " "art, "
  "\nThy " "grace " "is " bound "less " "in " "its " "store; "
  "\nThy " "face " "of " "love " "shines " ev er "more: "
  "\nThou " giv "est " "me " "Thy " "heart.\n"

  \set stanza = "3."
  "\nUp" "on " "Thy " pro mi "ses " "I " "stand, "
  "\nTrust" "ing " "in " "Thee: " "Thine " "own " "right " "hand "
  "\nDoth " "keep " "and " com "fort " "me! "
  "\nMy " "soul " "doth " tri "umph " "in " "Thy " "Word; "
  "\nThine, " "Thine " "be " "all " "the " "praise, " "dear " "Lord, "
  "\nAs " "Thine " "the " vic to "ry.\n"

  \set stanza = "4."
  "\nLove " per fect "eth " "what " "it " be "gins; "
  "\nThy " "power " "doth " "saev " "me " "from " "my " "sins— "
  "\nThy " "grace " up hold "eth " "me. "
  "\nThis " "life " "if " "trust— " "how " "glad " "how " "sweet! "
  "\nMy " "need " "and " "Thy " "great " ful "ness " "meet, "
  "\nAnd " "I " "have " "all " "in " "Thee. "
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
