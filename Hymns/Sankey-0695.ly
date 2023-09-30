\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Son of God goes Forth!"
  subtitle    = "Sankey No. 695"
  subsubtitle = "Sankey 880 No. 664"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Anon"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "R. Heber, D.D."
  meter       = \markup\smallCaps "C.M.D."
  piece       = \markup\smallCaps "EllaCombe."

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
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 | bes a8[g] f4 bes | d, ees f f | g8[a] bes4 c c | d2. \bar "|" \break
  f,4 | bes a8[g] f4 bes | d, ees f f | g8[a] bes4 bes a | bes2. \bar "|" \break
  bes8[c] | d4 c d ees | c a8[bes] c4 bes8[c] | d4 c d ees | c2. \bar "|" \break
  f,4 | bes a8[g] f4 bes | d, ees f f | g8[a] bes4 4 a | bes2.
  
}

alto = \relative {
  \autoBeamOff
  f'4 | bes a8[g] f4 f | d4 c8[bes] c4 d | ees f g f | 2.
  f4 | bes a8[g] f4 f | d4 c8[bes] c4 d | ees d8[ees] f4 f | 2.
  d8[ees] | f4 f f g | f f f d8[ees] | f4 f f g | f2.
  f4 | bes a8[g] f4 f | d c8[bes] c4 d | ees d8[ees] f4 f | 2.
}

tenor = \relative {
  \autoBeamOff
  f4 | bes a8[g] f4 bes | 4 4 a bes | 4 4 4 a | bes2.
  f4 | bes a8[g] f4 bes | 4 4 a bes | 4 4 c c | d2.
  bes4 | 4 c bes4 4 | a4 f8[g] a4 bes | 4 c bes4 4 | a2.
  f4 | bes a8[g] f4 bes | 4 4 a bes | 4 4 c c | d2.
}

bass = \relative {
  \autoBeamOff
  f4 | bes a8[g] f4 d | g g f bes, | ees d ees f | bes,2.
  f'4 | bes a8[g] f4 d | g g f bes, | ees g f f | bes,2.
  bes'4 | 4 a bes ees, | f f f bes | bes a bes ees, | f2.
  f4 | bes a8[g] d4 d | g g f bes, | ees g f f | bes,2.
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
  The Son of God goes forth to war,
  A king -- ly crown to gain;
  His blood- -- red ban -- ner streams a -- far,
  Who fol -- lows in His train?
  Who best can drink his cup of woe,
  Tri -- umph -- ant o -- ver pain,
  Who pa -- tient bears his cross be -- low,
  He fol -- lows in His train.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The mar -- tyr first, whose eag -- le eye
  Could pierce be -- yond the grave;
  Who saw his Mas -- ter in the sky,
  And called on Him to save;
  Like Him, with par -- don on his tongue.
  In midst of mor -- tal pain,
  He prayed for them that did the wrong:
  Who fol -- lows in his train?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  A glo -- rious band, the cho -- sen few,
  On whom the Spi -- rit came'
  Twelve va -- liant saints, their hopes they knew,
  And mocked the cross and flame.
  They met the ty -- rant's brand -- ished steel,
  The li -- on's go -- ry mane;
  They bowed their necks the death to feel:
  Who fol -- lows in their train?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  A no -- ble ar -- my— men and boys,
  The ma -- tron and the maid—
  A -- round the Sa -- viour's throne re -- joice,
  In robes of light ar -- rayed.
  They climbed the steep as -- cent of heaven
  Thro' per -- il, toil, and pain:
  O God, to us may grace be given
  To fol -- low in their train!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "Son " "of " "God " "goes " "forth " "to " "war, "
  "\nA " king "ly " "crown " "to " "gain; "
  "\nHis " blood- "red " ban "ner " "streams " a "far, "
  "\nWho " fol "lows " "in " "His " "train? "
  "\nWho " "best " "can " "drink " "his " "cup " "of " "woe, "
  "\nTri" umph "ant " o "ver " "pain, "
  "\nWho " pa "tient " "bears " "his " "cross " be "low, "
  "\nHe " fol "lows " "in " "His " "train.\n"

  \set stanza = "2."
  "\nThe " mar "tyr " "first, " "whose " eag "le " "eye "
  "\nCould " "pierce " be "yond " "the " "grave; "
  "\nWho " "saw " "his " Mas "ter " "in " "the " "sky, "
  "\nAnd " "called " "on " "Him " "to " "save; "
  "\nLike " "Him, " "with " par "don " "on " "his " "tongue. "
  "\nIn " "midst " "of " mor "tal " "pain, "
  "\nHe " "prayed " "for " "them " "that " "did " "the " "wrong: "
  "\nWho " fol "lows " "in " "his " "train?\n"

  \set stanza = "3."
  "\nA " glo "rious " "band, " "the " cho "sen " "few, "
  "\nOn " "whom " "the " Spi "rit " "came' "
  "\nTwelve " va "liant " "saints, " "their " "hopes " "they " "knew, "
  "\nAnd " "mocked " "the " "cross " "and " "flame. "
  "\nThey " "met " "the " ty "rant's " brand "ished " "steel, "
  "\nThe " li "on's " go "ry " "mane; "
  "\nThey " "bowed " "their " "necks " "the " "death " "to " "feel: "
  "\nWho " fol "lows " "in " "their " "train?\n"

  \set stanza = "4."
  "\nA " no "ble " ar "my— " "men " "and " "boys, "
  "\nThe " ma "tron " "and " "the " "maid— "
  "\nA" "round " "the " Sa "viour's " "throne " re "joice, "
  "\nIn " "robes " "of " "light " ar "rayed. "
  "\nThey " "climbed " "the " "steep " as "cent " "of " "heaven "
  "\nThro' " per "il, " "toil, " "and " "pain: "
  "\nO " "God, " "to " "us " "may " "grace " "be " "given "
  "\nTo " fol "low " "in " "their " "train! "
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
