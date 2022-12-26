\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Every Day and Hour."
  subtitle    = "Sankey No. 570"
  subsubtitle = "Sankey 880 No. 129"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup{\smallCaps "7.9." "(or 7s.)"}
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
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8. bes16 | aes4. bes8 aes8. f16 | ees2 8 8 | f16 aes8. ees16 aes8. c\fermata bes16 | 2 \bar "|" \break
  c8. bes16 | aes4. bes8 aes8. f16 | ees2 8 8 | f16 aes8. ees16 aes8. c\fermata  bes16 | aes2 \break
  \section \sectionLabel \markup\smallCaps Refrain.
  aes8. bes16 | c2 8. des16 | ees2 c8. bes16 | aes4. 8 bes c | bes2 \bar "|" \break
  c8. bes16 | aes4. bes8 aes8. f16 | ees2 8 8 | f16 aes8. ees16 aes8. c\fermata bes16 | aes2
}

alto = \relative {
  \autoBeamOff
  ees'8. des16 | c4. ees8 f8. des16 | c2 8 8 | des16 f8. ees16 8. 8.\fermata 16 | 2
  ees8. des16 | c4. ees8 f8. des16 | c2 8 8 | des16 f8. ees16 8. 8.\fermata des16 | c2
  ees8. 16 | aes2 8. 16 | 2 8. ees16 | 4. 8 8 8 | 2
  ees8. des16 | c4. ees8 f8. des16 | c2 8 8 | des16 f8. ees16 8. 8.\fermata des16 | c2
}

tenor = \relative {
  \autoBeamOff
  aes8. ees16 | 4. aes8 8. 16 | 2 8 8 | 16 8. 16 8. 8.\fermata g16 | 2
  aes8. ees16 | 4. aes8 8. 16 | 2 8 8 | 16 8. 16 8. 8.\fermata g16 | aes2 \section
  c8. des16 | ees8 8 4 8. bes16 | c8 8 4 ees8. des16 | c4. aes8 g aes | g2
  g8. 16 | aes4. 8 8. 16 | 2 8 8 | 16 8. 16 8. 8.\fermata g16 | aes2
}

bass = \relative {
  \autoBeamOff
  aes,8. 16 | 4. c8 des8. 16 | aes2 8 8 | des16 8. c16 8. ees8.\fermata 16 | 2
  aes,8. 16 | 4. c8 des8. 16 | aes2 8 8 | des16 8. c16 8. ees8.\fermata 16 | aes,2
  aes'8. 16 | 8 8 4 8. 16 | 8 8 4 ees8. 16 | aes,4. c8 bes aes | ees'2  
  ees8. 16 | aes,4. c8 des8. 16 | aes2 8 8 | des16 8. c16 8. ees8.\fermata 16 | aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Ev -- 'ry day, __ ev -- 'ry hour, __
  Let me feel Thy clean -- sing pow'r;
  May Thy ten -- der love to me
  Bind me clo -- ser, clo -- ser, Lord, to Thee.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  Ev -- 'ry day and hour, Ev -- 'ry day and hour,
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Sa -- viour, more than life to me,
  I am cling -- ing, cling -- ing close to Thee;
  Let Thy pre -- cious blood ap -- plied,
  Keep me ev -- er, ev -- er near Thy side.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thro' this chan -- ging world be -- low,
  Lead me gen -- tly, gen -- tly as I go;
  Trust -- ing Thee, I can -- not stray,
  I can nev -- er, nev -- er lose my way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Let me love Thee more and more,
  Till this fleet -- ing, fleet -- ing life is o'er;
  Till my soul is lost in love,
  In a bright -- er, bright -- er world a -- bove.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sa" "viour, " "more " "than " "life " "to " "me, "
  "\nI " "am " cling "ing, " cling "ing " "close " "to " "Thee; "
  "\nLet " "Thy " pre "cious " "blood " ap "plied, "
  "\nKeep " "me " ev "er, " ev "er " "near " "Thy " "side. "
  "\nEv" "'ry " "day, "  ev "'ry " "hour, " 
  "\nLet " "me " "feel " "Thy " clean "sing " "pow'r; "
  "\nMay " "Thy " ten "der " "love " "to " "me "
  "\nBind " "me " clo "ser, " clo "ser, " "Lord, " "to " "Thee.\n"

  \set stanza = "2."
  "\nThro' " "this " chan "ging " "world " be "low, "
  "\nLead " "me " gen "tly, " gen "tly " "as " "I " "go; "
  "\nTrust" "ing " "Thee, " "I " can "not " "stray, "
  "\nI " "can " nev "er, " nev "er " "lose " "my " "way. "
  "\nEv" "'ry " "day, "  ev "'ry " "hour, " 
  "\nLet " "me " "feel " "Thy " clean "sing " "pow'r; "
  "\nMay " "Thy " ten "der " "love " "to " "me "
  "\nBind " "me " clo "ser, " clo "ser, " "Lord, " "to " "Thee.\n"

  \set stanza = "3."
  "\nLet " "me " "love " "Thee " "more " "and " "more, "
  "\nTill " "this " fleet "ing, " fleet "ing " "life " "is " "o'er; "
  "\nTill " "my " "soul " "is " "lost " "in " "love, "
  "\nIn " "a " bright "er, " bright "er " "world " a "bove. "
  "\nEv" "'ry " "day, "  ev "'ry " "hour, " 
  "\nLet " "me " "feel " "Thy " clean "sing " "pow'r; "
  "\nMay " "Thy " ten "der " "love " "to " "me "
  "\nBind " "me " clo "ser, " clo "ser, " "Lord, " "to " "Thee."
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Sa" "viour, " "more " "than " "life " "to " "me, "
  "\nI " "am " cling "ing, " cling "ing " "close " "to " "Thee; "
  "\nLet " "Thy " pre "cious " "blood " ap "plied, "
  "\nKeep " "me " ev "er, " ev "er " "near " "Thy " "side. "
  "\nEv" "'ry " "day " "and " "hour, " Ev "'ry " "day " "and " "hour, "
  "\nLet " "me " "feel " "Thy " clean "sing " "pow'r; "
  "\nMay " "Thy " ten "der " "love " "to " "me "
  "\nBind " "me " clo "ser, " clo "ser, " "Lord, " "to " "Thee.\n"

  \set stanza = "2."
  "\nThro' " "this " chan "ging " "world " be "low, "
  "\nLead " "me " gen "tly, " gen "tly " "as " "I " "go; "
  "\nTrust" "ing " "Thee, " "I " can "not " "stray, "
  "\nI " "can " nev "er, " nev "er " "lose " "my " "way. "
  "\nEv" "'ry " "day " "and " "hour, " Ev "'ry " "day " "and " "hour, "
  "\nLet " "me " "feel " "Thy " clean "sing " "pow'r; "
  "\nMay " "Thy " ten "der " "love " "to " "me "
  "\nBind " "me " clo "ser, " clo "ser, " "Lord, " "to " "Thee.\n"

  \set stanza = "3."
  "\nLet " "me " "love " "Thee " "more " "and " "more, "
  "\nTill " "this " fleet "ing, " fleet "ing " "life " "is " "o'er; "
  "\nTill " "my " "soul " "is " "lost " "in " "love, "
  "\nIn " "a " bright "er, " bright "er " "world " a "bove. "
  "\nEv" "'ry " "day " "and " "hour, " Ev "'ry " "day " "and " "hour, "
  "\nLet " "me " "feel " "Thy " clean "sing " "pow'r; "
  "\nMay " "Thy " ten "der " "love " "to " "me "
  "\nBind " "me " clo "ser, " clo "ser, " "Lord, " "to " "Thee.\n"
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
      #(layout-set-staff-size 19)
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
