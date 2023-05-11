\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Gave My Life for thee."
  subtitle    = "Sankey No. 621"
  subsubtitle = "Sankey 880 No. 122"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Canon Havergal."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. havergal."
  meter       = \markup\smallCaps "6.6.6.6.6.6."
  piece       = \markup\smallCaps "Baca."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2 s1*3 s2
  \textMark \markup { \box \bold "B" } s2 s1*3 s2
  \textMark \markup { \box \bold "C" } s2 s1*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'2 | ees,4 f g aes | bes2 g | c4 bes aes bes | g2 \bar "|" \break
  bes2 | ees,4 f g aes | bes2 g | c4 bes aes f | ees2 \bar "|" \break
  c'2 | ees4 d c aes | g2\fermata ees | bes'4 aes g^\markup\italic Slower. f | ees2
}

alto = \relative {
  \autoBeamOff
  ees'2 | 4 d ees ees | f2 ees | 4 d ees f | ees2
  d2 | c4 d ees ees | f2 ees | 4 4 4 d | ees2
  ees2 | g4 f g f | d2\fermata c | ees4 4 4 d | ees2
}

tenor = \relative {
  \autoBeamOff
  g2 | bes4 aes g c | d2 bes | aes4 f c' bes | 2
  bes2 | g4 bes bes c | d2 bes | aes4 bes c bes | g2
  c2 | 4 b c c | b2\fermata c | bes4 c bes bes | g2
}

bass = \relative {
  \autoBeamOff
  ees2 | g4 f ees c | bes2 ees | aes,4 bes c d | ees2
  bes2 | c4 bes ees c | bes2 ees | aes,4 g aes bes | ees2
  c2 | 4 d ees f | g2\fermata aes | g4 aes bes bes, | ees2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"I" gave my life for thee;
  My pre -- cious blood I shed,
  That thou might'st ran -- somed be,
  And quick -- ened from the dead.
  I gave My life for thee:
  What hast thou given for Me?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"I" spent long years for thee
  In wea -- ri -- ness and woe,
  That an e -- ter -- ni -- ty
  Of joy thou might -- est know.
  I spent long years for thee:
  Hast thou spent \markup\italic one for Me?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"My" Fath -- er's home of light,
  My rain -- bow- cir -- cled throne,
  I left for earth -- ly night,
  For wan -- d'rings sad and lone.
  I left it all for thee:
  Hast thou left aught for me?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"I" suf -- fered much for thee—
  More than thy tongue can tell,
  Of bitt -- 'rest a -- go -- ny—
  To res -- cue thee from hell,
  I suf -- fered much for thee:
  What canst thou bear for Me?
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  "\"And" I have brought to thee,
  Down from my home a -- bove,
  Sal -- va -- tion full and free,
  My par -- don and My love,
  Great gifts I brought to thee:
  What hast thou brought to "Me?\""
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Oh, let thy life be given,
  Thy years for Him be spent;
  World- let -- ters all be riven,
  And joy with sif -- fering bless,
  Bring thou thy worth -- less all:
  Fol -- low the Sa -- viour's call.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"I " "gave " "my " "life " "for " "thee; "
  "\nMy " pre "cious " "blood " "I " "shed, "
  "\nThat " "thou " "might'st " ran "somed " "be, "
  "\nAnd " quick "ened " "from " "the " "dead. "
  "\nI " "gave " "My " "life " "for " "thee: "
  "\nWhat " "hast " "thou " "given " "for " "Me?\n"

  \set stanza = "2."
  "\n\"I " "spent " "long " "years " "for " "thee "
  "\nIn " wea ri "ness " "and " "woe, "
  "\nThat " "an " e ter ni "ty "
  "\nOf " "joy " "thou " might "est " "know. "
  "\nI " "spent " "long " "years " "for " "thee: "
  "\nHast " "thou " "spent " "one " "for " "Me?\n"

  \set stanza = "3."
  "\n\"My " Fath "er's " "home " "of " "light, "
  "\nMy " rain bow cir "cled " "throne, "
  "\nI " "left " "for " earth "ly " "night, "
  "\nFor " wan "d'rings " "sad " "and " "lone. "
  "\nI " "left " "it " "all " "for " "thee: "
  "\nHast " "thou " "left " "aught " "for " "me?\n"

  \set stanza = "4."
  "\n\"I " suf "fered " "much " "for " "thee— "
  "\nMore " "than " "thy " "tongue " "can " "tell, "
  "\nOf " bitt "'rest " a go "ny— "
  "\nTo " res "cue " "thee " "from " "hell, "
  "\nI " suf "fered " "much " "for " "thee: "
  "\nWhat " "canst " "thou " "bear " "for " "Me?\n"

  \set stanza = "5."
  "\n\"And " "I " "have " "brought " "to " "thee, "
  "\nDown " "from " "my " "home " a "bove, "
  "\nSal" va "tion " "full " "and " "free, "
  "\nMy " par "don " "and " "My " "love, "
  "\nGreat " "gifts " "I " "brought " "to " "thee: "
  "\nWhat " "hast " "thou " "brought " "to " "Me?\"\n"

  \set stanza = "6."
  "\nOh, " "let " "thy " "life " "be " "given, "
  "\nThy " "years " "for " "Him " "be " "spent; "
  "\nWorld" let "ters " "all " "be " "riven, "
  "\nAnd " "joy " "with " sif "fering " "bless, "
  "\nBring " "thou " "thy " worth "less " "all: "
  "\nFol" "low " "the " Sa "viour's " "call. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
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
