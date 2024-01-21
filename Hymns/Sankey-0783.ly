\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Fall of Jericho."
  subtitle    = "Sankey No. 783"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup\italic "Bold and martial." 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 | g g g a | b4 b b c | d8 e d c b4 a | g2. \bar "|" \break
  d4 | g g g a | b b b b | a8 b a g fis4 e | d2. \bar "|" \break
  d4 | e e e fis | g g g d | e8[fis] g4 g a | b2. \bar "|" \break
  b4 | c4 8[b] a4 a | b4 8[a] g4 8[a] | b[c] d4 e d | g,2.
}

alto = \relative {
  \autoBeamOff
  d'4 | d d d fis | g4 g g g | 8 8 8 8 4 fis | g2.
  b,4 | b b d d | d d d cis | d8 d d d d4 cis | d2.
  d4 | d d c c | d c b d | c d b e | dis2.
  e4 | e c d d | d d8[c] b4 g' | g4 8[fis] e4 fis | g2.
}

tenor = \relative {
  \autoBeamOff
  d4 | b' b g d' | d d e e | g,8 g b c d4 c | b2.
  g4 | g g g fis | g g g g | a8 g a b a4 g | fis2.
  g4 | g g g a | g g g g | 8[a] b4 g e | fis2.
  gis4 | a4 8[g] fis4 a | g fis g g | g g g c | b2.
}

bass = \relative {
  \autoBeamOff
  d4 | g d b d | g g e c | b8 c d e d4 d | g2.
  g4 | g d b a | g d' g e | fis8 g fis e a4 a, | d2.
  b4 | c c c a | b a g b | c b e c | b2.
  e4 | a a, d fis | g d e e | d8[c] b4 c d | g2.
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  The walls of Je -- ri -- cho were strong;
  But strong -- er was the migh -- ty Lord:
  And He— the Cap -- tain of God's host—
  Had giv -- en them His faith -- ful word,
  That if they would the walls sur -- round,
  And would the trum -- pets blow.
  He then would give them vic -- to -- ry,
  And o -- ver -- throw their foe.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The gates of Je -- ri -- cho were strong—
  They could not an -- y strong -- er be:
  But there was One who them de -- fied—
  And with the host of God was He.
  No work for Him would be too great,
  Too hard to un -- der -- take;
  For he could burst the gates of brass,
  The bars of i -- ron break.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  And we, O Lord, are wag -- ing war
  A -- gainst the migh -- ty hosts of sin:
  And neith -- er skill nor strength have we,
  So oft have we de -- feat -- ed been.
  But if Thou wilt our Cap -- tain be,
  Our weak -- ened ranks com -- mand.
  Then led by Thee we'll face the foe,
  His fierce as -- saults with -- stand.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Strong Son of God! we need more faith
  In Thine al -- migh -- ty power to save:
  Oh, hear the prayer of con -- trite hearts
  As we Thy keep -- ing grace would crave;
  Help us to trust in Thee a -- lone,
  To save us ev -- 'ry day;
  Oh, make us, in the rest of faith,
  Tri -- um -- phant all the way.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "walls " "of " Je ri "cho " "were " "strong; "
  "\nBut " strong "er " "was " "the " migh "ty " "Lord: "
  "\nAnd " "He—" "the " Cap "tain " "of " "God's " "host— "
  "\nHad " giv "en " "them " "His " faith "ful " "word, "
  "\nThat " "if " "they " "would " "the " "walls " sur "round, "
  "\nAnd " "would " "the " trum "pets " "blow. "
  "\nHe " "then " "would " "give " "them " vic to "ry, "
  "\nAnd " o ver "throw " "their " "foe.\n"

  \set stanza = "2."
  "\nThe " "gates " "of " Je ri "cho " "were " "strong— "
  "\nThey " "could " "not " an "y " strong "er " "be: "
  "\nBut " "there " "was " "One " "who " "them " de "fied— "
  "\nAnd " "with " "the " "host " "of " "God " "was " "He. "
  "\nNo " "work " "for " "Him " "would " "be " "too " "great, "
  "\nToo " "hard " "to " un der "take; "
  "\nFor " "he " "could " "burst " "the " "gates " "of " "brass, "
  "\nThe " "bars " "of " i "ron " "break.\n"

  \set stanza = "3."
  "\nAnd " "we, " "O " "Lord, " "are " wag "ing " "war "
  "\nA" "gainst " "the " migh "ty " "hosts " "of " "sin: "
  "\nAnd " neith "er " "skill " "nor " "strength " "have " "we, "
  "\nSo " "oft " "have " "we " de feat "ed " "been. "
  "\nBut " "if " "Thou " "wilt " "our " Cap "tain " "be, "
  "\nOur " weak "ened " "ranks " com "mand. "
  "\nThen " "led " "by " "Thee " "we'll " "face " "the " "foe, "
  "\nHis " "fierce " as "saults " with "stand.\n"

  \set stanza = "4."
  "\nStrong " "Son " "of " "God! " "we " "need " "more " "faith "
  "\nIn " "Thine " al migh "ty " "power " "to " "save: "
  "\nOh, " "hear " "the " "prayer " "of " con "trite " "hearts "
  "\nAs " "we " "Thy " keep "ing " "grace " "would " "crave; "
  "\nHelp " "us " "to " "trust " "in " "Thee " a "lone, "
  "\nTo " "save " "us " ev "'ry " "day; "
  "\nOh, " "make " "us, " "in " "the " "rest " "of " "faith, "
  "\nTri" um "phant " "all " "the " "way. "
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

#(set-global-staff-size 19)

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
