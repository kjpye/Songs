\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "From the Cross"
  subtitle    = "Sankey No. 416"
  subsubtitle = "Sankey 880 No. 695"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "D. Bortnianski."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Thomas Haweis."
  meter       = \markup           "Six 7s."
  piece       = \markup\smallCaps "Wells."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*6
  \mark \markup { \box "B" } s2.*6
  \mark \markup { \box "C" } s2.*6
  \mark \markup { \box "D" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4(fis) g
  a2 d4
  e4(d) cis
  d2.
  b4(d) b
  a2 fis4
  a4(g) fis % B
  e2.
  a4(fis) g
  a2 d4
  e4(d) cis
  d2.
  b4(d) b % C
  a2 fis4
  b4(fis) gis
  a2.
  e'2 cis4
  d2 a4
  fis'4(e) d % D
  d2(cis4)
  d4(cis) b
  a2 fis4
  g2 e4
  d2.
}

alto = \relative {
  \autoBeamOff
  fis'4(d) e
  fis2 4
  g4(fis) e
  fis2.
  g4(b) g
  fis2 d4
  e2 d4 % B
  cis2.
  fis4(d) e
  fis2 4
  g4(fis) e
  fis2.
  g4(b) g % C
  fis2 d4
  fis2 e4
  e2.
  g2 e4
  fis2 4
  a4(g) fis % D
  fis2(e4)
  fis4(a) g
  fis2 d4
  d2 cis4
  d2.
}

tenor = \relative {
  \autoBeamOff
  a2 4
  a2 4
  cis4(d) e
  d2.
  d2 4
  d2 a4
  a2 4 % B
  a2.
  a2 b8[cis]
  d2 a4
  cis4(d) e
  d2.
  d2 4 % C
  d2 a4
  d2 b4
  cis2.
  cis2 e4
  d2 4
  d4(cis) d % D
  a2.
  a2 b8[cis]
  d2 a4
  b2 a8[g]
  fis2.
}

bass = \relative {
  \autoBeamOff
  d2 4
  d2 4
  a2 4
  d2.
  g2 4
  d2 4
  cis2 d4 % B
  a2.
  d2 4
  d2 4
  a2 4
  d2.
  g2 4 % C
  d2 4
  b2 e4
  a,2.
  a2 4
  d2 4
  d4(e) fis8[g] % D
  a2.
  d,2 4
  d2 4
  g,2 a4
  d2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  From the cross up lift -- ed high,
  Where the Sa -- viour deigns to die,
  What me -- lo -- dious sounds we hear.
  Burst -- ing on the rav -- ished ear!—
  "\"Love's" re -- deem -- ing work is done—
  Come and wel -- come! sin -- ner, come!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Spread" for thee, the fes -- tal board
  See with rich -- est boun -- ty stored;
  To thy Fa -- ther's bo -- som pressed,
  Thou shalt be a child con -- fessed,
  Nev -- er from His house to roam;
  Come and wel -- come! sin -- ner, come!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Soon" the days of life shall end—
  Lo, I come— your Sa -- viour, Friend!
  Safe your spi -- rit to con -- vey
  To the realms of end -- less day,
  Up to My e -- ter -- nal home—
  Come and wel -- come! sin -- ner, "come!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "From " "the " "cross " "up " lift "ed " "high, "
  "\nWhere " "the " Sa "viour " "deigns " "to " "die, "
  "\nWhat " me lo "dious " "sounds " "we " "hear. "
  "\nBurst" "ing " "on " "the " rav "ished " "ear!— "
  "\n\"Love's " re deem "ing " "work " "is " "done— "
  "\nCome " "and " wel "come! " sin "ner, " "come! "

  \set stanza = "2."
  "\n\"Spread " "for " "thee, " "the " fes "tal " "board "
  "\nSee " "with " rich "est " boun "ty " "stored; "
  "\nTo " "thy " Fa "ther's " bo "som " "pressed, "
  "\nThou " "shalt " "be " "a " "child " con "fessed, "
  "\nNev" "er " "from " "His " "house " "to " "roam; "
  "\nCome " "and " wel "come! " sin "ner, " "come! "

  \set stanza = "3."
  "\n\"Soon " "the " "days " "of " "life " "shall " "end— "
  "\nLo, " "I " "come— " "your " Sa "viour, " "Friend! "
  "\nSafe " "your " spi "rit " "to " con "vey "
  "\nTo " "the " "realms " "of " end "less " "day, "
  "\nUp " "to " "My " e ter "nal " "home— "
  "\nCome " "and " wel "come! " sin "ner, " "come!\" "
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
