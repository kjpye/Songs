\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We Bless Thee for Thy Peace."
  subtitle    = "Sankey No. 663"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Mozart"
  arranger    = \markup{"Arr. " \smallCaps "S. Webbe."}
%  opus        = "opus"

  poet        = "Anon."
  meter       = \markup\smallCaps "C. M."
  piece       = \markup\smallCaps "Belmont."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*6 s2
  \textMark \markup { \box \bold "B" } s4 s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 | b'2 a4 | g2 fis4 | 4(e) g | d2 d'4 | d(c) b | b(a) g | g(fis\fermata) \bar "|" \break
  d4 | b'2 a4 | g2 fis4 | fis(e) g | d2 d'4 | d(c) a | g(b) a | g2
}

alto = \relative {
  \autoBeamOff
  d'4 | g2 fis4 | g2 d4 | c2 4 | b2 d4 | g(fis) g | e2 4 | d2\fermata
  d4 | 2 c4 | b(c) d | c2 4 | d2 f4 | e2 4 | d(g) fis | g2
}

tenor = \relative {
  \autoBeamOff
  b4 | d2 c4 | b2 4 | g2 4 | 2 b4 | b(c) d | e2 a,4 | b(a\fermata)
  fis4 | g2 fis4 | g2 4 | 2 4 | b2 g4 | 2 c4 | b(d) c | b2
}

bass = \relative {
  \autoBeamOff
  g4 | 2 d4 | e2 b4 | c2 e4 | g2 4 | g,(a) b | c2 cis4 | d2\fermata
  d4 | g2 d4 | e2 b4 | c2 e4 | g2 b,4 | c2 4 | d2 4 | g2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  We bless Thee for Thy peace, O God,
  Deep as th'un -- fath -- omed sea.
  Which falls like sun -- shine on the road
  Of those who trust in Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  We ask not, Fa -- ther, for re -- pose
  Which comes from out -- ward rest,
  If we may have thro' all life's woes
  Thy peace with -- in our breast:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  That peace which suf -- fers and is strong,
  Trusts where it can -- not see,
  Deems not the tri -- al -- way too long,
  But leaves the end with Thee:
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  That peace which flows ser -- ene and deep,
  A riv -- er in the soul
  Whose banks a liv -- ing ver -- dure keep—
  God's sun -- shine o'er the whole.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  O Fa -- ther, give our hearts this peace,
  What -- e'er the out -- ward be,
  Till all life's disc -- i -- pline shall cease,
  And we go home to Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We " "bless " "Thee " "for " "Thy " "peace, " "O " "God, "
  "\nDeep " "as " th'un fath "omed " "sea. "
  "\nWhich " "falls " "like " sun "shine " "on " "the " "road "
  "\nOf " "those " "who " "trust " "in " "Thee.\n"

  \set stanza = "2."
  "\nWe " "ask " "not, " Fa "ther, " "for " re "pose "
  "\nWhich " "comes " "from " out "ward " "rest, "
  "\nIf " "we " "may " "have " "thro' " "all " "life's " "woes "
  "\nThy " "peace " with "in " "our " "breast:\n"

  \set stanza = "3."
  "\nThat " "peace " "which " suf "fers " "and " "is " "strong, "
  "\nTrusts " "where " "it " can "not " "see, "
  "\nDeems " "not " "the " tri al "way " "too " "long, "
  "\nBut " "leaves " "the " "end " "with " "Thee:\n"

  \set stanza = "4."
  "\nThat " "peace " "which " "flows " ser "ene " "and " "deep, "
  "\nA " riv "er " "in " "the " "soul "
  "\nWhose " "banks " "a " liv "ing " ver "dure " "keep— "
  "\nGod's " sun "shine " "o'er " "the " "whole.\n"

  \set stanza = "5."
  "\nO " Fa "ther, " "give " "our " "hearts " "this " "peace, "
  "\nWhat" "e'er " "the " out "ward " "be, "
  "\nTill " "all " "life's " disc i "pline " "shall " "cease, "
  "\nAnd " "we " "go " "home " "to " "Thee.\n"
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
