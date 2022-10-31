\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Jesus, Thou art Standing."
  subtitle    = "Sankey No. 494"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Knecht."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Bishop Walsham How, D. D."
  meter       = \markup\smallCaps "7.6.7.6."
  piece       = \markup\smallCaps "Barton."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 | f e8[f] g4 4 | g4 f2 a4 | a g8[a] bes4 g | e2. \bar "|" \break f4 |
  f4 g g a | bes d2 4 | c a g g | f2.
}

alto = \relative {
  \autoBeamOff
  c'4 | 4 4 4 4 | 4 2 f8[e] | d4 g8[fis] g4 d | c2. 4 |
  d4 4 e e | f4 2 4 | 4 4 4 e | f2.
}

tenor = \relative {
  \autoBeamOff
  a4 | 4 g8[a] bes4 4 | 4 a2 c4 | bes4 d8[c] bes4 4 | g2. f4 |
  bes4 g c a | f bes2 4 | c d d c8[bes] | a2.
}

bass = \relative {
  \autoBeamOff
  f4 | c4 4 4 e | f4 2 4 | b,4 8[a] g4 b | c2. a4 |
  bes4 4 c c | d4 bes2 4 | a d bes c | f,2.
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
  O Je -- sus, Thou art stand -- ing
  Out -- side the fast- -- closed door.
  In low -- ly pa -- tience wait -- ing
  To pass the thresh -- old o'er.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, love that pass -- eth know -- ledge,
  So pa -- tient -- ly to wait!
  Oh, sin that hath no e -- qual,
  So fast to bar the gate.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O Je -- sus, Thou art plead -- ing
  in ac -- cents meek and low:
  "\"I" died for you, My chil -- dren,
  And will ye treat Me "so?\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O Lord, with shame and sor -- row
  We o -- pen now the door:
  Dear Sa -- viour, en -- ter, en -- ter,
  And leave us nev -- er -- more!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " Je "sus, " "Thou " "art " stand "ing "
  "\nOut" "side " "the " fast- "closed " "door. "
  "\nIn " low "ly " pa "tience " wait "ing "
  "\nTo " "pass " "the " thresh "old " "o'er.\n"

  \set stanza = "2."
  "\nOh, " "love " "that " pass "eth " know "ledge, "
  "\nSo " pa tient "ly " "to " "wait! "
  "\nOh, " "sin " "that " "hath " "no " e "qual, "
  "\nSo " "fast " "to " "bar " "the " "gate.\n"

  \set stanza = "3."
  "\nO " Je "sus, " "Thou " "art " plead "ing "
  "\nin " ac "cents " "meek " "and " "low: "
  "\n\"I " "died " "for " "you, " "My " chil "dren, "
  "\nAnd " "will " "ye " "treat " "Me " "so?\"\n"

  \set stanza = "4."
  "\nO " "Lord, " "with " "shame " "and " sor "row "
  "\nWe " o "pen " "now " "the " "door: "
  "\nDear " Sa "viour, " en "ter, " en "ter, "
  "\nAnd " "leave " "us " nev er "more! "
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
