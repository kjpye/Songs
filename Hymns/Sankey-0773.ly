\version "2.25.11"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, the Precious Love of jesus!"
  subtitle    = "Sankey No. 773"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. Richmond."
  meter       = \markup\smallCaps "8.7. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4. d8 c f, bes a | a2 g | 4. a8 bes g c8. bes16 | a1 |
  4. d8 c f, bes a | 2 g | 4. a8 bes e, a8. g16 | f1 |
  f4. 8 8 8 bes d | c2 a | f4. 8 8 8 bes d | c1 |
  c4. d8 c f, bes a | 2 g | 4. a8 bes e, a8. g16 | f1 |
}

alto = \relative {
  \autoBeamOff
  f'4. 8 8 8 8 8 | f2 e | 4. f8 e e e8. 16 | f1 |
  f4. 8 8 8 8 8 | 2 e | 4. f8 e c e8. 16 | c1 |
  d4. 8 8 8 f f | 2 2 | d4. 8 8 8 f f | 1 |
  f4. 8 8 8 8 8 | 2 e | 4. f8 e c e8. 16 | c1 |
}

tenor = \relative {
  \autoBeamOff
  a4. bes8 a a d c | 2 2 | 4. 8 8 8 g8. c16 | 1 |
  a4. bes8 a a d c | 2 2 | bes4. a8 g g c8. bes16 a1 |
  bes4. 8 8 8 8 8 | a2 c | bes4. 8 8 8 8 8 | a1 |
  a4. bes8 a a d c | 2 2 | 4. 8 8 8 8. bes16 | a1 |  
}

bass = \relative {
  \autoBeamOff
  f4. 8 8 8 8 8 | c2 2 | 4. 8 8 8 8. 16 | f1 |
  f4. 8 8 8 8 8 | c2 2 | 4. 8 8 8 8. 16 | f1 |
  bes,4. 8 8 8 d bes | f'2 2 | bes,4. 8 8 8 d bes | f'1 |
  f4. 8 8 8 8 8 | c2 2 | bes'4. a8 g g c,8. 16 | f1 |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, the pre -- cious love of Je -- sus,
  How it cheers us on our way!
  Light -- 'ning ev -- 'ry hea -- vy bur -- den,
  Bright -- 'ning ev -- 'ry wea -- ry day!
  How it sweet -- ens ev -- 'ry sor -- row,
  Dri -- ving all our fears a -- way!
  How it shines out in the dark -- ness,
  Ma -- king sun -- shine all the way!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, the pre -- cious love of Je -- sus
  Gives us smiles in place of tears!
  Gives us cour -- age in our trou -- bles,
  Helps us con -- quer all our tears!
  It will make our life worth liv -- ing,
  It will help us when we die,
  Bear us safe -- ly o'er the riv -- er,
  To our home be -- yond the sky.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I must have the love of Je -- sus
  If I do His ser -- vice here;
  I must feel His arm be -- neath me,
  I must know His pre -- sence near:
  Then He'll bless me in my la -- bour,
  Then He'll lead me in the right,
  Help me win lost souls for hea -- ven
  Out of dark -- ness in -- to light.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, I have the love of Je -- sus!
  Praise His name, I know Him well!
  And I love to sing His prais -- es—
  Yes, I joy His love to tell!
  Come and join me in His prais -- es;
  Come and know His love to you;
  Come an help me in the sing -- ing
  Of the song that's ev -- er new!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "the " pre "cious " "love " "of " Je "sus, "
  "\nHow " "it " "cheers " "us " "on " "our " "way! "
  "\nLight" "'ning " ev "'ry " hea "vy " bur "den, "
  "\nBright" "'ning " ev "'ry " wea "ry " "day! "
  "\nHow " "it " sweet "ens " ev "'ry " sor "row, "
  "\nDri" "ving " "all " "our " "fears " a "way! "
  "\nHow " "it " "shines " "out " "in " "the " dark "ness, "
  "\nMa" "king " sun "shine " "all " "the " "way!\n"

  \set stanza = "2."
  "\nOh, " "the " pre "cious " "love " "of " Je "sus "
  "\nGives " "us " "smiles " "in " "place " "of " "tears! "
  "\nGives " "us " cour "age " "in " "our " trou "bles, "
  "\nHelps " "us " con "quer " "all " "our " "tears! "
  "\nIt " "will " "make " "our " "life " "worth " liv "ing, "
  "\nIt " "will " "help " "us " "when " "we " "die, "
  "\nBear " "us " safe "ly " "o'er " "the " riv "er, "
  "\nTo " "our " "home " be "yond " "the " "sky.\n"

  \set stanza = "3."
  "\nI " "must " "have " "the " "love " "of " Je "sus "
  "\nIf " "I " "do " "His " ser "vice " "here; "
  "\nI " "must " "feel " "His " "arm " be "neath " "me, "
  "\nI " "must " "know " "His " pre "sence " "near: "
  "\nThen " "He'll " "bless " "me " "in " "my " la "bour, "
  "\nThen " "He'll " "lead " "me " "in " "the " "right, "
  "\nHelp " "me " "win " "lost " "souls " "for " hea "ven "
  "\nOut " "of " dark "ness " in "to " "light.\n"

  \set stanza = "4."
  "\nOh, " "I " "have " "the " "love " "of " Je "sus! "
  "\nPraise " "His " "name, " "I " "know " "Him " "well! "
  "\nAnd " "I " "love " "to " "sing " "His " prais "es— "
  "\nYes, " "I " "joy " "His " "love " "to " "tell! "
  "\nCome " "and " "join " "me " "in " "His " prais "es; "
  "\nCome " "and " "know " "His " "love " "to " "you; "
  "\nCome " "an " "help " "me " "in " "the " sing "ing "
  "\nOf " "the " "song " "that's " ev "er " "new! "
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
