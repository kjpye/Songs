\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, let us Join our Cheerful Songs."
  subtitle    = "Sankey No. 244"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Scottish Psalter."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts."
  meter       = \markup\smallCaps "c.m."
  piece       = \markup\smallCaps "York."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4
  b4 d c e
  b4 d a a
  b4 d e cis
  d2. \bar "|" \break g,4
  b4 d c e
  b4 d a b
  c4 b a a
  g2.
}

alto = \relative {
  \autoBeamOff
  d'4
  g4 4 4 e
  g4 4 fis fis
  g4 d g e
  fis2. d4
  g4 4 4 e
  g4 4 fis g
  g4 4 4 fis
  g2.
}

tenor = \relative {
  \autoBeamOff
  b4 d4 b c c
  d4 4 4 4
  d4 a b a
  a2. b4
  d4 b c c % B
  d4 4 4 4
  c4 d e d8[c]
  b2.
}

bass = \relative {
  \autoBeamOff
  g4
  g4 4 e c
  g'4 b, d d
  g4 fis e a,
  d2. g4
  g4 4 e c
  g'4 b, d g
  e4 d c d
  g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, let us join our cheer -- ful songs
  With an -- gels round the throne;
  Ten thou -- sand thou -- sand are their tongues,
  But all their joys are one.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Worth" -- y the Lamb that "died,\"" they cry,
  "\"To" be ex -- alt -- ed "thus\";"
  "\"Worth" -- y the "Lamb,\"" our lips re -- ply,
  "\"For" He was slain for "us.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus is wor -- thy to re -- ceive
  Hon -- our and power Di -- vine;
  And bless -- ings more than we can give
  Be, Lord, for ev -- er Thine.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Let all that dwell a -- bove the sky,
  And air, and earth, and seas,
  Con -- spire to lift Thy glo -- ries high,
  And speak Thine end -- less praise.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  The whole cre -- a -- tion join in one,
  To bless the sac -- red name
  Of Him that sits up -- on the throne,
  And to a -- dore the Lamb.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "let " "us " "join " "our " cheer "ful " "songs "
  "\nWith " an "gels " "round " "the " "throne; "
  "\nTen " thou "sand " thou "sand " "are " "their " "tongues, "
  "\nBut " "all " "their " "joys " "are " "one. "

  \set stanza = "2."
  "\n\"Worth" "y " "the " "Lamb " "that " "died,\" " "they " "cry, "
  "\n\"To " "be " ex alt "ed " "thus\"; "
  "\n\"Worth" "y " "the " "Lamb,\" " "our " "lips " re "ply, "
  "\n\"For " "He " "was " "slain " "for " "us.\" "

  \set stanza = "3."
  "\nJe" "sus " "is " wor "thy " "to " re "ceive "
  "\nHon" "our " "and " "power " Di "vine; "
  "\nAnd " bless "ings " "more " "than " "we " "can " "give "
  "\nBe, " "Lord, " "for " ev "er " "Thine. "

  \set stanza = "4."
  "\nLet " "all " "that " "dwell " a "bove " "the " "sky, "
  "\nAnd " "air, " "and " "earth, " "and " "seas, "
  "\nCon" "spire " "to " "lift " "Thy " glo "ries " "high, "
  "\nAnd " "speak " "Thine " end "less " "praise. "

  \set stanza = "5."
  "\nThe " "whole " cre a "tion " "join " "in " "one, "
  "\nTo " "bless " "the " sac "red " "name "
  "\nOf " "Him " "that " "sits " up "on " "the " "throne, "
  "\nAnd " "to " a "dore " "the " "Lamb. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
    system-system-spacing.basic-distance = #22
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack }
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
