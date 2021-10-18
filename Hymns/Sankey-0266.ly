\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thanks for the Bible."
  subtitle    = "Sankey No. 266"
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

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*6
  \mark \markup { \box "B" } s2.*6
  \mark \markup { \box "C" } s2.*6
  \mark \markup { \box "D" } s2.*7
  \mark \markup { \box "E" } s2.*7
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 ais b
  c2 b4
  a4 g a
  b2 g4
  g4 fis e
  d2 g4
  g4 fis g % B
  a2.
  b4 ais b
  c2 b4
  a4 g a
  b2 g4
  g4 c e % C
  d2 b4
  b2 a4
  g2. \bar "||"
  d'4^\markup\smallCaps Chorus. cis d
  b2 4
  b4 c d % D
  d2 c4
  c4 b c
  a2 b4
  c4 d c
  b2.
  b4 ais b
  g2 4 % E
  g4 c e
  d2 b4
  c4 d e
  d2 g,4
  b2 a4
  g2.
  
}

alto = \relative {
  \autoBeamOff
  d'4 cis d
  e2 d4
  fis4 g d
  d2 b4
  e4 d c
  b2 d4
  cis4 4 4 % B
  d2.
  d4 cis d
  e2 d4
  fis4 g d
  d2 4
  e4 4 g % C
  g2 4
  fis2 4
  g2.
  g4 4 4
  d2 4
  d4 e f % D
  e2 4
  fis4 4 4
  fis2 g4
  fis4 4 a
  g2.
  d4 cis d
  d2 f4 % E
  e4 4 g
  g2 4
  g4 4 4
  g2 4
  g4(e) fis
  g2.
}

tenor = \relative {
  \autoBeamOff
  g4 4 4
  g2 4
  c4 b fis
  g2 4
  g4 4 4
  g2 b4
  a4 4 g % B
  fis2.
  g4 4 4
  g2 4
  c4 b fis
  g2 b4
  c4 g c % C
  b2 d4
  d2 c4
  b2.
  b4 ais b
  g2 4
  g4 4 4 % D
  g2 a4
  a4 gis a
  c2 b4
  a4 4 d
  d2.
  g,4 4 4
  b2 d4 % E
  c4 g c
  b2 d4
  c4 b c
  b2 d4
  d4(cis) c
  b2.
}

bass = \relative {
  \autoBeamOff
  g4 4 4
  g2 4
  d4 4 4
  g2 g,4
  c4 4 e
  g2 4
  e4 4 4 % B
  d2.
  g4 4 4
  g2 4
  d4 4 4
  g2 4
  c,4 4 4 % C
  g'2 4
  d2 4
  g,2.
  g'4 4 4
  g2 g,4
  g4 4 b % D
  c2 4
  d4 4 4
  d2 4
  d4 4 fis
  g2.
  g4 4 4
  g2 b,4 % E
  c4 4 4
  g'2 4
  e4 d c
  g'2 b,4
  d2 4
  g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Thanks for the Bi -- ble, off -- 'ring so free -- ly
  Par -- don and peace to all who be -- lievel
  Help us, O lord, its coun -- sel to fol -- low,
  Meek -- ly by faith its truth re -- ceive.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Thanks for Thy Word, O bless -- ed Re -- deem -- er!
  O -- pen our eyes its beau -- ty to see;
  Grant us Thy grace to stu -- dy it wise -- ly,
  Close ev -- 'ry heart to all but Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thanks for Thy Word of pre -- cept and prom -- ise,
  Lamp to our feet and light to our way.
  Points us a -- far where plea -- sures im -- mor -- tal
  Bloom in Thine own bright realm of day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Bless -- ed are they who keep its com -- mand -- ments,
  They shall a -- bide for ev -- er with Thee;
  Close by the door and beau -- ti -- ful riv -- er,
  Shar -- ing the fruits of life's fair tree.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thanks " "for " "Thy " "Word, " "O " bless "ed " Re deem "er! "
  "\nO" "pen " "our " "eyes " "its " beau "ty " "to " "see; "
  "\nGrant " "us " "Thy " "grace " "to " stu "dy " "it " wise "ly, "
  "\nClose " ev "'ry " "heart " "to " "all " "but " "Thee. "
  "\nThanks " "for " "the " Bi "ble, " off "'ring " "so " free "ly "
  "\nPar" "don " "and " "peace " "to " "all " "who " be "lievel "
  "\nHelp " "us, " "O " "lord, " "its " coun "sel " "to " fol "low, "
  "\nMeek" "ly " "by " "faith " "its " "truth " re "ceive. "

  \set stanza = "2."
  "\nThanks " "for " "Thy " "Word " "of " pre "cept " "and " prom "ise, "
  "\nLamp " "to " "our " "feet " "and " "light " "to " "our " "way. "
  "\nPoints " "us " a "far " "where " plea "sures " im mor "tal "
  "\nBloom " "in " "Thine " "own " "bright " "realm " "of " "day. "
  "\nThanks " "for " "the " Bi "ble, " off "'ring " "so " free "ly "
  "\nPar" "don " "and " "peace " "to " "all " "who " be "lievel "
  "\nHelp " "us, " "O " "lord, " "its " coun "sel " "to " fol "low, "
  "\nMeek" "ly " "by " "faith " "its " "truth " re "ceive. "

  \set stanza = "3."
  "\nBless" "ed " "are " "they " "who " "keep " "its " com mand "ments, "
  "\nThey " "shall " a "bide " "for " ev "er " "with " "Thee; "
  "\nClose " "by " "the " "door " "and " beau ti "ful " riv "er, "
  "\nShar" "ing " "the " "fruits " "of " "life's " "fair " "tree. "
  "\nThanks " "for " "the " Bi "ble, " off "'ring " "so " free "ly "
  "\nPar" "don " "and " "peace " "to " "all " "who " be "lievel "
  "\nHelp " "us, " "O " "lord, " "its " coun "sel " "to " fol "low, "
  "\nMeek" "ly " "by " "faith " "its " "truth " re "ceive. "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
