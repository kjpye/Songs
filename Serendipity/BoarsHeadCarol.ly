\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Boar's Head Carol"
  subtitle    = "(CHRISTMAS, Secular)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Queen's College, Oxford, version"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  \repeat unfold 3 {
    s4 s1*3
    s2 \tempo 4=40 s4 \tempo 4=120 s4
    s1*3
    s2 \tempo 4=60 s2 \tempo 4=120
    s1*3
    s2 \tempo 4=60 s2 \tempo 4=120
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*4
  \mark \markup { \box "B" }    s1*4
  \mark \markup { \box "C" }   s1*4
  \mark \markup { \box "D" } s4 s1*4
  \mark \markup { \box "E" }    s1*4
  \mark \markup { \box "C" }    s1*4
  \mark \markup { \box "F" } s4 s1*4
  \mark \markup { \box "G" }    s1*4
  \mark \markup { \box "C" }    s1*4
}

solo = \relative {
  \global
  g'4
  c2 4. 8
  b4 c g4. e8
  f4 4 a4. f8
  g4. 8 c4\fermata g8 8
  c4 8 8 4 4 % B
  b4 c g4. e8
  f4 4 a4. f8
  g4. 8 c2\fermata \bar "||" \break
  s1*4 % C
  \partial 4 g4 % D
  c2 4 8 8
  b4 c g4 e8 8
  f4 4 a4. f8
  g4. 8 c4\fermata g4
  c4. 8 4 8 8 % E
  b4 c g4. e8
  f4 4 a4. f8
  g4. 8 c2\fermata \bar "||" \break
  s1*4 % C
  \partial 4 g4 % F
  c4 4 4. 8
  b4 c g4. e8
  f4 4 a4. f8
  g4 4 c4\fermata g4
  c4 4 4 8 8 % G
  b4 c g4. e8
  f4 4 a4. f8
  g4. 8 c2\fermata \bar "||" \break
  s1*4 % C
}

soloWords = \lyricmode {
  \set stanza = "1."
  The boar's head in hand bear I,
  Be -- decked with bays and rose -- ma -- ry;
  And I pray you, my mas -- ters, be mer -- ry,
  Quot es -- tis in con -- vi -- vi -- o:

  \set stanza = "2."
  The boar's head, as I un -- der -- stand,
  Is the rar -- est dish in all this land,
  Which thus be -- decked with a gay gar -- land,
  Let us ser -- vi -- re can -- ti -- co:

  \set stanza = "3."
  Our stew -- ard hath pro -- vi -- ded this,
  In hon -- our of the King of bliss,
  Which on this day to be ser -- ved is,
  In Re -- gi -- nen -- si a -- tri -- o:
}

soloWordsMidi = \lyricmode {
  "The " "boar's " "head " "in " "hand " "bear " "I, "
  "\nBe" "decked " "with " "bays " "and " rose ma "ry; "
  "\nAnd " "I " "pray " "you, " "my " mas "ters, " "be " mer "ry, "
  "\nQuot " es "tis " "in " con vi vi "o: "

  "\nThe " "boar's " "head, " "as " "I " un der "stand, "
  "\nIs " "the " rar "est " "dish " "in " "all " "this " "land, "
  "\nWhich " "thus " be "decked " "with " "a " "gay " gar "land, "
  "\nLet " "us " ser vi "re " can ti "co: "

  "\nOur " stew "ard " "hath " pro vi "ded " "this, "
  "\nIn " hon "our " "of " "the " "King " "of " "bliss, "
  "\nWhich " "on " "this " "day " "to " "be " ser "ved " "is, "
  "\nIn " Re gi nen "si " a tri "o: "
}

soprano = \relative {
  \global
  \repeat unfold 3 {
    s4 s1*8
    c''4.^\markup CHORUS 8 b4 4 % C
    c4 4 g2
    f4 4 a4. f8
    g4. 8 c2\fermata \break
  }
  \bar "|."
}

words = \lyricmode {
  Ca -- put a -- pri de -- fe -- ro, Red -- dens lau -- des Do -- mi -- no.
  Ca -- put a -- pri de -- fe -- ro, Red -- dens lau -- des Do -- mi -- no.
  Ca -- put a -- pri de -- fe -- ro, Red -- dens lau -- des Do -- mi -- no.
}

wordsMidi = \lyricmode {
  "Ca" "put " a "pri " de fe "ro, " Red "dens " lau "des " Do mi "no. "
  "\nCa" "put " a "pri " de fe "ro, " Red "dens " lau "des " Do mi "no. "
  "\nCa" "put " a "pri " de fe "ro, " Red "dens " lau "des " Do mi "no. "
}

alto = \relative {
  \global
  \repeat unfold 3 {
    s4 s1*8
    g'4. 8 4 4 % C
    g4 4 d2
    f4 4 4. 8
    g4 d e2\fermata
  }
  \bar "|."
}

tenor = \relative {
  \global
  \repeat unfold 3 {
    s4 s1*8
    e'4. 8 d4 4 % C
    c4 4 b2
    c4 4 4 4
    c4 b g2\fermata
  }
  \bar "|."
}

bass = \relative {
  \global
  \repeat unfold 3 {
    s4 s1*8
    c'4. 8 g4 4 % C
    e4 4 g2
    a4 4 f f
    e4 g c,2\fermata
  }
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \soloWords
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \TempoTrack
            \new Voice { \voiceOne \soprano }
            \new Voice { \voiceTwo \alto    }
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice { \voiceOne \tenor }
            \new Voice { \voiceTwo \bass  }
          >>
        >>
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
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \solo
            \addlyrics \soloWords
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \TempoTrack
            \new Voice { \voiceOne \soprano }
            \new Voice { \voiceTwo \alto    }
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice { \voiceOne \tenor }
            \new Voice { \voiceTwo \bass  }
          >>
        >>
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
  \bookOutputSuffix "midi-all"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \solo
            \addlyrics \soloWordsMidi
          >>
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice \TempoTrack
            \new Voice { \voiceOne \soprano }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \voiceTwo \alto    }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \voiceOne \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-solo"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo \with {
            instrumentName = #"Solo"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \solo
            \addlyrics \soloWordsMidi
          >>
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice \TempoTrack
            \new Voice { \voiceOne \soprano }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \voiceTwo \alto    }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \voiceOne \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-chorus"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Solo staff
          \new Staff = solo
          <<
            \new Voice \solo
          >>
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice \TempoTrack
            \new Voice { \voiceOne \soprano }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \voiceTwo \alto    }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \voiceOne \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \voiceTwo \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
