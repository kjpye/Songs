\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Where is my Boy To-Night?"
  subtitle    = "Sankey No. 776"
  subsubtitle = "Sankey 880 No. 303"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
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

global = {
  \key g \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*4
  \textMark \markup { \box \bold "B" } s2.*3 s4. s4
  \textMark \markup { \box \bold "C" } s8 s2.*4
  \textMark \markup { \box \bold "D" }    s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

emptyVerse = {
  R2.*7 r4. r4 \section
}

melody = \relative {
  b'8. 16 8 c4 b8 |
  \tag #'dash       {4 a8 g4 \slurDashed 16(16) \slurSolid}
  \tag #'(v1 v3 v4) {4 a8 g4             8                }
  \tag #'v2         {4 a8 g4             16 16            }
  g8. 16 8 c4 8 | b4.~4 8 |
  b8. 16 8 c4 b8 | d4 c8 b4 g8 | a8. d,16 8 b'4 a8 | g4.~4\fermata \section \break
}

soprano = \relative {
  \autoBeamOff
  b'8\fermata | c8. g16 8 4 a8 | bes4.~4 d8 | 8. a16 8 4 b8 | a4.~4 8 | \break
  b4 d8 b4 g16 g | 8 a b c4\fermata 8\fermata | b8. a16 g8 a4\fermata g8 | g4.~4. |
}

alto = \relative {
  \autoBeamOff
  d'8\fermata | e8. 16 8 4 ees8 | d4.~4 8 | f8. 16 8 e4 g8 | fis4.~4 8 |
  g4 8 4 d16 d | 8 8 g8 4\fermata 8\fermata |8. fis16 g8 fis4\fermata d8 | 4.~4. |
}

tenor = \relative {
  \autoBeamOff
  g8\fermata | 8. 16 8 4 8 | 4.~4 b8 | a8. d16 8 cis4 8 | d4.~4 8 |
  d4 b8 d4 b16 b | 8 a d c4\fermata e8\fermata | d8. c16 b8 c4\fermata b8 | 4.~4. |
}

bass = \relative {
  \autoBeamOff
  g8\fermata | c,8. 16 8 4 8 | g4.~4 g'8 | d8. 16 8 a4 8 | d4.~4 8 |
  g4 8 4 16 16 | 8 fis f e4\fermata c8\fermata | d8. 16 8 4\fermata g,8 | 4.~4. |
}

chorus = \lyricmode {
  Oh, where is my boy to -- night?
  Oh, where is my boy to -- night?
  My heart o'er -- flows, for I love him, he knows;
  Oh, where is my boy to -- night?
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Where is my wan -- d'ring boy to -- night—
  The boy of my tend -- 'rest care,
  The boy that was once my joy and light,
  The child of my love and prayer?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Once he was pure as morn -- ing dew,
  \nom As he \yesm knelt at his mo -- ther's knee;
  No face was so  bright, no heart more true,
  And none was so sweet as he.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, could I see you now, my boy,
  As far as in old -- en time,
  When prat -- tle and smile made home a joy,
  And life was a mer -- ry chime!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Go for my wand -- 'ring boy to -- night;
  Go, search for him where you will;
  But ring him to me with all his blight,
  And tell him I love him still!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Where " "is " "my " wan "d'ring " "boy " to "night— "
  "\nThe " "boy " "of " "my " tend "'rest " "care, "
  "\nThe " "boy " "that " "was " "once " "my " "joy " "and " "light, "
  "\nThe " "child " "of " "my " "love " "and " "prayer? "
  "\nOh, " "where " "is " "my " "boy " to "night? "
  "\nOh, " "where " "is " "my " "boy " to "night? "
  "\nMy " "heart " o'er "flows, " "for " "I " "love " "him, " "he " "knows; "
  "\nOh, " "where " "is " "my " "boy " to "night?\n"

  \set stanza = "2."
  "\nOnce " "he " "was " "pure " "as " morn "ing " "dew, "
  \nom As he \yesm knelt at his mo -- ther's knee;
  "\nNo " "face " "was " "so "  "bright, " "no " "heart " "more " "true, "
  "\nAnd " "none " "was " "so " "sweet " "as " "he. "
  "\nOh, " "where " "is " "my " "boy " to "night? "
  "\nOh, " "where " "is " "my " "boy " to "night? "
  "\nMy " "heart " o'er "flows, " "for " "I " "love " "him, " "he " "knows; "
  "\nOh, " "where " "is " "my " "boy " to "night?\n"

  \set stanza = "3."
  "\nOh, " "could " "I " "see " "you " "now, " "my " "boy, "
  "\nAs " "far " "as " "in " old "en " "time, "
  "\nWhen " prat "tle " "and " "smile " "made " "home " "a " "joy, "
  "\nAnd " "life " "was " "a " mer "ry " "chime! "
  "\nOh, " "where " "is " "my " "boy " to "night? "
  "\nOh, " "where " "is " "my " "boy " to "night? "
  "\nMy " "heart " o'er "flows, " "for " "I " "love " "him, " "he " "knows; "
  "\nOh, " "where " "is " "my " "boy " to "night?\n"

  \set stanza = "4."
  "\nGo " "for " "my " wand "'ring " "boy " to "night; "
  "\nGo, " "search " "for " "him " "where " "you " "will; "
  "\nBut " "ring " "him " "to " "me " "with " "all " "his " "blight, "
  "\nAnd " "tell " "him " "I " "love " "him " "still! "
  "\nOh, " "where " "is " "my " "boy " to "night? "
  "\nOh, " "where " "is " "my " "boy " to "night? "
  "\nMy " "heart " o'er "flows, " "for " "I " "love " "him, " "he " "knows; "
  "\nOh, " "where " "is " "my " "boy " to "night? "
}

wordsMidiMen = \lyricmode {
}

pianoRH = \relative {
  r8 <b d> q r <c es> <b d> |
  r8 <c d fis>8 8 r <b d g> q |
  r8 <b e g> q r <c e g> q |
  r8 b d g d b |
  r8 <b d> q r <c es> <b d> | % B
  r8 <c d fis>8 8 r <b d g> q | 
  r8 <a d fis> q r <c d fis> q |
  <b d g>4.~4\fermata \section
  r8 r2.*8
}

pianoLH = \relative {
  <g, g'>4. 4. | <d d'> <g g'> | e' c | <g g'>4.~4 r8 |
  q4. q | <d d'> <g g'> | <d d'> q | \partCombine \relative {g4.~4\fermata} \relative {g8(d b g4\fermata)} \section
  r8 r2.*8
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \melody \soprano
                         \keepWithTag #'v2 \melody \soprano
                         \keepWithTag #'v3 \melody \soprano
                         \keepWithTag #'v4 \melody \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \melody \alto \nl
                         \keepWithTag #'v2 \melody \alto \nl
                         \keepWithTag #'v3 \melody \alto \nl
                         \keepWithTag #'v4 \melody \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \transpose g g, \keepWithTag #'v1 \melody \tenor
                         \transpose g g, \keepWithTag #'v2 \melody \tenor
                         \transpose g g, \keepWithTag #'v3 \melody \tenor
                         \transpose g g, \keepWithTag #'v4 \melody \tenor
                       }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \transpose g g, \keepWithTag #'v1 \melody \bass
                         \transpose g g, \keepWithTag #'v2 \melody \bass
                         \transpose g g, \keepWithTag #'v3 \melody \bass
                         \transpose g g, \keepWithTag #'v4 \melody \bass
                       }
          >>
          \new PianoStaff <<
            \new Staff <<
              \new Voice \repeat unfold \verses \pianoRH
              \new Voice \repeat unfold \verses \pianoLH
            >>
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
%        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" { \keepWithTag #'dash \melody \soprano }
            \new Voice \partCombine #'(2 . 88) {
              \global
              \keepWithTag #'dash \melody
              \section \sectionLabel \markup{\smallCaps Chorus \italic "Not too fast."} \break
              \soprano
              \bar "|."
            }
            { \global \emptyVerse \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \emptyVerse \tenor }
            { \global \emptyVerse \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
%        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
          >>
          \new Staff <<
            \clef bass
            \new Voice \pianoLH
          >>
        >>
      >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
               }
    }
  }
}

singlescore = {
  <<
    \new ChoirStaff <<
                                % Joint soprano/alto staff
      \new Staff = women \with { printPartCombineTexts = ##f }
      <<
        \new Voice { \repeat unfold \verses \RehearsalTrack }
        \new Voice { \repeat unfold \verses \TempoTrack }
        \new NullVoice = "aligner" {
          \keepWithTag #'v1 \melody \soprano
          \keepWithTag #'v2 \melody \soprano
          \keepWithTag #'v3 \melody \soprano
          \keepWithTag #'v4 \melody \soprano
        }
        \new Voice \partCombine #'(2 . 88) { \global
                                             \keepWithTag #'v1 \melody \section \break \soprano
                                             \keepWithTag #'v2 \melody \section \break \soprano
                                             \keepWithTag #'v3 \melody \section \break \soprano
                                             \keepWithTag #'v4 \melody \section \break \soprano
                                             \bar "|." }
        { \global \repeat unfold \verses { s2.*7 s4. s4 \alto \nl } \bar "|." }
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
        \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses { s2.*7 s4. s4 \tenor } }
        { \global \repeat unfold \verses {s2.*7 s4. s4 \bass } }
        \new NullVoice = alignerT { \repeat unfold \verses \tenor }
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice \repeat unfold \verses \pianoRH
      >>
      \new Staff <<
        \clef bass
        \new Voice \repeat unfold \verses \pianoLH
      >>
    >>
  >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
               }
    }
  }
}
