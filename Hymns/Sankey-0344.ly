\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hark! There comes a Whisper!"
  subtitle    = "Sankey No. 344"
  subsubtitle = "Sankey 880 No. 552"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2*5
  \mark \markup { \box "B" } s2*6
  \mark \markup { \box "C" } s2*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s2*7
  \tempo 4=69 s4. \tempo 4=120 s8
  s2*5
  s4 \tempo 4=60 s4 \tempo 4=120
  s4 s16 \tempo 4=60 s8. \tempo 4=120
  s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8. 16 8 8
  f4 4
  g8. 16 8 8
  g2
  a8. 16 8 8
  a4 4 % B
  g4 a8 g
  g4.\fermata r8 \bar "||"
  c8.^\markup\smallCaps Refrain. 16 a8 f
  g2
  c8. 16 a8 f
  g2 % C
  a8^! r bes^! r16 bes
  c8 8 d4\fermata
  f,4 a16 g8.\fermata
  f2
}

alto = \relative {
  \autoBeamOff
  c'8. 16 f8 ees
  d4 c
  e8. 16 f8 8
  e2
  f8. g16 f8 8
  e4 f % B
  f4 8 8
  e4.\fermata r8
  f8. 16 8 c
  e2
  f8. 16 8 c
  e2 % C
  f8^! r f^! r16 f
  f8 8 4\fermata
  c4 e16 8.\fermata
  f2
}

tenor = \relative {
  \autoBeamOff
  a8. 16 bes8 a
  bes4 a
  c8. 16 d8 b
  c2
  c8. cis16 d8 8
  cis4 d % B
  b4 8 8
  c4.\fermata r8
  c8. 16 8 a
  c8 8 4
  c8. 16 8 a
  c8 8 4 % C
  c8_! r bes_! r16 d
  c8 8 bes4\fermata
  a4 c16 bes8.\fermata
  a2
}

bass = \relative {
  \autoBeamOff
  f8. ees16 d8 c
  bes4 f
  c'8. 16 b8 g
  c2
  f8. e16 d8 8
  a4 d % B
  g4 8 8
  c,4.\fermata r8
  a'8. 16 f8 8
  c8 8 4
  a'8. 16 f8 8
  c8 8 4 % C
  f8_! r d_! r16 bes
  a8 8 b4\fermata
  c4 16 8.\fermata
  f2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Give" thy heart to Me,
  Once I died for "thee:\""
  Hark! hark! the Sa -- viour calls:
  Come, Sin -- ner, come!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ to Me,
  _ _ _ _ _ for Thee,
  _ _ _ _ _ _
  _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Hark! there comes a whis -- per
  Steal -- ing on thine ear;
  'Tis the Sa -- viour call -- ing,
  Soft, soft and clear.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  With that voice so gen -- tle,
  Dost thou hear Him say?—
  "\"Tell" Me all thy sor -- rows;
  Come, come a -- "way!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Wouldst thou find a re -- fuge
  For thy soul op -- pressed?
  Je -- sus kind -- ly an -- swers,
  "\"I" am thy "rest.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  At the cross of Je -- sus
  Let thy bur -- den fall;
  While He gent -- ly whis -- pers, "\"I'll" near it "all.\""
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "Hark! " "there " "comes " "a " whis "per "
  "\nSteal" "ing " "on " "thine " "ear; "
  "\n'Tis " "the " Sa "viour " call "ing, "
  "\nSoft, " "soft " "and " "clear. "
  "\n\"Give " "thy " "heart " "to " "Me, "
  "\nOnce " "I " "died " "for " "thee:\" "
  "\nHark! " "hark! " "the " Sa "viour " "calls: "
  "\nCome, " Sin "ner, " "come! "

  \set stanza = "2."
  "\nWith " "that " "voice " "so " gen "tle, "
  "\nDost " "thou " "hear " "Him " "say?— "
  "\n\"Tell " "Me " "all " "thy " sor "rows; "
  "\nCome, " "come " a "way!\" "
  "\n\"Give " "thy " "heart " "to " "Me, "
  "\nOnce " "I " "died " "for " "thee:\" "
  "\nHark! " "hark! " "the " Sa "viour " "calls: "
  "\nCome, " Sin "ner, " "come! "

  \set stanza = "3."
  "\nWouldst " "thou " "find " "a " re "fuge "
  "\nFor " "thy " "soul " op "pressed? "
  "\nJe" "sus " kind "ly " an "swers, "
  "\n\"I " "am " "thy " "rest.\" "
  "\n\"Give " "thy " "heart " "to " "Me, "
  "\nOnce " "I " "died " "for " "thee:\" "
  "\nHark! " "hark! " "the " Sa "viour " "calls: "
  "\nCome, " Sin "ner, " "come! "

  \set stanza = "4."
  "\nAt " "the " "cross " "of " Je "sus "
  "\nLet " "thy " bur "den " "fall; "
  "\nWhile " "He " gent "ly " whis "pers, " "\"I'll " "near " "it " "all.\" "
  "\n\"Give " "thy " "heart " "to " "Me, "
  "\nOnce " "I " "died " "for " "thee:\" "
  "\nHark! " "hark! " "the " Sa "viour " "calls: "
  "\nCome, " Sin "ner, " "come! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Hark! " "there " "comes " "a " whis "per "
  "\nSteal" "ing " "on " "thine " "ear; "
  "\n'Tis " "the " Sa "viour " call "ing, "
  "\nSoft, " "soft " "and " "clear. "
  "\n\"Give " "thy " "heart " "to " "Me, " "to " "Me, "
  "\nOnce " "I " "died " "for " "Thee, " "for " "thee:\" "
  "\nHark! " "hark! " "the " Sa "viour " "calls: "
  "\nCome, " Sin "ner, " "come! "

  \set stanza = "2."
  "\nWith " "that " "voice " "so " gen "tle, "
  "\nDost " "thou " "hear " "Him " "say?— "
  "\n\"Tell " "Me " "all " "thy " sor "rows; "
  "\nCome, " "come " a "way!\" "
  "\n\"Give " "thy " "heart " "to " "Me, " "to " "Me, "
  "\nOnce " "I " "died " "for " "Thee, " "for " "thee:\" "
  "\nHark! " "hark! " "the " Sa "viour " "calls: "
  "\nCome, " Sin "ner, " "come! "

  \set stanza = "3."
  "\nWouldst " "thou " "find " "a " re "fuge "
  "\nFor " "thy " "soul " op "pressed? "
  "\nJe" "sus " kind "ly " an "swers, "
  "\n\"I " "am " "thy " "rest.\" "
  "\n\"Give " "thy " "heart " "to " "Me, " "to " "Me, "
  "\nOnce " "I " "died " "for " "Thee, " "for " "thee:\" "
  "\nHark! " "hark! " "the " Sa "viour " "calls: "
  "\nCome, " Sin "ner, " "come! "

  \set stanza = "4."
  "\nAt " "the " "cross " "of " Je "sus "
  "\nLet " "thy " bur "den " "fall; "
  "\nWhile " "He " gent "ly " whis "pers, " "\"I'll " "near " "it " "all.\" "
  "\n\"Give " "thy " "heart " "to " "Me, " "to " "Me, "
  "\nOnce " "I " "died " "for " "Thee, " "for " "thee:\" "
  "\nHark! " "hark! " "the " Sa "viour " "calls: "
  "\nCome, " Sin "ner, " "come! "
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
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
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
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
          \new Staff = men\with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor}
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor}
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
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
