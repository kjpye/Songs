\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus Calls us"
  subtitle    = "Sankey No. 762"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Jude."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. C. F. Alexander."
  meter       = \markup\smallCaps "8.7.8.7."
  piece       = \markup\smallCaps "Galilee."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 3/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2 s1.*3 s1
  \textMark \markup { \box \bold "B" } s2 s1.*3 s1
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''4 f, | c'2 2 4 f, | bes2 2 4 4 | 2. g4 bes c | d1 \bar "|" \break
  d4 g, | c2 2 4 f, | bes2 2 d4 4 | ees2 g, d'4 c | bes1
}

alto = \relative {
  \autoBeamOff
  d'4 4 | ees2 2 4 4 | d2 2 f4 fis | g2. 4 4 4 | fis1
  f4 4 | e2 2 ees4 4 | d2 2 f4 4 | ees2 2 4 4 | d1
}

tenor = \relative {
  \autoBeamOff
  bes4 4 | a2 2 4 c | bes2 2 4 4 | 2. 4 g4 4 | a1
  b4 d | c2 bes a4 c | bes2 2 4 4 | 2 2 a4 4 | bes1
}

bass = \relative {
  \autoBeamOff
  bes,4 4 | f2 2 f'4 4 | bes,2 2 d4 4 | ees2. 4 4 4 | d1
  g4 4 | c,2 2 f4 4 | bes,2 2 aes'4 4 | g2 2 f4 4 | bes,1
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus calls us o'er the tu -- mult
  Of our life's wild, rest -- less sea;
  Day by day His sweet voice sound -- eth,
  Say -- ing, “Chris -- tian, fol -- low Me!”
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Je -- sus calls us from the wor -- ship
  Of the vain world's gol -- den store.
  From each i -- dol that would keep us—
  Say -- ing, “Chris -- tian, love Me more!”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In our joys and in our sor -- rows,
  Days of toil and hours of ease,
  Still He calls, in cares and plea -- sures,
  “Chris -- tian, love me more than these!”
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Je -- sus calls me! by Thy mer -- cies,
  Sa -- viour, may we hear Thy call;
  Give our hearts to Thy o -- be -- dience,
  Serve and love Thee best of all!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "calls " "us " "o'er " "the " tu "mult "
  "\nOf " "our " "life's " "wild, " rest "less " "sea; "
  "\nDay " "by " "day " "His " "sweet " "voice " sound "eth, "
  "\nSay" "ing, " “Chris "tian, " fol "low " "Me!”\n"

  \set stanza = "2."
  "\nJe" "sus " "calls " "us " "from " "the " wor "ship "
  "\nOf " "the " "vain " "world's " gol "den " "store. "
  "\nFrom " "each " i "dol " "that " "would " "keep " "us— "
  "\nSay" "ing, " “Chris "tian, " "love " "Me " "more!”\n"

  \set stanza = "3."
  "\nIn " "our " "joys " "and " "in " "our " sor "rows, "
  "\nDays " "of " "toil " "and " "hours " "of " "ease, "
  "\nStill " "He " "calls, " "in " "cares " "and " plea "sures, "
  "\n“Chris" "tian, " "love " "me " "more " "than " "these!”\n"

  \set stanza = "4."
  "\nJe" "sus " "calls " "me! " "by " "Thy " mer "cies, "
  "\nSa" "viour, " "may " "we " "hear " "Thy " "call; "
  "\nGive " "our " "hearts " "to " "Thy " o be "dience, "
  "\nServe " "and " "love " "Thee " "best " "of " "all! "
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
