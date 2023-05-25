\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I am Trustung Thee, Lord Jesus!"
  subtitle    = "Sankey No. 641"
  subsubtitle = "N. H. No. 63"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Burke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. Havergal."
  meter       = \markup\smallCaps "8.5.8.3."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*4
  \textMark \markup { \box \bold "C" }    s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 ees | f4 f bes a | a g2 r4 | f f bes d | c2. \bar "|" \break
  d,8 ees | f4 f b a | a g2 r4 | f(bes) c(a) | bes2. r4 |
  \section \sectionLabel \markup\smallCaps Chorus.
  g2 ees' | f, d' | d4 c bes d | c2. \bar "|" \break
  bes8 c | d2 bes | bes g | f4 bes c a | bes2.
}

alto = \relative {
  \autoBeamOff
  bes8 c | d4 d d f | f e2 r4 | d d f f | 2.
  bes,8 c | d4 d d f | f ees2 r4 | d2 ees | d2. r4 |
  ees2 g | d f | 4 4 4 4 | 2.
  f8 f | 2 4(aes) | g2 ees | d4 d ees ees | d2.
}

tenor = \relative {
  \autoBeamOff
  f8 8 | bes4 4 4 4 | 4 2 r4 | bes4 4 4 f | a2.
  f8 f | bes4 4 4 4 | 4 2 r4 | bes2 g4(f) | 2. r4 |
  bes4 4 4 4 | 4 4 4 4 | bes a bes bes | a2.
  bes8 a | bes4 4 d bes | 4 4 4 4 | 4 4 g f | 2.
}

bass = \relative {
  \autoBeamOff
  bes,8 8 | 4 4 4 d | ees4 2 r4 | bes' f d bes | f'2.
  bes,8 8 | 4 4 4 d | ees4 2 r4 | f(g) ees(f) | bes,2. r4
  ees4 4 4 4 | bes4 4 4 4 | 4 c d bes | f'2~(8[ees])
  d8 c | bes4 4 4 d | ees4 4 4 4 | f g ees f | bes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I am trust -- ing,
  Trust -- ing on -- ly Thee!
  I am trust -- ing, trust -- ing,
  Trust -- ing on -- ly Thee!
}

chorusMen = \lyricmode {
  \tiny
  \repeat unfold 24 _
  I am trust -- ing, I am trust -- ing,
  _ _ _ _ _
  _ _ trust -- ing, trust -- ing,
  I am trust -- ing,
  _ _ _ _ _
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I am trust -- ing Thee, Lord Je -- sus,
  Trust -- ing on -- ly Thee!
  Trust -- ing Thee for full Sal -- va -- tion,
  Great and free.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I am trust -- ing Thee for par -- don,
  At Thy feet I bow:
  For Thy grace and ten -- der mer -- cy,
  Trust -- ing now.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O am trust -- ing Thee for cleans -- ing
  In the crom -- son flood;
  Trust -- ing Thee to make me ho -- ly
  By Thy blood.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I am trust -- ing Thee for pow -- er,
  Thine can nev -- er fail;
  Words which Thou Thy -- self shall give me
  Must pre -- vail.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  I am trust -- ing Thee, Lord Je -- sus;
  Nev -- er let me fall;
  I am trust -- ing Thee for ev -- er
  And for all!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "am " trust "ing " "Thee, " "Lord " Je "sus, "
  "\nTrust" "ing " on "ly " "Thee! "
  "\nTrust" "ing " "Thee " "for " "full " Sal va "tion, "
  "\nGreat " "and " "free. "
  "\nI " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee! "
  "\nI " "am " trust "ing, " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee!\n"

  \set stanza = "2."
  "\nI " "am " trust "ing " "Thee " "for " par "don, "
  "\nAt " "Thy " "feet " "I " "bow: "
  "\nFor " "Thy " "grace " "and " ten "der " mer "cy, "
  "\nTrust" "ing " "now. "
  "\nI " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee! "
  "\nI " "am " trust "ing, " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee!\n"

  \set stanza = "3."
  "\nO " "am " trust "ing " "Thee " "for " cleans "ing "
  "\nIn " "the " crom "son " "flood; "
  "\nTrust" "ing " "Thee " "to " "make " "me " ho "ly "
  "\nBy " "Thy " "blood. "
  "\nI " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee! "
  "\nI " "am " trust "ing, " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee!\n"

  \set stanza = "4."
  "\nI " "am " trust "ing " "Thee " "for " pow "er, "
  "\nThine " "can " nev "er " "fail; "
  "\nWords " "which " "Thou " Thy "self " "shall " "give " "me "
  "\nMust " pre "vail. "
  "\nI " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee! "
  "\nI " "am " trust "ing, " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee!\n"

  \set stanza = "5."
  "\nI " "am " trust "ing " "Thee, " "Lord " Je "sus; "
  "\nNev" "er " "let " "me " "fall; "
  "\nI " "am " trust "ing " "Thee " "for " ev "er "
  "\nAnd " "for " "all! "
  "\nI " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee! "
  "\nI " "am " trust "ing, " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "I " "am " trust "ing " "Thee, " "Lord " Je "sus, "
  "\nTrust" "ing " on "ly " "Thee! "
  "\nTrust" "ing " "Thee " "for " "full " Sal va "tion, "
  "\nGreat " "and " "free. "
  "\nI " "am " trust "ing, " "I " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee! "
  "\nI " "am " trust "ing, " trust "ing, "
  "\nI " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee!\n"

  \set stanza = "2."
  "\nI " "am " trust "ing " "Thee " "for " par "don, "
  "\nAt " "Thy " "feet " "I " "bow: "
  "\nFor " "Thy " "grace " "and " ten "der " mer "cy, "
  "\nTrust" "ing " "now. "
  "\nI " "am " trust "ing, " "I " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee! "
  "\nI " "am " trust "ing, " trust "ing, "
  "\nI " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee!\n"

  \set stanza = "3."
  "\nO " "am " trust "ing " "Thee " "for " cleans "ing "
  "\nIn " "the " crom "son " "flood; "
  "\nTrust" "ing " "Thee " "to " "make " "me " ho "ly "
  "\nBy " "Thy " "blood. "
  "\nI " "am " trust "ing, " "I " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee! "
  "\nI " "am " trust "ing, " trust "ing, "
  "\nI " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee!\n"

  \set stanza = "4."
  "\nI " "am " trust "ing " "Thee " "for " pow "er, "
  "\nThine " "can " nev "er " "fail; "
  "\nWords " "which " "Thou " Thy "self " "shall " "give " "me "
  "\nMust " pre "vail. "
  "\nI " "am " trust "ing, " "I " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee! "
  "\nI " "am " trust "ing, " trust "ing, "
  "\nI " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee!\n"

  \set stanza = "5."
  "\nI " "am " trust "ing " "Thee, " "Lord " Je "sus; "
  "\nNev" "er " "let " "me " "fall; "
  "\nI " "am " trust "ing " "Thee " "for " ev "er "
  "\nAnd " "for " "all! "
  "\nI " "am " trust "ing, " "I " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee! "
  "\nI " "am " trust "ing, " trust "ing, "
  "\nI " "am " trust "ing, "
  "\nTrust" "ing " on "ly " "Thee! "
}

\book {
  \bookOutputSuffix "midi-women"
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
      #(layout-set-staff-size 20)
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
                                              \wordsFive  \chorus
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
