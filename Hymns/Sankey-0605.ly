\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Arise!"
  subtitle    = "Sankey No. 605"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Josiah Booth."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Wade Robinson."
  meter       = \markup\smallCaps "P. M."
  piece       = \markup\smallCaps "St. Brannocks."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2 s1*4 s1
  \textMark \markup { \box \bold "B" } s1 s1*4
  \textMark \markup { \box \bold "C" }    s1*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2 | c2. bes4 g2 f | ees1. 2 | aes2. g4 \bar "|" \break
  f2 2 | bes2. aes4 g2 2 | c2. 4 bes2. ees,4 |
  f4 g aes g f1 | bes2 c4 d ees2. g,4 | 2 f ees\fermata
}

alto = \relative {
  \autoBeamOff
  ees'2 | 2. 4 2 d | ees1. 2 | d2. ees4
  d2 2 | ees2. d4 ees2 2 | 2. d4 ees2. bes4 |
  d4 ees f ees d1 | f2 ees4 aes g2. ees4 | 2 d ees2\fermata
}

tenor = \relative {
  \autoBeamOff
  bes2 | aes2. g4 bes2 aes | g1. bes2 | 2. 4
  bes2 2 | 2. 4 2 2 | aes2. 4 g2. bes4 |
  aes4 bes4 4 4 1 | d2 ees4 bes4 2. 4 | 2 aes g
}

bass = \relative {
  \autoBeamOff \partial 2
  ees2 | 2. 4 bes2 2 | ees1. g2 | f2. ees4
  bes2 aes' | g2. g4 ees2 2 | 2. 4 2. g4 |
  f4 ees d ees bes1 | aes'2 g4 f ees2. g4 | bes2 bes, ees\fermata
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
  "\"A" -- rise and fol -- low "Me!\""
  A -- las my Lord,
  I bear Thy word,
  But Thee Thy -- self I can but dim -- ly see;
  Help me to rise and fol -- low Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"A" -- rise and fol -- low "Me!\""
  But I am bound
  To earth's cold ground
  By many a tie; come Lord, and set me free,
  Then I shall rise and fol -- low Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"A" -- rise and fol -- low "Me!\""
  The way is rough,
  But 'tis e -- nough
  That through my life Thou wilt my Lead -- er, be;
  And I will bold -- ly fol -- low Thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"A" -- rise and fol -- low "Me!\""
  In mist and gloom,
  Through tears and tomb.
  Up gold -- en streets and by the crys -- tal sea,
  I shall for ev -- er fol -- low Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"A" "rise " "and " fol "low " "Me!\" "
  "\nA" "las " "my " "Lord, "
  "\nI " "bear " "Thy " "word, "
  "\nBut " "Thee " Thy "self " "I " "can " "but " dim "ly " "see; "
  "\nHelp " "me " "to " "rise " "and " fol "low " "Thee.\n"

  \set stanza = "2."
  "\n\"A" "rise " "and " fol "low " "Me!\" "
  "\nBut " "I " "am " "bound "
  "\nTo " "earth's " "cold " "ground "
  "\nBy " "many " "a " "tie; " "come " "Lord, " "and " "set " "me " "free, "
  "\nThen " "I " "shall " "rise " "and " fol "low " "Thee.\n"

  \set stanza = "3."
  "\n\"A" "rise " "and " fol "low " "Me!\" "
  "\nThe " "way " "is " "rough, "
  "\nBut " "'tis " e "nough "
  "\nThat " "through " "my " "life " "Thou " "wilt " "my " Lead "er, " "be; "
  "\nAnd " "I " "will " bold "ly " fol "low " "Thee.\n"

  \set stanza = "4."
  "\n\"A" "rise " "and " fol "low " "Me!\" "
  "\nIn " "mist " "and " "gloom, "
  "\nThrough " "tears " "and " "tomb. "
  "\nUp " gold "en " "streets " "and " "by " "the " crys "tal " "sea, "
  "\nI " "shall " "for " ev "er " fol "low " "Thee. "
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
