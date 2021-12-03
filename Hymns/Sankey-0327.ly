\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh for a Faith!"
  subtitle    = "Sankey No. 327"
  subsubtitle = "Sankey 880 No. 150"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Canon Havergal."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. H. Bathurst."
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "Evan."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 3/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s1.*3 s1
  \mark \markup { \box "B" } s2 s1.*3 s1
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'2
  ees4 aes c2 bes
  aes4 f ees2 2
  ees4 aes c2 aes
  bes1 \bar "|" \break des2
  c4 bes aes2 bes % B
  c4 aes f2 ees
  ees4 aes c2 bes
  aes1
}

alto = \relative {
  \autoBeamOff
  c'2
  c4 4 ees2 des
  c4 des c2 2
  c4 4 2 2
  ees1 2
  ees4 des c2 ees % B
  ees4 4 des2 bes
  c4 4 ees2 des
  c1
}

tenor = \relative {
  \autoBeamOff
  aes2
  aes4 4 2 g
  aes4 4 2 2
  aes4 4 2 2
  g1 bes2
  aes4 g aes2 g % B
  aes4 4 2 g
  aes4 4 2 g
  aes1
}

bass = \relative {
  \autoBeamOff
  aes,2
  aes4 4 2 ees'
  f4 des aes2 2
  aes4 \once\partCombineApart aes' f2 2
  ees1 2
  \once\partCombineApart aes4 ees f2 ees % B
  \once\partCombineApart aes4 c, des2 ees
  aes,4 f' ees2 2
  aes,1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh for a faith that will not shrink,
  Tho' pressed by ev -- 'ry foe;
  That will not trem -- ble on the brink
  Of a -- ny earth -- ly woe;
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  That will not mur -- mur or com -- plain,
  Be -- neath the chast -- 'ning rod;
  But in the hour of grief or pain
  Will lean up -- on its God;
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  A faith that shines more bright and clear
  When tem -- pests rage with -- out;
  That when in dan -- ger knows no fear,
  In dark -- ness feels no doubt—
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  A faith that keeps the nar -- row way
  Till life's last spark is fled,
  And with a pure and heaven -- ly ray
  Lights up the dy -- ing bed.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Lord, give us such a faith as this,
  And then, what -- e'er may come,
  We'll taste, e'en here, the hal -- lowed bliss
  Of our e -- ter -- nal home!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh " "for " "a " "faith " "that " "will " "not " "shrink, "
  "\nTho' " "pressed " "by " ev "'ry " "foe; "
  "\nThat " "will " "not " trem "ble " "on " "the " "brink "
  "\nOf " a "ny " earth "ly " "woe; "

  \set stanza = "2."
  "\nThat " "will " "not " mur "mur " "or " com "plain, "
  "\nBe" "neath " "the " chast "'ning " "rod; "
  "\nBut " "in " "the " "hour " "of " "grief " "or " "pain "
  "\nWill " "lean " up "on " "its " "God; "

  \set stanza = "3."
  "\nA " "faith " "that " "shines " "more " "bright " "and " "clear "
  "\nWhen " tem "pests " "rage " with "out; "
  "\nThat " "when " "in " dan "ger " "knows " "no " "fear, "
  "\nIn " dark "ness " "feels " "no " "doubt— "

  \set stanza = "4."
  "\nA " "faith " "that " "keeps " "the " nar "row " "way "
  "\nTill " "life's " "last " "spark " "is " "fled, "
  "\nAnd " "with " "a " "pure " "and " heaven "ly " "ray "
  "\nLights " "up " "the " dy "ing " "bed. "

  \set stanza = "5."
  "\nLord, " "give " "us " "such " "a " "faith " "as " "this, "
  "\nAnd " "then, " what "e'er " "may " "come, "
  "\nWe'll " "taste, " "e'en " "here, " "the " hal "lowed " "bliss "
  "\nOf " "our " e ter "nal " "home! "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
