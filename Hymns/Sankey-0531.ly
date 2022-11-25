\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In the Shadow of the Rock."
  subtitle    = "Sankey No. 531"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
  arranger    = "Arr. Ray Palmer, D.D."
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
  \time 2/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2 s1*4
  \textMark \markup { \box \bold "B" }    s1*4
  \textMark \markup { \box \bold "C" }    s1*4
  \textMark \markup { \box \bold "D" }    s1*5
  \textMark \markup { \box \bold "E" }    s1*5
  \textMark \markup { \box \bold "F" }    s1*5
  \textMark \markup { \box \bold "G" }    s1*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 c | c b a b | g2 4 fis | e2 fis4 g | d2 g4 a |
  b4 c d e | d2 b4 g | a2 4 b | a2 b4 c |
  d4 b a b | g2 4 fis | e2 fis4 g | d2 g4 a |
  b4 c d e | d(b) a4. g8 | g1~ | 2 \bar "||" fis4^\markup\smallCaps Chorus. g | a g a b |
  c2 b4 a | b2 4 c | d2 b4 4 | a4 d cis d | e2 d4 cis |
  d1~ | 2 b4 c | d b a b | g2 4 fis | e e fis g |
  d2 g4 a | b c d e | d(b) a4. g8 | g1~ | 2
}

alto = \relative {
  \autoBeamOff
  g'4 4 | 4 4 fis fis | g2 d4 4 | c2 d4 e | b2 d4 4 |
  d4 4 g g | 2 4 d | f2 4 g | f2 g4 4 |
  g4 4 fis fis | g2 d4 d | c2 d4 e | b2 d4 4 |
  d4 4 g g | g2 fis4. g8 | g1~ | 2 d4 e | fis4 e fis g |
  fis2 g4 fis | g2 4 a | b2 g4 4 | fis4 4 e fis | g2 fis4 g |
  fis1~ | 2 d4 4 | g g fis fis | g2 d4 4 | c c d e |
  b2 d4 4 | d d g g | fis2 4. g8 | g1~ | 2
}

tenor = \relative {
  \autoBeamOff
  g4 a | b d c d | b2 g4 4 | 2 4 4 | 2 4 fis |
  g4 a b c | b2 d4 4 | 2 4 4 | 2 4 a |
  b4 d c d | b2 g4 4 | 2 4 4 | 2 4 fis |
  g4 a b c | b(d) c4. b8 | b1~ | 2 a4 4 | d d c b |
  a2 d4 4 | 2 4 4 | 2 4 4 | 4 a a a | cis2 d4 e |
  d1~ | 2 g,4 a | b d c d | b2 g4 4 | 4 4 4 4 |
  g2 4 fis | g a b c | b(d) c4. b8 | b1~ | 2
}

bass = \relative {
  \autoBeamOff
  g4 4 | g g d d | e2 b4 4 | c2 4 4 | g'2 b,4 d |
  g4 4 4 4 | 2 4 b, | d2 4 4 | 2 g4 4 |
  g4 4 d d | e2 b4 4 | c2 4 4 | g'2 b,4 d |
  g4 4 4 4 | 2 d4. g8 | 1~ | 2 d4 4 | 4 4 4 4 |
  d2 4 4 | g2 b4 a | g2 4 4 | a4 4 4 4 | 2 4 4 |
  d,1~ | 2 g4 4 | 4 4 d d | e2 b4 4 | c4 4 4 4 |
  g'2 b,4 d | g4 4 4 4 | 2 d4. g8 | 1~ | 2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  O my Sa -- viour, bless -- ed Rock!
  Let me hide, let me hide;
  And for ev -- er in Thy cleft
  Safe a -- bide. __
  Till the storms of life are past,
  With their cold and chil -- ly blast,
  And I'm an -- chored safe at last,
  By Thy side! __
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  In the sha -- dow of the Rock
  Let me rest, let me rest.
  When I feel the tem -- pest- shock
  Thrill my breast. thrill my breast;
  All in vain the storm shall sweep,
  While I hide, while I hide,
  And my tran -- quil sta -- tion keep,
  By Thy side. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  On the parched and des -- ert way,
  Where I tread, where I tread,
  With the scorch -- ing noon -- tide ray
  O'er my head, o'er my head;
  Let me find a wel -- come shade,
  Cool and still, cool and still,
  And my wea -- ry steps be stayed.
  While I will. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I in peace will rest me there
  Till I see, till I see
  That the skies a -- gain are fair
  O -- ver me, o -- ver me;
  That the burn -- nig heat is past,
  And the day, and the day
  Bids the trav -- 'ller go at last
  On his way. __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "the " sha "dow " "of " "the " "Rock "
  "\nLet " "me " "rest, " "let " "me " "rest. "
  "\nWhen " "I " "feel " "the " tem pest "shock "
  "\nThrill " "my " "breast. " "thrill " "my " "breast; "
  "\nAll " "in " "vain " "the " "storm " "shall " "sweep, "
  "\nWhile " "I " "hide, " "while " "I " "hide, "
  "\nAnd " "my " tran "quil " sta "tion " "keep, "
  "\nBy " "Thy " "side. " 
  "\nO " "my " Sa "viour, " bless "ed " "Rock! "
  "\nLet " "me " "hide, " "let " "me " "hide; "
  "\nAnd " "for " ev "er " "in " "Thy " "cleft "
  "\nSafe " a "bide. " 
  "\nTill " "the " "storms " "of " "life " "are " "past, "
  "\nWith " "their " "cold " "and " chil "ly " "blast, "
  "\nAnd " "I'm " an "chored " "safe " "at " "last, "
  "\nBy " "Thy " "side!\n" 

  \set stanza = "2."
  "\nOn " "the " "parched " "and " des "ert " "way, "
  "\nWhere " "I " "tread, " "where " "I " "tread, "
  "\nWith " "the " scorch "ing " noon "tide " "ray "
  "\nO'er " "my " "head, " "o'er " "my " "head; "
  "\nLet " "me " "find " "a " wel "come " "shade, "
  "\nCool " "and " "still, " "cool " "and " "still, "
  "\nAnd " "my " wea "ry " "steps " "be " "stayed. "
  "\nWhile " "I " "will. " 
  "\nO " "my " Sa "viour, " bless "ed " "Rock! "
  "\nLet " "me " "hide, " "let " "me " "hide; "
  "\nAnd " "for " ev "er " "in " "Thy " "cleft "
  "\nSafe " a "bide. " 
  "\nTill " "the " "storms " "of " "life " "are " "past, "
  "\nWith " "their " "cold " "and " chil "ly " "blast, "
  "\nAnd " "I'm " an "chored " "safe " "at " "last, "
  "\nBy " "Thy " "side!\n" 

  \set stanza = "3."
  "\nI " "in " "peace " "will " "rest " "me " "there "
  "\nTill " "I " "see, " "till " "I " "see "
  "\nThat " "the " "skies " a "gain " "are " "fair "
  "\nO" "ver " "me, " o "ver " "me; "
  "\nThat " "the " burn "nig " "heat " "is " "past, "
  "\nAnd " "the " "day, " "and " "the " "day "
  "\nBids " "the " trav "'ller " "go " "at " "last "
  "\nOn " "his " "way. " 
  "\nO " "my " Sa "viour, " bless "ed " "Rock! "
  "\nLet " "me " "hide, " "let " "me " "hide; "
  "\nAnd " "for " ev "er " "in " "Thy " "cleft "
  "\nSafe " a "bide. " 
  "\nTill " "the " "storms " "of " "life " "are " "past, "
  "\nWith " "their " "cold " "and " chil "ly " "blast, "
  "\nAnd " "I'm " an "chored " "safe " "at " "last, "
  "\nBy " "Thy " "side! " 
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

#(set-global-staff-size 18)

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

#(set-global-staff-size 20)

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
