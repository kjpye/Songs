\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lead me Ever."
  subtitle    = "Sankey No. 523"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Victor H. Benke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Jane Sterling."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4. aes8 bes ees, g c |  bes2 g | aes4. bes8 d c aes g | f1 |
  g4. 8 bes a g f | c'2 bes | g4. c8 bes a g a | bes2. r4 \bar "||" |
  bes4.^\markup\smallCaps Chorus.  8 aes aes ees f | g2 2 | bes4. 8 a ees' d c | bes2. r4 |
  bes4. 8 a bes c ees | 2 bes | g4.^\markup\italic rit. 8 bes bes ees, f | ees1\fermata
  
}

alto = \relative {
  \autoBeamOff
  ees'4. d8 ees8 8 8 8 |  2 2 | d4. ees8 8 8 f ees | d1 |
  bes4. ees8 8 8 c c | f2 2 | ees4. g8 ees8 8 8 8 | d4(ees f) r |
  ees4. g8 ees8 8 8 8 | 2 2 | g4. 8 ees g f ees | d4(ees f) r |
  ees4. g8 fis8 8 8 8 | g2 2 | ees4. 8 8 8 c d | ees1\fermata |
}

tenor = \relative {
  \autoBeamOff
  bes4. 8 8 8 8 aes | g2 bes | 4. 8 8 aes c aes | bes2(aes) |
  g4. bes8 c c a a | bes2 2 | 4. ees8 c c bes c | bes4(g aes) r|
  g4. des'8 c8 8 8 ces | bes2 2 | ees4. 8 c bes a a | bes4(g aes) r |
  g4. des'8 c bes a a | bes2 ees | 4. bes8 g g aes aes | g1\fermata |
}

bass = \relative {
  \autoBeamOff
  ees4. f8 g g ees ees | 2 2 | f4. g8 aes aes f f | bes,1 |
  ees4. 8 8 8 8 8 | d2 2 | ees4. 8 f f f f | bes,2. r4 |
  ees4. 8 8 8 8 8 | 2 2 | 4. 8 f f f f | bes,2. r4 |
  ees4. 8 8 8 8 8 | 2 2 | bes4. 8 8 8 8 8 | ees1\fermata |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Lead me now and lead me ev -- er,
  Till, be -- yond the cry -- stal sea,
  Through the bright and shi -- ning por -- tals
  I shall come and dwell with Thee.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Lead me now and lead me ev -- er,
  Lest my feet should turn a -- side
  From the path of love and du -- ty,
  From the Cross where Thou hast died. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou the great and on -- ly cen -- tre
  Of my love and high -- est praise,
  Let my soul, re -- vol -- ving round Thee,
  Catch Thy pure, ce -- les -- tial rays. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Keep me, Lord, for well Thou know -- est
  How I need Thy grace Di -- vine,
  From the thoughts that oft be -- guile me,
  Still to shield this heart of mine. __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lead " "me " "now " "and " "lead " "me " ev "er, "
  "\nLest " "my " "feet " "should " "turn " a "side "
  "\nFrom " "the " "path " "of " "love " "and " du "ty, "
  "\nFrom " "the " "Cross " "where " "Thou " "hast " "died. " 
  "\nLead " "me " "now " "and " "lead " "me " ev "er, "
  "\nTill, " be "yond " "the " cry "stal " "sea, "
  "\nThrough " "the " "bright " "and " shi "ning " por "tals "
  "\nI " "shall " "come " "and " "dwell " "with " "Thee.\n"

  \set stanza = "2."
  "\nThou " "the " "great " "and " on "ly " cen "tre "
  "\nOf " "my " "love " "and " high "est " "praise, "
  "\nLet " "my " "soul, " re vol "ving " "round " "Thee, "
  "\nCatch " "Thy " "pure, " ce les "tial " "rays. " 
  "\nLead " "me " "now " "and " "lead " "me " ev "er, "
  "\nTill, " be "yond " "the " cry "stal " "sea, "
  "\nThrough " "the " "bright " "and " shi "ning " por "tals "
  "\nI " "shall " "come " "and " "dwell " "with " "Thee.\n"

  \set stanza = "3."
  "\nKeep " "me, " "Lord, " "for " "well " "Thou " know "est "
  "\nHow " "I " "need " "Thy " "grace " Di "vine, "
  "\nFrom " "the " "thoughts " "that " "oft " be "guile " "me, "
  "\nStill " "to " "shield " "this " "heart " "of " "mine. " 
  "\nLead " "me " "now " "and " "lead " "me " ev "er, "
  "\nTill, " be "yond " "the " cry "stal " "sea, "
  "\nThrough " "the " "bright " "and " shi "ning " por "tals "
  "\nI " "shall " "come " "and " "dwell " "with " "Thee. "
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
