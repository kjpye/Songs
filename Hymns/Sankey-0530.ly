\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Hollow of God's Hand,"
  subtitle    = "Sankey No. 530"
  subsubtitle = "N. H. No. 107"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. S. Lorenz."
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

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*3
  \textMark \markup { \box \bold "D" }    s1*2 s2.
  \textMark \markup { \box \bold "E" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8 e | g4 4 f8 e d c | a'4 c2 b8 a | g4 4 a8 f f e |
  e4 d2 c8 e | g4 4 f8 e d c | a'4 c2 b8 a |
  g8 c4. d4 b | c2. \bar "||" g8^\markup\smallCaps Chorus c | b d2~8 c d |
  e2. c8 b | a c2~8 d e | d2. \bar "|" \break
  e8 d | c4 g f8 e d c | a'4 c2 b8 a | g c4. d4 b | c2.
}

alto = \relative {
  \autoBeamOff
  c'8 8 | e4 4 c8 8 b c | 4 f2 g8 f | e4 4 f8 e d c |
  c4 b2 c8 8 | e4 4 c8 8 b c | c4 f2 g8 f |
  e8 4. f4 d | e2. 8 8 | d8 f f f g g g g |
  d2. e8 g | f a a a fis8 8 8 8 | g2.
  g8 f | e4 4 c8 8 b c | 4 f2 g8 f | e8 4. f4 d | e2.
}

tenor = \relative {
  \autoBeamOff
  e8 g | c4 bes a8 g f e | f4 a2 c8 8 | 4 4 8 8 g g |
  g4 2 e8 g | c4 b a8 g f e | f4 a2 c8 8 |
  c8 4. b4 g | 2. r4 | r b8 8 8 8 c b |
  c8 8 8 8 4 r | r c8 a a a b c | b8 8 8 8 4
  b8 8 | c4 bes a8 g f e | f4 a2 c8 8 | 8 4. b4 f | f2.
}

bass = \relative {
  \autoBeamOff
  c8 8 | 4 4 8 8 8 8 | f4 2 8 8 | c4 4 8 8 8 8 |
  g4 2 c8 8 | 4 4 8 8 8 8 | f4 2 8 8 |
  g8 4. 4 g, | c2. r4 | r g'8 8 8 f e g |
  c8 8 8 8 4 r | r f,8 f d d d d | g g g g g4
  g8 8 | c,4 4 8 8 8 8 | d4 2 8 8 | g8 4. 4 g, | c2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  In the hol -- low __ of His hand! __
  In the hol -- low __ of His hand! __
  I am safe, what -- ev -- er may be -- tide me,
  In the hol -- low __ of His hand!
}

chorusMen = \lyricmode {
  \repeat unfold 37 { _ }
  In the hol -- low, in the hol -- low of His hand!
  In the hol -- low, in the hol -- low of His hand!
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  With my Sa -- viour ev -- er near to guide me,
  I am safe, what -- ev -- er may be -- tide me;
  From the storm and tem -- pest He will hide me
  In the hol -- low of His hand!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  In His arms of love He doth en -- fold me;
  Words of peace His voice Di -- vine hath told me;
  I am safe, for God Him -- self doth hold me
  In the hol -- low of His hand!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He will guard my soul, and leave me nev -- er;
  From His love o power on earth shall sev -- er;
  And I know He'll keep me now and ev -- er
  In the hol -- low of His hand!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "With " "my " Sa "viour " ev "er " "near " "to " "guide " "me, "
  "\nI " "am " "safe, " what ev "er " "may " be "tide " "me; "
  "\nFrom " "the " "storm " "and " tem "pest " "He " "will " "hide " "me "
  "\nIn " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low "  "of " "His " "hand! " 
  "\nIn " "the " hol "low "  "of " "His " "hand! " 
  "\nI " "am " "safe, " what ev "er " "may " be "tide " "me, "
  "\nIn " "the " hol "low "  "of " "His " "hand!\n"

  \set stanza = "2."
  "\nIn " "His " "arms " "of " "love " "He " "doth " en "fold " "me; "
  "\nWords " "of " "peace " "His " "voice " Di "vine " "hath " "told " "me; "
  "\nI " "am " "safe, " "for " "God " Him "self " "doth " "hold " "me "
  "\nIn " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low "  "of " "His " "hand! " 
  "\nIn " "the " hol "low "  "of " "His " "hand! " 
  "\nI " "am " "safe, " what ev "er " "may " be "tide " "me, "
  "\nIn " "the " hol "low "  "of " "His " "hand!\n"

  \set stanza = "3."
  "\nHe " "will " "guard " "my " "soul, " "and " "leave " "me " nev "er; "
  "\nFrom " "His " "love " "o " "power " "on " "earth " "shall " sev "er; "
  "\nAnd " "I " "know " "He'll " "keep " "me " "now " "and " ev "er "
  "\nIn " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low "  "of " "His " "hand! " 
  "\nIn " "the " hol "low "  "of " "His " "hand! " 
  "\nI " "am " "safe, " what ev "er " "may " be "tide " "me, "
  "\nIn " "the " hol "low "  "of " "His " "hand! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "With " "my " Sa "viour " ev "er " "near " "to " "guide " "me, "
  "\nI " "am " "safe, " what ev "er " "may " be "tide " "me; "
  "\nFrom " "the " "storm " "and " tem "pest " "He " "will " "hide " "me "
  "\nIn " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low, " "in " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low, " "in " "the " hol "low " "of " "His " "hand! "
  "\nI " "am " "safe, " what ev "er " "may " be "tide " "me, "
  "\nIn " "the " hol "low "  "of " "His " "hand!\n"

  \set stanza = "2."
  "\nIn " "His " "arms " "of " "love " "He " "doth " en "fold " "me; "
  "\nWords " "of " "peace " "His " "voice " Di "vine " "hath " "told " "me; "
  "\nI " "am " "safe, " "for " "God " Him "self " "doth " "hold " "me "
  "\nIn " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low, " "in " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low, " "in " "the " hol "low " "of " "His " "hand! "
  "\nI " "am " "safe, " what ev "er " "may " be "tide " "me, "
  "\nIn " "the " hol "low "  "of " "His " "hand!\n"

  \set stanza = "3."
  "\nHe " "will " "guard " "my " "soul, " "and " "leave " "me " nev "er; "
  "\nFrom " "His " "love " "o " "power " "on " "earth " "shall " sev "er; "
  "\nAnd " "I " "know " "He'll " "keep " "me " "now " "and " ev "er "
  "\nIn " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low, " "in " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low, " "in " "the " hol "low " "of " "His " "hand! "
  "\nI " "am " "safe, " what ev "er " "may " be "tide " "me, "
  "\nIn " "the " hol "low "  "of " "His " "hand! "
}

\book {
  \bookOutputSuffix "midi-sop"
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
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiMen
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
