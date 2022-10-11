\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I am the Way."
  subtitle    = "Sankey No. 472"
  subsubtitle = "Sankey 880 No. 585"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
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
  \mark \markup { \box "B" } s8 s2.*4
  \mark \markup { \box "C" }    s2.*3
  \mark \markup { \box "D" }    s2.*5
  \mark \markup { \box "E" }    s2.*3
  \mark \markup { \box "F" }    s2.*4 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 8
  g'8 | 4 aes8 bes4 ees8 | d4 c8 4 f,8 | f4 g8 aes4 c8 | c4.(bes4) \bar "|" \break aes8 |
  g4 aes8 bes4 ees8 | d4 c8 4 8 | c4 f,8 d'4 c8 | c4.(bes) \bar "||" |
  bes4.^\markup\smallCaps Chorus. ~8 c bes | aes4.~8[bes] aes | g4.~8 aes g |
  f4.~4. | ees4. f | g4 8 aes8 8 8 | bes4 8 c4 f,8 | bes4.(aes) |
  g4.~8 f g | aes4.~8 [g] aes | bes4.~8 aes bes |
  c4.(d) | ees4 8 8[d] c | bes8 8 8 4 aes8 | g4. f | ees4.~4
}

alto = \relative {
  \autoBeamOff \partial 8
  ees'8 | 4 f8 g4 bes8 | 4 aes8 4 ees8 | d4 ees8 f4 aes8 | 4.(g4) f8 |
  ees4 f8 g4 bes8 | 4 aes8 4 ees8 | ees4 8 f4 ees8 | ees4.(d8 f aes) |
  g4.~8 aes g | f4.~8[g] f | ees4.~8 f ees |
  d4.~4. | c4. bes | ees4 8 8 8 8 | d4 f8 4 8 | d4.~4. |
  ees8 8 8 4 \once\partCombineApart r8 | d8 8 8 4 \once\partCombineApart r8 | ees8 8 8 4 8 |
  aes8 8 8 4. | g4 8 8[bes] aes | g8 8 8 4 f8 | ees4. d | ees4.~4 
  
}

tenor = \relative {
  \autoBeamOff \partial 8
  bes8 | 4 ees8 4 8 | ees4 8 4 c8 | bes4 8 4 d8 | ees4.~4 bes8 |
  bes4 | ees8 4 8 | 4 8 4 c8 | a4 8 4 8 | bes4.~4(d8) |
  ees8 8 8 4 r8 | bes8 8 8 4 r8 | 8 8 8 4 8 |
  bes8 8 8 4(aes8) | g4. aes | 4 8 f f f | 4 bes8 a4 8 | bes4.~4. |
  bes8 8 8 4 \once\partCombineApart r8 | 8 8 8 4 \once\partCombineApart r8 | 8 8 8 ees4 8 |
  ees8 8 8 bes4. | 4 8 4 ees8 | c8 8 8 4 8 | bes4.~4 aes8 | g4.~4
}

bass = \relative {
  \autoBeamOff \partial 8
  ees8 | 4 8 4 g8 | aes4 8 aes,4 a8 | bes4 8 4 8 | ees4.~4 8 |
  ees4 8 4 g8 | aes4 8 4 8 | f4 8 4 8 | bes,4.~4. |
  ees8 8 8 4 r8 | d8 8 8 4 r8 | ees8 8 8 4 8 |
  bes8 8 8 4. | c4. d | ees4 8 c c c | bes4 d8 f4 8 | bes,4.~4. |
  ees4.~8 d ees | f4.~8[ees] f | g4.~8 fis g |
  aes4.(f) | ees4 8 4 8 | 8 8 8 f4 <aes, f'>8 | bes4. 4. | ees4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"I" __ am the Way, __ the Truth, __ and the Life: __
  No man com -- eth un -- to the Fa -- ther but by Me.
  I am the Way,
  I am the Way,
  I am the Way, the Truth, and the Life:
  No man com -- eth un -- to the Fa -- ther but by "Me.\""
}

chorusSop = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  I __ am the Way, __ the Truth, __ and the Life; __
  "" _ _ _ _ _ _ _ _ _ _ _
}

chorusTenor = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  "\"I" am the Way, I am the Way,
  I am the Way, the Truth, and the Life;
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
}

chorusBass = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  I __ am the Way, __ the Truth, __ and the Life; __
  "" _ _ _ _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Like wan -- d'ring sheep o'er moun -- tains cold,
  Since all have gone a -- stray:
  To "\"Life\"" and peace with -- in the fold.
  How may I find the Way? __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Be -- wil -- der'd oft with doubt and care,
  To God I fain would go;
  But while they cry. "\"Lo" here! lo "there!\""
  The Truth how may I know? __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  To Christ— the Way, the Truth, the Life—
  I come, no more to roam;
  He'll guide me to my "\"Fa" -- ther's "house,\""
  To my e -- ter -- nal home. __
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Like " wan "d'ring " "sheep " "o'er " moun "tains " "cold, "
  "\nSince " "all " "have " "gone " a "stray: "
  "\nTo " "\"Life\" " "and " "peace " with "in " "the " "fold. "
  "\nHow " "may " "I " "find " "the " "Way? " 
  "\n\"I "  "am " "the " "Way, "  "the " "Truth, "  "and " "the " "Life: " 
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me. "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life: "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me.\"\n"

  \set stanza = "2."
  "\nBe" wil "der'd " "oft " "with " "doubt " "and " "care, "
  "\nTo " "God " "I " "fain " "would " "go; "
  "\nBut " "while " "they " "cry. " "\"Lo " "here! " "lo " "there!\" "
  "\nThe " "Truth " "how " "may " "I " "know? " 
  "\n\"I "  "am " "the " "Way, "  "the " "Truth, "  "and " "the " "Life: " 
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me. "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life: "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me.\"\n"

  \set stanza = "3."
  "\nTo " "Christ— " "the " "Way, " "the " "Truth, " "the " "Life— "
  "\nI " "come, " "no " "more " "to " "roam; "
  "\nHe'll " "guide " "me " "to " "my " "\"Fa" "ther's " "house,\" "
  "\nTo " "my " e ter "nal " "home. " 
  "\n\"I "  "am " "the " "Way, "  "the " "Truth, "  "and " "the " "Life: " 
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me. "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life: "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me.\""
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Like " wan "d'ring " "sheep " "o'er " moun "tains " "cold, "
  "\nSince " "all " "have " "gone " a "stray: "
  "\nTo " "\"Life\" " "and " "peace " with "in " "the " "fold. "
  "\nHow " "may " "I " "find " "the " "Way? " 
  "\n\"I "  "am " "the " "Way, "  "the " "Truth, "  "and " "the " "Life: " 
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me. "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life: "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me.\"\n"

  \set stanza = "2."
  "\nBe" wil "der'd " "oft " "with " "doubt " "and " "care, "
  "\nTo " "God " "I " "fain " "would " "go; "
  "\nBut " "while " "they " "cry. " "\"Lo " "here! " "lo " "there!\" "
  "\nThe " "Truth " "how " "may " "I " "know? " 
  "\n\"I "  "am " "the " "Way, "  "the " "Truth, "  "and " "the " "Life: " 
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me. "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life: "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me.\"\n"

  \set stanza = "3."
  "\nTo " "Christ— " "the " "Way, " "the " "Truth, " "the " "Life— "
  "\nI " "come, " "no " "more " "to " "roam; "
  "\nHe'll " "guide " "me " "to " "my " "\"Fa" "ther's " "house,\" "
  "\nTo " "my " e ter "nal " "home. " 
  "\n\"I "  "am " "the " "Way, "  "the " "Truth, "  "and " "the " "Life: " 
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me. "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life: "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me.\" "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Like " wan "d'ring " "sheep " "o'er " moun "tains " "cold, "
  "\nSince " "all " "have " "gone " a "stray: "
  "\nTo " "\"Life\" " "and " "peace " with "in " "the " "fold. "
  "\nHow " "may " "I " "find " "the " "Way? " 
  "\n\"I " "am " "the " "Way, "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, " "the " "Truth, "  "and " "the " "Life: " 
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me. "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life: "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me.\"\n"

  \set stanza = "2."
  "\nBe" wil "der'd " "oft " "with " "doubt " "and " "care, "
  "\nTo " "God " "I " "fain " "would " "go; "
  "\nBut " "while " "they " "cry. " "\"Lo " "here! " "lo " "there!\" "
  "\nThe " "Truth " "how " "may " "I " "know? " 
  "\n\"I " "am " "the " "Way, "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, " "the " "Truth, "  "and " "the " "Life: " 
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me. "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life: "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me.\"\n"

  \set stanza = "3."
  "\nTo " "Christ— " "the " "Way, " "the " "Truth, " "the " "Life— "
  "\nI " "come, " "no " "more " "to " "roam; "
  "\nHe'll " "guide " "me " "to " "my " "\"Fa" "ther's " "house,\" "
  "\nTo " "my " e ter "nal " "home. " 
  "\n\"I " "am " "the " "Way, "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, " "the " "Truth, "  "and " "the " "Life: " 
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me. "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life: "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me.\" "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Like " wan "d'ring " "sheep " "o'er " moun "tains " "cold, "
  "\nSince " "all " "have " "gone " a "stray: "
  "\nTo " "\"Life\" " "and " "peace " with "in " "the " "fold. "
  "\nHow " "may " "I " "find " "the " "Way? " 
  "\n\"I " "am " "the " "Way, "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life; "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me. "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life: "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me.\"\n"

  \set stanza = "2."
  "\nBe" wil "der'd " "oft " "with " "doubt " "and " "care, "
  "\nTo " "God " "I " "fain " "would " "go; "
  "\nBut " "while " "they " "cry. " "\"Lo " "here! " "lo " "there!\" "
  "\nThe " "Truth " "how " "may " "I " "know? " 
  "\n\"I " "am " "the " "Way, "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life; "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me. "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life: "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me.\"\n"

  \set stanza = "3."
  "\nTo " "Christ— " "the " "Way, " "the " "Truth, " "the " "Life— "
  "\nI " "come, " "no " "more " "to " "roam; "
  "\nHe'll " "guide " "me " "to " "my " "\"Fa" "ther's " "house,\" "
  "\nTo " "my " e ter "nal " "home. " 
  "\n\"I " "am " "the " "Way, "
  "\nI " "am " "the " "Way, "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life; "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me. "
  "\nI " "am " "the " "Way, " "the " "Truth, " "and " "the " "Life: "
  "\nNo " "man " com "eth " un "to " "the " Fa "ther " "but " "by " "Me.\" "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
  \bookOutputSuffix "midi-alto"
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
            \addlyrics \wordsMidiAlto
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
  \bookOutputSuffix "midi-tenor"
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
            \addlyrics \wordsMidiTenor
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
  \bookOutputSuffix "midi-bass"
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
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
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
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "aligner"  \alto
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
            \new NullVoice = alignerB { \bass }
            \addlyrics \chorusBass
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \chorusSop
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusTenor
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
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "aligner"  { \repeat unfold \verses \alto    }
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
            \new NullVoice            { \repeat unfold \verses \bass  }
            \addlyrics {\repeat unfold \verses \chorusBass }
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS { \repeat unfold \verses \chorusSop }
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusTenor }
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
