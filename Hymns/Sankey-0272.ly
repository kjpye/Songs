\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "This is the Day."
  subtitle    = "Sankey No. 272"
  subsubtitle = "Sankey 880 No. 655"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Sir J. Stevenson."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D.D."
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "Dublin."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*6 s2
  \mark \markup { \box "B" } s4 s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4
  b4(d) c
  b4(a) g
  a4(e) fis
  g2 a4
  c4(cis) d
  g,4(fis) e
  d2 \bar "|" \break g4
  a2 b4 % B
  c2 b4
  a4(b) g
  g4(fis) d
  d'4(c) b
  a4(e) fis
  g2
}

alto = \relative {
  \autoBeamOff
  g'4
  g4(fis) e
  d2 4
  e2 d4
  d2 fis4
  g2 fis4
  e4(d) cis
  d2 4
  e2 4 % B
  e4(fis) g
  e2 4
  d2 4
  d4(fis) g
  e2 d4
  d2
}

tenor = \relative {
  \autoBeamOff
  g4
  g2 4
  g4(c) b
  c4(a) a
  b2 d4
  d4(a) a
  b4(a) g
  fis2 g4
  e2 gis4 % B
  a2 g4
  a2 4
  a2 fis4
  g4(d') d
  c4.(b8) a4
  b2
}

bass = \relative {
  \autoBeamOff
  g4
  g2 4
  g4(fis) g
  c,2 d4
  g2 d4
  g4(e) d
  g4(a) a,
  d2 b4
  c2 b4 % B
  a2 b4
  c2 cis4
  d2 c4
  b4(a) g
  c2 d4
  g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  This is the day the Lord hath made,
  He calls the hours His own;
  Let heaven re -- joice, let earth be glad,
  And praise sur -- round the throne.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  To -- day He rose and left the dead,
  And Sa -- tan's em -- pire fell:
  To -- day the saints His tri -- umph spread,
  And all His won -- ders tell.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ho -- san -- na to th'a -- noint -- ed King,
  To Da -- vid's ho -- ly Son!
  Help us, O Lord! des -- cend and bring
  Sal -- va -- tion from Thy throne.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Blest be the Lord who comes to men
  With mes -- sa -- ges of grace;
  Who comes in God His Fa -- ther's name,
  To save our sin -- ful race.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Ho -- san -- na, in the high -- est strains
  The Church on earth can raise.
  The high -- est heavens in which He reigns
  Shall give Him no -- bler praise.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "This " "is " "the " "day " "the " "Lord " "hath " "made, "
  "\nHe " "calls " "the " "hours " "His " "own; "
  "\nLet " "heaven " re "joice, " "let " "earth " "be " "glad, "
  "\nAnd " "praise " sur "round " "the " "throne. "

  \set stanza = "2."
  "\nTo" "day " "He " "rose " "and " "left " "the " "dead, "
  "\nAnd " Sa "tan's " em "pire " "fell: "
  "\nTo" "day " "the " "saints " "His " tri "umph " "spread, "
  "\nAnd " "all " "His " won "ders " "tell. "

  \set stanza = "3."
  "\nHo" san "na " "to " th'a noint "ed " "King, "
  "\nTo " Da "vid's " ho "ly " "Son! "
  "\nHelp " "us, " "O " "Lord! " des "cend " "and " "bring "
  "\nSal" va "tion " "from " "Thy " "throne. "

  \set stanza = "4."
  "\nBlest " "be " "the " "Lord " "who " "comes " "to " "men "
  "\nWith " mes sa "ges " "of " "grace; "
  "\nWho " "comes " "in " "God " "His " Fa "ther's " "name, "
  "\nTo " "save " "our " sin "ful " "race. "

  \set stanza = "5."
  "\nHo" san "na, " "in " "the " high "est " "strains "
  "\nThe " "Church " "on " "earth " "can " "raise. "
  "\nThe " high "est " "heavens " "in " "which " "He " "reigns "
  "\nShall " "give " "Him " no "bler " "praise. "
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
