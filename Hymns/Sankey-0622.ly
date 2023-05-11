\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thy Life was given for me."
  subtitle    = "Sankey No. 622"
  subsubtitle = "Sankey 880 No. 749"
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
  Thy life was given for me!
  Thy blood, O Lord, was shed
  That I might ran -- somed be,
  And quick -- ened from the dead.
  Thy life was given for me:
  What have I given for Thee!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Long years were spent for me
  In wear -- i -- ness and woe,
  That through e -- ter -- ni -- ty
  Thy glo -- ry I might know,
  Long years were spent for me:
  Have I spent one for Thee?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thy Fa -- ther's home of light,
  Thy rain -- bow- cir -- cled throne,
  Were left for earth -- ly right,
  For wan -- d'rings sad and lone,
  Yea, all was left for me:
  Have I left aught for Thee?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thou, Lord, has borne for me
  More than my tongue can tell
  Of bit -- terest a -- go -- ny,
  To res -- cue me from hell.
  Thou suf -- ferest all for me:
  What have I borne for Thee?
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  And Thou hast brought to me,
  Down from Thy home a -- bove,
  Sal -- va -- tion full and free,
  Thy par -- don and thy Love.
  Great gifts Thou brought -- est me:
  What have I brought to Thee?
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Oh, let my life be given,
  My years for Thee be spent;
  World- fet -- ters all be riven,
  And joy with suf -- fering blent:
  To Thee my all I bring,
  My Sa -- viour and my King!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thy " "life " "was " "given " "for " "me! "
  "\nThy " "blood, " "O " "Lord, " "was " "shed "
  "\nThat " "I " "might " ran "somed " "be, "
  "\nAnd " quick "ened " "from " "the " "dead. "
  "\nThy " "life " "was " "given " "for " "me: "
  "\nWhat " "have " "I " "given " "for " "Thee!\n"

  \set stanza = "2."
  "\nLong " "years " "were " "spent " "for " "me "
  "\nIn " wear i "ness " "and " "woe, "
  "\nThat " "through " e ter ni "ty "
  "\nThy " glo "ry " "I " "might " "know, "
  "\nLong " "years " "were " "spent " "for " "me: "
  "\nHave " "I " "spent " "one " "for " "Thee?\n"

  \set stanza = "3."
  "\nThy " Fa "ther's " "home " "of " "light, "
  "\nThy " rain bow cir "cled " "throne, "
  "\nWere " "left " "for " earth "ly " "right, "
  "\nFor " wan "d'rings " "sad " "and " "lone, "
  "\nYea, " "all " "was " "left " "for " "me: "
  "\nHave " "I " "left " "aught " "for " "Thee?\n"

  \set stanza = "4."
  "\nThou, " "Lord, " "has " "borne " "for " "me "
  "\nMore " "than " "my " "tongue " "can " "tell "
  "\nOf " bit "terest " a go "ny, "
  "\nTo " res "cue " "me " "from " "hell. "
  "\nThou " suf "ferest " "all " "for " "me: "
  "\nWhat " "have " "I " "borne " "for " "Thee?\n"

  \set stanza = "5."
  "\nAnd " "Thou " "hast " "brought " "to " "me, "
  "\nDown " "from " "Thy " "home " a "bove, "
  "\nSal" va "tion " "full " "and " "free, "
  "\nThy " par "don " "and " "thy " "Love. "
  "\nGreat " "gifts " "Thou " brought "est " "me: "
  "\nWhat " "have " "I " "brought " "to " "Thee?\n"

  \set stanza = "6."
  "\nOh, " "let " "my " "life " "be " "given, "
  "\nMy " "years " "for " "Thee " "be " "spent; "
  "\nWorld" fet "ters " "all " "be " "riven, "
  "\nAnd " "joy " "with " suf "fering " "blent: "
  "\nTo " "Thee " "my " "all " "I " "bring, "
  "\nMy " Sa "viour " "and " "my " "King! "
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
