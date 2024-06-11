\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Lay my Sins on Jesus."
  subtitle    = "Sankey No. 870"
  subsubtitle = "Sankey 880 No. 260"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Walch."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar, D.D."
  meter       = \markup\smallCaps "7.6."
  piece       = \markup\smallCaps "St. George’s, Bolton."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
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
  \tempo 4=120
}

soprano = \relative {
  g'4 | g f bes d, | f2 ees4 bes' | c ees d c | bes2. \bar "|" \break
  g4 | g f aes d, | f2 ees4 4 | f bes4 4 a | bes2. \bar "|" \break
  bes4 | 4. 8 c4 d | ees2 bes4 4 | c4. des8 c4 g | aes2. \bar "|" \break
  c4 | bes4. 8 ees4 4 | 2 d4 c | bes ees, f4. g8 | ees2.
}

alto = \relative {
  ees'4 | d d d bes | 2 4 ees | 4 4 4 4 | 2.
  ees4 | d d d d | c2 4 4 | f d g f8[ees] | d2.
  f4 | 4. 8 4 4 | ees2 4 4 | e4. 8 f4 e | f2.
  d4 | ees4 4 g bes | aes2 f4 fis | f ees4 4 d | ees2.
}

tenor = \relative {
  bes4 | bes aes f aes | 2 g4 4 | aes c bes aes | g2.
  bes4 | 4 aes f aes | 2 g4 a | bes4 4 c c | bes2.
  d4 | 4. 8 c4 bes | 2 g4 4 | 4. 8 c4 4 | 2.
  aes4 | bes g bes des | c2 d4 ees | d g, aes4 4 | g2.
}

bass = \relative {
  ees4 | bes4 4 4 4 | ees2 4 4 | aes4 4 aes,4 4 | ees'2.
  ees4 bes4 4 4 4 | c2 4 f | d g ees f | bes,2.
  bes'4 | aes4. 8 4 4 | g2 ees4 des | c4. bes8 aes4 c | f2.
  f4 | g ees4 4 4 | aes2 4 a | bes bes,4 4 4 | ees2.
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I lay my sins on Je -- sus,
  The spot -- less Lamb of God;
  He bears them all, and frees us
  From the ac -- curs -- ed load.
  I bring my guilt to Je -- sus.
  To wash my crim -- son stains
  White in His blood most pre -- cious,
  Till not a spot re -- mains.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I lay my wants on Je -- sus:
  All ful -- ness dwells in Him;
  He heals all my dis -- eas -- es,
  He doth my soul re -- deem,
  I lay my griefs on Je -- sus,
  My bur -- dens and my cares;
  He from them all re -- leas -- es;
  He all my sor -- row shares.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I rest my soul on Je -- sus,
  This wea -- ry soul of mine;
  His right hand me em -- bra -- ces,
  I on His breast re -- cline,
  I love the name of Je -- sus,
  Im -- man -- uel, Christ, the Lord;
  Like fra -- grance on the breez -- es,
  Hi name a -- broad is poured.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I long to be like Je -- sus—
  Meek, lov -- ing, low -- ly, mild;
  I long to be like Je -- sus,
  The Fa -- ther's ho -- ly child.
  I long to be with Je -- sus
  A -- mid the heaven -- ly throng,
  To sing with saints His prais -- es,
  To learn the an -- gel’s song.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "lay " "my " "sins " "on " Je "sus, "
  "\nThe " spot "less " "Lamb " "of " "God; "
  "\nHe " "bears " "them " "all, " "and " "frees " "us "
  "\nFrom " "the " ac curs "ed " "load. "
  "\nI " "bring " "my " "guilt " "to " Je "sus. "
  "\nTo " "wash " "my " crim "son " "stains "
  "\nWhite " "in " "His " "blood " "most " pre "cious, "
  "\nTill " "not " "a " "spot " re "mains.\n"

  \set stanza = "2."
  "\nI " "lay " "my " "wants " "on " Je "sus: "
  "\nAll " ful "ness " "dwells " "in " "Him; "
  "\nHe " "heals " "all " "my " dis eas "es, "
  "\nHe " "doth " "my " "soul " re "deem, "
  "\nI " "lay " "my " "griefs " "on " Je "sus, "
  "\nMy " bur "dens " "and " "my " "cares; "
  "\nHe " "from " "them " "all " re leas "es; "
  "\nHe " "all " "my " sor "row " "shares.\n"

  \set stanza = "3."
  "\nI " "rest " "my " "soul " "on " Je "sus, "
  "\nThis " wea "ry " "soul " "of " "mine; "
  "\nHis " "right " "hand " "me " em bra "ces, "
  "\nI " "on " "His " "breast " re "cline, "
  "\nI " "love " "the " "name " "of " Je "sus, "
  "\nIm" man "uel, " "Christ, " "the " "Lord; "
  "\nLike " fra "grance " "on " "the " breez "es, "
  "\nHi " "name " a "broad " "is " "poured.\n"

  \set stanza = "4."
  "\nI " "long " "to " "be " "like " Je "sus— "
  "\nMeek, " lov "ing, " low "ly, " "mild; "
  "\nI " "long " "to " "be " "like " Je "sus, "
  "\nThe " Fa "ther's " ho "ly " "child. "
  "\nI " "long " "to " "be " "with " Je "sus "
  "\nA" "mid " "the " heaven "ly " "throng, "
  "\nTo " "sing " "with " "saints " "His " prais "es, "
  "\nTo " "learn " "the " an "gel’s " "song. "
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \alto
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \alto }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
