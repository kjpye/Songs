\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come unto Me, ye Weary!"
  subtitle    = "Sankey No. 374"
  subsubtitle = "Sankey 880 No. 711"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. J. B. Dykes."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. Chatterton Dix."
  meter       = \markup\smallCaps "7.6."
  piece       = \markup\smallCaps "Vox Jesu."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s1*3 s2
  \mark \markup { \box "B" } s2 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  r2_\markup\italic Org. \partCombineApart
  d'2 e4(d) ~
  d2 g~
  \once\partCombineAutomatic g2~4 fis \partCombineAutomatic
  g2 \bar "|" \break b2
  b4 4 4 e % B
  e2 a,4 d
  fis,4 b g4. e8
  d2. \bar "|" \break b'4
  d4. 8 cis4 b % C
  d2 c4 a
  c4. 8 b4 a
  b2. \bar "|" \break 4
  g4. 8 4 4 % D
  d'2 b4 g
  d4 c' b a
  g2
}

alto = \relative {
  \autoBeamOff
  r2
  b2 c~
  c4 b r e
  d2 c
  b2 d
  g4 fis e g % B
  g4(e) fis d
  d4 4 cis4. 8
  d2. fis4
  d4. fis8 e4 4 % C
  fis4(gis) a e
  c4. e8 d4 4
  d2. 4
  e4. d8 cis4 g' % D
  g2 d4 4
  d4 e d c
  b2
}

tenor = \relative {
  \autoBeamOff
  g2
  g4 4 e4. fis8
  g4 4 r a
  b4 g a4. g8
  g2 b
  b4 a g b % B
  a2 4 g
  a4 e e4. g8
  fis2. 4
  b4. a8 gis4 4 % C
  a4(b) c e,
  a4. g8 fis4 c'
  b2. g4
  b4. 8 a4 g % D
  b4(d) g, b
  c4 d, e fis
  g2
}

bass = \relative {
  \autoBeamOff
  g2
  g4 4 e4. fis8
  g4 4 r \partCombineApart \teeny c,
  d2 d \normalsize \partCombineAutomatic
  g2 2
  e4 4 4 d % B
  cis2 d4 b
  a4 g a4. 8
  d2. 4
  b4. 8 e4 4 % C
  e2 a,4 c
  a4. 8 d4 4
  g2. 4
  e4. 8 4 4 % D
  d2 4 4
  d4 4 4 4
  g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Come" un -- to Me, ye wea -- ry,
  And I will give you "rest.\""
  Oh, bless -ed voice of Je -- sus,
  Which comes to hearts op -- prest!
  It tells of be -- ne -- dic -- tion;
  Of par -- don, grace, and peace
  Of joy that hath no end -- ing;
  Of love which can -- not cease.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Come" un -- to Me, ye wan -- d'rers,
  And I will give you "light.\""
  Oh, lov -- ing voice of Je -- sus,
  Which comes to cheer the night!
  Our hearts were filled with sad -- ness,
  And we had lost our way;
  But He has brought us glad -- ness,
  And songs at break of day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Come" un -- to Me, ye faint -- ing,
  And I will give you "life.\""
  Oh, cheer -- ing voice of Je -- sus,
  Which comes to aid our strife!
  The foe is stern and ea -- ger,
  The fight is fierce and long;
  But He has made us mi -- ghty,
  And strong -- er than the strong.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"And" who -- so -- ev -- er com -- eth
  I will not cast him "out.\""
  Oh, wel -- come voice of Je -- sus,
  Which drives a -- way our doubt:
  Which calls us— ve -- ry sin -- ners,
  Un -- wor -- thy though we be
  Of love so free and bound -- less—
  To come, dear Lord, to Thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Come " un "to " "Me, " "ye " wea "ry, "
  "\nAnd " "I " "will " "give " "you " "rest.\" "
  "\nOh, " "bless " "-ed " "voice " "of " Je "sus, "
  "\nWhich " "comes " "to " "hearts " op "prest! "
  "\nIt " "tells " "of " be ne dic "tion; "
  "\nOf " par "don, " "grace, " "and " "peace "
  "\nOf " "joy " "that " "hath " "no " end "ing; "
  "\nOf " "love " "which " can "not " "cease. "

  \set stanza = "2."
  "\n\"Come " un "to " "Me, " "ye " wan "d'rers, "
  "\nAnd " "I " "will " "give " "you " "light.\" "
  "\nOh, " lov "ing " "voice " "of " Je "sus, "
  "\nWhich " "comes " "to " "cheer " "the " "night! "
  "\nOur " "hearts " "were " "filled " "with " sad "ness, "
  "\nAnd " "we " "had " "lost " "our " "way; "
  "\nBut " "He " "has " "brought " "us " glad "ness, "
  "\nAnd " "songs " "at " "break " "of " "day. "

  \set stanza = "3."
  "\n\"Come " un "to " "Me, " "ye " faint "ing, "
  "\nAnd " "I " "will " "give " "you " "life.\" "
  "\nOh, " cheer "ing " "voice " "of " Je "sus, "
  "\nWhich " "comes " "to " "aid " "our " "strife! "
  "\nThe " "foe " "is " "stern " "and " ea "ger, "
  "\nThe " "fight " "is " "fierce " "and " "long; "
  "\nBut " "He " "has " "made " "us " mi "ghty, "
  "\nAnd " strong "er " "than " "the " "strong. "

  \set stanza = "4."
  "\n\"And " who so ev "er " com "eth "
  "\nI " "will " "not " "cast " "him " "out.\" "
  "\nOh, " wel "come " "voice " "of " Je "sus, "
  "\nWhich " "drives " a "way " "our " "doubt: "
  "\nWhich " "calls " "us— " ve "ry " sin "ners, "
  "\nUn" wor "thy " "though " "we " "be "
  "\nOf " "love " "so " "free " "and " bound "less— "
  "\nTo " "come, " "dear " "Lord, " "to " "Thee! "
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
            \new NullVoice = "aligner" \tenor
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
            \new NullVoice = "aligner" { \repeat unfold \verses \tenor }
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
            \new NullVoice = "aligner" { \repeat unfold \verses \tenor }
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
