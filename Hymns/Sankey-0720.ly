\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Paul and Silas."
  subtitle    = "Sankey No. 720"
  subsubtitle = "N.H. No. 90"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "P. P. Bliss."
  meter       = \markup\smallCaps "8.7.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2 s1*3 s2
  \textMark \markup { \box \bold "B" } s2 s1*3 s2
  \textMark \markup { \box \bold "C" } s2 s1*3 s2
  \textMark \markup { \box \bold "D" } s2 s1*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4. 8 | aes4 g f4. 8 | bes4 aes g4. 8 | f4 ees aes aes | 2 \bar "|" \break
  ees4.  8 | aes4 g f4. 8 | bes4 aes g4. 8 | aes4 c c bes | aes2 \bar "|" \break
  c4. 8  | ees4 4 aes,4. bes8 | c4 4 bes8[aes] f4 | ees c' bes bes | 2 \bar "|" \break
  c4. 8 ees4 4 aes,4. bes8 | c4 c bes8[aes] f4 | ees c' bes4. aes8 | 2
}

alto = \relative {
  \autoBeamOff
  c'4. 8 | ees4 4 des4. ees8 | f4 f d4. 8 | 4 4 c d | c2
  c4. 8 | ees4 4 des4. ees8 | f4 f ees4. 8 | 4 4 4 des | c2
  ees4. 8 | g4 ees c4. f8 | e4 4 f des | c ees d f | ees2
  ees4. 8 | g4 ees c4. f8 | e4 e f des | c ees des4. c8 | 2
}

tenor = \relative {
  \autoBeamOff
  aes4. 8 | 4 4 4. a8 |bes4 des bes4. 8 | aes4 g aes8[ees] f4 | ees2
  aes4. 8 | 4 4 4. a8 | bes4 des bes4. 8 | aes4 4 4 g | aes2
  aes4. 8 | bes4 g aes4. f8 | g4 4 f aes | 4 4 f aes | g2
  aes4. 8 | bes4 g aes4. f8 | g4 4 f aes | 4 4 g4. aes8 | 2
}

bass = \relative {
  \autoBeamOff
  aes,4. 8 | c4 c des4. c8 | bes4 4 ees4. 8 | 4 4 aes, aes | 2
  aes4. 8 | c4 4 des4. c8 | bes4 4 ees4. des8 | c4 aes ees'4 4 | aes,2
  aes'4. 8 ees4 4 f4. des8 | c4 c des4 4 | aes4 4 bes4 4 | ees2
  aes4. 8 ees4 4 f4. des8 | c4 4 des4 4 | ees4 4 4. aes,8 | 2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Night has fal -- len on the ci -- ty,
  And the streets at last are still,
  Where the noi -- sy crowd, the day long,
  Did the air with shout -- ings fill;
  And the wea -- ry, way -- worn trav -- 'llers,
  Preach -- ing Je -- sus thro' the land.
  Are in deep -- est dun -- geon dark -- ness,
  By the mag -- is -- trates' com -- mand.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ma -- ny stripes to them are giv -- en,
  a -- ny cur -- ses on them cast;
  Ma -- ny bolts and bars sur -- round them;
  In the stocks their feet are fast;
  While the cru -- el Ro -- man jail -- er
  All se -- cure -- ly sleep -- ing on,
  Lit -- tle dreams the migh -- ty won -- ders
  Of the mor -- row's ear -- ly dawn.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hark the sigh -- ing of the pris -- oners!
  Hear their moan -- ings loud and long!
  No: a -- gain, and loud -- er, clear -- er,
  'Tis the voice of prayer and song!
  See, the pris -- on walls are shak -- intg,
  And the door wide o -- pen stands!
  Lo, be -- hold the earth is quak -- ing,
  Loosed are ev -- 'ry pris -- oner's bands!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, there's not a cell so lone -- ly
  But a song may e -- cho there;
  Oh, there's not a night so cheer -- less,
  But there's po -- ten -- cy in prayer;
  Sing, oh, sing, thou wea -- ry pil -- grim!
  Song will bring thee heav'n -- ly peace;
  Pray, oh, pray, thou bur -- den'd pris -- oner!
  God will give thee sweet re -- lease.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Night " "has " fal "len " "on " "the " ci "ty, "
  "\nAnd " "the " "streets " "at " "last " "are " "still, "
  "\nWhere " "the " noi "sy " "crowd, " "the " "day " "long, "
  "\nDid " "the " "air " "with " shout "ings " "fill; "
  "\nAnd " "the " wea "ry, " way "worn " trav "'llers, "
  "\nPreach" "ing " Je "sus " "thro' " "the " "land. "
  "\nAre " "in " deep "est " dun "geon " dark "ness, "
  "\nBy " "the " mag is "trates' " com "mand.\n"

  \set stanza = "2."
  "\nMa" "ny " "stripes " "to " "them " "are " giv "en, "
  "\na" "ny " cur "ses " "on " "them " "cast; "
  "\nMa" "ny " "bolts " "and " "bars " sur "round " "them; "
  "\nIn " "the " "stocks " "their " "feet " "are " "fast; "
  "\nWhile " "the " cru "el " Ro "man " jail "er "
  "\nAll " se cure "ly " sleep "ing " "on, "
  "\nLit" "tle " "dreams " "the " migh "ty " won "ders "
  "\nOf " "the " mor "row's " ear "ly " "dawn.\n"

  \set stanza = "3."
  "\nHark " "the " sigh "ing " "of " "the " pris "oners! "
  "\nHear " "their " moan "ings " "loud " "and " "long! "
  "\nNo: " a "gain, " "and " loud "er, " clear "er, "
  "\n'Tis " "the " "voice " "of " "prayer " "and " "song! "
  "\nSee, " "the " pris "on " "walls " "are " shak "intg, "
  "\nAnd " "the " "door " "wide " o "pen " "stands! "
  "\nLo, " be "hold " "the " "earth " "is " quak "ing, "
  "\nLoosed " "are " ev "'ry " pris "oner's " "bands!\n"

  \set stanza = "4."
  "\nOh, " "there's " "not " "a " "cell " "so " lone "ly "
  "\nBut " "a " "song " "may " e "cho " "there; "
  "\nOh, " "there's " "not " "a " "night " "so " cheer "less, "
  "\nBut " "there's " po ten "cy " "in " "prayer; "
  "\nSing, " "oh, " "sing, " "thou " wea "ry " pil "grim! "
  "\nSong " "will " "bring " "thee " heav'n "ly " "peace; "
  "\nPray, " "oh, " "pray, " "thou " bur "den'd " pris "oner! "
  "\nGod " "will " "give " "thee " "sweet " re "lease. "
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
