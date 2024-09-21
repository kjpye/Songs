 \version "2.25.19"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Love Me Tender"
%  subtitle    = \markup { from \italic "Breakfast at Tiffany’s" }
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Elvis Presley & Vera Mattson"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "Johnny Mercer"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

TempoTrack = {
  \tempo "Moderately Slow" 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s2.*5
}

ChordTrack = \chordmode {
}

melody = \relative {
  \global \vo
  \bar "|."
  s1*4 \section |
  \repeat volta 3 {
    d'4 g fis g | a e a2 | g4 fis e fis | g1 |
    d4 g fis g | a e a2 | g4 fis e fis | g1 \section |
    b4 4 8 4. | 4 4 2 | 4 a g a |
    b1 | 4 4 c b | a e a2 |
    g4 fis e fis | g2. r4 |
  }
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  \set stanza = "1."
  Love me ten -- der, love me sweet;
  nev -- er let me go.
  You have made my life com -- plete,
  and I love you so.
  Love me ten -- der, love me true,
  all my dreams ful -- fil;
  For, my darl -- in’, I love you
  and I al -- ways will.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Love me ten -- der, love me long;
  Take me to your heart.
  For it’s there that I be -- long,
  and we’ll nev -- er part.
}

wordsThree = \lyricmode {
  \set stanza = "3."
  Love me ten -- der, love me dear;
  Tell me you are mine.
  I’ll be yours through all the years.
  till the end of time.
}

wordsMidi = \lyricmode {
  "Moon " Riv "er " wid "er " "than " "a " "mile: "
  "\nI’m " cross "ing " "you " "in " "style " some "day. " 
  "\nOld " dream mak "er, " "you " heart break "er, "
  "\nwher" ev "er " "you’re " go "in’, "
  "\nI’m " go "in’ " "your " "way: "
  "\nTwo " drift "ers, " "off " "to " "see " "the " "world. "
  "\nThere’s " "such " "a " "lot " "of " "world " "to " "see. " 
  "\nWe’re " af "ter " "the " "same " rain "bow’s " "end " 
  "\nWait" "in’ " "’round " "the " "bend, " 
  "\nmy " Huck le ber "ry " "friend, "
  "\nMoon " Riv "er "  "and " "me. "
}

pianoRHtwo = \relative {
  \global \vo
  <d' g b>4 <d a' b> <e gis c>~<d gis b> |
  <<{\vo a'4 e a2 | g4 fis e fis | g2 r}
    \new Voice {\vt cis,1 | c2. 4 | b4. s8 <c e>4~<c d>}>> \section
  \repeat volta 3 { \vt
    b1 | cis | c | b2 2 |
    b1 | cis | c | b2 2 | \section
    d2 dis | e f | e ees |
    d1 | <d g>4 <d a'> <e fis>~<d gis> | cis1 |
    c2. s4 | b4. s8 <c e>4~<c d> |
  }
}

pianoLHone = \relative {
  \global \vo
  g4 f e2 | r4 g2 e8 g | a2 c,4 d | g, d'8 \rh b' \lh <a, g'>4~(<a fis'>) \section |
  \repeat volta 3 {
    <g d'>1 | r4 g'2 4 | a,2 c4 d | g,4 d'8 e~e d e d |
    r2 d | r4 g2 4 | a,2 c4 e | g,4 d'8 e~e d e d |
    g2 <fis a> | <e g> <d g> | <c g'>1 |
    g4 d'8 e~e d e d | g, d' f4 e2 | r8 e~<e g>2 e8 g |
    a2 c,4 d | g,(d'8 \rh b') \lh <a, g'>4~(<a fis'>) |
  }
}

pianoLHtwo = \relative {
  \global \vt \tiny
  g,4 f e2 | a1 | a2 d, | g2 a4 d, \section |
  \repeat volta 3 {
    g1 | a | d, | g |
    g1 | a | d, | g \section |
    g2 fis | e d | c1 |
    g'1 | 4 f e2 | a1 |
    d,1 | g2 | a4 d, |
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
      <<
        \new PianoStaff <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh
          <<
            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
            \new Voice \pianoRHtwo
          >>
          \new Staff = pianolh
          <<
            \clef bass
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
      <<
        \new PianoStaff <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = rh
          <<
            \new Voice \TempoTrack
                                %            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsOne
            \new Voice \pianoRHtwo
          >>
          \new Staff = lh
          <<
            \clef bass
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
                 \accidentalStyle Score.modern
                 \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
               }
      \context { \Staff
                 \RemoveAllEmptyStaves
                 barNumberVisibility = #first-bar-number-invisible-save-broken-bars
                 \override BarNumber.break-visibility = ##(#f #t #t)
                 \consists Merge_rests_engraver
               }
      \context { \ChoirStaff
                 \consists Metronome_mark_engraver
                 \consists Staff_collecting_engraver
               }
      \context { \PianoStaff
                 \consists Metronome_mark_engraver
                 \consists Staff_collecting_engraver
               }
      \context { \Voice
                                %        \consists Ambitus_engraver
               }
    }
  }
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%   \articulate
    <<
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
      <<
        \new PianoStaff <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff
          <<
            \new Voice \TempoTrack
                                %            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsMidi
            \new Voice \pianoRHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
