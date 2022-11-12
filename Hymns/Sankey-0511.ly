\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, let us all Unite to Sing."
  subtitle    = "Sankey No. 511"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Auber."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Howard Kingsbury."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4.*10
  \mark \markup { \box "B" } s4.*9
  \mark \markup { \box "C" } s4.*9
  \mark \markup { \box "D" } s4.*9
  \mark \markup { \box "E" } s4.*11
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''4(c8) | b4 8 4 8 8[c] d | e4.(d8) r r d4 c8 | a4.~(8 b c) b4 a8 |
  g4.~8 r r d'4(c8) | b4 8 4 8 8[c] d | e4.(d8) r r d4 c8 |
  c4.~(8 b c) b4 a8 | g4.~8 r r g4. | fis4 g8 a4 b8 c4 d8 |
  b4.~8 r r g4. | fis4 g8 a4 b8 c4 d8 | b4.~8 r r d4(c8) |
  b4 8 4 8 8[c] d | e4.(d8) r r d4 c8 | a4.~(8 b c) b4 a8 | g4.\fermata r4 r8 |
}

alto = \relative {
  \autoBeamOff
  b'4(a8) | g4 8 4 8 4 8 | 4.~8 r r b4 a8 | fis4.~(8 g a) g4 fis8 |
  g4.~8 r r b4(a8) | g4 8 4 8 4 8 | 4.~8 r r b4 a8 |
  fis4.~(8 g a) g4 fis8 | g4.~8 r r d4. | d4 8 4 8 e4 fis8 |
  g4.~8 r r d4. | 4 8 4 8 e4 fis8 | g4.~8 r r a4. |
  g4 8 4 8 4 8 | 4.~8 r r f4 e8 | fis4.~(8 g a) g4 fis8 | g4.\fermata r4 r8 |
}

tenor = \relative {
  \autoBeamOff
  b4(c8) | d4 8 4 8 8[c] b |  c4.(d4) r8 r d4 8 | 4.~4. 4 c8 |
  b4.~8 r r 4(c8) | d4 8 4 8 8[c] b | c4.(b8) r r d4 8 |
  d4.~4. 4 c8 | b4.~8 r r8 4. | c4 b8 a4 g8 4 d'8 |
  d4.~8 r r b4. | c4 b8 a4 g8 4 d'8 | d4.~8 r r8 4. |
  d4 8 4 8 8[c] b | c4.(b4) r8 r 4 c8 | c4.~(8 b a) d4 c8 b4.\fermata r4 r8 
}

bass = \relative {
  \autoBeamOff
  g4. | 4 8 4 8 4 8 | c,4. g'8 r r d4 8 | 4.~4. g4 d8 |
  g4.~8 r r g4. | 4 8 4 8 4 8 | c,4.(g'8) r r d4 8 |
  d4.~4. g4 d8 | g4.~8 r r g4. | a4 g8 fis4 g8 e4 d8 |
  g4.~8 r r g4. | a4 g8 fis4 g8 e4 d8 | g4.~8 r r fis4. |
  g4 8 4 8 4 8 | c,4.(g'8) r r gis4 a8 | d,4.~4. 4 8 | g,4.\fermata r4 r8
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
  Come, let us all u -- nite to sing:
  God is love! __ God is love!
  While heaven and earth their prais -- es bring:
  God is love! __ God is love!
  Let ev -- 'ry soul from sin a -- wake,
  Each in his heart sweet mu -- sic make,
  And sweet -- ly sing for Je -- sus sake:
  God is love! __ God is love!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, tell to earth;s re -- mo -- test bound
  God is love! __ God is love!
  In Christ is full re -- demp -- tion found:
  God is love! __ God is love!
  His blood can cleanse our sins a -- way;
  His Spi -- rit turns our night to day
  And leads our souls with joy to say,
  God is love! __ God is love!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  How hap -- py is our por -- tion here!
  God is love! __ God is love!
  His pro -- mis -- es our spi -- rits cheer:
  God is love! __ God is love!
  He is our Sun and Shield by day,
  By night He near our tents will stay—
  He will be with us all the way:
  God is love! __ God is love!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  What though my heart and flesh shall fail:
  God is love! __ God is love!
  Through Christ I shall o'er death pre -- vail;
  God is love! __ God is love!
  E'en Jor -- dan's swell I will not fear,
  For Je -- sus will be with me there,
  My soul a -- bove the waves to bear:
  God is love! __ God is love!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "let " "us " "all " u "nite " "to " "sing: "
  "\nGod " "is " "love! "  "God " "is " "love! "
  "\nWhile " "heaven " "and " "earth " "their " prais "es " "bring: "
  "\nGod " "is " "love! "  "God " "is " "love! "
  "\nLet " ev "'ry " "soul " "from " "sin " a "wake, "
  "\nEach " "in " "his " "heart " "sweet " mu "sic " "make, "
  "\nAnd " sweet "ly " "sing " "for " Je "sus " "sake: "
  "\nGod " "is " "love! "  "God " "is " "love!\n"

  \set stanza = "2."
  "\nOh, " "tell " "to " "earth;s " re mo "test " "bound "
  "\nGod " "is " "love! "  "God " "is " "love! "
  "\nIn " "Christ " "is " "full " re demp "tion " "found: "
  "\nGod " "is " "love! "  "God " "is " "love! "
  "\nHis " "blood " "can " "cleanse " "our " "sins " a "way; "
  "\nHis " Spi "rit " "turns " "our " "night " "to " "day "
  "\nAnd " "leads " "our " "souls " "with " "joy " "to " "say, "
  "\nGod " "is " "love! "  "God " "is " "love!\n"

  \set stanza = "3."
  "\nHow " hap "py " "is " "our " por "tion " "here! "
  "\nGod " "is " "love! "  "God " "is " "love! "
  "\nHis " pro mis "es " "our " spi "rits " "cheer: "
  "\nGod " "is " "love! "  "God " "is " "love! "
  "\nHe " "is " "our " "Sun " "and " "Shield " "by " "day, "
  "\nBy " "night " "He " "near " "our " "tents " "will " "stay— "
  "\nHe " "will " "be " "with " "us " "all " "the " "way: "
  "\nGod " "is " "love! "  "God " "is " "love!\n"

  \set stanza = "4."
  "\nWhat " "though " "my " "heart " "and " "flesh " "shall " "fail: "
  "\nGod " "is " "love! "  "God " "is " "love! "
  "\nThrough " "Christ " "I " "shall " "o'er " "death " pre "vail; "
  "\nGod " "is " "love! "  "God " "is " "love! "
  "\nE'en " Jor "dan's " "swell " "I " "will " "not " "fear, "
  "\nFor " Je "sus " "will " "be " "with " "me " "there, "
  "\nMy " "soul " a "bove " "the " "waves " "to " "bear: "
  "\nGod " "is " "love! "  "God " "is " "love! "
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
