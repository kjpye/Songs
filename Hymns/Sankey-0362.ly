\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Him that Cometh!"
  subtitle    = "Sankey No. 362"
  subsubtitle = "(The first part may be sung as a Duet or Quartet.)"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Jessie C. Young."
  meter       = \markup\smallCaps "L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 17)

global = {
  \key aes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4.*12
  \mark \markup { \box "D" } s4.*12
  \mark \markup { \box "E" } s4.*12
  \mark \markup { \box "F" } s4.*12
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4
  ees8 aes aes4 bes
  aes8 g g4 ees
  ees8 bes' bes4 c
  bes8 aes8 4 \bar "|" \break ees
  ees8 c'8 4 ees % B
  ees8 des8 4 4
  c8 ees, bes'4 c
  bes8 aes8 aes4\fermata \bar "||" \break \time 9/8 \partial 4. ees8^\markup{\smallCaps Chorus. John vi. 37.} [f] g
  aes4. 4. 4 8 % C
  bes4. 4. 4 8
  c4(bes8) c4. des
  ees2. \bar "|" \break ees8 des c
  des4. 4. 8 c bes % D
  c4. 4. 8 bes c
  ees4. des c
  bes2. \bar "|" \break ees,8[f] g

  aes4. 4. 4 8 % E
  bes4. 4. 4 8
  c4(bes8) c4. des
  ees2. \bar "|" \break c8 des ees
  f4. bes,4. 8 c des % F
  ees4. aes,4. 8 bes c
  des4.-> c-> bes->
  aes2.
}

alto = \relative {
  \autoBeamOff
  c'4
  c8 8 4 des
  c8 bes8 4 4
  bes8 des8 4 ees
  des8 c8 4 4
  c8 ees ees4 ges % B
  ges8 f8 4 4
  ees8 c des4 ees
  ces8 c8 4\fermata ees8[f] g
  aes4. ees ees4 aes8 % C
  g4. 4. 4 8
  aes4(g8) aes4. g
  aes2. 8 bes aes
  g4. 4. 8 aes bes % D
  aes4. 4. 8 bes aes
  aes4. g aes
  g2. ees8[f] g
  aes4. ees4. 4 8 % E
  g4. 4. ees4 8
  ees4. aes g
  aes2. 8 8 8
  aes4. 4. g8 8 8 % F
  aes4. ees ges8 8 8
  f4.-> ees-> ees->
  ees2.
}

tenor = \relative {
  \autoBeamOff
  aes4
  aes8 ees8 4 4
  ees8 8 4 g
  g8 8 4 aes
  ees8 8 4 aes
  aes8 8 4 4 % B
  aes8 8 4 4
  aes8 8 g4 aes
  g8 ees ees4\fermata ees8[f] g
  aes4. c4. 4 8 % C
  ees4. 4. 4 8
  ees4. 4. bes
  c2. 8 d ees
  ees4. 4. 8 8 8 % D
  ees4. 4. 8 8 8
  ees4. 4. 4.
  ees2. ees,8[f] g
  aes4. c4(des8) ees4 c8 % E
  des4. 4. 4 8
  ees4. 4. 4.
  ees2. ees8 des c
  des4. 4. 8 c bes % F
  c4. 4. ees8 des c
  bes4. aes des
  c2.
}

bass = \relative {
  \autoBeamOff
  aes,4
  aes8 8 4 4
  ees'8 8 4 4
  ees8 8 4 4
  aes,8 8 4 4
  aes8 8 4 c % B
  des8 8 4 4
  ees8 8 4 4
  aes,8 8 4\fermata ees'8[f] g
  aes4. 4. 4 8 % C
  ees4. 4. 4 8
  ees4. 4. 4.
  aes2. 8 g aes
  bes4. ees,4. 8 f g % D
  aes4. aes, aes'8 g aes
  c4. bes aes
  ees2. 8[f] g
  aes4. 4(bes8) c4 aes8 % E
  ees4. 4(f8) g4 ees8
  aes4(g8) aes4. bes
  c2. aes8 8 8
  des,4. 4. ees8 8 8 % F
  aes,4. 4. c8 bes aes
  bes4. ees ees
  aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Him" that com -- eth, Him that com -- eth,
  Him that com -- eth to Me,
  I will in no wise, I will in no wise,
  I will in no wise cast out;
  Him that com -- eth, Him that com -- eth,
  Him that com -- eth, to Me,
  I will in no wise, I will in no wise,
  I will in no wise cast "out.\""
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Thy Sav -- iour calls! oh, come and see
  What things He hath pre -- pared for thee!
  Life, love, and joy, from God on high,
  By Christ Him -- self to thee brought nigh.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thy Sa -- viour calls! He knows thy sin;
  But trust Him now, He'll en -- ter in;
  Wilt thou not turn and give Him heed?
  Wilt thou not think while He doth plead?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thy Sa -- viour calls! He knows thy sin;
  But trust Him now, He'll en -- ter in;
  And He thy heart will pu -- ri -- fy,
  And ev -- ;ry need -- ed grace sup -- ply.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thy " Sav "iour " "calls! " "oh, " "come " "and " "see "
  "\nWhat " "things " "He " "hath " pre "pared " "for " "thee! "
  "\nLife, " "love, " "and " "joy, " "from " "God " "on " "high, "
  "\nBy " "Christ " Him "self " "to " "thee " "brought " "nigh. "
  "\n\"Him " "that " com "eth, " "Him " "that " com "eth, "
  "\nHim " "that " com "eth " "to " "Me, "
  "\nI " "will " "in " "no " "wise, " "I " "will " "in " "no " "wise, "
  "\nI " "will " "in " "no " "wise " "cast " "out; "
  "\nHim " "that " com "eth, " "Him " "that " com "eth, "
  "\nHim " "that " com "eth, " "to " "Me, "
  "\nI " "will " "in " "no " "wise, " "I " "will " "in " "no " "wise, "
  "\nI " "will " "in " "no " "wise " "cast " "out.\" "

  \set stanza = "2."
  "\nThy " Sa "viour " "calls! " "He " "knows " "thy " "sin; "
  "\nBut " "trust " "Him " "now, " "He'll " en "ter " "in; "
  "\nWilt " "thou " "not " "turn " "and " "give " "Him " "heed? "
  "\nWilt " "thou " "not " "think " "while " "He " "doth " "plead? "
  "\n\"Him " "that " com "eth, " "Him " "that " com "eth, "
  "\nHim " "that " com "eth " "to " "Me, "
  "\nI " "will " "in " "no " "wise, " "I " "will " "in " "no " "wise, "
  "\nI " "will " "in " "no " "wise " "cast " "out; "
  "\nHim " "that " com "eth, " "Him " "that " com "eth, "
  "\nHim " "that " com "eth, " "to " "Me, "
  "\nI " "will " "in " "no " "wise, " "I " "will " "in " "no " "wise, "
  "\nI " "will " "in " "no " "wise " "cast " "out.\" "

  \set stanza = "3."
  "\nThy " Sa "viour " "calls! " "He " "knows " "thy " "sin; "
  "\nBut " "trust " "Him " "now, " "He'll " en "ter " "in; "
  "\nAnd " "He " "thy " "heart " "will " pu ri "fy, "
  "\nAnd " ev ";ry " need "ed " "grace " sup "ply. "
  "\n\"Him " "that " com "eth, " "Him " "that " com "eth, "
  "\nHim " "that " com "eth " "to " "Me, "
  "\nI " "will " "in " "no " "wise, " "I " "will " "in " "no " "wise, "
  "\nI " "will " "in " "no " "wise " "cast " "out; "
  "\nHim " "that " com "eth, " "Him " "that " com "eth, "
  "\nHim " "that " com "eth, " "to " "Me, "
  "\nI " "will " "in " "no " "wise, " "I " "will " "in " "no " "wise, "
  "\nI " "will " "in " "no " "wise " "cast " "out.\" "
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
