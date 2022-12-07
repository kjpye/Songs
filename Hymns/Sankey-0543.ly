\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I will Guide Thee."
  subtitle    = "Sankey No. 543"
  subsubtitle = "Sankey 880 No. 128"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "N. Niles."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4.*12
  \textMark \markup { \box \bold "B" } s4.*12
  \textMark \markup { \box \bold "C" } s4.*12
  \textMark \markup { \box \bold "D" } s4.*12
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8[e] fis | g4. g g8[a] b | e,4. e e8[f] g | a4. a a8[g] a | b2. \bar "|" \break
  b8[a] b | c4. c c8[d] e | e4. d d8[c] b | a4. a a8[b] cis | d2. \bar "||" \break
  d8^\markup\smallCaps Refrain. [c] b | a4. a a8[b] c | 4. b b8[a] b | d4. b b8[a] b |  a2. \bar "|" \break
  d,8[e] fis | g4. g g8[a] b | c4. e\fermata 8[d] c | b4. d c8[b] a | g2.
}

alto = \relative {
  \autoBeamOff
  d'8[cis] c | b4. b b8[c] d | r4. e e8[d] cis | d4. d d4 8 | d2.
  g8[fis] f | e4. e e8[f] g | g4. g b8[a] g | fis4. fis fis8[g] e | fis2.
  b8[a] g | g4. fis fis8[g] a | a4. g g8[a] g | g4. g g4 8 | fis2.
  d8[cis] c | b4. b b8[c] d | e4. g\fermata g8[fis] e | d4. d d4 c8 | b2.
}

tenor = \relative {
  \autoBeamOff
  d8[g] a | g4. g g4 8 | g4. g g4 8 | fis4. 4. 8[e] fis | g2.
  g4 8 | 4. 4. 4 c8 | 4. b d4 8 | 4. 4. a4 8 | 2.
  d4 8 | 4. 4. 4 8 | 4. 4. 4 8 | 4. 4. 8[c] b | d2.
  fis,8[g] a | g4. 4. 4 8 | 4. c\fermata g4 8 | 4. b a8[g] fis | g2.
}

bass = \relative {
  \autoBeamOff
  d4 8 | g4. g g4 8 | c,4. c c8[d] e | d4. d d4 8 | g2.
  g4 8 | c,4. c c4 8 | g'4. 4. 4 8 | a4. 4. 4 8 | d,2.
  d4 8 | 4. 4. 4 8 | g4. 4. 8[fis] g | b4. g g4 8 | d2.
  d4 8 | g4. 4. 4 8 | c,4. 4.\fermata 4 8 | d4. 4. 4 8 | g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"I" will guide thee, I will guide thee,
  I will guide thee with Mine eye;
  On the way from earth to hea -- ven,
  I will guide thee with Mine eye.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Pre -- cious prom -- ise, God hath giv -- en
  To the wea -- ry pass -- er -- by;
  On the way from earth to hea -- ven,
  "\"I" will guide thee with Mine eye.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When temp -- ta -- tions al -- most win thee,
  And thy trust -- ed watch -- ers fly,
  Let this pro -- mise ring with -- in thee:
  "\"I" will guide thee with Mine "eye.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When thy se -- cret hopes have per -- ished
  In the grave of years gone by,
  Let this pro -- mise still be cher -- ished, 
  "\"I" will guide thee with Mine "eye.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When the shades of life are fall -- ing,
  And the hour has come to die,
  Hear thy trus -- ty Lead -- er call -- ing,
  "\"I" will guide thee with Mine "eye.\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Pre" "cious " prom "ise, " "God " "hath " giv "en "
  "\nTo " "the " wea "ry " pass er "by; "
  "\nOn " "the " "way " "from " "earth " "to " hea "ven, "
  "\n\"I " "will " "guide " "thee " "with " "Mine " "eye. "
  "\n\"I " "will " "guide " "thee, " "I " "will " "guide " "thee, "
  "\nI " "will " "guide " "thee " "with " "Mine " "eye; "
  "\nOn " "the " "way " "from " "earth " "to " hea "ven, "
  "\nI " "will " "guide " "thee " "with " "Mine " "eye.\n"

  \set stanza = "2."
  "\nWhen " temp ta "tions " al "most " "win " "thee, "
  "\nAnd " "thy " trust "ed " watch "ers " "fly, "
  "\nLet " "this " pro "mise " "ring " with "in " "thee: "
  "\n\"I " "will " "guide " "thee " "with " "Mine " "eye.\" "
  "\n\"I " "will " "guide " "thee, " "I " "will " "guide " "thee, "
  "\nI " "will " "guide " "thee " "with " "Mine " "eye; "
  "\nOn " "the " "way " "from " "earth " "to " hea "ven, "
  "\nI " "will " "guide " "thee " "with " "Mine " "eye.\n"

  \set stanza = "3."
  "\nWhen " "thy " se "cret " "hopes " "have " per "ished "
  "\nIn " "the " "grave " "of " "years " "gone " "by, "
  "\nLet " "this " pro "mise " "still " "be " cher "ished, " 
  "\n\"I " "will " "guide " "thee " "with " "Mine " "eye.\" "
  "\n\"I " "will " "guide " "thee, " "I " "will " "guide " "thee, "
  "\nI " "will " "guide " "thee " "with " "Mine " "eye; "
  "\nOn " "the " "way " "from " "earth " "to " hea "ven, "
  "\nI " "will " "guide " "thee " "with " "Mine " "eye.\n"

  \set stanza = "4."
  "\nWhen " "the " "shades " "of " "life " "are " fall "ing, "
  "\nAnd " "the " "hour " "has " "come " "to " "die, "
  "\nHear " "thy " trus "ty " Lead "er " call "ing, "
  "\n\"I " "will " "guide " "thee " "with " "Mine " "eye.\" "
  "\n\"I " "will " "guide " "thee, " "I " "will " "guide " "thee, "
  "\nI " "will " "guide " "thee " "with " "Mine " "eye; "
  "\nOn " "the " "way " "from " "earth " "to " hea "ven, "
  "\nI " "will " "guide " "thee " "with " "Mine " "eye. "
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
