\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christ is Risen!"
  subtitle    = "Sankey No. 156"
  subsubtitle = "N.H. No. 85"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J Crosby."
  meter       = \markup\smallCaps "8.7."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \time 3/4 \partial 4
  \autoBeamOff
  g'8. 16
  c4 g c8. d16
  e4 c4 8. 16
  c4. a8 g8. f16
  e2 \bar "|" \break e8. 16
  a4 e a8. b16 % B
  c4 a c8. e16
  d4 b a8. g16
  g2 \bar "|" \break g8.^\markup\smallCaps Refrain. 16 \time 4/4
  d'4 2 g,8. c16 % C
  e4 2 c8. 16
  c4. a8 b4 b
  b2. \bar "|" \break c8. d16
  e4 c2 d8. e16 % D
  f4 a,2 b8. c16
  g4 e' d4. c8
  c2.
}

alto = \relative {
  \autoBeamOff
  g'8. 16
  c4 g4 8. 16
  g4 e g8. 16
  a4. f8 e8. d16
  c2 d8. 16
  c4 4 e8. 16 % B
  e4 c e8. 16
  g4 4 f8. g16
  g2 8. 16
  f4 2 e8. 16 % C
  g4 2 8. 16
  a4. 8 4 4
  gis2. g8. f16
  e4 g2 a8. 16 % D
  a4 f2 a8. 16
  g4 4 f4. e8
  e2.
}

tenor = \relative {
  \autoBeamOff
  g8. 16
  c4 g c8. b16
  c4 g c8. 16
  c4. 8 8. g16
  g2 gis8. 16
  a4 4 8. gis16 % B
  a4 4 8. 16
  b4 d c8. b16
  b2 8. 16
  b4 2 c8. 16 % C
  c4 2 8. 16
  c4. 8 d4 dis
  e2. c8. b16
  c4 e2 d8. cis16 % D
  d4 2 dis8. 16
  e4 c c(b8) c
  c2.
}

bass = \relative {
  \autoBeamOff
  g8. 16
  c4 g e8. g16
  c4 c, e8. 16
  f4. 8 g8. g,16
  c2 b8. 16
  a4 4 c8. e16 % B
  a4 a,4 8. c16
  d4 4 8. g16
  g2 8. 16
  g4 2 8. 16 % C
  c,4 2 e8. 16
  f4. 8 4 4
  e2. 8. d16
  c4 2 f8. e16 % D
  d4 2 f8. fis16
  g4 4 4. c,8
  c2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Christ is ris -- en!
  Hal -- le -- lu -- jah!
  Glad -- ness fills the world to -- day;
  From the tomb that could not hold Him,
  See, the stone is rolled a -- way!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Christ hath ris -- en!
  Hal -- le -- lu -- jah!
  Bles -- sed morn of life and light!
  Lo, the grave is rent a -- sun -- der,
  Death is con -- quer'd thro His might.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Christ hath ris -- en!
  Hal -- le -- lu -- jah!
  Friends of Je -- sus, dry your tears;
  Thro the vail of gloom and dark -- ness.
  Lo, the Son of God ap -- pears!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Christ hath ris -- en!
  Hal -- le -- lu -- jah!
  He hath ris -- en, as He said;
  He is now the King of glo -- ry,
  And our great ex -- alt -- ed Head.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Christ " "hath " ris "en! "
  "\nHal" le lu "jah! "
  "\nBles" "sed " "morn " "of " "life " "and " "light! "
  "\nLo, " "the " "grave " "is " "rent " a sun "der, "
  "\nDeath " "is " con "quer'd " "thro " "His " "might. "
  "\nChrist " "is " ris "en! "
  "\nHal" le lu "jah! "
  "\nGlad" "ness " "fills " "the " "world " to "day; "
  "\nFrom " "the " "tomb " "that " "could " "not " "hold " "Him, "
  "\nSee, " "the " "stone " "is " "rolled " a "way! "

  \set stanza = "2."
  "\nChrist " "hath " ris "en! "
  "\nHal" le lu "jah! "
  "\nFriends " "of " Je "sus, " "dry " "your " "tears; "
  "\nThro " "the " "vail " "of " "gloom " "and " dark "ness. "
  "\nLo, " "the " "Son " "of " "God " ap "pears! "
  "\nChrist " "is " ris "en! "
  "\nHal" le lu "jah! "
  "\nGlad" "ness " "fills " "the " "world " to "day; "
  "\nFrom " "the " "tomb " "that " "could " "not " "hold " "Him, "
  "\nSee, " "the " "stone " "is " "rolled " a "way! "

  \set stanza = "3."
  "\nChrist " "hath " ris "en! "
  "\nHal" le lu "jah! "
  "\nHe " "hath " ris "en, " "as " "He " "said; "
  "\nHe " "is " "now " "the " "King " "of " glo "ry, "
  "\nAnd " "our " "great " ex alt "ed " "Head. "
  "\nChrist " "is " ris "en! "
  "\nHal" le lu "jah! "
  "\nGlad" "ness " "fills " "the " "world " to "day; "
  "\nFrom " "the " "tomb " "that " "could " "not " "hold " "Him, "
  "\nSee, " "the " "stone " "is " "rolled " a "way! "
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
