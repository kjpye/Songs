\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Soldiers of the King."
  subtitle    = "Sankey No. 684"
  subsubtitle = "C. C. No. 126"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "D. W. Whittle."
  meter       = \markup\smallCaps "S.M.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*5
  \textMark \markup { \box \bold "B" }    s1*5
  \textMark \markup { \box \bold "C" }    s1*4
  \textMark \markup { \box \bold "D" }    s1*5
  \textMark \markup { \box \bold "E" }    s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 | g fis g a | b2. c4 | b a g fis | g2. a4 | b a b c |
  d4. e8 d4 b | a4 8[g] fis4 e | d2. 4 | d a' e fis | g2. a4 |
  b4 g8[a] b4 d | 2. 4 | e4. d8 c4 a | d4. c8 b4 g |
  b4 a8[b] c4 e, | g2.
  \section \sectionLabel \markup\smallCaps Chorus.
  b8[c] | b4 a d, d' | 2. b8[c] | b4 a d, d' |
  d2. 4 | e4. d8 c4 a | d4. c8 b4 g | b4 a8[b] c4 fis, | g2.
}

alto = \relative {
  \autoBeamOff
  d'4 | b c d d | d2. e4 | d4 4 4 c | b2. d4 | d fis g fis |
  g4. 8 4 4 | fis d d cis | d2. 4 | c c c c | b2. d4 |
  d4 4 g fis | g2. 4 | 4. 8 dis4 4 | g4. fis8 g4 4 |
  g4 4 4 d | 2. \section g4 | d fis d fis | 2. 4 | d4 fis d fis |
  g2. 4 | 4. 8 fis4 4 | g4. fis8 g4 4 | g g g d | 2. 
}

tenor = \relative {
  \autoBeamOff
  d4 | g a g fis |g2. 4 | g c b a | g2. f4 | g d' d d |
  d4. c8 d4 d | d a8[b] a4 g | fis2. 4 | 4 4 g a | g2. fis4 |
  g4 b8[c] d4 c | b2. d4 | c4. d8 4 4 | 4. 8 4 4 |
  e4 e e c | b2. \section d8[c] | d4 c a c | b2. d8[e] | d4 c a c |
  b2. d4 | c4. d8 4 4 | 4. 8 4 4 | e e e c | b2.
  
}

bass = \relative {
  \autoBeamOff
  d4 | g d b d | g2. c,4 | d d d d | g,2. d'4 | g d g a |
  b4. c8 b4 g | a fis8[g] a4 a, | d2. 4 | d d d d | g2. d4 |
  g4 g g d | g2. b4 | c4. 8 a4 d, | b'4. a8 g4 b, |
  c4 8[b] a4 d | \partCombineChords <g, g'>2. \partCombineAutomatic \section g'4 | g d fis d | g d g g | g d g d |
  g4 d g b | c4. b8 a4 d, | b'4. a8 g4 b, | c c8[b] a4 d | \partCombineChords <g, g'>2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  We're sol -- diers of the King,
  His prais -- es we will sing.
  And we will serve Him loy -- al -- ly,
  Our great and glo -- rious King.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  We're sol -- diers of the King,
  Re -- deemed and saved by blood,
  And now en -- list -- ed for the war
  To fight for Christ the Lord.
  In per -- il oft are we,
  But joy -- ful -- ly we sing,
  Our hearts made strong by Him who leads
  The sol -- diers of the King.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  We're sol -- diers of the King,
  His name we glad -- ly bear,
  The Name once nailed a -- bove the Cross,
  When Christ our King was there.
  We'll count our loss -- es gain,
  And wel -- come ev -- 'ry sting,
  To hon -- our our Lord Je -- sus' name,
  As sol -- diers of the King.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We're sol -- diers of the King,
  With Him we shall ap -- pear,
  If we with Him shall suf -- fer now,
  And His re -- jec -- tion share.
  Then lift His ban -- ner high,
  For time is on the wing,
  The crown  -- ing day is hast -- 'ning on
  For sol -- diers of the King.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We're " sol "diers " "of " "the " "King, "
  "\nRe" "deemed " "and " "saved " "by " "blood, "
  "\nAnd " "now " en list "ed " "for " "the " "war "
  "\nTo " "fight " "for " "Christ " "the " "Lord. "
  "\nIn " per "il " "oft " "are " "we, "
  "\nBut " joy ful "ly " "we " "sing, "
  "\nOur " "hearts " "made " "strong " "by " "Him " "who " "leads "
  "\nThe " sol "diers " "of " "the " "King. "
  "\nWe're " sol "diers " "of " "the " "King, "
  "\nHis " prais "es " "we " "will " "sing. "
  "\nAnd " "we " "will " "serve " "Him " loy al "ly, "
  "\nOur " "great " "and " glo "rious " "King.\n"

  \set stanza = "2."
  "\nWe're " sol "diers " "of " "the " "King, "
  "\nHis " "name " "we " glad "ly " "bear, "
  "\nThe " "Name " "once " "nailed " a "bove " "the " "Cross, "
  "\nWhen " "Christ " "our " "King " "was " "there. "
  "\nWe'll " "count " "our " loss "es " "gain, "
  "\nAnd " wel "come " ev "'ry " "sting, "
  "\nTo " hon "our " "our " "Lord " Je "sus' " "name, "
  "\nAs " sol "diers " "of " "the " "King. "
  "\nWe're " sol "diers " "of " "the " "King, "
  "\nHis " prais "es " "we " "will " "sing. "
  "\nAnd " "we " "will " "serve " "Him " loy al "ly, "
  "\nOur " "great " "and " glo "rious " "King.\n"

  \set stanza = "3."
  "\nWe're " sol "diers " "of " "the " "King, "
  "\nWith " "Him " "we " "shall " ap "pear, "
  "\nIf " "we " "with " "Him " "shall " suf "fer " "now, "
  "\nAnd " "His " re jec "tion " "share. "
  "\nThen " "lift " "His " ban "ner " "high, "
  "\nFor " "time " "is " "on " "the " "wing, "
  "\nThe " crown "ing " "day " "is " hast "'ning " "on "
  "\nFor " sol "diers " "of " "the " "King. "
  "\nWe're " sol "diers " "of " "the " "King, "
  "\nHis " prais "es " "we " "will " "sing. "
  "\nAnd " "we " "will " "serve " "Him " loy al "ly, "
  "\nOur " "great " "and " glo "rious " "King. "
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
