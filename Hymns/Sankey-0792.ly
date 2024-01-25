\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Who is on the Lord's Side?"
  subtitle    = "Sankey No. 792"
  subsubtitle = "N. H. No. 123"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. havergal."
  meter       = \markup\smallCaps "6.5. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*6
  \textMark \markup { \box \bold "D" } s1*5
  \textMark \markup { \box \bold "E" } s1*5
  \textMark \markup { \box \bold "F" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4^\markup\italic\bold Spirited 4 4. a8 | g2 e | c4 e g c | e2. r4 | d c b a |
  g2 c | b4 a g fis | g2. r4 | g g a b | d2 c |
  c4 c d d | e2. r4 | e d c b | d2 a | c4 b a b | c2. r4 |
  \section \sectionLabel \markup\smallCaps Chorus. \break
  e4 4 4. e8 | d2 b | d4 c b a | b2. r4 | d4 4 4. e8 |
  d2 b | d4 c b a | g2. r4 | 4 4 4. a8 | g2 e |
  c4 e g c | e2. r4 | d c b a | g2 c | 4 b a b | c2. r4 |
}

alto = \relative {
  \autoBeamOff
  e'4 4 4. f8 | e2 c | 4 4 e g | 2. r4 | f4 f g f |
  e2 e | d4 d d d | 2. r4 | f f f f | 2 e |
  a4 4 4 4 | gis2. r4 | 4 f e d | f2 f | 4 4 4 4 | e2. r4 \section |
  g4 4 4. 8 | 2 2 | b4 a g fis | g2. r4 | 4 4 4. 8 |
  g2 g | 4 4 4 fis | g2. r4 | e4 4 4. f8 | e2 c |
  c4 c e g | 2. r4 | f f f f | e2 g | f4 f f f | e2. r4 |
}

tenor = \relative {
  \autoBeamOff
  c'4 4 4. 8 | 2 g | e4 g c e | c2. r4 | a a b c |
  c2 g | 4 c b a | b2. r4 | b b c g | 2 c |
  e4 e d a | b2. r4 | c g g gis | a2 d | 4 4 c g | 2. r4 \section |
  b4 4 4. c8 | b2 d | 4 4 4 4 | 2. r4 | b4 4 4. c8 |
  b2 d | b4 a d c | b2. r4 | c4 4 4. 8 | 2 g |
  e4 g c e | c2. r4 | a a b c | 2 e | d4 d c g | 2. r4 |
}

bass = \relative {
  \autoBeamOff
  c4 4 4. 8 | 2 2 | 4 4 4 4 | 2. r4 | f f f f |
  c2 2 | d4 4 4 4 | g2. r4 | 4 4 4 g, | c2 2 |
  a'4 4 f f | e2. r4 | c c c e | f2 f | g4 4 4 g, | c2. r4 \section |
  g'4 4 4. 8 | 2 2 | d4 4 4 4 | g2. r4 | 4 4 4. 8 |
  g2 2 | d4 4 4 4 | g,2. r4 | c4 4 4. 8 | 2 2 |
  c4 4 4 4 | 2. r4 | f f f f | c2 c | g'4 4 4 g, | c2. r4 |
}

chorus = \lyricmode {
  Who is on the Lord's side?
  Who will serve the King?
  Who will be His help -- ers,
  Oth -- er lives to bring?
  By Thy grand re -- demp -- tion
  By Thy grace Di -- vine.
  We are on the Lord's side;
  Sa -- viour, we are Thine!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Who is on the Lord's side?
  Who will serve the King?
  Who will be His help -- ers,
  Oth -- er lives to bring?
  Who will leave the world's side?
  Who will face the foe?
  Who is on the Lord's side?
  Who for Him will go?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Not for weight of glo -- ry,
  Not for crown and palm,
  En -- ter we the ar -- my,
  Raise the war -- rior- psalm;
  But for love that claim -- eth
  Lives for whom He died:
  He whom Je -- sus nam -- eth
  Must be on His side.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus, Thou hast brought us,
  Not with gold or gem,
  But with Thine own life- blood,
  For Thy di -- a -- dem;
  With Thy bles -- sing fill -- ing
  All who come to Thee,
  Thou hast made us will -- ing,
  Thou hast made us free.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Fierce may be the con -- flict,
  Strong may be the foe;
  But the King's own ar -- my,
  None can o -- ver -- throw;
  Round His stand -- ard rang -- ing,
  Vic -- t'ry is se -- cure,
  For His truth un -- chan -- ging
  Makes the tri -- umph sure.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Who " "is " "on " "the " "Lord's " "side? "
  "\nWho " "will " "serve " "the " "King? "
  "\nWho " "will " "be " "His " help "ers, "
  "\nOth" "er " "lives " "to " "bring? "
  "\nWho " "will " "leave " "the " "world's " "side? "
  "\nWho " "will " "face " "the " "foe? "
  "\nWho " "is " "on " "the " "Lord's " "side? "
  "\nWho " "for " "Him " "will " "go? "
  "\nWho " "is " "on " "the " "Lord's " "side? "
  "\nWho " "will " "serve " "the " "King? "
  "\nWho " "will " "be " "His " help "ers, "
  "\nOth" "er " "lives " "to " "bring? "
  "\nBy " "Thy " "grand " re demp "tion "
  "\nBy " "Thy " "grace " Di "vine. "
  "\nWe " "are " "on " "the " "Lord's " "side; "
  "\nSa" "viour, " "we " "are " "Thine!\n"

  \set stanza = "2."
  "\nNot " "for " "weight " "of " glo "ry, "
  "\nNot " "for " "crown " "and " "palm, "
  "\nEn" "ter " "we " "the " ar "my, "
  "\nRaise " "the " war rior- "psalm; "
  "\nBut " "for " "love " "that " claim "eth "
  "\nLives " "for " "whom " "He " "died: "
  "\nHe " "whom " Je "sus " nam "eth "
  "\nMust " "be " "on " "His " "side. "
  "\nWho " "is " "on " "the " "Lord's " "side? "
  "\nWho " "will " "serve " "the " "King? "
  "\nWho " "will " "be " "His " help "ers, "
  "\nOth" "er " "lives " "to " "bring? "
  "\nBy " "Thy " "grand " re demp "tion "
  "\nBy " "Thy " "grace " Di "vine. "
  "\nWe " "are " "on " "the " "Lord's " "side; "
  "\nSa" "viour, " "we " "are " "Thine!\n"

  \set stanza = "3."
  "\nJe" "sus, " "Thou " "hast " "brought " "us, "
  "\nNot " "with " "gold " "or " "gem, "
  "\nBut " "with " "Thine " "own " life- "blood, "
  "\nFor " "Thy " di a "dem; "
  "\nWith " "Thy " bles "sing " fill "ing "
  "\nAll " "who " "come " "to " "Thee, "
  "\nThou " "hast " "made " "us " will "ing, "
  "\nThou " "hast " "made " "us " "free. "
  "\nWho " "is " "on " "the " "Lord's " "side? "
  "\nWho " "will " "serve " "the " "King? "
  "\nWho " "will " "be " "His " help "ers, "
  "\nOth" "er " "lives " "to " "bring? "
  "\nBy " "Thy " "grand " re demp "tion "
  "\nBy " "Thy " "grace " Di "vine. "
  "\nWe " "are " "on " "the " "Lord's " "side; "
  "\nSa" "viour, " "we " "are " "Thine!\n"

  \set stanza = "4."
  "\nFierce " "may " "be " "the " con "flict, "
  "\nStrong " "may " "be " "the " "foe; "
  "\nBut " "the " "King's " "own " ar "my, "
  "\nNone " "can " o ver "throw; "
  "\nRound " "His " stand "ard " rang "ing, "
  "\nVic" "t'ry " "is " se "cure, "
  "\nFor " "His " "truth " un chan "ging "
  "\nMakes " "the " tri "umph " "sure. "
  "\nWho " "is " "on " "the " "Lord's " "side? "
  "\nWho " "will " "serve " "the " "King? "
  "\nWho " "will " "be " "His " help "ers, "
  "\nOth" "er " "lives " "to " "bring? "
  "\nBy " "Thy " "grand " re demp "tion "
  "\nBy " "Thy " "grace " Di "vine. "
  "\nWe " "are " "on " "the " "Lord's " "side; "
  "\nSa" "viour, " "we " "are " "Thine! "
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
