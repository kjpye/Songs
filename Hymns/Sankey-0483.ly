\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "What shall I do with Jesus?"
  subtitle    = "Sankey No. 483"
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

  poet        = \markup\smallCaps "E. E. Hewitt."
  meter       = \markup\smallCaps "7.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*4
  \mark \markup { \box "B" }    s1*4 s2
  \mark \markup { \box "C" } s2 s1*4
  \mark \markup { \box "D" }    s1*5
  \mark \markup { \box "E" }    s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  ees'4 | 4. 8 d4 ees | f2 ees4 4 | aes4. 8 bes4 4 | c2. 4 |
  des4. 8 c4 bes | c4 ees2 c4 | 4. bes8 4 aes | bes2. ees,4 | 4. 8 \bar "|" \break d4 ees |
  f2 ees4 4 | aes4. 8 bes4 4 | c2. 4 | des4. 8 c4 bes |
  c4 ees2 aes,4^\markup\italic rit. | c4 bes f ees | aes2. \bar "||" ees'4^\markup\smallCaps Chorus. | 4. 8 des4 bes | des4 c2 ees4 |
  ees4. 8 des4 bes | c2. 4 | 4. 8 bes4 g | bes4 aes2 f4^\markup\italic "ad lib." | ees4. 8 4 4 | ees2.
}

alto = \relative {
  \autoBeamOff \partial 4
  c'4 | 4. 8 b4 c | des2 c4 4 | ees4. 8 4 4 | 2. 4 |
  ees4. 8 4 4 | 4 2 4 | d4. 8 4 4 | ees2. 4 | c4. 8 b4 c |
  des2 c4 4 | ees4. 8 4 4 | 2. 4 |g4. 8 ees4 4 |
  ees4 2 4 | f4 4 des4 4 | c2. aes'4 | g4. 8 4 4 | bes4 aes2 4 |
  g4. 8 4 4 | aes2. ees4 | 4. 8 e4 4 | f4 2 des4 | c4. 8 bes4 des | c2.
}

tenor = \relative {
  \autoBeamOff \partial 4
  aes4 | 4. 8 4 4 | 2 4 4 | 4. 8 g4 4 | aes2. 4 |
  bes4. 8 aes4 g | aes4 c2 aes4 | 4. 8 4 4 | g2. 4 | aes4. 8 4 4 |
  aes2 4 4 | 4. 8 g4 4 | aes2. 4 | bes4. 8 aes4 g |
  aes4 c2 aes4 | 4 4 4 g | aes2. c4 | bes4. 8 4 ees | 4 2 c4 |
  bes4. 8 4 ees | 2. aes,4 | 4. 8 g4 4 | f4 2 aes4 | 4. 8 g4 bes | aes2.
}

bass = \relative {
  \autoBeamOff \partial 4
  aes,4 | 4. 8 4 4 | 2 4 4 | c4. 8 ees4 4 | aes2. 4 |
  ees4. 8 4 4 | aes4 2 aes,4 | bes4. 8 4 4 | ees2. 4 | aes,4. 8 4 4 |
  aes2 4 4 | c4. 8 ees4 4 | aes2. 4 | ees4. 8 4 4 |
  aes4 2 c,4 | des4 4 4 ees | <aes, ees'>2. aes'4 | ees4. 8 4 4 | aes4 2 4 |
  ees4. 8 4 4 | aes2. 4 | c,4. 8 4 4 | des4 2 4 | ees4. 8 4 4 | aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  What shall I do with Je -- sus?
  For time is gli -- ding by;
  What shall I do with Je -- sus?
  E -- ter -- ni -- ty is nigh!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  What shall I do with Je -- sus?
  I hear His plead -- ing voice;
  He asks that He may en -- ter,
  And make my heart re -- joice.
  The hand that's gen -- tly knock -- ing
  Bore cru -- el wounds for me;
  And on His brow, so ho -- ly.
  The thorn -- marks yet I see.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  What shall I do with Je -- sus—
  The Lamb of Cal -- va -- ry?
  His won -- der -- ful sal -- va -- tion
  He free -- ly of -- fers me:
  His pre -- cious blood for cleans -- ing,
  The com -- fort of His love;
  The glo -- ry of His bles -- sing,
  And life with Him a -- bove.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  What shall I do with Je -- sus,
  The King up -- on His throne?
  He claims my full al -- le -- gianec,
  Re -- deemed ne for His own.
  Oh, deep -- ly sol -- emn ques -- tion!
  Lord, help me now de -- cide,
  And take Thee for my Sa -- viour,
  My Mas -- ter, Friend, and Guide.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "What " "shall " "I " "do " "with " Je "sus? "
  "\nI " "hear " "His " plead "ing " "voice; "
  "\nHe " "asks " "that " "He " "may " en "ter, "
  "\nAnd " "make " "my " "heart " re "joice. "
  "\nThe " "hand " "that's " gen "tly " knock "ing "
  "\nBore " cru "el " "wounds " "for " "me; "
  "\nAnd " "on " "His " "brow, " "so " ho "ly. "
  "\nThe " thorn "marks " "yet " "I " "see. "
  "\nWhat " "shall " "I " "do " "with " Je "sus? "
  "\nFor " "time " "is " gli "ding " "by; "
  "\nWhat " "shall " "I " "do " "with " Je "sus? "
  "\nE" ter ni "ty " "is " "nigh!\n"

  \set stanza = "2."
  "\nWhat " "shall " "I " "do " "with " Je "sus— "
  "\nThe " "Lamb " "of " Cal va "ry? "
  "\nHis " won der "ful " sal va "tion "
  "\nHe " free "ly " of "fers " "me: "
  "\nHis " pre "cious " "blood " "for " cleans "ing, "
  "\nThe " com "fort " "of " "His " "love; "
  "\nThe " glo "ry " "of " "His " bles "sing, "
  "\nAnd " "life " "with " "Him " a "bove. "
  "\nWhat " "shall " "I " "do " "with " Je "sus? "
  "\nFor " "time " "is " gli "ding " "by; "
  "\nWhat " "shall " "I " "do " "with " Je "sus? "
  "\nE" ter ni "ty " "is " "nigh!\n"

  \set stanza = "3."
  "\nWhat " "shall " "I " "do " "with " Je "sus, "
  "\nThe " "King " up "on " "His " "throne? "
  "\nHe " "claims " "my " "full " al le "gianec, "
  "\nRe" "deemed " "ne " "for " "His " "own. "
  "\nOh, " deep "ly " sol "emn " ques "tion! "
  "\nLord, " "help " "me " "now " de "cide, "
  "\nAnd " "take " "Thee " "for " "my " Sa "viour, "
  "\nMy " Mas "ter, " "Friend, " "and " "Guide. "
  "\nWhat " "shall " "I " "do " "with " Je "sus? "
  "\nFor " "time " "is " gli "ding " "by; "
  "\nWhat " "shall " "I " "do " "with " Je "sus? "
  "\nE" ter ni "ty " "is " "nigh! "
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
