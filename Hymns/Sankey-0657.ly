\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sweet Peace, the Gift of God's Love."
  subtitle    = "Sankey No. 657"
  subsubtitle = "N. H. No. 94"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. Bilhorn."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8  s2.*2
  \textMark \markup { \box \bold "B" }     s2.*2 s4.
  \textMark \markup { \box \bold "C" } s4. s2.*3
  \textMark \markup { \box \bold "D" }     s2.*4
  \textMark \markup { \box \bold "E" }     s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'8 | cis'8. b16 a8 cis, e a | gis4.~4 e8 |
  d'8. cis16 b8 fis8 gis8. fis16 | e4.~4 8 | e'8. d16 cis8 \bar "|" \break
  b8 a gis | 4.(fis4) 8 | e4 a8 gis8. a16 b8 | a4.~4. |
  \section \sectionLabel \markup\smallCaps Chorus. \break
  cis4. a | d cis | b8. 16 8 8 a fis | e4.~4 8 |
  a8. 16 8 8 b cis | d4.~4 fis,8 | e4 8 8 8 8 | 4.~4
}

alto = \relative {
  \autoBeamOff
  cis'8 | e8. d16 cis8 a cis cis | d4 8 4 8 |
  e8. 16 8 d8 8. 16 | cis4 8 4 8 | e8. 16 8
  e8 8 eis | 4.(fis4) d8 | cis4 8 d8. cis16 d8 | cis4.~4. | \section
  e4. cis | fis e | cis8. 16 8 8 8 8 | e8[d] cis d4 8 |
  cis8. 16 8 a' gis g | fis4.~4 d8 | cis4 8 b cis d | cis4.~4
}

tenor = \relative {
  \autoBeamOff
  a8 | 8. 16 8 e a a | b4 8 4 g8 |
  b8. a16 gis8 8 b8. gis16 | a4 fis8 e4 a8 | cis8. b16 a8
  gis8 a b | 4.(a4) 8 | 4 8 b8. a16 gis8 | a4.~4. | \section
  a4. a | a a | fis8. 16 8 8 b a | gis4 a8  b4 gis8 |
  a8. e16 8 cis'8 d e16[a,] | 4.~4 8 | 4 8 gis a b | a4.~4
}

bass = \relative {
  \autoBeamOff
  a,8 | 8. 16 8 8 8 8 | e'4.~4 8 |
  e8. 16 8 8 8. 16 | a,4.~4 8 | 8. 16 8
  b8 cis cis | d4.~4 8 | e4 8 8. 16 8 | a,4.~4. \section
  a4. a | a a | b8. 16 8 8 8 8 | e4.~4 8 |
  a,8. 16 8 a'8 8 8 | d,4.~4 8 | e4 8 8 8 8 | a,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Peace, peace, sweet peace,
  Won -- der -- ful gift from a -- bove, "(a" -- "bove);"
  Oh, won -- der -- ful, won -- der -- ful peace,
  Sweet peace, the gift of God's love.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  There comes to my heart one sweet strain, "(sweet" "strain),"
  A glad and a joy -- ous re -- frain, "(re" -- "frain),"
  I sing it a -- gain and a -- gain,
  Sweet peace, the gift of God's love.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thro' Christ on the cross peace was made, "(was" "made),"
  My debt by His death was all paid, "(all" "paid,)"
  No oth -- er foun -- da -- tion is laid
  For peace, the gift of God's love.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When Je -- sus as Lord I had crowned, "(had" "crowned),"
  My heart with His peace did a -- bound, "(a" -- "bound),"
  In Him a rich bless -- ing I found,
  Sweet peace, the gift of God's love.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  In Je -- sus at peace I a -- bide, "(a" -- "bide),"
  And while I keep close to His side, "(His" "side),"
  There's noth -- ing but peace can be -- tide,
  Sweet peace, the gift of God's love.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "comes " "to " "my " "heart " "one " "sweet " "strain, " "(sweet " "strain), "
  "\nA " "glad " "and " "a " joy "ous " re "frain, " "(re" "frain), "
  "\nI " "sing " "it " a "gain " "and " a "gain, "
  "\nSweet " "peace, " "the " "gift " "of " "God's " "love. "
  "\nPeace, " "peace, " "sweet " "peace, "
  "\nWon" der "ful " "gift " "from " a "bove, " "(a" "bove); "
  "\nOh, " won der "ful, " won der "ful " "peace, "
  "\nSweet " "peace, " "the " "gift " "of " "God's " "love.\n"

  \set stanza = "2."
  "\nThro' " "Christ " "on " "the " "cross " "peace " "was " "made, " "(was " "made), "
  "\nMy " "debt " "by " "His " "death " "was " "all " "paid, " "(all " "paid,) "
  "\nNo " oth "er " foun da "tion " "is " "laid "
  "\nFor " "peace, " "the " "gift " "of " "God's " "love. "
  "\nPeace, " "peace, " "sweet " "peace, "
  "\nWon" der "ful " "gift " "from " a "bove, " "(a" "bove); "
  "\nOh, " won der "ful, " won der "ful " "peace, "
  "\nSweet " "peace, " "the " "gift " "of " "God's " "love.\n"

  \set stanza = "3."
  "\nWhen " Je "sus " "as " "Lord " "I " "had " "crowned, " "(had " "crowned), "
  "\nMy " "heart " "with " "His " "peace " "did " a "bound, " "(a" "bound), "
  "\nIn " "Him " "a " "rich " bless "ing " "I " "found, "
  "\nSweet " "peace, " "the " "gift " "of " "God's " "love. "
  "\nPeace, " "peace, " "sweet " "peace, "
  "\nWon" der "ful " "gift " "from " a "bove, " "(a" "bove); "
  "\nOh, " won der "ful, " won der "ful " "peace, "
  "\nSweet " "peace, " "the " "gift " "of " "God's " "love.\n"

  \set stanza = "4."
  "\nIn " Je "sus " "at " "peace " "I " a "bide, " "(a" "bide), "
  "\nAnd " "while " "I " "keep " "close " "to " "His " "side, " "(His " "side), "
  "\nThere's " noth "ing " "but " "peace " "can " be "tide, "
  "\nSweet " "peace, " "the " "gift " "of " "God's " "love. "
  "\nPeace, " "peace, " "sweet " "peace, "
  "\nWon" der "ful " "gift " "from " a "bove, " "(a" "bove); "
  "\nOh, " won der "ful, " won der "ful " "peace, "
  "\nSweet " "peace, " "the " "gift " "of " "God's " "love. "
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
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
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
            \new NullVoice = "aligner" \alto
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
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
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
