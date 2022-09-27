\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Room for Jesus."
  subtitle    = "Sankey No. 465"
  subsubtitle = "C. C. No. 49"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John H. Yates."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 6/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1.*3 s2. s2
  \mark \markup { \box "B" } s4 s1.*3 s2. s2
  \mark \markup { \box "C" } s4 s1.*3 s2. s2
  \mark \markup { \box "D" } s4 s1.*3 s2. s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  c'4 | a'2 4 2 4 | c2 bes4 a2 4 | a2 g4 2 d4 | f2.(e2) \bar "|" \break c4 |
  a'2 4 2 4 | c2 bes4 a2 4 | g(c) e4 2 d4 | c2.~2 \bar "||" \break 4^\markup\smallCaps Chorus. |
  c2 e,4 2 bes'4 | bes2 a4 2 4 | 2 d4 a2 b4 | c2.~2 \bar "|" \break bes4 |
  a2 bes4 c2 a4 | bes2 c4 d2\fermata 4 | c2 f,4 a2 g4 | f2.~2
}

alto = \relative {
  \autoBeamOff \partial 4
  c'4 | f2 4 2 4 | a(f) f4 2 4 | d2 4 2 4 | c2.~2 4 |
  f2 4 2 4 | a(f) 4 2 4 | e2 g4 2 f4 | e2.~2 f4 |
  e2 c4 2 g'4 | 2 f4 2 4 | 2 4 2 4 | e2.~2 g4 |
  f2 g4 a2 f4 | f2 4 2\fermata 4 | f2 4 e2 4 | f2.~2
}

tenor = \relative {
  \autoBeamOff \partial 4
  a4 | c2 4 2 4 | ees2 d4 c2 4 | 2 bes4 b2 g4 | a2.(g2) a4 |
  c2 4 2 4 | ees2 d4 c2 4 | c(a) c b2 4 | c2.~2 a4 |
  g2 4 2 c4 | c2 4 2 4 | d2 a4 f2 d'4 | c2.~2 4 |
  c2 4 f2 c4 | bes2 a4 bes2\fermata g4 | a2 4 c2 bes4 | a2.~2
}

bass = \relative {
  \autoBeamOff \partial 4
  f4 | 2 4 2 4 | 2 4 2 4 | bes,2 4 g2 b4 | c2.~2 f4 |
  f2 4 2 4 | 2 4 2 4 | g2 4 g, 2 4 | c2.~2 g4 |
  c2 4 2 e4 | f2 4 2 4 | d2 4 g2 4 | c,2.~2 4 |
  f2 4 2 ees4 | d2 c4 bes2\fermata 4 | c2 d4 c2 4 | f2.~2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh yes, there's room with -- in my heart,
  There's room, O Lord, for Thee:
  Come in, and nev -- er -- more de -- part:
  Come in; a -- bide with me!
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Hast thou no room with -- in thy heart,
  Where Je -- sus may a -- bide?
  And canst thou say to Him, De -- part,
  Who for thee bled and died?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  No room for Him, whose glo -- ry -- light,
  In low -- ly man -- ger laid,
  Shone forth in heav'n -- ly ma -- sions bright,
  Be -- fore the worlds were made!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I will, O Lord, un -- bar the door!
  No long -- er stand out -- side;
  But come with -- in, and ev -- er -- more
  In my poor heart a -- bide.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  A -- bide with me; through all my days
  Thy pre -- senec be my light;
  Then shall my mouth show forth Thy praise,
  And I shall walk a -- right.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  When comes at last the Judg -- ment -- day,
  And I Thy face shall see.
  What joy sup -- reme to hear thee say.
  "\"Come" in! there's room for "thee.\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hast " "thou " "no " "room " with "in " "thy " "heart, "
  "\nWhere " Je "sus " "may " a "bide? "
  "\nAnd " "canst " "thou " "say " "to " "Him, " De "part, "
  "\nWho " "for " "thee " "bled " "and " "died? "
  "\nOh " "yes, " "there's " "room " with "in " "my " "heart, "
  "\nThere's " "room, " "O " "Lord, " "for " "Thee: "
  "\nCome " "in, " "and " nev er "more " de "part: "
  "\nCome " "in; " a "bide " "with " "me!\n"

  \set stanza = "2."
  "\nNo " "room " "for " "Him, " "whose " glo ry "light, "
  "\nIn " low "ly " man "ger " "laid, "
  "\nShone " "forth " "in " heav'n "ly " ma "sions " "bright, "
  "\nBe" "fore " "the " "worlds " "were " "made! "
  "\nOh " "yes, " "there's " "room " with "in " "my " "heart, "
  "\nThere's " "room, " "O " "Lord, " "for " "Thee: "
  "\nCome " "in, " "and " nev er "more " de "part: "
  "\nCome " "in; " a "bide " "with " "me!\n"

  \set stanza = "3."
  "\nI " "will, " "O " "Lord, " un "bar " "the " "door! "
  "\nNo " long "er " "stand " out "side; "
  "\nBut " "come " with "in, " "and " ev er "more "
  "\nIn " "my " "poor " "heart " a "bide. "
  "\nOh " "yes, " "there's " "room " with "in " "my " "heart, "
  "\nThere's " "room, " "O " "Lord, " "for " "Thee: "
  "\nCome " "in, " "and " nev er "more " de "part: "
  "\nCome " "in; " a "bide " "with " "me!\n"

  \set stanza = "4."
  "\nA" "bide " "with " "me; " "through " "all " "my " "days "
  "\nThy " pre "senec " "be " "my " "light; "
  "\nThen " "shall " "my " "mouth " "show " "forth " "Thy " "praise, "
  "\nAnd " "I " "shall " "walk " a "right. "
  "\nOh " "yes, " "there's " "room " with "in " "my " "heart, "
  "\nThere's " "room, " "O " "Lord, " "for " "Thee: "
  "\nCome " "in, " "and " nev er "more " de "part: "
  "\nCome " "in; " a "bide " "with " "me!\n"

  \set stanza = "5."
  "\nWhen " "comes " "at " "last " "the " Judg ment "day, "
  "\nAnd " "I " "Thy " "face " "shall " "see. "
  "\nWhat " "joy " sup "reme " "to " "hear " "thee " "say. "
  "\n\"Come " "in! " "there's " "room " "for " "thee.\" "
  "\nOh " "yes, " "there's " "room " with "in " "my " "heart, "
  "\nThere's " "room, " "O " "Lord, " "for " "Thee: "
  "\nCome " "in, " "and " nev er "more " de "part: "
  "\nCome " "in; " a "bide " "with " "me! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFive  \chorus
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
