\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Depth of Mercy"
  subtitle    = "Sankey No. 486"
  subsubtitle = "Sankey 880 No. 138"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "C. M. von Weber."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "7.7.7.7."
  piece       = \markup\smallCaps "Weber"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 2/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2*8
  \mark \markup { \box "B" } s2*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 g | bes a | d c8[a] | g2 | a4 4 | 4 4 | bes ees, | f2 |
  a4 g | bes a | d c8[a] | g2 | a4 c | 8[bes] a[g] | f4 ees | f2 |
}

alto = \relative {
  \autoBeamOff
  f'4 4 | 4 4 | aes a8[f] | ees2 | f4 4 | d4 ees | d c | c2 |
  f4 4 | 4 4 | aes a8[f] | e2 | f4 a | g d | c c | 2 |
}

tenor = \relative {
  \autoBeamOff
  c'4 bes | d c | b c | bes2 | a4 d | cis c | bes4 4 | a2 |
  c4 bes | d c | b c | bes2 | a8[c] ees4 | d bes | a bes | a2 |
}

bass = \relative {
  \autoBeamOff
  f4 4 | 4 4 | 4 4 | c2 | f4 d | a fis' | g c, | f2 |
  f4 4 | 4 4 | 4 4 | c2 | f4 fis | g bes, | c c | f2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Depth of mer -- cy! can there be
  Mer -- cy still re -- served for me?
  Can my God His wrath for -- bear?
  Me, the chief of sin -- ners, spare?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I have long with -- stood His grace,
  Long pro -- voked Him to His face,
  Would not hear -- ken to His calls.
  Grieved Him by a thou -- sand falls.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Whence to me this waste of love?
  Ask my Ad -- vo -- cate a -- bove!
  See the cause in Je -- sus' face,
  Now be -- fore the throne of grace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  There for me the Sa -- viour stands;
  Shows His wounds, and spreads His hands;
  God is love, I know, I feel;
  Je -- sus weeps, and loves me still!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  If I right -- ly read Thy heart,
  If Thou all com -- pass -- ion art,
  Bow Thine ear, in mer -- cy bow,
  Par -- don and ac -- cept me now!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Depth " "of " mer "cy! " "can " "there " "be "
  "\nMer" "cy " "still " re "served " "for " "me? "
  "\nCan " "my " "God " "His " "wrath " for "bear? "
  "\nMe, " "the " "chief " "of " sin "ners, " "spare?\n"

  \set stanza = "2."
  "\nI " "have " "long " with "stood " "His " "grace, "
  "\nLong " pro "voked " "Him " "to " "His " "face, "
  "\nWould " "not " hear "ken " "to " "His " "calls. "
  "\nGrieved " "Him " "by " "a " thou "sand " "falls.\n"

  \set stanza = "3."
  "\nWhence " "to " "me " "this " "waste " "of " "love? "
  "\nAsk " "my " Ad vo "cate " a "bove! "
  "\nSee " "the " "cause " "in " Je "sus' " "face, "
  "\nNow " be "fore " "the " "throne " "of " "grace.\n"

  \set stanza = "4."
  "\nThere " "for " "me " "the " Sa "viour " "stands; "
  "\nShows " "His " "wounds, " "and " "spreads " "His " "hands; "
  "\nGod " "is " "love, " "I " "know, " "I " "feel; "
  "\nJe" "sus " "weeps, " "and " "loves " "me " "still!\n"

  \set stanza = "5."
  "\nIf " "I " right "ly " "read " "Thy " "heart, "
  "\nIf " "Thou " "all " com pass "ion " "art, "
  "\nBow " "Thine " "ear, " "in " mer "cy " "bow, "
  "\nPar" "don " "and " ac "cept " "me " "now! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFive  \chorus
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
