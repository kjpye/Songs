\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Look and Live!"
  subtitle    = "Sankey No. 371"
  subsubtitle = "Sankey 880 No. 139"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
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

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 2/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2*4
  \mark \markup { \box "B" } s2*5
  \mark \markup { \box "C" } s2*5
  \mark \markup { \box "D" } s2*5
  \mark \markup { \box "E" } s2*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 b'8 8 a
  a8 g8 4
  fis8 g a4
  g8 a b4
  d,8 b'8 8 a % B
  a8 g g4
  fis4 a
  g2
  d8 b' b a
  a8 g g4 % C
  fis8 g a4
  g8 a b4
  d,8 b'8 8 a
  a8 g g4
  fis4 a % D
  g2 \bar "||"
  a8.^\markup\smallCaps Chorus. g16 fis8 g
  a8 b a4
  b8. a16 g8 a
  b8 c b4 % E
  d8. c16 b8 d
  c8 b a[c]
  b4 a
  g2
}

alto = \relative {
  \autoBeamOff
  b8 d d c
  d8 b8 4
  d8 8 4
  d8 8 4
  b8 d d c % B
  c8 b b4
  d4 c
  b2
  b8 d d c
  c8 b b4 % C
  d8 8 4
  d8 8 4
  b8 d d c
  c8 b8 4
  d4 c % D
  b2
  fis'8. 16 d8 e
  fis8 g fis4
  g8. d16 8 8
  g8 8 4 % E
  g8. d16 8 8
  e8 8 4
  d4 c
  b2
}

tenor = \relative {
  \autoBeamOff
  g8 8 8 8
  g8 8 4
  a8 b c4
  b8 c d4
  g,8 8 8 8 % B
  g8 8 4
  a4 fis
  g2
  g8 8 8 8
  g8 8 4 % C
  a8 b c4
  b8 c d4
  g,8 8 8 8
  g8 8 4
  a4 fis % D
  g2
  d'8. 16 8 8
  d8 8 4
  d8. c16 b8 c
  d8 c d4 % E
  b8. a16 g8 b
  c8 8 g4
  g4 fis
  g2
}

bass = \relative {
  \autoBeamOff
  g,8 8 8 8
  g8 8 4
  d'8 8 4
  g,8 8 4
  g8 8 8 8 % B
  g8 8 4
  d'4 4
  g,2
  g8 8 8 8
  g8 8 4 % C
  d'8 8 4
  g,8 8 4
  g8 8 8 8
  g8 8 4
  d'4 4 % D
  g,2
  d'8. 16 8 8
  d8 8 4
  g8. 16 8 8
  g8 8 4 % E
  g8. 16 8 8
  c,8 8 4
  d4 4
  g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Look! the Lord is lift -- ed high;
  Look to Him, He's ev -- er nigh;
  Look and live! why will ye die?
  Look and live!
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Look to Je -- sus, wea -- ry one,
  Look and live! look and live!
  Look at what the Lord has done,
  Look and live!
  See Him lift -- ed on the tree,
  Look and live! look and live!
  Hear Him say, "\"Look" un -- to "Me!\""
  Look and live!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Though un -- wor -- thy, vile, un -- clean,
  Look and live! look and live!
  Look a -- way from self and sin,
  Look and live!
  Long by Sa -- tan's power en -- slaved,
  Look and live! look and live!
  Look to Me, ye shall be saved,
  Look and live!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Though you've wan -- der'd far a -- way,
  Look and live! look and live!
  Har -- den not your hearts to -- day,
  Look and live!
  'Tis thy Fa -- ther calls thee home,
  Look and live! look and live!
  Who -- so -- ev -- er will may come,
  Look and live!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Look " "to " Je "sus, " wea "ry " "one, "
  "\nLook " "and " "live! " "look " "and " "live! "
  "\nLook " "at " "what " "the " "Lord " "has " "done, "
  "\nLook " "and " "live! "
  "\nSee " "Him " lift "ed " "on " "the " "tree, "
  "\nLook " "and " "live! " "look " "and " "live! "
  "\nHear " "Him " "say, " "\"Look " un "to " "Me!\" "
  "\nLook " "and " "live! "
  "\nLook! " "the " "Lord " "is " lift "ed " "high; "
  "\nLook " "to " "Him, " "He's " ev "er " "nigh; "
  "\nLook " "and " "live! " "why " "will " "ye " "die? "
  "\nLook " "and " "live! "

  \set stanza = "2."
  "\nThough " un wor "thy, " "vile, " un "clean, "
  "\nLook " "and " "live! " "look " "and " "live! "
  "\nLook " a "way " "from " "self " "and " "sin, "
  "\nLook " "and " "live! "
  "\nLong " "by " Sa "tan's " "power " en "slaved, "
  "\nLook " "and " "live! " "look " "and " "live! "
  "\nLook " "to " "Me, " "ye " "shall " "be " "saved, "
  "\nLook " "and " "live! "
  "\nLook! " "the " "Lord " "is " lift "ed " "high; "
  "\nLook " "to " "Him, " "He's " ev "er " "nigh; "
  "\nLook " "and " "live! " "why " "will " "ye " "die? "
  "\nLook " "and " "live! "

  \set stanza = "3."
  "\nThough " "you've " wan "der'd " "far " a "way, "
  "\nLook " "and " "live! " "look " "and " "live! "
  "\nHar" "den " "not " "your " "hearts " to "day, "
  "\nLook " "and " "live! "
  "\n'Tis " "thy " Fa "ther " "calls " "thee " "home, "
  "\nLook " "and " "live! " "look " "and " "live! "
  "\nWho" so ev "er " "will " "may " "come, "
  "\nLook " "and " "live! "
  "\nLook! " "the " "Lord " "is " lift "ed " "high; "
  "\nLook " "to " "Him, " "He's " ev "er " "nigh; "
  "\nLook " "and " "live! " "why " "will " "ye " "die? "
  "\nLook " "and " "live! "
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
      \pointAndClickOff
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
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
