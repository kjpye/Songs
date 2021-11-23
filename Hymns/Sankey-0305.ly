\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lord will answer Prayer."
  subtitle    = "Sankey No. 305"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. P. Danks."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "D.C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*7 s2
  \mark \markup { \box "B" } s4 s2.*7 s2
  \mark \markup { \box "C" } s4 s2.*7 s2
  \mark \markup { \box "D" } s4 s2.*7 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4
  bes2 f4
  c'2 f,4
  f4(d') bes
  f2 4
  g2 4
  g2 4
  g2.~
  g2 \bar "|" \break 4
  a2 4 % B
  g2 f4
  f4(bes) c
  d2 4
  c2 4
  c2 4
  c2.~
  c2 \bar "||" \break f,4
  f2 4 % C
  e2 4
  f4(d') bes
  f2 4
  g2 4
  g2 4
  g2.~
  g2 \bar "|" \break g4
  a2 4 % D
  g2 f4
  f2 bes4
  bes2 c4
  d2 f,4
  c'4(d) c
  bes2.~
  bes2
}

alto = \relative {
  \autoBeamOff
  f'4
  d2 f4
  ees2 4
  d2 4
  d2 4
  ees2 4
  f2 4
  ees2.~
  ees2 4
  ees2 4 % B
  ees2 4
  d2 ees4
  f2 4
  f2 4
  e2 4
  ees2.~
  ees2 4
  d2 4 % C
  cis2 4
  d2 4
  d2 4
  ees2 4
  f2 4
  ees2.~
  ees2 4
  ees2 4 % D
  ees2 4
  d2 4
  ees2 e4
  f2 d4
  ees4(f) ees
  d2.~
  d2
}

tenor = \relative {
  \autoBeamOff
  f4
  f2 bes4
  a2 4
  bes2 4
  bes2 4
  bes2 4
  b2 4
  c2.~
  c2 4
  c2 4 % B
  bes2 a4
  bes2 4
  bes2 aes4
  a2 4
  g2 bes4
  a2.~
  a2 4
  bes2 f4 % C
  g2 4
  f2 4
  f2 bes4
  bes2 4
  b2 4
  c2.~
  c2 4
  c2 4 % D
  c2 4
  bes2 4
  bes2 4
  bes2 4
  a2 f4
  f2.~
  f2
}

bass = \relative {
  \autoBeamOff
  f4
  bes,2 d4
  f2 4
  bes,2 4
  bes2 4
  ees2 4
  d2 4
  c2.~
  c2 4
  f2 4 % B
  f2 4
  bes,2 4
  bes2 b4
  c2 4
  c2 4
  f2.~
  f2 4
  bes,2 4 % C
  bes2 4
  bes2 4
  bes2 4
  ees2 4
  d2 4
  c2.~
  c2 4
  f2 fis4 % D
  g2 a4
  bes2 aes4
  g2 ges4
  f2 4
  f2 4
  bes,2.~
  bes2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Pray on, pray on, be -- liev -- ing ones,
  God's prom -- ised word is sure,
  That they shall o -- ver -- come by faith
  Who to the end en -- dure:
  Pray on, pray on, oh, wea -- ry not;
  The cross with pa -- tience bear;
  And though its bur -- den weigh us down,
  The Lord will an -- swer prayer.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  His eye fore -- sees our great -- est good,
  while we at best are weak;
  And thus in wis -- dom He with -- hols
  The boon that oft we seek:
  And yet His all- -- suf -- fi -- cient grace
  He bids us free -- ly share,
  And in a way we lit -- tle know
  The Lord will an -- swer prayer.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  With an -- xious thoughts for those we love
  How oft our hearts are filled!
  But soon the clouds are rolled a -- way,
  The trou -- bled waves are stilled.
  Then mur -- mur  not, but trust in Him
  Who knows our ev -- 'ry care—
  And bet -- ter far than we can ask,
  The Lord will an -- swer prayer.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Pray " "on, " "pray " "on, " be liev "ing " "ones, "
  "\nGod's " prom "ised " "word " "is " "sure, "
  "\nThat " "they " "shall " o ver "come " "by " "faith "
  "\nWho " "to " "the " "end " en "dure: "
  "\nPray " "on, " "pray " "on, " "oh, " wea "ry " "not; "
  "\nThe " "cross " "with " pa "tience " "bear; "
  "\nAnd " "though " "its " bur "den " "weigh " "us " "down, "
  "\nThe " "Lord " "will " an "swer " "prayer. "

  \set stanza = "2."
  "\nHis " "eye " fore "sees " "our " great "est " "good, "
  "\nwhile " "we " "at " "best " "are " "weak; "
  "\nAnd " "thus " "in " wis "dom " "He " with "hols "
  "\nThe " "boon " "that " "oft " "we " "seek: "
  "\nAnd " "yet " "His " all- suf fi "cient " "grace "
  "\nHe " "bids " "us " free "ly " "share, "
  "\nAnd " "in " "a " "way " "we " lit "tle " "know "
  "\nThe " "Lord " "will " an "swer " "prayer. "

  \set stanza = "3."
  "\nWith " an "xious " "thoughts " "for " "those " "we " "love "
  "\nHow " "oft " "our " "hearts " "are " "filled! "
  "\nBut " "soon " "the " "clouds " "are " "rolled " a "way, "
  "\nThe " trou "bled " "waves " "are " "stilled. "
  "\nThen " mur "mur "  "not, " "but " "trust " "in " "Him "
  "\nWho " "knows " "our " ev "'ry " "care— "
  "\nAnd " bet "ter " "far " "than " "we " "can " "ask, "
  "\nThe " "Lord " "will " an "swer " "prayer. "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
