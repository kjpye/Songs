\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Then shall ny Heart keep Singing!"
  subtitle    = "Sankey No. 640"
  subsubtitle = "N. H. No. 44"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. A. Ogden."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. J. Maxfield."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*4
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*3
  \textMark \markup { \box \bold "F" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8[e] | g4. 8 a g e g | c2. 4 | 4. a8 c4 a | g2. \bar "|" \break
  g4 | 4. f8 4 a | 4. g8 4 c | b4. g8 b4 a | g2. \bar "|" \break
  g4 | c4. 8 8 8 b c | d2. 4 | 4. 8 8 8 c b | c2. r4 | \break
  \section \sectionLabel \markup\smallCaps Chorus.
  e,4 8. 16  4 f | g2 c | 4 a8. b16 c4 a |
  g2. 4 | g b b a | g c c c |
  e4. c8 d4 c | e2 d4 c | a c g c | d2 c4
}

alto = \relative {
  \autoBeamOff
  c'4 | e4. 8 f e c f | 2. g4 | a4. f8 a4 f | e2.
  e4 | d4. 8 4 f | 4. e8 4 4 | d4. 8 4 c | b2.
  f'4 | e4. 8 8 g f e | d2. g4 | f4. 8 8 8 e d | c2. r4 |
  c4 8. 16 4 d | e2 g | a4 f8. g16 a4 f |
  e2. 4 | f f f d | c e e e |
  g4. e8 f4 e | g2 f4 g | f4 f g e | f2 e4
}

tenor = \relative {
  \autoBeamOff
  e8[g] | c4. 8 8 8 g c | g2. c4 | 4. 8 4 4 | 2.
  c4 | bes4. 8 4 4 | c4. 8 4 g | 4. b8 g4 fis | g2.
  b4 | c4. g8 8 8 8 8 | b2. 4 | 4. 8 8 8 g g | 2. r4 |
  g4 8. 16 4 4 | c c c c | 4 8. 16 4 4 |
  c4 c c c | b d d b | c g g g |
  c4. 8 4 4 | 2 b4 c | c a c c | b2 c4
}

bass = \relative {
  \autoBeamOff
  c4 | 4. 8 8 8 8 8 | 2. e4 | f4. 8 4 4 | c2.
  c4 | g4. 8 4 4 | c4. 8 4 4 | d4. 8 4 4 | g,2.
  g'4 | c,4. 8 8 e d c | g'2. 4 | 4. 8 8 8 8 8 | c,2. r4
  c4 8. 16 4 4 | c c e e | f f8. 16 4 4
  c4 4 4 4 | g g g f' | e c c c |
  c4. 8 4 4 | 2 d4 e | f f e c | g2 c4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Then shall my heart keep sing -- ing,
  While to the cross I cling;
  For rest is sweet as Je -- sus feet,
  While home -- ward faith keeps wing -- ing,
  While home -- ward faith keeps wing -- ing.
}

chorusMen = \lyricmode {
  \tiny
  \repeat unfold 44 _
  _ _ _ _ _ sing -- ing, sing -- ing,
  _ _ _ _ _ _ I cling;
  \repeat unfold 22 _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I would not ask for earth -- ly store—
  Thou wilt my need sup -- ply;
  But I would cov -- er, more and more,
  The clear and sin -- gle eye,
  To see my du -- ty face to face
  And trust Thee, Lord, for dai -- ly grace.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I care not for the emp -- ty show
  That thought -- less world -- lings see;
  But glad -- ly do the best I know,
  And leave the rest with Thee—
  Well sat -- is -- fied that sweet re -- ward
  Is sure to those who trust the Lord.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  What -- e'er the cross -- es mine shall be,
  I would not dare to shun;
  But on -- ly ask to live for Thee,
  And that Thy will is done;
  Thy will, O Lord, be mine each day,
  While press -- ing on my home -- ward way.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And when at last, my la -- bour o'er,
  I cross the nar -- row see,
  Grant, Lord, that on the oth -- er shore
  My soul may swell with Thee;
  And learn what here I can -- not know,
  Why Thou hast ev -- er loved me so.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "would " "not " "ask " "for " earth "ly " "store— "
  "\nThou " "wilt " "my " "need " sup "ply; "
  "\nBut " "I " "would " cov "er, " "more " "and " "more, "
  "\nThe " "clear " "and " sin "gle " "eye, "
  "\nTo " "see " "my " du "ty " "face " "to " "face "
  "\nAnd " "trust " "Thee, " "Lord, " "for " dai "ly " "grace. "
  "\nThen " "shall " "my " "heart " "keep " sing "ing, "
  "\nWhile " "to " "the " "cross " "I " "cling; "
  "\nFor " "rest " "is " "sweet " "as " Je "sus " "feet, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing.\n"

  \set stanza = "2."
  "\nI " "care " "not " "for " "the " emp "ty " "show "
  "\nThat " thought "less " world "lings " "see; "
  "\nBut " glad "ly " "do " "the " "best " "I " "know, "
  "\nAnd " "leave " "the " "rest " "with " "Thee— "
  "\nWell " sat is "fied " "that " "sweet " re "ward "
  "\nIs " "sure " "to " "those " "who " "trust " "the " "Lord. "
  "\nThen " "shall " "my " "heart " "keep " sing "ing, "
  "\nWhile " "to " "the " "cross " "I " "cling; "
  "\nFor " "rest " "is " "sweet " "as " Je "sus " "feet, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing.\n"

  \set stanza = "3."
  "\nWhat" "e'er " "the " cross "es " "mine " "shall " "be, "
  "\nI " "would " "not " "dare " "to " "shun; "
  "\nBut " on "ly " "ask " "to " "live " "for " "Thee, "
  "\nAnd " "that " "Thy " "will " "is " "done; "
  "\nThy " "will, " "O " "Lord, " "be " "mine " "each " "day, "
  "\nWhile " press "ing " "on " "my " home "ward " "way. "
  "\nThen " "shall " "my " "heart " "keep " sing "ing, "
  "\nWhile " "to " "the " "cross " "I " "cling; "
  "\nFor " "rest " "is " "sweet " "as " Je "sus " "feet, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing.\n"

  \set stanza = "4."
  "\nAnd " "when " "at " "last, " "my " la "bour " "o'er, "
  "\nI " "cross " "the " nar "row " "see, "
  "\nGrant, " "Lord, " "that " "on " "the " oth "er " "shore "
  "\nMy " "soul " "may " "swell " "with " "Thee; "
  "\nAnd " "learn " "what " "here " "I " can "not " "know, "
  "\nWhy " "Thou " "hast " ev "er " "loved " "me " "so. "
  "\nThen " "shall " "my " "heart " "keep " sing "ing, "
  "\nWhile " "to " "the " "cross " "I " "cling; "
  "\nFor " "rest " "is " "sweet " "as " Je "sus " "feet, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "I " "would " "not " "ask " "for " earth "ly " "store— "
  "\nThou " "wilt " "my " "need " sup "ply; "
  "\nBut " "I " "would " cov "er, " "more " "and " "more, "
  "\nThe " "clear " "and " sin "gle " "eye, "
  "\nTo " "see " "my " du "ty " "face " "to " "face "
  "\nAnd " "trust " "Thee, " "Lord, " "for " dai "ly " "grace. "
  "\nThen " "shall " "my " "heart " "keep " sing "ing, " sing "ing, "
  "\nWhile " "to " "the " "cross " "I " "cling, " "I " "cling; "
  "\nFor " "rest " "is " "sweet " "as " Je "sus " "feet, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing.\n"

  \set stanza = "2."
  "\nI " "care " "not " "for " "the " emp "ty " "show "
  "\nThat " thought "less " world "lings " "see; "
  "\nBut " glad "ly " "do " "the " "best " "I " "know, "
  "\nAnd " "leave " "the " "rest " "with " "Thee— "
  "\nWell " sat is "fied " "that " "sweet " re "ward "
  "\nIs " "sure " "to " "those " "who " "trust " "the " "Lord. "
  "\nThen " "shall " "my " "heart " "keep " sing "ing, " sing "ing, "
  "\nWhile " "to " "the " "cross " "I " "cling, " "I " "cling; "
  "\nFor " "rest " "is " "sweet " "as " Je "sus " "feet, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing.\n"

  \set stanza = "3."
  "\nWhat" "e'er " "the " cross "es " "mine " "shall " "be, "
  "\nI " "would " "not " "dare " "to " "shun; "
  "\nBut " on "ly " "ask " "to " "live " "for " "Thee, "
  "\nAnd " "that " "Thy " "will " "is " "done; "
  "\nThy " "will, " "O " "Lord, " "be " "mine " "each " "day, "
  "\nWhile " press "ing " "on " "my " home "ward " "way. "
  "\nThen " "shall " "my " "heart " "keep " sing "ing, " sing "ing, "
  "\nWhile " "to " "the " "cross " "I " "cling, " "I " "cling; "
  "\nFor " "rest " "is " "sweet " "as " Je "sus " "feet, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing.\n"

  \set stanza = "4."
  "\nAnd " "when " "at " "last, " "my " la "bour " "o'er, "
  "\nI " "cross " "the " nar "row " "see, "
  "\nGrant, " "Lord, " "that " "on " "the " oth "er " "shore "
  "\nMy " "soul " "may " "swell " "with " "Thee; "
  "\nAnd " "learn " "what " "here " "I " can "not " "know, "
  "\nWhy " "Thou " "hast " ev "er " "loved " "me " "so. "
  "\nThen " "shall " "my " "heart " "keep " sing "ing, " sing "ing, "
  "\nWhile " "to " "the " "cross " "I " "cling, " "I " "cling; "
  "\nFor " "rest " "is " "sweet " "as " Je "sus " "feet, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing, "
  "\nWhile " home "ward " "faith " "keeps " wing "ing. "
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
  \bookOutputSuffix "midi-men"
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
      #(layout-set-staff-size 20)
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
