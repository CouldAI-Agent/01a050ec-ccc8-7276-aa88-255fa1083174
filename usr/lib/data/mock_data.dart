class Question {
  final String text;
  final List<String> options;
  final int correctAnswerIndex;
  final String explanation;

  const Question({
    required this.text,
    required this.options,
    required this.correctAnswerIndex,
    required this.explanation,
  });
}

class ExamExamYear {
  final String year;
  final List<Question> questions;

  const ExamExamYear({
    required this.year,
    required this.questions,
  });
}

class Exam {
  final String id;
  final String title;
  final String description;
  final List<ExamExamYear> years;

  const Exam({
    required this.id,
    required this.title,
    required this.description,
    required this.years,
  });
}

final List<Exam> mockExams = [
  Exam(
    id: 'uppsc',
    title: 'UPPSC (उत्तर प्रदेश लोक सेवा आयोग)',
    description: 'उत्तर प्रदेश राज्य सिविल सेवा परीक्षा के पिछले वर्षों के प्रश्न',
    years: [
      ExamExamYear(
        year: '2023',
        questions: [
          Question(
            text: 'उत्तर प्रदेश में विधान परिषद के सदस्यों की संख्या कितनी है?',
            options: ['90', '100', '110', '120'],
            correctAnswerIndex: 1,
            explanation: 'उत्तर प्रदेश विधान परिषद में कुल 100 सदस्य हैं।',
          ),
          Question(
            text: 'सिंधु घाटी सभ्यता का प्रसिद्ध स्थल "आलमगीरपुर" किस नदी के तट पर स्थित है?',
            options: ['गंगा', 'यमुना', 'हिंडन', 'गोमती'],
            correctAnswerIndex: 2,
            explanation: 'आलमगीरपुर उत्तर प्रदेश के मेरठ जिले में हिंडन नदी के तट पर स्थित है।',
          ),
        ],
      ),
      ExamExamYear(
        year: '2022',
        questions: [
          Question(
            text: 'उत्तर प्रदेश का राज्य पक्षी कौन सा है?',
            options: ['सारस (क्रेन)', 'मोर', 'कबूतर', 'तोता'],
            correctAnswerIndex: 0,
            explanation: 'सारस (Sarus Crane) उत्तर प्रदेश का राजकीय पक्षी है।',
          ),
        ],
      ),
    ],
  ),
  Exam(
    id: 'bpsc',
    title: 'BPSC (बिहार लोक सेवा आयोग)',
    description: 'बिहार राज्य सिविल सेवा परीक्षा के महत्वपूर्ण PYQ',
    years: [
      ExamExamYear(
        year: '68th BPSC',
        questions: [
          Question(
            text: 'बिहार में 1857 के विद्रोह का नेतृत्व किसने किया था?',
            options: ['नाना साहेब', 'तात्या टोपे', 'कुंवर सिंह', 'मौलवी अहमदुल्लाह'],
            correctAnswerIndex: 2,
            explanation: 'वीर कुंवर सिंह ने 1857 की क्रांति में बिहार (जगदीशपुर) का नेतृत्व किया था।',
          ),
          Question(
            text: 'पटना उच्च न्यायालय की स्थापना कब हुई थी?',
            options: ['1912', '1916', '1920', '1935'],
            correctAnswerIndex: 1,
            explanation: 'पटना उच्च न्यायालय की स्थापना 1916 में हुई थी।',
          ),
        ],
      )
    ],
  ),
  Exam(
    id: 'mppsc',
    title: 'MPPSC (मध्य प्रदेश लोक सेवा आयोग)',
    description: 'मध्य प्रदेश राज्य परीक्षाओं के पिछले प्रश्न',
    years: [
      ExamExamYear(
        year: '2021',
        questions: [
          Question(
            text: 'मध्य प्रदेश का सबसे बड़ा राष्ट्रीय उद्यान कौन सा है?',
            options: ['कान्हा किसली', 'बांधवगढ़', 'पन्ना', 'सतपुड़ा'],
            correctAnswerIndex: 0,
            explanation: 'कान्हा राष्ट्रीय उद्यान मध्य प्रदेश का सबसे बड़ा और सबसे प्रसिद्ध राष्ट्रीय उद्यान है।',
          ),
          Question(
            text: 'सांची का स्तूप किसने बनवाया था?',
            options: ['चंद्रगुप्त मौर्य', 'अशोक', 'बिंदुसार', 'हर्षवर्धन'],
            correctAnswerIndex: 1,
            explanation: 'सांची का स्तूप सम्राट अशोक द्वारा तीसरी शताब्दी ईसा पूर्व में बनवाया गया था।',
          ),
        ],
      )
    ],
  ),
  Exam(
    id: 'rpsc',
    title: 'RPSC (राजस्थान लोक सेवा आयोग)',
    description: 'RAS और अन्य राजस्थान राज्य परीक्षाओं के PYQ',
    years: [
      ExamExamYear(
        year: 'RAS 2021',
        questions: [
          Question(
            text: 'राजस्थान का एकीकरण कितने चरणों में पूरा हुआ?',
            options: ['5', '6', '7', '8'],
            correctAnswerIndex: 2,
            explanation: 'राजस्थान का एकीकरण 7 चरणों में (1948 से 1956 तक) पूरा हुआ था।',
          ),
          Question(
            text: 'कालीबंगा सभ्यता किस नदी के किनारे स्थित है?',
            options: ['लूणी', 'बनास', 'घग्गर', 'चम्बल'],
            correctAnswerIndex: 2,
            explanation: 'कालीबंगा हनुमानगढ़ जिले में घग्गर नदी के किनारे स्थित है।',
          ),
        ],
      )
    ],
  ),
];
