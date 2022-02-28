\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Gospel Call."
  subtitle    = "Sankey No. 369"
  subsubtitle = "Sankey 880 No. 587"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "A. T. Pierson, D.D."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
  \mark \markup { \box "E" } s8 s2.*3 s4. s4
  \mark \markup { \box "F" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'8
  bes4 a8 bes4 c8
  bes4 aes8 g4 f8
  ees4 8 \slurDashed 8(d) ees
  f4.~4 \bar "|" \break g8
  aes4 g8 aes4 c8 % B
  bes4 a8 bes4 ees8
  d4 bes8 c8[bes] a
  bes4.~4 \bar "||" \break 8^\markup\smallCaps Chorus
  ees4.~8 d c % C
  bes4.~4 8
  c4.~8[bes] aes
  g4.~4 \bar "|" \break 8
  aes4.~8 bes c % D
  bes4. g4 f8
  ees4.~8[d ees]
  g4. f4 \bar "|" \break bes8
  ees4.~8 d c % E
  bes4.~4 8
  c4.~8[bes] aes
  g4.~4 \bar "|" \break 8
  aes4.~8 bes c % F
  bes4. ees,4 f8
  g4.~8[f ees]
  f4. ees4
}

alto = \relative {
  \autoBeamOff
  g'8
  g4 fis8 g4 aes8
  g4 f8 ees4 d8
  c4 8 \slurDashed 8(b) \slurSolid c
  d4.~4 ees8
  f4 e8 f4 aes8 % B
  g4 fis8 g4 8
  f4 d8 ees[d] c
  d4.~4 aes'8
  g4.~8 bes aes % C
  g4.~4 8
  aes4.~8[g] f
  ees4.~4 des8
  c4.~8 d ees % D
  ees4. 4 d8
  c4.~8[b c]
  ees4. d4 aes'8
  g4.~8 bes aes % E
  g4.~4 8
  aes4.~8[g] f
  ees4.~4 des8
  c4.~8 d e % F
  ees4. 4 8
  ees4.~4.
  d4. ees4
}

tenor = \relative {
  \autoBeamOff
  ees'8
  ees4 8 4 8
  ees4 bes8 4 aes8
  g4 8 \slurDashed a8(a) \slurSolid a
  bes4.~4 8
  bes4 8 4 d8 % B
  ees4 8 4 bes8
  bes4 f8 a[bes] c
  bes4.~4 8
  bes4 8 4 ees8 % C
  ees4 8 4 8
  d4 8 4 8
  ees4 bes8 4 8
  aes4 ees8 8 8 aes % D
  g4 8 bes4 aes8
  g8 8 8 a4.
  bes4. 4 8
  bes4 8 4 ees8 % E
  ees4 8 4 8
  d4 8 4 8
  ees4 bes8 4 8
  aes4 ees8 8 8 aes % F
  g4 8 4 a8
  bes8 8 8 8[aes g]
  aes4. g4
}

bass = \relative {
  \autoBeamOff
  ees8
  ees4 8 4 8
  ees4 8 4 bes8
  c4 8 \slurDashed f8(8) \slurSolid 8
  bes,4.~4 8
  bes4 8 4 8 % B
  ees4 8 4 8
  f4 8 4 8
  bes,4.~4 bes'8
  ees,4 8 4 8 % C
  ees4 8 4 8
  bes4 8 4 8
  ees4 8 4 8
  aes,4 8 8 8 8 % D
  ees'4 8 4 bes8
  c8 8 8 f4.
  bes,4. 4 d8
  ees4 8 4 8 % E
  ees4 8 4 8
  bes4 8 4 8
  ees4 8 4 8
  aes,4 8 8 8 8 % F
  bes4 8 ees4 8
  bes8 8 8 4.
  bes4. ees4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorusWomen = \lyricmode {
  The Spi -- rit says "\"Come!\""
  The bride __ says "\"Come!\""
  And take __ of the wa -- ter of life __ free -- ly.
  The Spi -- rit says "\"Come!\""
  The bride __ says "\"Come!\""
  And take __ of the wa -- ter of life __ free -- ly.
}

chorusMen = \lyricmode {
  The Spi -- rit and the bride say "\"Come!\""
  The Spi -- rit and the bride say "\"Come!\""
  And take the wa -- ter of life, of life
  The wa -- ter of life free -- ly.
  The Spi -- rit and the bride say "\"Come!\""
  The Spi -- rit and the bride say "\"Come!\""
  And take the wa -- ter of life, of life
  The wa -- ter of life free -- ly.
}

verses = 4

emptyVerse = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  The Spi -- rit and the bride say "\"Come!\""
  And take the \nom wa -- ter \yesm of life!
  Oh, bless -- ed call!— Good news to all
  Who tire of sin and strife!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Let ev -- 'ry one who hears asy "\"Come!\""
  And joy -- ful wit -- ness give;
  I heard the sound, The stream I found—
  I drank, and now I live!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ye souls who are a -- thirst, for -- sake
  Your bro -- ken cis -- terns first;
  Then come, par -- take: One draught will slake
  Your soul's co -- su -- ming thirst.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Yes, "\"who" -- so -- ev -- er "will\"" may come—
  Your long -- ings Christ can fill;
  The stream is free To you and me,
  And who -- so -- ev -- er will.
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "The " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nAnd " "take " "the " "\nom " wa "ter " "\yesm " "of " "life! "
  "\nOh, " bless "ed " "call!— " "Good " "news " "to " "all "
  "\nWho " "tire " "of " "sin " "and " "strife! "
  "\nThe " Spi "rit " "says " "\"Come!\" "
  "\nThe " "bride "  "says " "\"Come!\" "
  "\nAnd " "take "  "of " "the " wa "ter " "of " "life "  free "ly. "
  "\nThe " Spi "rit " "says " "\"Come!\" "
  "\nThe " "bride "  "says " "\"Come!\" "
  "\nAnd " "take "  "of " "the " wa "ter " "of " "life "  free "ly. "

  \set stanza = "2."
  "\nLet " ev "'ry " "one " "who " "hears " "asy " "\"Come!\" "
  "\nAnd " joy "ful " wit "ness " "give; "
  "\nI " "heard " "the " "sound, " "The " "stream " "I " "found— "
  "\nI " "drank, " "and " "now " "I " "live! "
  "\nThe " Spi "rit " "says " "\"Come!\" "
  "\nThe " "bride "  "says " "\"Come!\" "
  "\nAnd " "take "  "of " "the " wa "ter " "of " "life "  free "ly. "
  "\nThe " Spi "rit " "says " "\"Come!\" "
  "\nThe " "bride "  "says " "\"Come!\" "
  "\nAnd " "take "  "of " "the " wa "ter " "of " "life "  free "ly. "

  \set stanza = "3."
  "\nYe " "souls " "who " "are " a "thirst, " for "sake "
  "\nYour " bro "ken " cis "terns " "first; "
  "\nThen " "come, " par "take: " "One " "draught " "will " "slake "
  "\nYour " "soul's " co su "ming " "thirst. "
  "\nThe " Spi "rit " "says " "\"Come!\" "
  "\nThe " "bride "  "says " "\"Come!\" "
  "\nAnd " "take "  "of " "the " wa "ter " "of " "life "  free "ly. "
  "\nThe " Spi "rit " "says " "\"Come!\" "
  "\nThe " "bride "  "says " "\"Come!\" "
  "\nAnd " "take "  "of " "the " wa "ter " "of " "life "  free "ly. "

  \set stanza = "4."
  "\nYes, " "\"who" so ev "er " "will\" " "may " "come— "
  "\nYour " long "ings " "Christ " "can " "fill; "
  "\nThe " "stream " "is " "free " "To " "you " "and " "me, "
  "\nAnd " who so ev "er " "will. "
  "\nThe " Spi "rit " "says " "\"Come!\" "
  "\nThe " "bride "  "says " "\"Come!\" "
  "\nAnd " "take "  "of " "the " wa "ter " "of " "life "  free "ly. "
  "\nThe " Spi "rit " "says " "\"Come!\" "
  "\nThe " "bride "  "says " "\"Come!\" "
  "\nAnd " "take "  "of " "the " wa "ter " "of " "life "  free "ly. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "The " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nAnd " "take " "the " "\nom " wa "ter " "\yesm " "of " "life! "
  "\nOh, " bless "ed " "call!— " "Good " "news " "to " "all "
  "\nWho " "tire " "of " "sin " "and " "strife! "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nAnd " "take " "the " wa "ter " "of " "life, " "of " "life "
  "\nThe " wa "ter " "of " "life " free "ly. "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nAnd " "take " "the " wa "ter " "of " "life, " "of " "life "
  "\nThe " wa "ter " "of " "life " free "ly. "

  \set stanza = "2."
  "\nLet " ev "'ry " "one " "who " "hears " "asy " "\"Come!\" "
  "\nAnd " joy "ful " wit "ness " "give; "
  "\nI " "heard " "the " "sound, " "The " "stream " "I " "found— "
  "\nI " "drank, " "and " "now " "I " "live! "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nAnd " "take " "the " wa "ter " "of " "life, " "of " "life "
  "\nThe " wa "ter " "of " "life " free "ly. "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nAnd " "take " "the " wa "ter " "of " "life, " "of " "life "
  "\nThe " wa "ter " "of " "life " free "ly. "

  \set stanza = "3."
  "\nYe " "souls " "who " "are " a "thirst, " for "sake "
  "\nYour " bro "ken " cis "terns " "first; "
  "\nThen " "come, " par "take: " "One " "draught " "will " "slake "
  "\nYour " "soul's " co su "ming " "thirst. "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nAnd " "take " "the " wa "ter " "of " "life, " "of " "life "
  "\nThe " wa "ter " "of " "life " free "ly. "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nAnd " "take " "the " wa "ter " "of " "life, " "of " "life "
  "\nThe " wa "ter " "of " "life " free "ly. "

  \set stanza = "4."
  "\nYes, " "\"who" so ev "er " "will\" " "may " "come— "
  "\nYour " long "ings " "Christ " "can " "fill; "
  "\nThe " "stream " "is " "free " "To " "you " "and " "me, "
  "\nAnd " who so ev "er " "will. "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nAnd " "take " "the " wa "ter " "of " "life, " "of " "life "
  "\nThe " wa "ter " "of " "life " free "ly. "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nThe " Spi "rit " "and " "the " "bride " "say " "\"Come!\" "
  "\nAnd " "take " "the " wa "ter " "of " "life, " "of " "life "
  "\nThe " wa "ter " "of " "life " free "ly. "
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiWomen
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorusWomen }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\emptyVerse \chorusMen}
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
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusWomen
                                              \wordsTwo   \chorusWomen
                                              \wordsThree \chorusWomen
                                              \wordsFour  \chorusWomen
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT {\repeat unfold \verses \tenor}
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses {\emptyVerse \chorusMen}}
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
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusWomen
                                              \wordsTwo   \chorusWomen
                                              \wordsThree \chorusWomen
                                              \wordsFour  \chorusWomen
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT {\repeat unfold \verses \tenor}
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses {\emptyVerse \chorusMen}}
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
