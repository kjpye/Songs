\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Throw out the Life-Line!"
  subtitle    = "Sankey No. 772"
  subsubtitle = "N. H. No. 28"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. S. Ufford."
  arranger    = \markup\concat{"(Arr. by " \smallCaps "Geo. C. Stebbins." ")"}
%  opus        = "opus"

  poet        = \markup\smallCaps "E. S. Ufford."
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
  \textMark \markup { \box \bold "A" }     s2.*2 s4.
  \textMark \markup { \box \bold "B" } s4. s2.*2
  \textMark \markup { \box \bold "C" }     s2.*3
  \textMark \markup { \box \bold "D" }     s2.*2 s4.
  \textMark \markup { \box \bold "E" } s4. s2.*2
  \textMark \markup { \box \bold "F" }     s2.*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 b'8. 16 8 a g | a8 b c b4. | d8 e d \bar "|" \break
  d8 b b | b a g a4. | d,8 b'8. 16 8 a g |
  a8 b c b4 8 | d8 e8. d16 8 b g | a8 g fis g4.
  \section \sectionLabel \markup\smallCaps Chorus. |
  d'8 8. 16 a8 d4 | b8 8. 16 c8 b4 | a8 8 8 \bar "|" \break
  a8 g8. a16 | b4.(d) | 8 8. 16 e8 d4 |
  b8 8. 16 c8 b4 | e8 8 8 d16 b8. a8 | g4.~g |
}

alto = \relative {
  \autoBeamOff
  b8 d8. 16 8 c b | d8 8 8 4. | g8 8 8
  g8 d d | cis8 8 8 d4. | b8 d8. 16 8 c b |
  d8 8 8 4 8 | g8 8. 16 8 8 8 | fis g d8 4. |
  g8 8. 16 8 4 | 8 8. 16 8 4 | fis8 8 8
  fis8 e8. fis16 | g4.~4. | 8 8. 16 8 4 |
  g8 8. 16 8 4 | 8 8 8 16 8. fis8 | g4.~4. |
}

tenor = \relative {
  \autoBeamOff
  g8 8. 16 8 8 8 | fis8 g a g4. | b8 c b
  b8 g g | g g a fis4. | g8 8. 16 8 8 8 |
  fis8 g a g4 8 | b c8. b16 8 d b | c b a b4.\section |
  b8 8. 16 c8 b4 | d8 8. 16 e8 d4 | 8 8 8
  d8 8. 16 | 4.(b) | 8 8. 16 c8 b4 |
  d8 8. 16 e8 d4 | c8 8 8 b16 d8. c8 | b4.~4. |
}

bass = \relative {
  \autoBeamOff
  g,8 8. 16 8 8 8 | d'8 8 8 g4. | 8 8 8
  g8 8 8 | e e a, d4. | g8 8. 16 8 8 8 |
  d8 8 8 g,4 g'8 | 8 8. 16 8 8 8 | d8 8 8 g,4. |
  g'8 8. 16 8 4 | 8 8. 16 8 4 | d8 8 8
  d8 8. 16 | g4.~4. | 8 8. 16 8 4 |
  g8 8. 16 8 4 | c,8 8 8 d16 8. 8 | g,4.~4. |
}

chorus = \lyricmode {
  Throw out the Life- Line!
  Throw out the Life- Line!
  Some one is drift -- ing a -- way: __
  Throw out the Life- Line:
  Throw out the Life- Line!
  Some one is sink -- ing to -- day. __
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Throw out the Life- Line a -- cross the dark wave,
  There is a bro -- ther whom some one should save;
  Some -- bo -- dy's bro -- ther! oh, who will then dare
  To throw out the Life- Line, his per -- il to share?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Throw out the Life- Line with hand quick and strong:
  Why do you tar -- ry, my bro -- ther, so long?
  See— he is sink -- ing; oh, has -- ten to -- day—
  And out with the Life- Boat! a -- way then, a -- way!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Throw out the Life- Line to dan -- ger- fraught men,
  Sink -- ing in an -- guish where you've nev -- er been:
  Winds of temp -- ta -- tion and bil -- lows of woe
  Will soon hurl them out where the dark wa -- ters flow.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Soon will the sea -- son of res -- cue be o'er,
  Soon wil they drift to e -- ter -- ni -- ty's shore.
  Haste then, my bro -- ther! no time for de -- lay,
  But throw out the Life- Line, and save them to -- day!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Throw " "out " "the " Life- "Line " a "cross " "the " "dark " "wave, "
  "\nThere " "is " "a " bro "ther " "whom " "some " "one " "should " "save; "
  "\nSome" bo "dy's " bro "ther! " "oh, " "who " "will " "then " "dare "
  "\nTo " "throw " "out " "the " Life- "Line, " "his " per "il " "to " "share? "
  "\nThrow " "out " "the " Life- "Line! "
  "\nThrow " "out " "the " Life- "Line! "
  "\nSome " "one " "is " drift "ing " a "way: " 
  "\nThrow " "out " "the " Life- "Line: "
  "\nThrow " "out " "the " Life- "Line! "
  "\nSome " "one " "is " sink "ing " to "day.\n" 

  \set stanza = "2."
  "\nThrow " "out " "the " Life- "Line " "with " "hand " "quick " "and " "strong: "
  "\nWhy " "do " "you " tar "ry, " "my " bro "ther, " "so " "long? "
  "\nSee—" "he " "is " sink "ing; " "oh, " has "ten " to "day— "
  "\nAnd " "out " "with " "the " Life- "Boat! " a "way " "then, " a "way! "
  "\nThrow " "out " "the " Life- "Line! "
  "\nThrow " "out " "the " Life- "Line! "
  "\nSome " "one " "is " drift "ing " a "way: " 
  "\nThrow " "out " "the " Life- "Line: "
  "\nThrow " "out " "the " Life- "Line! "
  "\nSome " "one " "is " sink "ing " to "day.\n" 

  \set stanza = "3."
  "\nThrow " "out " "the " Life- "Line " "to " dan ger "fraught " "men, "
  "\nSink" "ing " "in " an "guish " "where " "you've " nev "er " "been: "
  "\nWinds " "of " temp ta "tion " "and " bil "lows " "of " "woe "
  "\nWill " "soon " "hurl " "them " "out " "where " "the " "dark " wa "ters " "flow. "
  "\nThrow " "out " "the " Life- "Line! "
  "\nThrow " "out " "the " Life- "Line! "
  "\nSome " "one " "is " drift "ing " a "way: " 
  "\nThrow " "out " "the " Life- "Line: "
  "\nThrow " "out " "the " Life- "Line! "
  "\nSome " "one " "is " sink "ing " to "day.\n" 

  \set stanza = "4."
  "\nSoon " "will " "the " sea "son " "of " res "cue " "be " "o'er, "
  "\nSoon " "wil " "they " "drift " "to " e ter ni "ty's " "shore. "
  "\nHaste " "then, " "my " bro "ther! " "no " "time " "for " de "lay, "
  "\nBut " "throw " "out " "the " Life- "Line, " "and " "save " "them " to "day! "
  "\nThrow " "out " "the " Life- "Line! "
  "\nThrow " "out " "the " Life- "Line! "
  "\nSome " "one " "is " drift "ing " a "way: " 
  "\nThrow " "out " "the " Life- "Line: "
  "\nThrow " "out " "the " Life- "Line! "
  "\nSome " "one " "is " sink "ing " to "day. " 
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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

#(set-global-staff-size 20)

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
      #(layout-set-staff-size 20)
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
