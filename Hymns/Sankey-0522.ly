\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All the Way."
  subtitle    = "Sankey No. 522"
  subsubtitle = "Sankey 880 No. 131"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "8.7. d."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
  \mark \markup { \box "E" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8. 16 | 4. 8 bes aes | ees4 aes4 8 c | bes4. g8 aes bes | c2 \bar "|" \break 8. 16
  des4. c8 bes aes | c4 bes4 8 8 | 4. f8 g aes | g2 \bar "|" \break f8 ees |
  aes4. bes8 aes f | ees4 aes4 8 bes | c4. aes8 des c | bes2 \bar "|" \break c8 des |
  ees4. c8 bes aes | bes4 aes g8 f | ees aes c4 bes | c2 \bar "|" \break 8 des |
  ees4. c8 bes aes | bes4 aes g8 f | ees8 aes c4 bes | aes2
}

alto = \relative {
  \autoBeamOff
  ees'8. 16 | 4. 8 des c | 4 4 8 ees | 4. 8 8 8 | 2 8. 16 |
  f4. ees8 des c | ees4 4 8 8 | d4. 8 ees f | ees2 des8 ees |
  c4. des8 c des | c4 4 ees8 8 | 4. c8 f ees | ees2 8 8 |
  ees4. 8 8 8 | des4 f ees8 des | c8 8 ees4 4 | 2 8 8 |
  ees4. aes8 g f | 4 4 ees8 des | c ees8 4 4 | 2
}

tenor = \relative {
  \autoBeamOff
  aes8. 16 | 4. 8 8 8 | 4 ees4 8 aes | g4. bes8 aes g | aes2 8. 16 |
  aes4. 8 g aes | 4 g4 8 8 | f4. bes8 8 8 | 2 8 g |
  aes4. 8 8 8 | 4 4 8 g | aes4. 8 8 8 | g2 aes8 bes |
  c4. aes8 g aes | f4 aes4 8 8 | 8 8 4 g | aes2 8 bes |
  c4. ees8 des c | des4 4 aes8 8 | 8 c ees4 des | c2
}

bass = \relative {
  \autoBeamOff
  aes,8. 16 | 4. 8 8 8 | 4 4 8 8 | ees'4. des8 c bes | aes2 aes'8. 16 |
  aes4. 8 ees f | ees4 4 8 8 | bes4. 8 8 8 | ees2 8 8 |
  aes,4. 8 8 8 | 4 4 c8 ees | aes4. 8 8 8 | ees2 aes8 8 |
  aes4. aes,8 bes c | des4 4 8 8 | ees8 8 4 4 | aes2 8 8 |
  aes4. 8 ees f | des4 4 8 8 | ees8 8 4 4 | aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  All the way my Sa -- viour leads me:
  What have I to ask be -- side?
  Can I doubt His ten -- der mer -- cy,
  Who thro' life has been my Guide?
  Heaven -- ly peace, di -- vi -- nest com -- fort,
  Here by faith in Him to dwell!
  For I know, what -- e'er be -- fal me,
  Je -- sus do -- eth all things well;
  For I know, what -- e'er be -- fal me,
  Je -- sus do -- eth all things well;
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  All the way my Sa -- viour leads me:
  Cheers each wind -- ing path I tread,
  Gives me grace for ev -- 'ry tri -- al,
  Feeds me with the Liv -- ing Bread.
  Though my wea -- ry steps may fal -- ter,
  And my soul a -- thirst may be,
  Gush -- ing from the Rock be -- fore me,
  Lo, a spring of joy I see;
  Gush -- ing from the Rock be -- fore me,
  Lo, a spring of joy I see.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  All the way my Sa -- viour leads me:
  Oh, the ful -- ness of His love!
  Per -- fect rest to me is pro -- mised
  In  my Fa -- ther's house a -- bove.
  When my spi -- rit, clothed im -- mor -- tal,
  Wings its flight to realms of day,
  This my song through end -- less a -- ges—
  Je -- sus led me all the way!
  This my song through end -- less a -- ges—
  Je -- sus led me all the way!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "All " "the " "way " "my " Sa "viour " "leads " "me: "
  "\nWhat " "have " "I " "to " "ask " be "side? "
  "\nCan " "I " "doubt " "His " ten "der " mer "cy, "
  "\nWho " "thro' " "life " "has " "been " "my " "Guide? "
  "\nHeaven" "ly " "peace, " di vi "nest " com "fort, "
  "\nHere " "by " "faith " "in " "Him " "to " "dwell! "
  "\nFor " "I " "know, " what "e'er " be "fal " "me, "
  "\nJe" "sus " do "eth " "all " "things " "well; "
  "\nFor " "I " "know, " what "e'er " be "fal " "me, "
  "\nJe" "sus " do "eth " "all " "things " "well.\n"

  \set stanza = "2."
  "\nAll " "the " "way " "my " Sa "viour " "leads " "me: "
  "\nCheers " "each " wind "ing " "path " "I " "tread, "
  "\nGives " "me " "grace " "for " ev "'ry " tri "al, "
  "\nFeeds " "me " "with " "the " Liv "ing " "Bread. "
  "\nThough " "my " wea "ry " "steps " "may " fal "ter, "
  "\nAnd " "my " "soul " a "thirst " "may " "be, "
  "\nGush" "ing " "from " "the " "Rock " be "fore " "me, "
  "\nLo, " "a " "spring " "of " "joy " "I " "see; "
  "\nGush" "ing " "from " "the " "Rock " be "fore " "me, "
  "\nLo, " "a " "spring " "of " "joy " "I " "see.\n"

  \set stanza = "3."
  "\nAll " "the " "way " "my " Sa "viour " "leads " "me: "
  "\nOh, " "the " ful "ness " "of " "His " "love! "
  "\nPer" "fect " "rest " "to " "me " "is " pro "mised "
  "\nIn "  "my " Fa "ther's " "house " a "bove. "
  "\nWhen " "my " spi "rit, " "clothed " im mor "tal, "
  "\nWings " "its " "flight " "to " "realms " "of " "day, "
  "\nThis " "my " "song " "through " end "less " a "ges— "
  "\nJe" "sus " "led " "me " "all " "the " "way! "
  "\nThis " "my " "song " "through " end "less " a "ges— "
  "\nJe" "sus " "led " "me " "all " "the " "way! "
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

#(set-global-staff-size 20)

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
