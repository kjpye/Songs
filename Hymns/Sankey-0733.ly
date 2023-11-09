\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Only a Beam of Sunshine."
  subtitle    = "Sankey No. 733"
  subsubtitle = "Sankey 880 No. 573"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweeney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*4
  \textMark \markup { \box \bold "B" } s2.*4
  \textMark \markup { \box \bold "C" } s2.*4
  \textMark \markup { \box \bold "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'8. a16 g8 4 e8 | e4. d4 8 | g8. 16 8 a4 b8 | a4.~4 c8 |
  b8. a16 g8 4 d8 | e4. g4 a8 | b8. c16 b8 4 a8 | g4.~4 r8 |
  f8. g16 a8 4 c8 | b4. g4 8 | fis g a d4 c8 | b4.~4 8 |
  b8 c b8 4 a8 | g4. e4 8 | d g fis b4 a8 | g4.~4 r8 |
}

alto = \relative {
  \autoBeamOff
  d'8. 16 8 4 8 | c4. b4 8 | d8. 16 8 4 8 | 4.~4 8 |
  d8. 16 8 4 8 | c4. e4 ees8 | d8. e16 d8 4 c8 | b4.~4 r8 |
  \partCombineApart R2. | R | R | r4 r8 r4 \partCombineAutomatic d8 |
  d8 e d dis4 8 | e4. c4 8 | b d d d4 c8 | b4.~4 r8 |
}

tenor = \relative {
  \autoBeamOff
  g8. c16 b8 4 g8 | 4. 4 8 | 8. 16 8 fis4 g8 | fis4.~4 a8 |
  g8. c16 b8 4 g8 | 4. c4 g8 | 8. 16 8 fis4 8 | g4.~4 r8 |
  a8. b16 c8 4 e8 | d4. b4 8 | a b c fis4 e8 | d4.~4 g,8 |
  g8 8 8 fis4 b8 | g4. 4 8 | 8 b a g4 fis8 | g4.~4 r8 |
}

bass = \relative {
  \autoBeamOff
  g8. 16 8 4 b,8 |c4. g4 8 | b8. 16 8 d4 g8 | d4.~4 fis8 |
  g8. 16 8 4 b,8 | c4. 4 8 | d8. 16 8 4 8 | g,4.~4 r8 |
  \partCombineApart R2. | R | R | r4 r8 r4 \partCombineAutomatic g'8 |
  g8 8 8 b,4 8 | c4. 4 8 | d8 8 8 4 8 | g,4.~4 r8 |
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
  “On -- ly a beam of sun -- shine”—
  But oh, it was warm and broght;
  The heart of a wea -- ry trav -- 'ller
  Was cheered by its wel -- come sight.
  “On -- ly a beam of sun -- shine”—
  That fell from the arch a -- bove:
  And ten -- der -- ly, soft -- ly whis -- pered
  A mes -- sage of peace and love.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  “On -- ly a beam of sun -- shine”
  That in -- to a dwell -- ing crept;
  Where, o -- ver a fa -- ding rose -- bud,
  A mo -- ther her vi -- gil kept.
  “On -- ly a beam of sun -- shine”
  That miled thro' her fall -- ing tears,
  And showed her the bow of pro -- mise,
  For -- got -- ten per -- haps for years.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ly a word for Je -- sus,
  Oh, speak it in His dear name;
  To per -- ish -- ing souls a -- round you
  The mes -- sage of love peo -- claim.
  Go, like the faith -- ful sun -- beam,
  Your mis -- sion of joy ful -- fil;
  Re -- mem -- ber the Sa -- viour's pro -- mise,
  That He will be with you still.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "“On" "ly " "a " "beam " "of " sun "shine”— "
  "\nBut " "oh, " "it " "was " "warm " "and " "broght; "
  "\nThe " "heart " "of " "a " wea "ry " trav "'ller "
  "\nWas " "cheered " "by " "its " wel "come " "sight. "
  "\n“On" "ly " "a " "beam " "of " sun "shine”— "
  "\nThat " "fell " "from " "the " "arch " a "bove: "
  "\nAnd " ten der "ly, " soft "ly " whis "pered "
  "\nA " mes "sage " "of " "peace " "and " "love.\n"

  \set stanza = "2."
  "\n“On" "ly " "a " "beam " "of " sun "shine” "
  "\nThat " in "to " "a " dwell "ing " "crept; "
  "\nWhere, " o "ver " "a " fa "ding " rose "bud, "
  "\nA " mo "ther " "her " vi "gil " "kept. "
  "\n“On" "ly " "a " "beam " "of " sun "shine” "
  "\nThat " "miled " "thro' " "her " fall "ing " "tears, "
  "\nAnd " "showed " "her " "the " "bow " "of " pro "mise, "
  "\nFor" got "ten " per "haps " "for " "years.\n"

  \set stanza = "3."
  "\nOn" "ly " "a " "word " "for " Je "sus, "
  "\nOh, " "speak " "it " "in " "His " "dear " "name; "
  "\nTo " per ish "ing " "souls " a "round " "you "
  "\nThe " mes "sage " "of " "love " peo "claim. "
  "\nGo, " "like " "the " faith "ful " sun "beam, "
  "\nYour " mis "sion " "of " "joy " ful "fil; "
  "\nRe" mem "ber " "the " Sa "viour's " pro "mise, "
  "\nThat " "He " "will " "be " "with " "you " "still. "
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
