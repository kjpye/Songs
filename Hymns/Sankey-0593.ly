\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Once it was the Blessing."
  subtitle    = "Sankey No. 593"
  subsubtitle = "C. C. No. 81"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "A. B. Simpson."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "6.5.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*4
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*5
  \textMark \markup { \box \bold "D" } s2.*5
  \textMark \markup { \box \bold "E" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  f'4 c8 f4 g8 | a4. f | a4 g8 f4 d8 | c4.~4 r8 |
  f4 g8 a4 bes8 | c4. f, | g4 8 4 a8 | g4.~4 r8 | bes4 8 d4 c8 |
  c4. a | c4 8 f4 d8 | c4.~4 r8 | f,4 g8 a4 b8 | c4. f, |
  g4 f8 a4 g8 | f4.~4 r8 |
  \section \sectionLabel \markup\smallCaps Chorus.
  c'4 a8 c4 f,8 | bes4. a | f4 c8 f8[g] a |
  g4.(c4) r8 | c4 a8 g4 f8 | bes4(d8) c4\fermata 8 | f4 c8 a4 g8 | f4.~4 r8 |
}

alto = \relative {
  \autoBeamOff
  c'4 8 4 8 | f4. c | c4 8 d4 bes8 | c4.~4 r8 |
  c4 8 f4 8 | 4. c | 4 8 f4 8 | e4.~4 r8 | e4 8 4 8 |
  f4. f | 4 8 4 8 | 4.~4 r8 | 4 8 4 8 | 4. c |
  d4 8 c4 e8 | f4.~4 r8 | 4 8 4 8 | 4. 4. | c4 8 4 f8 |
  e4.~4 r8 | f4 8 c4 f8 | 4. 4\fermata 8 | a4 f8 4 e8 | c4.~4 r8 |
}

tenor = \relative {
  \autoBeamOff
  a4 8 4 bes8 | c4. a | 4 8 bes4 f8 | a4.~4 r8 |
  a4 bes8 c4 g8 | a4. a | g4 8 b4 8 | c4.~4 r8 | g4 8 bes4 8 |
  a4. c | a4 8 d4 bes8 | a4.~4 r8 | 4 bes8 c4 g8 | a4. a |
  bes4 8 f4 bes8 | a4.~4 r8 \section | a4 c8 a4 8 | d4. c | a4 8 8[bes] c |
  bes4.~4 r8 | a4 c8 bes4 a8 | d4(bes8) a4\fermata 8 | c4 a8 c4 bes8 | a4.~4 r8 |
}

bass = \relative {
  \autoBeamOff
  f4 8 4 8 | 4. 4. | 4 8 bes,4 8 | f'4.~4 r8 |
  f4 8 4 8 | 4. 4. | e4 8 d4 g,8 | c4.~4 r8 | 4 8 4 8 |
  f4. f | 4 8 4 8 | 4.~4 r8 | 4 8 4 8 | 4. 4. |
  bes,4 8 c4 8 | f4.~4 r8 | 4 8 4 8 | 4. 4. | 4 8 4 8 |
  c4.~4 r8 | f4 8 4 8 | 4. 4\fermata 8 | 4 8 c4 8 | f4.~4 r8 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  All in all for ev -- er,
  Je -- sus will I sing;
  Ev -- 'ry -- thing in Je -- sus,
  And Je -- sus ev -- 'ry -- thing.
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Once it was the bless -- ing,
  Now it is the Lord;
  Once it was the feel -- ing,
  Now it is His Word;
  Once His gifts I want -- ed,
  Now the Giv -- er own;
  Once I sought for heal -- ing,
  Now Him -- self a -- lone.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Once 'twas pain -- ful try -- ing.
  Now 'tis per -- fect trust;
  Once a half sal -- va -- tion,
  Now the ut -- ter -- most;
  Once 'twas cease -- less hold -- ing,
  Now He holds me fast;
  Once 'twas con -- stant drift -- ing,
  Now my an -- chor's cast.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Once 'twas bu -- sy plan -- ning,
  Now 'tis trust -- ful prayer;
  Once 'twas an -- xious car -- ing,
  Now He has the care;
  Once 'twas what I want -- ed,
  Now what Je -- sus says;
  Once 'twas con -- stant ask -- ing,
  Now 'tis cease -- less praise.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Once it was my work -- ing,
  His it hence shall be'
  Once I tried to use Him,
  Now He us -- es me;
  Once the prayer I want -- ed,
  Now the Migh -- ty One;
  Once for self I la -- boured,
  Now for Him a -- lone.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Once I hoped in Je -- sus,
  Now I know He's mine;
  Once my lamps were dy -- ing,
  Now they brioght -- ly shine;
  Once for death I wait -- ed,
  Now His com -- ing hail;
  And my hopes are an -- chored
  Safe with -- in the cail.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Once " "it " "was " "the " bless "ing, "
  "\nNow " "it " "is " "the " "Lord; "
  "\nOnce " "it " "was " "the " feel "ing, "
  "\nNow " "it " "is " "His " "Word; "
  "\nOnce " "His " "gifts " "I " want "ed, "
  "\nNow " "the " Giv "er " "own; "
  "\nOnce " "I " "sought " "for " heal "ing, "
  "\nNow " Him "self " a "lone. "
  "\nAll " "in " "all " "for " ev "er, "
  "\nJe" "sus " "will " "I " "sing; "
  "\nEv" 'ry "thing " "in " Je "sus, "
  "\nAnd " Je "sus " ev 'ry "thing.\n"

  \set stanza = "2."
  "\nOnce " "'twas " pain "ful " try "ing. "
  "\nNow " "'tis " per "fect " "trust; "
  "\nOnce " "a " "half " sal va "tion, "
  "\nNow " "the " ut ter "most; "
  "\nOnce " "'twas " cease "less " hold "ing, "
  "\nNow " "He " "holds " "me " "fast; "
  "\nOnce " "'twas " con "stant " drift "ing, "
  "\nNow " "my " an "chor's " "cast. "
  "\nAll " "in " "all " "for " ev "er, "
  "\nJe" "sus " "will " "I " "sing; "
  "\nEv" 'ry "thing " "in " Je "sus, "
  "\nAnd " Je "sus " ev 'ry "thing.\n"

  \set stanza = "3."
  "\nOnce " "'twas " bu "sy " plan "ning, "
  "\nNow " "'tis " trust "ful " "prayer; "
  "\nOnce " "'twas " an "xious " car "ing, "
  "\nNow " "He " "has " "the " "care; "
  "\nOnce " "'twas " "what " "I " want "ed, "
  "\nNow " "what " Je "sus " "says; "
  "\nOnce " "'twas " con "stant " ask "ing, "
  "\nNow " "'tis " cease "less " "praise. "
  "\nAll " "in " "all " "for " ev "er, "
  "\nJe" "sus " "will " "I " "sing; "
  "\nEv" 'ry "thing " "in " Je "sus, "
  "\nAnd " Je "sus " ev 'ry "thing.\n"

  \set stanza = "4."
  "\nOnce " "it " "was " "my " work "ing, "
  "\nHis " "it " "hence " "shall " "be' "
  "\nOnce " "I " "tried " "to " "use " "Him, "
  "\nNow " "He " us "es " "me; "
  "\nOnce " "the " "prayer " "I " want "ed, "
  "\nNow " "the " Migh "ty " "One; "
  "\nOnce " "for " "self " "I " la "boured, "
  "\nNow " "for " "Him " a "lone. "
  "\nAll " "in " "all " "for " ev "er, "
  "\nJe" "sus " "will " "I " "sing; "
  "\nEv" 'ry "thing " "in " Je "sus, "
  "\nAnd " Je "sus " ev 'ry "thing.\n"

  \set stanza = "5."
  "\nOnce " "I " "hoped " "in " Je "sus, "
  "\nNow " "I " "know " "He's " "mine; "
  "\nOnce " "my " "lamps " "were " dy "ing, "
  "\nNow " "they " brioght "ly " "shine; "
  "\nOnce " "for " "death " "I " wait "ed, "
  "\nNow " "His " com "ing " "hail; "
  "\nAnd " "my " "hopes " "are " an "chored "
  "\nSafe " with "in " "the " "cail. "
  "\nAll " "in " "all " "for " ev "er, "
  "\nJe" "sus " "will " "I " "sing; "
  "\nEv" 'ry "thing " "in " Je "sus, "
  "\nAnd " Je "sus " ev 'ry "thing. "
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      #(layout-set-staff-size 19)
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
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
