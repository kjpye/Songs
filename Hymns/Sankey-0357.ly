\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Wonderful Words of Life!"
  subtitle    = "Sankey No. 357"
  subsubtitle = "Sankey 880 No. 272"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss"
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
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \repeat volta 2 {
    s2.
    \mark \markup { \box "D" } s2.*2
    
  }
  \alternative {{s2.}{s2.}}
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 8 8 c b
  b4 a8 4.
  d,8 a' a b4 a8
  g4.(d)
  b'4 8 8 c b % B
  b4 a8 4.
  d,8 a' a b4 a8
  g4.~4.
  b4 8 8[c] d % C
  e4. d
  b4 8 8[c] d
  e4. d
  \repeat volta 2 {
    d8^\markup\smallCaps Chorus c c c4.
    c8 b8 8 4. % D
    b8 a g a4 fis8
  }
  \alternative {
    {
      g4(b8 d4.)
    }
    {
      g,4.~4.
    }
  }
}

alto = \relative {
  \autoBeamOff
  d'4 8 8 e d
  d4 c8 4.
  c8 8 8 d4 c8
  b4.~4.
  d4 8 8 e d % B
  d4 c8 4.
  c8 8 8 d4 c8
  b4.~4.
  g'4 8 8[a] b % C
  c4. b
  g4 8 8[a] b
  c4. b
  \repeat volta 2 {
    b8 a a a4.
    a8 g g g4. % D
    d8 8 8 4 8
  }
  \alternative {
    {
      d4.(b)
    }
    {
      d4.~4.
    }
  }
}

tenor = \relative {
  \autoBeamOff
  g4 8 8 8 8
  g4 f8 4.
  f8 8 8 4 8
  g4.~4.
  g4 8 8 8 8 % B
  g4 f8 4.
  f8 8 8 4 8
  g4.~4.
  g4 8 4 8 % C
  g4. 4.
  g4 8 4 8
  g4. 4.
  \repeat volta 2 {
    d'8 8 8 4.
    d8 8 8 4. % D
    d8 c b c4 a8
  }
  \alternative {
    {
      b4.~4.
    }
    {
      b4.~4.
    }
  }
}

bass = \relative {
  \autoBeamOff
  g4 8 8 8 8
  d4 8 4.
  d8 8 8 4 8
  g4.~4.
  g4 8 8 8 8 % B
  d4 8 4.
  d8 8 8 4 8
  g,4.~4.
  g'4 8 4 8 % C
  g4. 4.
  g4 8 4 8
  g4. 4.
  \repeat volta 2 {
    d8 8 8 4.
    g8 8 8 4.
    d8 8 8 4 8
  }
  \alternative {
    {
      g4.~4.
    }
    {
      g4.~4.
    }
  }
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Beau -- ti -- ful words! won -- der -- ful words!
  Won -- der -- ful words of Life! __
  Life!
}

chorusS = \lyricmode {
  Beau -- ti -- ful words! won -- der -- ful words!
  Won -- der -- ful words of Life! __
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Sing them o -- ver a -- gain to me,
  Won -- der -- ful words of Life!
  Let me more of their beau -- ty see,
  Won -- der -- ful words of Life!
  Words of life and beau -- ty,
  Teach me faith and du -- ty!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Christ, the bles -- sed One, gives to all
  Won -- der -- ful words of Life!
  Sin -- ner, list to the lov -- ing call,
  Won -- der -- ful words of Life!
  All so free -- ly giv -- en, Woo -- ing us to hea -- ven!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sweet -- ly e -- cho the gos -- pel call!
  Won -- der -- ful words of Life!
  Of -- fer par -- don and peace to all!
  Won -- der -- ful words of Life!
  Je -- sus, on -- ly Sa -- viour,
  Sanc -- ti -- fy for ev -- er!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sing " "them " o "ver " a "gain " "to " "me, "
  "\nWon" der "ful " "words " "of " "Life! "
  "\nLet " "me " "more " "of " "their " beau "ty " "see, "
  "\nWon" der "ful " "words " "of " "Life! "
  "\nWords " "of " "life " "and " beau "ty, "
  "\nTeach " "me " "faith " "and " du "ty! "
  "\nBeau" ti "ful " "words! " won der "ful " "words! "
  "\nWon" der "ful " "words " "of " "Life! " 
  "\nBeau" ti "ful " "words! " won der "ful " "words! "
  "\nWon" der "ful " "words " "of " "Life! " 

  \set stanza = "2."
  "\nChrist, " "the " bles "sed " "One, " "gives " "to " "all "
  "\nWon" der "ful " "words " "of " "Life! "
  "\nSin" "ner, " "list " "to " "the " lov "ing " "call, "
  "\nWon" der "ful " "words " "of " "Life! "
  "\nAll " "so " free "ly " giv "en, " Woo "ing " "us " "to " hea "ven! "
  "\nBeau" ti "ful " "words! " won der "ful " "words! "
  "\nWon" der "ful " "words " "of " "Life! " 
  "\nBeau" ti "ful " "words! " won der "ful " "words! "
  "\nWon" der "ful " "words " "of " "Life! " 

  \set stanza = "3."
  "\nSweet" "ly " e "cho " "the " gos "pel " "call! "
  "\nWon" der "ful " "words " "of " "Life! "
  "\nOf" "fer " par "don " "and " "peace " "to " "all! "
  "\nWon" der "ful " "words " "of " "Life! "
  "\nJe" "sus, " on "ly " Sa "viour, "
  "\nSanc" ti "fy " "for " ev "er! "
  "\nBeau" ti "ful " "words! " won der "ful " "words! "
  "\nWon" der "ful " "words " "of " "Life! " 
  "\nBeau" ti "ful " "words! " won der "ful " "words! "
  "\nWon" der "ful " "words " "of " "Life! " 
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \unfoldRepeats \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \unfoldRepeats \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \unfoldRepeats \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \unfoldRepeats \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \unfoldRepeats \bass }
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
            \new Voice { \repeat unfold \verses \unfoldRepeats \RehearsalTrack }
            \new Voice { \repeat unfold \verses \unfoldRepeats \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \unfoldRepeats \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \unfoldRepeats \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \unfoldRepeats \alto \bar "||" \break \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusS \chorusS
                                              \wordsTwo   \chorusS \chorusS
                                              \wordsThree \chorusS \chorusS
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \unfoldRepeats \tenor }
                                            { \global \repeat unfold \verses \unfoldRepeats \bass }
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
            \new Voice { \repeat unfold \verses \unfoldRepeats \RehearsalTrack }
            \new Voice { \repeat unfold \verses \unfoldRepeats \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \unfoldRepeats \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \unfoldRepeats \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \unfoldRepeats \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusS \chorusS
                                              \wordsTwo   \chorusS \chorusS
                                              \wordsThree \chorusS \chorusS
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \unfoldRepeats \tenor }
                                            { \global \repeat unfold \verses \unfoldRepeats \bass }
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
