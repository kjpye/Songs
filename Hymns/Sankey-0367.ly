\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, Glad and Glorious Gospel!"
  subtitle    = "Sankey No. 367"
  subsubtitle = "N. H. No. 2"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "M. Fraser."
  meter       = \markup\smallCaps "meter"
  piece       = \markup\smallCaps "piece"

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
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8. 16
  c4 bes e, d'
  c2 a4 8. 16
  a4 g c, g'
  a2. \bar "|" \break c8. 16
  c4 bes e, d' % B
  c2 4 8. d16
  e4 c d4. c8
  c2. \bar "||" \break c4^\markup\smallCaps Chorus.
  f4. c8 e4 d % C
  c4 a2 c4
  f4. 8 e4 d
  c2. \bar "|" \break bes4
  a4 bes c f % D
  e4 d2 4
  c4. b8 d4 c
  f,2.
}

alto = \relative {
  \autoBeamOff
  a'8. 16
  a4 g c, bes'
  a2 f4 8. 16
  e4 4 c e
  f2. 8. 16
  d4 e e e % B
  f4.(g8) a4 g8. 16
  g4 4 f4. e8
  e2. c'4
  a4. 8 g4 e % C
  f4 2 c'4
  c4. a8 f4 4
  g2(f4) e
  f4 e f f % D
  f4 2 4
  f4. 8 e4 4
  f2.
}

tenor = \relative {
  \autoBeamOff
  c'8. 16
  c4 4 4 g
  a2 c4 8. 16
  c4 bes e, d'
  c2. 8. 16
  c4 4 4 4 % B
  c2 4 8. b16
  c4 4 b4. c8
  c2. 4
  c4. 8 4 bes % C
  a4 c2 4
  c4. 8 4 f
  e4 d c c
  c4 4 4 4 % D
  c4 bes2 4
  a4. aes8 g4 bes
  a2.
}

bass = \relative {
  \autoBeamOff
  f8. 16
  c4 e g e
  f2 4 8. 16
  c4 4 4 4
  f2. a8. 16
  a4 g c, bes' % B
  a4.(g8) f4 e8. d16
  c4 e g4. c,8
  c2. c'4
  f,4. 8 c4 4 % C
  f4 2 c'4
  a4. f8 g4 4
  c4 bes a g
  f4 g a a % D
  bes4 2 bes,4
  c4. d8 c4 4
  f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, Glad and glo -- rious Gos -- pel!
  With joy we now pro -- claim.
  A full and free sal -- va -- tion,
  Through faith in Je -- sus name!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  'Tis a true and faith -- ful say -- ing,
  Je -- sus died for sin -- ful men;
  Tho' we've told the sto -- ry oft -- en,
  We must tell it o'er a -- gain.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He has made a full a -- tone -- ment,
  Now His sa -- ving work is done;
  He has  sat -- is -- fied the Fa -- ther,
  Who ac -- cepts us in His Son.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Still up -- on His hands the nail -- prints,
  And the scars up -- on His brow;
  Our re -- deem -- er, Lord, and Sa -- viour,
  In the glo -- ry stand -- eth now.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  But re -- mem -- ber, this same Je -- sus
  In the clouds will come a -- gain;
  And with Him His blood -- bought peo -- ple
  Ev -- er -- more shall live and reign.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "'Tis " "a " "true " "and " faith "ful " say "ing, "
  "\nJe" "sus " "died " "for " sin "ful " "men; "
  "\nTho' " "we've " "told " "the " sto "ry " oft "en, "
  "\nWe " "must " "tell " "it " "o'er " a "gain. "
  "\nOh, " "Glad " "and " glo "rious " Gos "pel! "
  "\nWith " "joy " "we " "now " pro "claim. "
  "\nA " "full " "and " "free " sal va "tion, "
  "\nThrough " "faith " "in " Je "sus " "name! "

  \set stanza = "2."
  "\nHe " "has " "made " "a " "full " a tone "ment, "
  "\nNow " "His " sa "ving " "work " "is " "done; "
  "\nHe " "has "  sat is "fied " "the " Fa "ther, "
  "\nWho " ac "cepts " "us " "in " "His " "Son. "
  "\nOh, " "Glad " "and " glo "rious " Gos "pel! "
  "\nWith " "joy " "we " "now " pro "claim. "
  "\nA " "full " "and " "free " sal va "tion, "
  "\nThrough " "faith " "in " Je "sus " "name! "

  \set stanza = "3."
  "\nStill " up "on " "His " "hands " "the " nail "prints, "
  "\nAnd " "the " "scars " up "on " "His " "brow; "
  "\nOur " re deem "er, " "Lord, " "and " Sa "viour, "
  "\nIn " "the " glo "ry " stand "eth " "now. "
  "\nOh, " "Glad " "and " glo "rious " Gos "pel! "
  "\nWith " "joy " "we " "now " pro "claim. "
  "\nA " "full " "and " "free " sal va "tion, "
  "\nThrough " "faith " "in " Je "sus " "name! "

  \set stanza = "4."
  "\nBut " re mem "ber, " "this " "same " Je "sus "
  "\nIn " "the " "clouds " "will " "come " a "gain; "
  "\nAnd " "with " "Him " "His " blood "bought " peo "ple "
  "\nEv" er "more " "shall " "live " "and " "reign. "
  "\nOh, " "Glad " "and " glo "rious " Gos "pel! "
  "\nWith " "joy " "we " "now " pro "claim. "
  "\nA " "full " "and " "free " sal va "tion, "
  "\nThrough " "faith " "in " Je "sus " "name! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
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
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
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
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
