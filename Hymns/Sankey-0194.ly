\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Holy Spirit, Faithful Guide!"
  subtitle    = "Sankey No. 194"
  subsubtitle = "Sankey 880 No. 132"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "M. M. Wells."
%  arranger    = "arranger"
%  opus        = "opus"

  meter       = "Eight 7s."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*8
  \mark \markup { \box "B" } s2.*8
  \mark \markup { \box "C" } s2.*8
  \mark \markup { \box "D" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'2 4
  g2 4
  b4.(a8) g4
  a2.
  b2 4
  d2 g,4
  fis4.(g8) a4
  g2.
  d2 4 % B
  g2 4
  b4.(a8) g4
  a2.
  b2 4
  d2 g,4
  fis4.(g8) a4
  g2.
  c2 4 % C
  b2 4
  a4.(b8) c4
  b2.
  d2 4
  b2 4
  c2 b4
  a2.
  d,2 4 % D
  g2 4
  b4.(a8) g4
  a2.
  b2 4
  d2 g,4
  fis4.(g8) a4
  g2.
}

alto = \relative {
  \autoBeamOff
  d'2 4
  d2 4
  d2 g4
  fis2.
  g2 4
  g2 d4
  d2 4
  d2.
  d2 4 % B
  d2 4
  s2 g4
  fis2.
  g2 4
  g2 d4
  d2 4
  d2.
  fis2 4 % C
  g2 4
  fis4.(g8) a4
  g2.
  g2 4
  g2 4
  a2 g4
  fis2.
  d2 4 % D
  d2 4
  d2 g4
  fis2. g2 4
  g2 d4
  d2 4
  d2.
}

tenor = \relative {
  \autoBeamOff
  b2 4
  b2 4
  d4.(c8) b4
  d2.
  d2 4
  b2 4
  a4.(b8) c4
  b2.
  b2 4 % B
  b2 4
  d4.(c8) b4
  d2.
  d2 4
  b2 4
  a4.(b8) c4
  b2.
  a2 4 % C
  g2 4
  d'2 4
  d2.
  b2 4
  d2 4
  d2 4
  d2.
  b2 4 % D
  b2 4
  d4.(c8) b4
  d2.
  d2 4
  b2 4
  a4.(b8) c4
  b2.
}

bass = \relative {
  \autoBeamOff
  g2 4
  g2 4
  g2 4
  d2.
  g2 4
  g2 4
  d2 4
  g,2.
  g2 4 % B
  g2 4
  g'2 4
  d2.
  g2 4
  g2 4
  d2 4
  g,2.
  d'2 4 % C
  g2 4
  d2 4
  g2.
  g2 4
  g2 4
  f2 g4
  d2.
  g,2 4 % D
  g2 4
  g'2 4
  d2.
  g2 4
  g2 4
  d2 4
  g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Ho -- ly Spi -- rit, faith -- ful Guide!
  Ev -- er near the Chris -- tian's side,
  Gen -- tly lead us by the hand,
  Pil -- grims in a des -- ert land;
  Wea -- ry souls for aye re -- joice
  While they hear that sweet -- est voice
  Whis -- p'ring soft -- ly, "\"Wan" -- d'rer, come!
  Fol -- low Me, I'll guide thee "home!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ev -- er pres -- ent, tru -- est Friend,
  Ev -- er near, Thine aid to lend;
  Leave us not to doubt and fear,
  Gro -- ping on in dark -- ness drear;
  When the storms are ra -- ging sore,
  Hearts grow faint and hopes give o'er,
  Whis -- per soft -- ly, "\"Wan" -- d'rer, come!
  Fol -- low Me, I'll guide thee "home!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When our days of toil shall cease,
  Wait -- ig still for sweet re -- lease,
  No -- thing left but heaven and prayer,
  Trust -- ing that our names are there,
  Wa -- ding deep the dis -- mal flood,
  Plead -- ing naught but Je -- sus' blood;
  Whis -- per soft -- ly, "\"Wan" -- d'rer, come!
  Fol -- low Me, I'll guide thee "home!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ho" "ly " Spi "rit, " faith "ful " "Guide! "
  "\nEv" "er " "near " "the " Chris "tian's " "side, "
  "\nGen" "tly " "lead " "us " "by " "the " "hand, "
  "\nPil" "grims " "in " "a " des "ert " "land; "
  "\nWea" "ry " "souls " "for " "aye " re "joice "
  "\nWhile " "they " "hear " "that " sweet "est " "voice "
  "\nWhis" "p'ring " soft "ly, " "\"Wan" "d'rer, " "come! "
  "\nFol" "low " "Me, " "I'll " "guide " "thee " "home!\" "

  \set stanza = "2."
  "\nEv" "er " pres "ent, " tru "est " "Friend, "
  "\nEv" "er " "near, " "Thine " "aid " "to " "lend; "
  "\nLeave " "us " "not " "to " "doubt " "and " "fear, "
  "\nGro" "ping " "on " "in " dark "ness " "drear; "
  "\nWhen " "the " "storms " "are " ra "ging " "sore, "
  "\nHearts " "grow " "faint " "and " "hopes " "give " "o'er, "
  "\nWhis" "per " soft "ly, " "\"Wan" "d'rer, " "come! "
  "\nFol" "low " "Me, " "I'll " "guide " "thee " "home!\" "

  \set stanza = "3."
  "\nWhen " "our " "days " "of " "toil " "shall " "cease, "
  "\nWait" "ig " "still " "for " "sweet " re "lease, "
  "\nNo" "thing " "left " "but " "heaven " "and " "prayer, "
  "\nTrust" "ing " "that " "our " "names " "are " "there, "
  "\nWa" "ding " "deep " "the " dis "mal " "flood, "
  "\nPlead" "ing " "naught " "but " Je "sus' " "blood; "
  "\nWhis" "per " soft "ly, " "\"Wan" "d'rer, " "come! "
  "\nFol" "low " "Me, " "I'll " "guide " "thee " "home!\" "
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
