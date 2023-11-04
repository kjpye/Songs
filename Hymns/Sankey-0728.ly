\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Weary of Wandering."
  subtitle    = "Sankey No. 728"
  subsubtitle = "Sankey 880 No. 335"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. B. Bradbury."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Miss J. W. Sampson."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 6/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1.*3 s2. s2
  \textMark \markup { \box \bold "B" } s4 s1.*3 s2. s2
  \textMark \markup { \box \bold "C" } s4 s1.*3 s2. s2
  \textMark \markup { \box \bold "D" } s4 s1.*3 s2. s2
  \textMark \markup { \box \bold "A" } s4 s1.*3 s2. s2
  \textMark \markup { \box \bold "B" } s4 s1.*3 s2. s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 | 2 bes4 aes2 f4 | aes2.~2 c4 | bes2. aes | g2.(bes2) \bar "|" \break
  des4 | c2 bes4 aes2 f4 | aes2.~2 c4 | bes2. ges | aes2.~2 \bar "|" \break
  bes4 | 2 aes4 g2 aes4 | bes2.~2. | g2. aes2 f4 | g2.~2 \bar "|" \break
  bes4 | 2 aes4 g2 aes4 | bes2.~2. | g2. aes2 f4 | ees2.~2
  \section \sectionLabel \markup\smallCaps "Chorus." \break
  c'4 | 2 bes4 aes2 f4 | aes2.~2 c4 | bes2. aes | g2.(bes2) \bar "|" \break
  des4 | c2 bes4 aes2 f4 | aes2.~2 c4 | bes2. g | aes2.~2
}

alto = \relative {
  \autoBeamOff
  ees'4 | 2 des4 c2 des4 | c2.~2 ees4 | f2. f | ees2.(g2)
  ees4 | 2 des4 c2 des4 | c2.~2 ees4 | f2. ees | 2.~2
  g4 | 2 f4 ees2 f4 | g2.~2. | ees f2 d4 | ees2.~2
  g4 | 2 f4 ees2 f4 | g2.~2. | ees f2 d4 | ees2.~2
  ees4 | 2 des4 c2 des4 | c2.~2 ees4 | f2. f | ees2.(g2)
  ees4 | 2 des4 c2 des4 | c2.~2 ees4 | f2. ees | 2.~2
}

tenor = \relative {
  \autoBeamOff
  aes4 | 2 ees4 2 aes4 | 2.~2 4 | bes2. 2. | 2.(des2)
  g,4 aes2 ees4 2 aes4 | 2.~2 ees'4 | des2. bes | c2.~2
  \tiny \partCombineApart bes4 | 2 4 2 4 | 2.~2. | 2. 2 4 | 2.~2~
  bes4~ | 2.~2.~ | 2.~2. \normalsize \partCombineAutomatic | 2. 2 aes4 | g2.~2
  aes4 | 2 ees4 2 aes4 | 2.~2 4 | bes2. 2. | 2.(des2)
  g,4 aes2 ees4 2 aes4 | 2.~2 ees'4 | des2. bes | c2.~2
}

bass = \relative {
  \autoBeamOff
  aes,4 | 2 4 2 4 | 2.~2 4 | des2. d | ees2.~2
  ees4 | aes,2 4 2 4 | 2.~2 4 | des2. ees | aes,2.~2
  ees'4 | 2 4 2 4 | 2.~2. | bes2. 2 4 | ees2.~2
  ees4 | 2 4 2 4 | 2.~2. | bes2. 2 4 | ees2.~2
  aes,4 | 2 4 2 4 | 2.~2 4 | des2. d | ees2.~2
  ees4 | aes,2 4 2 4 | 2.~2 4 | des2. ees | aes,2.~2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Wea -- ry of wan -- d'ring long,
  My sore heart saith;
  “Show me Thy way. O Lord!
  Teach me Thy path!”
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Wea -- ry of wan -- d'ring long,
  My sore heart saith;
  “Show me Thy way. O Lord!
  Teach me Thy path!”
  I thought these wea -- ry feet
  Straight -- way would find
  All rough and rug -- ged paths
  Left far be -- hind.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  But, as I on -- ward passed,
  The way grew steep;
  And black clouds gath -- ered fast.
  And skies did weep;
  And dark -- ness seemed to hide
  The toll -- some road:
  A -- mazed, a -- gain I cried,
  “Thy way, O God?”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  “A lamp un -- to my feet”
  God's Word did prove;
  A “still, small voice,” and sweet,
  Spoke thus in love:
  “Who -- so, through night and day,
  God's way pur -- sues,
  ‘Him shall He teach the way
  That He shall "choose.’ ”"
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Then, since He chose for me
  This rug -- ged path,
  My hand ion His shall be
  With stead -- fast faith;
  Each step this dark -- some night
  Is bring -- ing me
  Still near -- er to the bright
  E -- ter -- ni -- ty.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Wea" "ry " "of " wan "d'ring " "long, "
  "\nMy " "sore " "heart " "saith; "
  "\n“Show " "me " "Thy " "way. " "O " "Lord! "
  "\nTeach " "me " "Thy " "path!” "
  "\nI " "thought " "these " wea "ry " "feet "
  "\nStraight" "way " "would " "find "
  "\nAll " "rough " "and " rug "ged " "paths "
  "\nLeft " "far " be "hind. "
  "\nWea" "ry " "of " wan "d'ring " "long, "
  "\nMy " "sore " "heart " "saith; "
  "\n“Show " "me " "Thy " "way. " "O " "Lord! "
  "\nTeach " "me " "Thy " "path!”\n"

  \set stanza = "2."
  "\nBut, " "as " "I " on "ward " "passed, "
  "\nThe " "way " "grew " "steep; "
  "\nAnd " "black " "clouds " gath "ered " "fast. "
  "\nAnd " "skies " "did " "weep; "
  "\nAnd " dark "ness " "seemed " "to " "hide "
  "\nThe " toll "some " "road: "
  "\nA" "mazed, " a "gain " "I " "cried, "
  "\n“Thy " "way, " "O " "God?” "
  "\nWea" "ry " "of " wan "d'ring " "long, "
  "\nMy " "sore " "heart " "saith; "
  "\n“Show " "me " "Thy " "way. " "O " "Lord! "
  "\nTeach " "me " "Thy " "path!”\n"

  \set stanza = "3."
  "\n“A " "lamp " un "to " "my " "feet” "
  "\nGod's " "Word " "did " "prove; "
  "\nA " "“still, " "small " "voice,” " "and " "sweet, "
  "\nSpoke " "thus " "in " "love: "
  "\n“Who" "so, " "through " "night " "and " "day, "
  "\nGod's " "way " pur "sues, "
  "\n‘Him " "shall " "He " "teach " "the " "way "
  "\nThat " "He " "shall " "choose.’ ” "
  "\nWea" "ry " "of " wan "d'ring " "long, "
  "\nMy " "sore " "heart " "saith; "
  "\n“Show " "me " "Thy " "way. " "O " "Lord! "
  "\nTeach " "me " "Thy " "path!”\n"

  \set stanza = "4."
  "\nThen, " "since " "He " "chose " "for " "me "
  "\nThis " rug "ged " "path, "
  "\nMy " "hand " "ion " "His " "shall " "be "
  "\nWith " stead "fast " "faith; "
  "\nEach " "step " "this " dark "some " "night "
  "\nIs " bring "ing " "me "
  "\nStill " near "er " "to " "the " "bright "
  "\nE" ter ni "ty. "
  "\nWea" "ry " "of " wan "d'ring " "long, "
  "\nMy " "sore " "heart " "saith; "
  "\n“Show " "me " "Thy " "way. " "O " "Lord! "
  "\nTeach " "me " "Thy " "path!” "
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
