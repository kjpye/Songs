\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Make Room for Jesus."
  subtitle    = "Sankey No. 455"
  subsubtitle = "Sankey 880 No. 311"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Alexander Clark, D. D."
  meter       = \markup\smallCaps "C. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8
  c8[bes] a a[g] f |
  f4 d'8 c4 8 |
  c4 g8 8[a] bes |
  a4.~4 \bar "|" \break c8 |
  c8[bes] a a[g] f | % B
  f4 d'8 c4 8 |
  c8[bes] a8 4 g8 |
  f4.~4 \bar "|" \break a8^\markup\smallCaps Refrain. |
  g4 a8 bes4 c8 | % C
  a4 d8 c4 d8 |
  e4 c8 c[d] b |
  c4.~4\fermata \bar "|" \break bes8 |
  a4 8 4 g8 | % D
  f4 d'8 c4 8 |
  f4\fermata a,8 4 g8
  f4.~4
}

alto = \relative {
  \autoBeamOff
  f'8
  f4 8 4 8 |
  f4 gis8 a4 f8 |
  e4 8 8[f] g |
  f4.~4 8 |
  f4 8 e4 f8 | % B
  d4 f8 4 ees8 |
  d4 f8 e4 8 |
  f4.~4 8 |
  e4 f8 g4 8 | % C
  f4 gis8 a4 aes8 |
  g4 e8 8[f] d |
  e4 f8 g4 8 |
  f4 8 4 e8 | % D
  f4 8 4 g8 |
  f4\fermata 8 4 e8
  f4.~4
}

tenor = \relative {
  \autoBeamOff
  a8 | a8[d] c c[bes] a | a4 b8 c4 a8 | g4 c8 4 8 | c4.~4 a8 | % A
  a8[d] c c[bes] a | b4 8 a4 f8 | f4 d'8 c4 bes8 | a4.~4 c8 | % B
  c4 8 4 8 | c4 b8 c4 8 | c4 g8 4 8 | g4.(c4\fermata) 8 | % C
  c4 8 4 bes8 | a4 bes8 a4 c8 | c4\fermata 8 4 bes8 | a4.~4 % D
}

bass = \relative {
  \autoBeamOff
  f8 | f4 8 4 8 | f4 8 4 8 | c4 8 4 8 | f4.~4 8 | % A
  f4 8 c4 d8 | b4 8 f'4 a,8 | bes4 b8 c4 8 | f4.~4\fermata 8 | % B
  c4 8 4 e8 | f4 8 4 8 | g4 8 g,4 8 | c4(d8 e4\fermata) c8 | % C
  f4 8 4 c8 | d4 bes8 f'4 bes8 | a4\fermata f8 c4 8 | f4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Make room, sad heart! make room! make room!
  Bid a -- lien guests de -- part!
  Oh, let the Mas -- ter in, sad heart!
  A -- rise, and let Him in!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Make room for Je -- sus! room, sad heart!
  Be -- guiled and sick of sin;
  Bid ev -- 'ry a -- lien guest de -- part,
  A -- rise, and let Him in.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Make room for Je -- sus! room! make room!
  His hand is at the door;
  He comes to ban -- ish guilt and gloom,
  And bless thee more and more.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Make room for Je -- sus! soul of mine:
  He waits res -- ponse to -- day;
  His smile is peace, His grace Di -- vine;
  Oh, turn Him not a -- way!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Make room for Je -- sus! By and by,
  'Mid saints and ser -- aph -- im,
  He'll wel -- come to His throne on high
  The soul that wel -- comed Him.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Make " "room " "for " Je "sus! " "room, " "sad " "heart! "
  "\nBe" "guiled " "and " "sick " "of " "sin; "
  "\nBid " ev "'ry " a "lien " "guest " de "part, "
  "\nA" "rise, " "and " "let " "Him " "in. "
  "\nMake " "room, " "sad " "heart! " "make " "room! " "make " "room! "
  "\nBid " a "lien " "guests " de "part! "
  "\nOh, " "let " "the " Mas "ter " "in, " "sad " "heart! "
  "\nA" "rise, " "and " "let " "Him " "in!\n"

  \set stanza = "2."
  "\nMake " "room " "for " Je "sus! " "room! " "make " "room! "
  "\nHis " "hand " "is " "at " "the " "door; "
  "\nHe " "comes " "to " ban "ish " "guilt " "and " "gloom, "
  "\nAnd " "bless " "thee " "more " "and " "more. "
  "\nMake " "room, " "sad " "heart! " "make " "room! " "make " "room! "
  "\nBid " a "lien " "guests " de "part! "
  "\nOh, " "let " "the " Mas "ter " "in, " "sad " "heart! "
  "\nA" "rise, " "and " "let " "Him " "in!\n"

  \set stanza = "3."
  "\nMake " "room " "for " Je "sus! " "soul " "of " "mine: "
  "\nHe " "waits " res "ponse " to "day; "
  "\nHis " "smile " "is " "peace, " "His " "grace " Di "vine; "
  "\nOh, " "turn " "Him " "not " a "way! "
  "\nMake " "room, " "sad " "heart! " "make " "room! " "make " "room! "
  "\nBid " a "lien " "guests " de "part! "
  "\nOh, " "let " "the " Mas "ter " "in, " "sad " "heart! "
  "\nA" "rise, " "and " "let " "Him " "in!\n"

  \set stanza = "4."
  "\nMake " "room " "for " Je "sus! " "By " "and " "by, "
  "\n'Mid " "saints " "and " ser aph "im, "
  "\nHe'll " wel "come " "to " "His " "throne " "on " "high "
  "\nThe " "soul " "that " wel "comed " "Him. "
  "\nMake " "room, " "sad " "heart! " "make " "room! " "make " "room! "
  "\nBid " a "lien " "guests " de "part! "
  "\nOh, " "let " "the " Mas "ter " "in, " "sad " "heart! "
  "\nA" "rise, " "and " "let " "Him " "in! "
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
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
