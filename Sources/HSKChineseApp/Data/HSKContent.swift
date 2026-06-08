import Foundation

// MARK: - HSK Content Database
// Each level contains words organized into day-units of 5 words + 5 sentences.
// This file contains Levels 1 and 2 (beginner). See HSKContent_L3L4.swift etc. for higher levels.

struct HSKContent {

    // MARK: - Level 1 Words (150 words total = 30 days)
    static let level1Words: [HSKWord] = [
        // Day 0
        HSKWord(id: "L1W001", hanzi: "你好", pinyin: "nǐ hǎo", english: "Hello", level: 1, strokeOrder: [StrokePath(description: "你: left radical 亻then 尔"), StrokePath(description: "好: left 女 then right 子")]),
        HSKWord(id: "L1W002", hanzi: "谢谢", pinyin: "xiè xiè", english: "Thank you", level: 1, strokeOrder: [StrokePath(description: "谢: 讠radical, then 身, then 寸")]),
        HSKWord(id: "L1W003", hanzi: "是", pinyin: "shì", english: "To be / yes", level: 1, strokeOrder: [StrokePath(description: "Top 日 then 正 at bottom")]),
        HSKWord(id: "L1W004", hanzi: "我", pinyin: "wǒ", english: "I / me", level: 1, strokeOrder: [StrokePath(description: "Left 手 component then 戈 on right")]),
        HSKWord(id: "L1W005", hanzi: "你", pinyin: "nǐ", english: "You", level: 1, strokeOrder: [StrokePath(description: "Left 亻radical then 尔 on right")]),
        // Day 1
        HSKWord(id: "L1W006", hanzi: "他", pinyin: "tā", english: "He / him", level: 1, strokeOrder: [StrokePath(description: "Left 亻then right 也")]),
        HSKWord(id: "L1W007", hanzi: "她", pinyin: "tā", english: "She / her", level: 1, strokeOrder: [StrokePath(description: "Left 女 then right 也")]),
        HSKWord(id: "L1W008", hanzi: "不", pinyin: "bù", english: "No / not", level: 1, strokeOrder: [StrokePath(description: "Horizontal, then vertical, then two diagonals")]),
        HSKWord(id: "L1W009", hanzi: "好", pinyin: "hǎo", english: "Good", level: 1, strokeOrder: [StrokePath(description: "Left 女 then right 子")]),
        HSKWord(id: "L1W010", hanzi: "人", pinyin: "rén", english: "Person", level: 1, strokeOrder: [StrokePath(description: "Left diagonal then right diagonal")]),
        // Day 2
        HSKWord(id: "L1W011", hanzi: "大", pinyin: "dà", english: "Big", level: 1, strokeOrder: [StrokePath(description: "Horizontal, then left diagonal, then right diagonal")]),
        HSKWord(id: "L1W012", hanzi: "小", pinyin: "xiǎo", english: "Small", level: 1, strokeOrder: [StrokePath(description: "Center vertical then left hook then right dot")]),
        HSKWord(id: "L1W013", hanzi: "中", pinyin: "zhōng", english: "Middle / China", level: 1, strokeOrder: [StrokePath(description: "Vertical through rectangle")]),
        HSKWord(id: "L1W014", hanzi: "国", pinyin: "guó", english: "Country", level: 1, strokeOrder: [StrokePath(description: "Outer 囗 enclosure then 玉 inside")]),
        HSKWord(id: "L1W015", hanzi: "一", pinyin: "yī", english: "One", level: 1, strokeOrder: [StrokePath(description: "Single horizontal stroke left to right")]),
        // Day 3
        HSKWord(id: "L1W016", hanzi: "二", pinyin: "èr", english: "Two", level: 1, strokeOrder: [StrokePath(description: "Two horizontal strokes")]),
        HSKWord(id: "L1W017", hanzi: "三", pinyin: "sān", english: "Three", level: 1, strokeOrder: [StrokePath(description: "Three horizontal strokes, bottom longest")]),
        HSKWord(id: "L1W018", hanzi: "四", pinyin: "sì", english: "Four", level: 1, strokeOrder: [StrokePath(description: "Outer frame then two vertical strokes inside")]),
        HSKWord(id: "L1W019", hanzi: "五", pinyin: "wǔ", english: "Five", level: 1, strokeOrder: [StrokePath(description: "Horizontal, left-down, horizontal, then frame closure")]),
        HSKWord(id: "L1W020", hanzi: "六", pinyin: "liù", english: "Six", level: 1, strokeOrder: [StrokePath(description: "Top dot, horizontal, then left and right diagonals")]),
        // Day 4
        HSKWord(id: "L1W021", hanzi: "七", pinyin: "qī", english: "Seven", level: 1, strokeOrder: [StrokePath(description: "Horizontal then vertical with hook")]),
        HSKWord(id: "L1W022", hanzi: "八", pinyin: "bā", english: "Eight", level: 1, strokeOrder: [StrokePath(description: "Left diagonal then right diagonal apart")]),
        HSKWord(id: "L1W023", hanzi: "九", pinyin: "jiǔ", english: "Nine", level: 1, strokeOrder: [StrokePath(description: "Left-down stroke then curved horizontal")]),
        HSKWord(id: "L1W024", hanzi: "十", pinyin: "shí", english: "Ten", level: 1, strokeOrder: [StrokePath(description: "Horizontal then vertical")]),
        HSKWord(id: "L1W025", hanzi: "百", pinyin: "bǎi", english: "Hundred", level: 1, strokeOrder: [StrokePath(description: "Top 一 then 白 below")]),
        // Day 5
        HSKWord(id: "L1W026", hanzi: "上", pinyin: "shàng", english: "Up / above", level: 1, strokeOrder: [StrokePath(description: "Short vertical above horizontal, then long vertical")]),
        HSKWord(id: "L1W027", hanzi: "下", pinyin: "xià", english: "Down / below", level: 1, strokeOrder: [StrokePath(description: "Horizontal then short vertical, then dot below")]),
        HSKWord(id: "L1W028", hanzi: "今天", pinyin: "jīn tiān", english: "Today", level: 1, strokeOrder: [StrokePath(description: "今: top 人 then two strokes; 天: 一 above 大")]),
        HSKWord(id: "L1W029", hanzi: "明天", pinyin: "míng tiān", english: "Tomorrow", level: 1, strokeOrder: [StrokePath(description: "明: 日 left, 月 right; 天: 一 above 大")]),
        HSKWord(id: "L1W030", hanzi: "年", pinyin: "nián", english: "Year", level: 1, strokeOrder: [StrokePath(description: "Top strokes then vertical through middle")]),
        // Day 6
        HSKWord(id: "L1W031", hanzi: "月", pinyin: "yuè", english: "Month / Moon", level: 1, strokeOrder: [StrokePath(description: "Left vertical-curve, top horizontal, two inside strokes")]),
        HSKWord(id: "L1W032", hanzi: "日", pinyin: "rì", english: "Day / Sun", level: 1, strokeOrder: [StrokePath(description: "Rectangle with middle horizontal stroke")]),
        HSKWord(id: "L1W033", hanzi: "水", pinyin: "shuǐ", english: "Water", level: 1, strokeOrder: [StrokePath(description: "Center vertical then left two strokes, right two strokes")]),
        HSKWord(id: "L1W034", hanzi: "火", pinyin: "huǒ", english: "Fire", level: 1, strokeOrder: [StrokePath(description: "Center two strokes then outer left and right")]),
        HSKWord(id: "L1W035", hanzi: "山", pinyin: "shān", english: "Mountain", level: 1, strokeOrder: [StrokePath(description: "Left vertical, middle tall vertical, right vertical")]),
        // Day 7
        HSKWord(id: "L1W036", hanzi: "来", pinyin: "lái", english: "To come", level: 1, strokeOrder: [StrokePath(description: "Top 木 with extra strokes")]),
        HSKWord(id: "L1W037", hanzi: "去", pinyin: "qù", english: "To go", level: 1, strokeOrder: [StrokePath(description: "Top 土 then 厶 below")]),
        HSKWord(id: "L1W038", hanzi: "吃", pinyin: "chī", english: "To eat", level: 1, strokeOrder: [StrokePath(description: "Left 口 then right 乞")]),
        HSKWord(id: "L1W039", hanzi: "喝", pinyin: "hē", english: "To drink", level: 1, strokeOrder: [StrokePath(description: "Left 口 then right 曷")]),
        HSKWord(id: "L1W040", hanzi: "看", pinyin: "kàn", english: "To look / watch", level: 1, strokeOrder: [StrokePath(description: "Top 手 component then 目 below")]),
        // Day 8
        HSKWord(id: "L1W041", hanzi: "说", pinyin: "shuō", english: "To speak / say", level: 1, strokeOrder: [StrokePath(description: "Left 讠then right 兑")]),
        HSKWord(id: "L1W042", hanzi: "听", pinyin: "tīng", english: "To listen", level: 1, strokeOrder: [StrokePath(description: "Left 口 then right 斤")]),
        HSKWord(id: "L1W043", hanzi: "写", pinyin: "xiě", english: "To write", level: 1, strokeOrder: [StrokePath(description: "Top 冖 then 与 below")]),
        HSKWord(id: "L1W044", hanzi: "读", pinyin: "dú", english: "To read", level: 1, strokeOrder: [StrokePath(description: "Left 讠then right 卖")]),
        HSKWord(id: "L1W045", hanzi: "学", pinyin: "xué", english: "To study / learn", level: 1, strokeOrder: [StrokePath(description: "Top 爫 component, 冖 then 子 below")]),
        // Day 9
        HSKWord(id: "L1W046", hanzi: "老师", pinyin: "lǎo shī", english: "Teacher", level: 1, strokeOrder: [StrokePath(description: "老: top 耂 then 匕; 师: 𠂉 then 帀")]),
        HSKWord(id: "L1W047", hanzi: "学生", pinyin: "xué shēng", english: "Student", level: 1, strokeOrder: [StrokePath(description: "学: complex top then 子; 生: 丿then 土")]),
        HSKWord(id: "L1W048", hanzi: "朋友", pinyin: "péng yǒu", english: "Friend", level: 1, strokeOrder: [StrokePath(description: "朋: two 月 side by side; 友: 丿then 又")]),
        HSKWord(id: "L1W049", hanzi: "家", pinyin: "jiā", english: "Home / family", level: 1, strokeOrder: [StrokePath(description: "Top 宀 roof then 豕 pig below")]),
        HSKWord(id: "L1W050", hanzi: "学校", pinyin: "xué xiào", english: "School", level: 1, strokeOrder: [StrokePath(description: "学: complex; 校: 木 left then 交 right")]),
    ]

    // MARK: - Level 1 Sentences (50 sentences = 10 day-units, 5 each)
    static let level1Sentences: [HSKSentence] = [
        // Day 0
        HSKSentence(id: "L1S001", hanzi: "你好吗？", pinyin: "Nǐ hǎo ma?", english: "How are you?", level: 1),
        HSKSentence(id: "L1S002", hanzi: "我很好，谢谢。", pinyin: "Wǒ hěn hǎo, xiè xiè.", english: "I am very well, thank you.", level: 1),
        HSKSentence(id: "L1S003", hanzi: "他是老师。", pinyin: "Tā shì lǎo shī.", english: "He is a teacher.", level: 1),
        HSKSentence(id: "L1S004", hanzi: "她是我的朋友。", pinyin: "Tā shì wǒ de péng yǒu.", english: "She is my friend.", level: 1),
        HSKSentence(id: "L1S005", hanzi: "我不是学生。", pinyin: "Wǒ bù shì xué shēng.", english: "I am not a student.", level: 1),
        // Day 1
        HSKSentence(id: "L1S006", hanzi: "今天是几月几日？", pinyin: "Jīn tiān shì jǐ yuè jǐ rì?", english: "What is today's date?", level: 1),
        HSKSentence(id: "L1S007", hanzi: "我来自中国。", pinyin: "Wǒ lái zì Zhōng guó.", english: "I come from China.", level: 1),
        HSKSentence(id: "L1S008", hanzi: "他去学校了。", pinyin: "Tā qù xué xiào le.", english: "He went to school.", level: 1),
        HSKSentence(id: "L1S009", hanzi: "我们吃饭吧。", pinyin: "Wǒ men chī fàn ba.", english: "Let's eat.", level: 1),
        HSKSentence(id: "L1S010", hanzi: "你喝水吗？", pinyin: "Nǐ hē shuǐ ma?", english: "Do you drink water?", level: 1),
        // Day 2
        HSKSentence(id: "L1S011", hanzi: "这个大，那个小。", pinyin: "Zhè gè dà, nà gè xiǎo.", english: "This one is big, that one is small.", level: 1),
        HSKSentence(id: "L1S012", hanzi: "我看书。", pinyin: "Wǒ kàn shū.", english: "I read a book.", level: 1),
        HSKSentence(id: "L1S013", hanzi: "他说中文。", pinyin: "Tā shuō Zhōng wén.", english: "He speaks Chinese.", level: 1),
        HSKSentence(id: "L1S014", hanzi: "我听音乐。", pinyin: "Wǒ tīng yīn yuè.", english: "I listen to music.", level: 1),
        HSKSentence(id: "L1S015", hanzi: "她写汉字。", pinyin: "Tā xiě Hàn zì.", english: "She writes Chinese characters.", level: 1),
        // Day 3
        HSKSentence(id: "L1S016", hanzi: "我的家很大。", pinyin: "Wǒ de jiā hěn dà.", english: "My home is very big.", level: 1),
        HSKSentence(id: "L1S017", hanzi: "明天我来。", pinyin: "Míng tiān wǒ lái.", english: "I will come tomorrow.", level: 1),
        HSKSentence(id: "L1S018", hanzi: "他学中文。", pinyin: "Tā xué Zhōng wén.", english: "He studies Chinese.", level: 1),
        HSKSentence(id: "L1S019", hanzi: "这是我的书。", pinyin: "Zhè shì wǒ de shū.", english: "This is my book.", level: 1),
        HSKSentence(id: "L1S020", hanzi: "中国很大。", pinyin: "Zhōng guó hěn dà.", english: "China is very big.", level: 1),
        // Day 4
        HSKSentence(id: "L1S021", hanzi: "我读中文书。", pinyin: "Wǒ dú Zhōng wén shū.", english: "I read a Chinese book.", level: 1),
        HSKSentence(id: "L1S022", hanzi: "山上有水。", pinyin: "Shān shàng yǒu shuǐ.", english: "There is water on the mountain.", level: 1),
        HSKSentence(id: "L1S023", hanzi: "他是我的老师。", pinyin: "Tā shì wǒ de lǎo shī.", english: "He is my teacher.", level: 1),
        HSKSentence(id: "L1S024", hanzi: "今年我学中文。", pinyin: "Jīn nián wǒ xué Zhōng wén.", english: "This year I study Chinese.", level: 1),
        HSKSentence(id: "L1S025", hanzi: "你好，我是小明。", pinyin: "Nǐ hǎo, wǒ shì Xiǎo Míng.", english: "Hello, I am Xiao Ming.", level: 1),
        // Day 5-9 (cycle 2)
        HSKSentence(id: "L1S026", hanzi: "她去哪里？", pinyin: "Tā qù nǎ lǐ?", english: "Where is she going?", level: 1),
        HSKSentence(id: "L1S027", hanzi: "我们是朋友。", pinyin: "Wǒ men shì péng yǒu.", english: "We are friends.", level: 1),
        HSKSentence(id: "L1S028", hanzi: "这是什么？", pinyin: "Zhè shì shén me?", english: "What is this?", level: 1),
        HSKSentence(id: "L1S029", hanzi: "他有一个家。", pinyin: "Tā yǒu yī gè jiā.", english: "He has a home.", level: 1),
        HSKSentence(id: "L1S030", hanzi: "下面有火。", pinyin: "Xià miàn yǒu huǒ.", english: "There is fire below.", level: 1),
        HSKSentence(id: "L1S031", hanzi: "我写了三个字。", pinyin: "Wǒ xiě le sān gè zì.", english: "I wrote three characters.", level: 1),
        HSKSentence(id: "L1S032", hanzi: "今天是星期一。", pinyin: "Jīn tiān shì xīng qī yī.", english: "Today is Monday.", level: 1),
        HSKSentence(id: "L1S033", hanzi: "他不来了。", pinyin: "Tā bù lái le.", english: "He is not coming anymore.", level: 1),
        HSKSentence(id: "L1S034", hanzi: "你吃了吗？", pinyin: "Nǐ chī le ma?", english: "Have you eaten?", level: 1),
        HSKSentence(id: "L1S035", hanzi: "学校很大。", pinyin: "Xué xiào hěn dà.", english: "The school is very big.", level: 1),
        HSKSentence(id: "L1S036", hanzi: "我有五个朋友。", pinyin: "Wǒ yǒu wǔ gè péng yǒu.", english: "I have five friends.", level: 1),
        HSKSentence(id: "L1S037", hanzi: "他是中国人。", pinyin: "Tā shì Zhōng guó rén.", english: "He is Chinese.", level: 1),
        HSKSentence(id: "L1S038", hanzi: "老师说得好。", pinyin: "Lǎo shī shuō de hǎo.", english: "The teacher speaks well.", level: 1),
        HSKSentence(id: "L1S039", hanzi: "我明天去学校。", pinyin: "Wǒ míng tiān qù xué xiào.", english: "I will go to school tomorrow.", level: 1),
        HSKSentence(id: "L1S040", hanzi: "她听老师说话。", pinyin: "Tā tīng lǎo shī shuō huà.", english: "She listens to the teacher speak.", level: 1),
        HSKSentence(id: "L1S041", hanzi: "书在上面。", pinyin: "Shū zài shàng miàn.", english: "The book is on top.", level: 1),
        HSKSentence(id: "L1S042", hanzi: "我们学汉字。", pinyin: "Wǒ men xué Hàn zì.", english: "We learn Chinese characters.", level: 1),
        HSKSentence(id: "L1S043", hanzi: "这个月我学了很多。", pinyin: "Zhè gè yuè wǒ xué le hěn duō.", english: "This month I learned a lot.", level: 1),
        HSKSentence(id: "L1S044", hanzi: "你叫什么名字？", pinyin: "Nǐ jiào shén me míng zì?", english: "What is your name?", level: 1),
        HSKSentence(id: "L1S045", hanzi: "我喜欢喝水。", pinyin: "Wǒ xǐ huān hē shuǐ.", english: "I like to drink water.", level: 1),
        HSKSentence(id: "L1S046", hanzi: "我家在山下。", pinyin: "Wǒ jiā zài shān xià.", english: "My home is at the foot of the mountain.", level: 1),
        HSKSentence(id: "L1S047", hanzi: "你是哪国人？", pinyin: "Nǐ shì nǎ guó rén?", english: "What country are you from?", level: 1),
        HSKSentence(id: "L1S048", hanzi: "今年是哪一年？", pinyin: "Jīn nián shì nǎ yī nián?", english: "Which year is this year?", level: 1),
        HSKSentence(id: "L1S049", hanzi: "他看我写字。", pinyin: "Tā kàn wǒ xiě zì.", english: "He watches me write characters.", level: 1),
        HSKSentence(id: "L1S050", hanzi: "我们都是学生。", pinyin: "Wǒ men dōu shì xué shēng.", english: "We are all students.", level: 1),
    ]

    // MARK: - Level 2 Words (sample — 50 words = 10 days)
    static let level2Words: [HSKWord] = [
        HSKWord(id: "L2W001", hanzi: "但是", pinyin: "dàn shì", english: "But / however", level: 2, strokeOrder: [StrokePath(description: "但: 亻left, 旦 right; 是: 日 top, 正 bottom")]),
        HSKWord(id: "L2W002", hanzi: "因为", pinyin: "yīn wèi", english: "Because", level: 2, strokeOrder: [StrokePath(description: "因: 囗 with 大 inside; 为: curved strokes")]),
        HSKWord(id: "L2W003", hanzi: "所以", pinyin: "suǒ yǐ", english: "Therefore", level: 2, strokeOrder: [StrokePath(description: "所: 户 left, 斤 right; 以: left 以 strokes")]),
        HSKWord(id: "L2W004", hanzi: "如果", pinyin: "rú guǒ", english: "If", level: 2, strokeOrder: [StrokePath(description: "如: 女 left, 口 right; 果: 日 top, 木 bottom")]),
        HSKWord(id: "L2W005", hanzi: "虽然", pinyin: "suī rán", english: "Although", level: 2, strokeOrder: [StrokePath(description: "虽: 虫 bottom; 然: 夕 top-right, 灬 bottom")]),
        HSKWord(id: "L2W006", hanzi: "开始", pinyin: "kāi shǐ", english: "To start / begin", level: 2, strokeOrder: [StrokePath(description: "开: 廾 bottom; 始: 女 left, 台 right")]),
        HSKWord(id: "L2W007", hanzi: "结束", pinyin: "jié shù", english: "To end / finish", level: 2, strokeOrder: [StrokePath(description: "结: 纟left, 吉 right; 束: 木 with 口")]),
        HSKWord(id: "L2W008", hanzi: "问题", pinyin: "wèn tí", english: "Question / problem", level: 2, strokeOrder: [StrokePath(description: "问: 门 outer, 口 inside; 题: 是 left, 页 right")]),
        HSKWord(id: "L2W009", hanzi: "回答", pinyin: "huí dá", english: "To answer / reply", level: 2, strokeOrder: [StrokePath(description: "回: 囗 outer with 口 inside; 答: 竹 top, 合 bottom")]),
        HSKWord(id: "L2W010", hanzi: "了解", pinyin: "liǎo jiě", english: "To understand", level: 2, strokeOrder: [StrokePath(description: "了: hook stroke; 解: 角 left, 刀 and 牛 right")]),
        HSKWord(id: "L2W011", hanzi: "工作", pinyin: "gōng zuò", english: "Work / job", level: 2, strokeOrder: [StrokePath(description: "工: three horizontal strokes; 作: 亻left, 乍 right")]),
        HSKWord(id: "L2W012", hanzi: "生活", pinyin: "shēng huó", english: "Life / to live", level: 2, strokeOrder: [StrokePath(description: "生: 丿then 土; 活: 氵left, 舌 right")]),
        HSKWord(id: "L2W013", hanzi: "时间", pinyin: "shí jiān", english: "Time", level: 2, strokeOrder: [StrokePath(description: "时: 日 left, 寸 right; 间: 门 outer, 日 inside")]),
        HSKWord(id: "L2W014", hanzi: "地方", pinyin: "dì fāng", english: "Place", level: 2, strokeOrder: [StrokePath(description: "地: 土 left, 也 right; 方: dot then 方 frame")]),
        HSKWord(id: "L2W015", hanzi: "事情", pinyin: "shì qíng", english: "Thing / matter", level: 2, strokeOrder: [StrokePath(description: "事: complex vertical strokes; 情: 忄left, 青 right")]),
        HSKWord(id: "L2W016", hanzi: "觉得", pinyin: "jué de", english: "To feel / think", level: 2, strokeOrder: [StrokePath(description: "觉: 爫 top, 见 bottom; 得: 彳left, 旦 right")]),
        HSKWord(id: "L2W017", hanzi: "认为", pinyin: "rèn wéi", english: "To think / consider", level: 2, strokeOrder: [StrokePath(description: "认: 讠left, 人 right; 为: curved strokes")]),
        HSKWord(id: "L2W018", hanzi: "希望", pinyin: "xī wàng", english: "To hope / wish", level: 2, strokeOrder: [StrokePath(description: "希: 爻 top, 布 bottom; 望: 亡 top, 月 and 王 bottom")]),
        HSKWord(id: "L2W019", hanzi: "帮助", pinyin: "bāng zhù", english: "To help", level: 2, strokeOrder: [StrokePath(description: "帮: 邦 top, 巾 bottom; 助: 且 left, 力 right")]),
        HSKWord(id: "L2W020", hanzi: "需要", pinyin: "xū yào", english: "To need", level: 2, strokeOrder: [StrokePath(description: "需: 雨 top, 而 bottom; 要: 覀 top, 女 bottom")]),
        HSKWord(id: "L2W021", hanzi: "身体", pinyin: "shēn tǐ", english: "Body / health", level: 2, strokeOrder: [StrokePath(description: "身: curved strokes; 体: 亻left, 本 right")]),
        HSKWord(id: "L2W022", hanzi: "医院", pinyin: "yī yuàn", english: "Hospital", level: 2, strokeOrder: [StrokePath(description: "医: 匸 outer, 矢 inside; 院: 阝left, 完 right")]),
        HSKWord(id: "L2W023", hanzi: "药", pinyin: "yào", english: "Medicine", level: 2, strokeOrder: [StrokePath(description: "药: 艹 top, 约 bottom")]),
        HSKWord(id: "L2W024", hanzi: "健康", pinyin: "jiàn kāng", english: "Healthy", level: 2, strokeOrder: [StrokePath(description: "健: 亻left, 建 right; 康: 广 top, 隶 below")]),
        HSKWord(id: "L2W025", hanzi: "高兴", pinyin: "gāo xìng", english: "Happy", level: 2, strokeOrder: [StrokePath(description: "高: 亠 top, 口 middle, 口 bottom; 兴: top strokes, 八 bottom")]),
        HSKWord(id: "L2W026", hanzi: "漂亮", pinyin: "piào liàng", english: "Beautiful", level: 2, strokeOrder: [StrokePath(description: "漂: 氵left, 票 right; 亮: 亠 top, 几 and 口 below")]),
        HSKWord(id: "L2W027", hanzi: "有意思", pinyin: "yǒu yì si", english: "Interesting", level: 2, strokeOrder: [StrokePath(description: "有: 月 with strokes; 意: 音 top, 心 bottom; 思: 田 top, 心 bottom")]),
        HSKWord(id: "L2W028", hanzi: "重要", pinyin: "zhòng yào", english: "Important", level: 2, strokeOrder: [StrokePath(description: "重: 千 top, 里 below; 要: 覀 top, 女 bottom")]),
        HSKWord(id: "L2W029", hanzi: "容易", pinyin: "róng yì", english: "Easy", level: 2, strokeOrder: [StrokePath(description: "容: 宀 top, 谷 below; 易: 日 top, 勿 below")]),
        HSKWord(id: "L2W030", hanzi: "困难", pinyin: "kùn nán", english: "Difficult", level: 2, strokeOrder: [StrokePath(description: "困: 囗 outer, 木 inside; 难: 又 left, 隹 right")]),
        HSKWord(id: "L2W031", hanzi: "方法", pinyin: "fāng fǎ", english: "Method / way", level: 2, strokeOrder: [StrokePath(description: "方: dot then frame; 法: 氵left, 去 right")]),
        HSKWord(id: "L2W032", hanzi: "经验", pinyin: "jīng yàn", english: "Experience", level: 2, strokeOrder: [StrokePath(description: "经: 纟left, 工 center, 又 right; 验: 马 left, 佥 right")]),
        HSKWord(id: "L2W033", hanzi: "机会", pinyin: "jī huì", english: "Opportunity", level: 2, strokeOrder: [StrokePath(description: "机: 木 left, 几 right; 会: 人 top, 云 below")]),
        HSKWord(id: "L2W034", hanzi: "发展", pinyin: "fā zhǎn", english: "To develop", level: 2, strokeOrder: [StrokePath(description: "发: complex strokes; 展: 尸 top, 共 below")]),
        HSKWord(id: "L2W035", hanzi: "关系", pinyin: "guān xi", english: "Relationship", level: 2, strokeOrder: [StrokePath(description: "关: 䒑 top, 大 and 丨below; 系: complex strokes")]),
        HSKWord(id: "L2W036", hanzi: "环境", pinyin: "huán jìng", english: "Environment", level: 2, strokeOrder: [StrokePath(description: "环: 王 left, 不 and frame right; 境: 土 left, 竟 right")]),
        HSKWord(id: "L2W037", hanzi: "政府", pinyin: "zhèng fǔ", english: "Government", level: 2, strokeOrder: [StrokePath(description: "政: 正 left, 攴 right; 府: 广 top, 付 below")]),
        HSKWord(id: "L2W038", hanzi: "社会", pinyin: "shè huì", english: "Society", level: 2, strokeOrder: [StrokePath(description: "社: 礻left, 土 right; 会: 人 top, 云 below")]),
        HSKWord(id: "L2W039", hanzi: "经济", pinyin: "jīng jì", english: "Economy", level: 2, strokeOrder: [StrokePath(description: "经: 纟left, complex right; 济: 氵left, 齐 right")]),
        HSKWord(id: "L2W040", hanzi: "文化", pinyin: "wén huà", english: "Culture", level: 2, strokeOrder: [StrokePath(description: "文: 亠 top, diagonal strokes; 化: 亻left, 匕 right")]),
        HSKWord(id: "L2W041", hanzi: "历史", pinyin: "lì shǐ", english: "History", level: 2, strokeOrder: [StrokePath(description: "历: 厂 top, 力 bottom; 史: 口 top, 又 bottom")]),
        HSKWord(id: "L2W042", hanzi: "科学", pinyin: "kē xué", english: "Science", level: 2, strokeOrder: [StrokePath(description: "科: 禾 left, 斗 right; 学: complex top, 子 bottom")]),
        HSKWord(id: "L2W043", hanzi: "技术", pinyin: "jì shù", english: "Technology", level: 2, strokeOrder: [StrokePath(description: "技: 扌left, 支 right; 术: 木 with dot")]),
        HSKWord(id: "L2W044", hanzi: "网络", pinyin: "wǎng luò", english: "Network / internet", level: 2, strokeOrder: [StrokePath(description: "网: 冂 outer, 乂乂 inside; 络: 纟left, 各 right")]),
        HSKWord(id: "L2W045", hanzi: "电脑", pinyin: "diàn nǎo", english: "Computer", level: 2, strokeOrder: [StrokePath(description: "电: 日 with hook; 脑: 月 left, 𠙳 right")]),
        HSKWord(id: "L2W046", hanzi: "手机", pinyin: "shǒu jī", english: "Mobile phone", level: 2, strokeOrder: [StrokePath(description: "手: 三 strokes then hook; 机: 木 left, 几 right")]),
        HSKWord(id: "L2W047", hanzi: "照片", pinyin: "zhào piàn", english: "Photo", level: 2, strokeOrder: [StrokePath(description: "照: 日 and 刀 and 口 top, 灬 bottom; 片: vertical then frame")]),
        HSKWord(id: "L2W048", hanzi: "音乐", pinyin: "yīn yuè", english: "Music", level: 2, strokeOrder: [StrokePath(description: "音: 立 top, 日 bottom; 乐: 白 top, 木 bottom")]),
        HSKWord(id: "L2W049", hanzi: "电影", pinyin: "diàn yǐng", english: "Movie", level: 2, strokeOrder: [StrokePath(description: "电: 日 with hook; 影: 景 left, 彡 right")]),
        HSKWord(id: "L2W050", hanzi: "体育", pinyin: "tǐ yù", english: "Sports / physical education", level: 2, strokeOrder: [StrokePath(description: "体: 亻left, 本 right; 育: 亠 and 月 with dot")]),
    ]

    // MARK: - Level 2 Sentences
    static let level2Sentences: [HSKSentence] = [
        HSKSentence(id: "L2S001", hanzi: "他工作很努力。", pinyin: "Tā gōng zuò hěn nǔ lì.", english: "He works very hard.", level: 2),
        HSKSentence(id: "L2S002", hanzi: "我需要帮助。", pinyin: "Wǒ xū yào bāng zhù.", english: "I need help.", level: 2),
        HSKSentence(id: "L2S003", hanzi: "因为下雨，所以我没去。", pinyin: "Yīn wèi xià yǔ, suǒ yǐ wǒ méi qù.", english: "Because it rained, I didn't go.", level: 2),
        HSKSentence(id: "L2S004", hanzi: "你觉得这个容易吗？", pinyin: "Nǐ jué de zhè gè róng yì ma?", english: "Do you think this is easy?", level: 2),
        HSKSentence(id: "L2S005", hanzi: "他的身体很健康。", pinyin: "Tā de shēn tǐ hěn jiàn kāng.", english: "His body is very healthy.", level: 2),
        HSKSentence(id: "L2S006", hanzi: "这个问题很重要。", pinyin: "Zhè gè wèn tí hěn zhòng yào.", english: "This question is very important.", level: 2),
        HSKSentence(id: "L2S007", hanzi: "我希望你高兴。", pinyin: "Wǒ xī wàng nǐ gāo xìng.", english: "I hope you are happy.", level: 2),
        HSKSentence(id: "L2S008", hanzi: "他们的关系很好。", pinyin: "Tā men de guān xi hěn hǎo.", english: "Their relationship is very good.", level: 2),
        HSKSentence(id: "L2S009", hanzi: "我喜欢看电影。", pinyin: "Wǒ xǐ huān kàn diàn yǐng.", english: "I like watching movies.", level: 2),
        HSKSentence(id: "L2S010", hanzi: "他的回答很有意思。", pinyin: "Tā de huí dá hěn yǒu yì si.", english: "His answer is very interesting.", level: 2),
        HSKSentence(id: "L2S011", hanzi: "虽然困难，但是我要继续。", pinyin: "Suī rán kùn nán, dàn shì wǒ yào jì xù.", english: "Although it's difficult, I will continue.", level: 2),
        HSKSentence(id: "L2S012", hanzi: "科学技术发展很快。", pinyin: "Kē xué jì shù fā zhǎn hěn kuài.", english: "Science and technology develop very fast.", level: 2),
        HSKSentence(id: "L2S013", hanzi: "我去医院看病。", pinyin: "Wǒ qù yī yuàn kàn bìng.", english: "I go to the hospital to see a doctor.", level: 2),
        HSKSentence(id: "L2S014", hanzi: "如果你需要，我可以帮你。", pinyin: "Rú guǒ nǐ xū yào, wǒ kě yǐ bāng nǐ.", english: "If you need, I can help you.", level: 2),
        HSKSentence(id: "L2S015", hanzi: "我认为这个方法很好。", pinyin: "Wǒ rèn wéi zhè gè fāng fǎ hěn hǎo.", english: "I think this method is very good.", level: 2),
        HSKSentence(id: "L2S016", hanzi: "他的经验很丰富。", pinyin: "Tā de jīng yàn hěn fēng fù.", english: "His experience is very rich.", level: 2),
        HSKSentence(id: "L2S017", hanzi: "这是一个好机会。", pinyin: "Zhè shì yī gè hǎo jī huì.", english: "This is a good opportunity.", level: 2),
        HSKSentence(id: "L2S018", hanzi: "中国的历史很长。", pinyin: "Zhōng guó de lì shǐ hěn cháng.", english: "China's history is very long.", level: 2),
        HSKSentence(id: "L2S019", hanzi: "我用手机照了很多照片。", pinyin: "Wǒ yòng shǒu jī zhào le hěn duō zhào piàn.", english: "I took many photos with my mobile phone.", level: 2),
        HSKSentence(id: "L2S020", hanzi: "他喜欢听音乐和看电影。", pinyin: "Tā xǐ huān tīng yīn yuè hé kàn diàn yǐng.", english: "He likes listening to music and watching movies.", level: 2),
        HSKSentence(id: "L2S021", hanzi: "保护环境是每个人的责任。", pinyin: "Bǎo hù huán jìng shì měi gè rén de zé rèn.", english: "Protecting the environment is everyone's responsibility.", level: 2),
        HSKSentence(id: "L2S022", hanzi: "社会在不断发展。", pinyin: "Shè huì zài bù duàn fā zhǎn.", english: "Society is constantly developing.", level: 2),
        HSKSentence(id: "L2S023", hanzi: "我了解他的情况。", pinyin: "Wǒ liǎo jiě tā de qíng kuàng.", english: "I understand his situation.", level: 2),
        HSKSentence(id: "L2S024", hanzi: "他们开始了新的生活。", pinyin: "Tā men kāi shǐ le xīn de shēng huó.", english: "They started a new life.", level: 2),
        HSKSentence(id: "L2S025", hanzi: "工作结束后，我去锻炼身体。", pinyin: "Gōng zuò jié shù hòu, wǒ qù duàn liàn shēn tǐ.", english: "After work ends, I go exercise.", level: 2),
        HSKSentence(id: "L2S026", hanzi: "他用电脑上网。", pinyin: "Tā yòng diàn nǎo shàng wǎng.", english: "He uses the computer to go online.", level: 2),
        HSKSentence(id: "L2S027", hanzi: "网络让世界变小了。", pinyin: "Wǎng luò ràng shì jiè biàn xiǎo le.", english: "The internet has made the world smaller.", level: 2),
        HSKSentence(id: "L2S028", hanzi: "这件事情很复杂。", pinyin: "Zhè jiàn shì qíng hěn fù zá.", english: "This matter is very complicated.", level: 2),
        HSKSentence(id: "L2S029", hanzi: "时间过得很快。", pinyin: "Shí jiān guò de hěn kuài.", english: "Time passes very quickly.", level: 2),
        HSKSentence(id: "L2S030", hanzi: "他在一个好地方工作。", pinyin: "Tā zài yī gè hǎo dì fāng gōng zuò.", english: "He works in a good place.", level: 2),
        HSKSentence(id: "L2S031", hanzi: "中国文化很有意思。", pinyin: "Zhōng guó wén huà hěn yǒu yì si.", english: "Chinese culture is very interesting.", level: 2),
        HSKSentence(id: "L2S032", hanzi: "他吃了医生开的药。", pinyin: "Tā chī le yī shēng kāi de yào.", english: "He took the medicine prescribed by the doctor.", level: 2),
        HSKSentence(id: "L2S033", hanzi: "她长得很漂亮。", pinyin: "Tā zhǎng de hěn piào liàng.", english: "She looks very beautiful.", level: 2),
        HSKSentence(id: "L2S034", hanzi: "经济发展带来了很多机会。", pinyin: "Jīng jì fā zhǎn dài lái le hěn duō jī huì.", english: "Economic development has brought many opportunities.", level: 2),
        HSKSentence(id: "L2S035", hanzi: "政府要解决这个问题。", pinyin: "Zhèng fǔ yào jiě jué zhè gè wèn tí.", english: "The government needs to solve this problem.", level: 2),
        HSKSentence(id: "L2S036", hanzi: "他参加了体育比赛。", pinyin: "Tā cān jiā le tǐ yù bǐ sài.", english: "He participated in a sports competition.", level: 2),
        HSKSentence(id: "L2S037", hanzi: "学习需要时间和努力。", pinyin: "Xué xí xū yào shí jiān hé nǔ lì.", english: "Learning requires time and effort.", level: 2),
        HSKSentence(id: "L2S038", hanzi: "这个地方风景很漂亮。", pinyin: "Zhè gè dì fāng fēng jǐng hěn piào liàng.", english: "The scenery in this place is very beautiful.", level: 2),
        HSKSentence(id: "L2S039", hanzi: "他对这个问题回答得很好。", pinyin: "Tā duì zhè gè wèn tí huí dá de hěn hǎo.", english: "He answered this question very well.", level: 2),
        HSKSentence(id: "L2S040", hanzi: "虽然我很忙，但是我很高兴。", pinyin: "Suī rán wǒ hěn máng, dàn shì wǒ hěn gāo xìng.", english: "Although I'm very busy, I'm very happy.", level: 2),
        HSKSentence(id: "L2S041", hanzi: "我认为体育对健康很重要。", pinyin: "Wǒ rèn wéi tǐ yù duì jiàn kāng hěn zhòng yào.", english: "I think sports are very important for health.", level: 2),
        HSKSentence(id: "L2S042", hanzi: "他们了解彼此的文化。", pinyin: "Tā men liǎo jiě bǐ cǐ de wén huà.", english: "They understand each other's culture.", level: 2),
        HSKSentence(id: "L2S043", hanzi: "如果有机会，我想去中国。", pinyin: "Rú guǒ yǒu jī huì, wǒ xiǎng qù Zhōng guó.", english: "If there's an opportunity, I want to go to China.", level: 2),
        HSKSentence(id: "L2S044", hanzi: "这个科学实验很有意思。", pinyin: "Zhè gè kē xué shí yàn hěn yǒu yì si.", english: "This science experiment is very interesting.", level: 2),
        HSKSentence(id: "L2S045", hanzi: "他希望找到好工作。", pinyin: "Tā xī wàng zhǎo dào hǎo gōng zuò.", english: "He hopes to find a good job.", level: 2),
        HSKSentence(id: "L2S046", hanzi: "我需要更多时间思考。", pinyin: "Wǒ xū yào gèng duō shí jiān sī kǎo.", english: "I need more time to think.", level: 2),
        HSKSentence(id: "L2S047", hanzi: "这个方法容易学习。", pinyin: "Zhè gè fāng fǎ róng yì xué xí.", english: "This method is easy to learn.", level: 2),
        HSKSentence(id: "L2S048", hanzi: "帮助别人是好事。", pinyin: "Bāng zhù bié rén shì hǎo shì.", english: "Helping others is a good thing.", level: 2),
        HSKSentence(id: "L2S049", hanzi: "他对历史有很多了解。", pinyin: "Tā duì lì shǐ yǒu hěn duō liǎo jiě.", english: "He has a lot of knowledge about history.", level: 2),
        HSKSentence(id: "L2S050", hanzi: "社会需要每个人的努力。", pinyin: "Shè huì xū yào měi gè rén de nǔ lì.", english: "Society needs the effort of everyone.", level: 2),
    ]

    // MARK: - Level 3 Words (sample — 50 words = 10 days)
    static let level3Words: [HSKWord] = [
        HSKWord(id: "L3W001", hanzi: "尽管", pinyin: "jǐn guǎn", english: "Even though / despite", level: 3, strokeOrder: [StrokePath(description: "尽: 尺 with strokes; 管: 竹 top, 官 bottom")]),
        HSKWord(id: "L3W002", hanzi: "而且", pinyin: "ér qiě", english: "Moreover / and also", level: 3, strokeOrder: [StrokePath(description: "而: horizontal with hanging strokes; 且: layered horizontals")]),
        HSKWord(id: "L3W003", hanzi: "对于", pinyin: "duì yú", english: "Regarding / for", level: 3, strokeOrder: [StrokePath(description: "对: 又 left, 寸 right; 于: 二 with vertical hook")]),
        HSKWord(id: "L3W004", hanzi: "逐渐", pinyin: "zhú jiàn", english: "Gradually", level: 3, strokeOrder: [StrokePath(description: "逐: 豕 with 辶; 渐: 氵left, 斩 right")]),
        HSKWord(id: "L3W005", hanzi: "显然", pinyin: "xiǎn rán", english: "Obviously", level: 3, strokeOrder: [StrokePath(description: "显: 日 top, 业 bottom; 然: 夕 and 灬 components")]),
        HSKWord(id: "L3W006", hanzi: "承认", pinyin: "chéng rèn", english: "To admit / acknowledge", level: 3, strokeOrder: [StrokePath(description: "承: complex strokes; 认: 讠left, 人 right")]),
        HSKWord(id: "L3W007", hanzi: "强调", pinyin: "qiáng diào", english: "To emphasize", level: 3, strokeOrder: [StrokePath(description: "强: 弓 left, 虽 right; 调: 讠left, 周 right")]),
        HSKWord(id: "L3W008", hanzi: "建议", pinyin: "jiàn yì", english: "To suggest / suggestion", level: 3, strokeOrder: [StrokePath(description: "建: 廴 with 聿; 议: 讠left, 义 right")]),
        HSKWord(id: "L3W009", hanzi: "解决", pinyin: "jiě jué", english: "To solve / resolve", level: 3, strokeOrder: [StrokePath(description: "解: 角 left, 刀牛 right; 决: 氵left, 夬 right")]),
        HSKWord(id: "L3W010", hanzi: "影响", pinyin: "yǐng xiǎng", english: "To influence / impact", level: 3, strokeOrder: [StrokePath(description: "影: 景 left, 彡 right; 响: 口 left, 向 right")]),
        HSKWord(id: "L3W011", hanzi: "态度", pinyin: "tài dù", english: "Attitude", level: 3, strokeOrder: [StrokePath(description: "态: 能 top, 心 bottom; 度: 广 top, 廿又 inside")]),
        HSKWord(id: "L3W012", hanzi: "观点", pinyin: "guān diǎn", english: "Point of view", level: 3, strokeOrder: [StrokePath(description: "观: 又 left, 见 right; 点: 占 top, 灬 bottom")]),
        HSKWord(id: "L3W013", hanzi: "原因", pinyin: "yuán yīn", english: "Reason / cause", level: 3, strokeOrder: [StrokePath(description: "原: 厂 top, 泉 below; 因: 囗 outer, 大 inside")]),
        HSKWord(id: "L3W014", hanzi: "结果", pinyin: "jié guǒ", english: "Result / outcome", level: 3, strokeOrder: [StrokePath(description: "结: 纟left, 吉 right; 果: 日 top, 木 bottom")]),
        HSKWord(id: "L3W015", hanzi: "目的", pinyin: "mù dì", english: "Purpose / goal", level: 3, strokeOrder: [StrokePath(description: "目: rectangle with middle stroke; 的: 白 left, 勺 right")]),
        HSKWord(id: "L3W016", hanzi: "现象", pinyin: "xiàn xiàng", english: "Phenomenon", level: 3, strokeOrder: [StrokePath(description: "现: 王 left, 见 right; 象: 豕 with trunk")]),
        HSKWord(id: "L3W017", hanzi: "情况", pinyin: "qíng kuàng", english: "Situation / condition", level: 3, strokeOrder: [StrokePath(description: "情: 忄left, 青 right; 况: 氵left, 兄 right")]),
        HSKWord(id: "L3W018", hanzi: "过程", pinyin: "guò chéng", english: "Process", level: 3, strokeOrder: [StrokePath(description: "过: 辶 with 寸; 程: 禾 left, 呈 right")]),
        HSKWord(id: "L3W019", hanzi: "标准", pinyin: "biāo zhǔn", english: "Standard / criterion", level: 3, strokeOrder: [StrokePath(description: "标: 木 left, 票 right; 准: 氵left, 隹 right")]),
        HSKWord(id: "L3W020", hanzi: "效果", pinyin: "xiào guǒ", english: "Effect / result", level: 3, strokeOrder: [StrokePath(description: "效: 交 left, 攴 right; 果: 日 top, 木 bottom")]),
        HSKWord(id: "L3W021", hanzi: "价值", pinyin: "jià zhí", english: "Value / worth", level: 3, strokeOrder: [StrokePath(description: "价: 亻left, 介 right; 值: 亻left, 直 right")]),
        HSKWord(id: "L3W022", hanzi: "意义", pinyin: "yì yì", english: "Meaning / significance", level: 3, strokeOrder: [StrokePath(description: "意: 音 top, 心 bottom; 义: dot above 乂")]),
        HSKWord(id: "L3W023", hanzi: "作用", pinyin: "zuò yòng", english: "Function / effect", level: 3, strokeOrder: [StrokePath(description: "作: 亻left, 乍 right; 用: 月 with center stroke")]),
        HSKWord(id: "L3W024", hanzi: "特点", pinyin: "tè diǎn", english: "Characteristic", level: 3, strokeOrder: [StrokePath(description: "特: 牛 left, 寺 right; 点: 占 top, 灬 bottom")]),
        HSKWord(id: "L3W025", hanzi: "基础", pinyin: "jī chǔ", english: "Foundation / basis", level: 3, strokeOrder: [StrokePath(description: "基: 其 top, 土 bottom; 础: 石 left, 楚 right")]),
        HSKWord(id: "L3W026", hanzi: "条件", pinyin: "tiáo jiàn", english: "Condition / requirement", level: 3, strokeOrder: [StrokePath(description: "条: 夂 top, 木 bottom; 件: 亻left, 牛 right")]),
        HSKWord(id: "L3W027", hanzi: "范围", pinyin: "fàn wéi", english: "Scope / range", level: 3, strokeOrder: [StrokePath(description: "范: 艹 top, 氾 bottom; 围: 囗 outer, 韦 inside")]),
        HSKWord(id: "L3W028", hanzi: "程度", pinyin: "chéng dù", english: "Degree / extent", level: 3, strokeOrder: [StrokePath(description: "程: 禾 left, 呈 right; 度: 广 top, 廿又 inside")]),
        HSKWord(id: "L3W029", hanzi: "性质", pinyin: "xìng zhì", english: "Nature / quality", level: 3, strokeOrder: [StrokePath(description: "性: 忄left, 生 right; 质: 斤 and 贝 components")]),
        HSKWord(id: "L3W030", hanzi: "优势", pinyin: "yōu shì", english: "Advantage", level: 3, strokeOrder: [StrokePath(description: "优: 亻left, 忧 right; 势: 执 top, 力 bottom")]),
        HSKWord(id: "L3W031", hanzi: "矛盾", pinyin: "máo dùn", english: "Contradiction", level: 3, strokeOrder: [StrokePath(description: "矛: top hook with strokes; 盾: 厂 top, 十目 below")]),
        HSKWord(id: "L3W032", hanzi: "压力", pinyin: "yā lì", english: "Pressure / stress", level: 3, strokeOrder: [StrokePath(description: "压: 厂 top, 土 bottom; 力: curved stroke with hook")]),
        HSKWord(id: "L3W033", hanzi: "竞争", pinyin: "jìng zhēng", english: "Competition", level: 3, strokeOrder: [StrokePath(description: "竞: 立 top, 兄 bottom; 争: 爫 top, 争 strokes")]),
        HSKWord(id: "L3W034", hanzi: "合作", pinyin: "hé zuò", english: "Cooperation", level: 3, strokeOrder: [StrokePath(description: "合: 人 top, 口 bottom; 作: 亻left, 乍 right")]),
        HSKWord(id: "L3W035", hanzi: "交流", pinyin: "jiāo liú", english: "Exchange / communication", level: 3, strokeOrder: [StrokePath(description: "交: 亠 top, 乂 bottom; 流: 氵left, 㐬 right")]),
        HSKWord(id: "L3W036", hanzi: "讨论", pinyin: "tǎo lùn", english: "To discuss", level: 3, strokeOrder: [StrokePath(description: "讨: 讠left, 寸 right; 论: 讠left, 仑 right")]),
        HSKWord(id: "L3W037", hanzi: "分析", pinyin: "fēn xī", english: "To analyze", level: 3, strokeOrder: [StrokePath(description: "分: 八 top, 刀 bottom; 析: 木 left, 斤 right")]),
        HSKWord(id: "L3W038", hanzi: "总结", pinyin: "zǒng jié", english: "To summarize / summary", level: 3, strokeOrder: [StrokePath(description: "总: 囱 top, 心 bottom; 结: 纟left, 吉 right")]),
        HSKWord(id: "L3W039", hanzi: "比较", pinyin: "bǐ jiào", english: "To compare / relatively", level: 3, strokeOrder: [StrokePath(description: "比: two 匕; 较: 车 left, 交 right")]),
        HSKWord(id: "L3W040", hanzi: "判断", pinyin: "pàn duàn", english: "To judge / judgment", level: 3, strokeOrder: [StrokePath(description: "判: 半 left, 刂 right; 断: 斤 left, 继 right side components")]),
        HSKWord(id: "L3W041", hanzi: "规律", pinyin: "guī lǜ", english: "Rule / law / regularity", level: 3, strokeOrder: [StrokePath(description: "规: 夫 left, 见 right; 律: 彳left, 聿 right")]),
        HSKWord(id: "L3W042", hanzi: "规则", pinyin: "guī zé", english: "Rule / regulation", level: 3, strokeOrder: [StrokePath(description: "规: 夫 left, 见 right; 则: 贝 left, 刂 right")]),
        HSKWord(id: "L3W043", hanzi: "制度", pinyin: "zhì dù", english: "System / institution", level: 3, strokeOrder: [StrokePath(description: "制: 牛 and 刀 components; 度: 广 top, 廿又 inside")]),
        HSKWord(id: "L3W044", hanzi: "政策", pinyin: "zhèng cè", english: "Policy", level: 3, strokeOrder: [StrokePath(description: "政: 正 left, 攴 right; 策: 竹 top, 朿 below")]),
        HSKWord(id: "L3W045", hanzi: "措施", pinyin: "cuò shī", english: "Measure / step", level: 3, strokeOrder: [StrokePath(description: "措: 扌left, 昔 right; 施: 方 left, 也 right components")]),
        HSKWord(id: "L3W046", hanzi: "数据", pinyin: "shù jù", english: "Data", level: 3, strokeOrder: [StrokePath(description: "数: 娄 left, 攴 right; 据: 扌left, 据 right")]),
        HSKWord(id: "L3W047", hanzi: "研究", pinyin: "yán jiū", english: "Research / to study", level: 3, strokeOrder: [StrokePath(description: "研: 石 left, 开 right; 究: 穴 top, 九 below")]),
        HSKWord(id: "L3W048", hanzi: "实验", pinyin: "shí yàn", english: "Experiment", level: 3, strokeOrder: [StrokePath(description: "实: 宀 top, 头 below; 验: 马 left, 佥 right")]),
        HSKWord(id: "L3W049", hanzi: "证明", pinyin: "zhèng míng", english: "To prove / proof", level: 3, strokeOrder: [StrokePath(description: "证: 讠left, 正 right; 明: 日 left, 月 right")]),
        HSKWord(id: "L3W050", hanzi: "理论", pinyin: "lǐ lùn", english: "Theory", level: 3, strokeOrder: [StrokePath(description: "理: 王 left, 里 right; 论: 讠left, 仑 right")]),
    ]

    // MARK: - Level 3 Sentences (50)
    static let level3Sentences: [HSKSentence] = [
        HSKSentence(id: "L3S001", hanzi: "尽管困难，他还是坚持下去了。", pinyin: "Jǐn guǎn kùn nán, tā hái shì jiān chí xià qù le.", english: "Despite the difficulty, he persisted.", level: 3),
        HSKSentence(id: "L3S002", hanzi: "这件事影响了很多人。", pinyin: "Zhè jiàn shì yǐng xiǎng le hěn duō rén.", english: "This matter affected many people.", level: 3),
        HSKSentence(id: "L3S003", hanzi: "他的态度显然有了变化。", pinyin: "Tā de tài dù xiǎn rán yǒu le biàn huà.", english: "His attitude has obviously changed.", level: 3),
        HSKSentence(id: "L3S004", hanzi: "你能解决这个问题吗？", pinyin: "Nǐ néng jiě jué zhè gè wèn tí ma?", english: "Can you solve this problem?", level: 3),
        HSKSentence(id: "L3S005", hanzi: "我想了解这个现象的原因。", pinyin: "Wǒ xiǎng liǎo jiě zhè gè xiàn xiàng de yuán yīn.", english: "I want to understand the reason for this phenomenon.", level: 3),
        HSKSentence(id: "L3S006", hanzi: "这个结果符合我们的预期。", pinyin: "Zhè gè jié guǒ fú hé wǒ men de yù qī.", english: "This result meets our expectations.", level: 3),
        HSKSentence(id: "L3S007", hanzi: "他承认了自己的错误。", pinyin: "Tā chéng rèn le zì jǐ de cuò wù.", english: "He admitted his own mistake.", level: 3),
        HSKSentence(id: "L3S008", hanzi: "我建议大家合作解决这个问题。", pinyin: "Wǒ jiàn yì dà jiā hé zuò jiě jué zhè gè wèn tí.", english: "I suggest everyone cooperate to solve this problem.", level: 3),
        HSKSentence(id: "L3S009", hanzi: "他们通过交流增进了了解。", pinyin: "Tā men tōng guò jiāo liú zēng jìn le liǎo jiě.", english: "They deepened understanding through communication.", level: 3),
        HSKSentence(id: "L3S010", hanzi: "这项研究很有价值。", pinyin: "Zhè xiàng yán jiū hěn yǒu jià zhí.", english: "This research is very valuable.", level: 3),
        HSKSentence(id: "L3S011", hanzi: "他强调了合作的重要性。", pinyin: "Tā qiáng diào le hé zuò de zhòng yào xìng.", english: "He emphasized the importance of cooperation.", level: 3),
        HSKSentence(id: "L3S012", hanzi: "这个理论需要实验来证明。", pinyin: "Zhè gè lǐ lùn xū yào shí yàn lái zhèng míng.", english: "This theory needs experiments to prove it.", level: 3),
        HSKSentence(id: "L3S013", hanzi: "分析数据是研究的基础。", pinyin: "Fēn xī shù jù shì yán jiū de jī chǔ.", english: "Analyzing data is the foundation of research.", level: 3),
        HSKSentence(id: "L3S014", hanzi: "他们讨论了政策的效果。", pinyin: "Tā men tǎo lùn le zhèng cè de xiào guǒ.", english: "They discussed the effects of the policy.", level: 3),
        HSKSentence(id: "L3S015", hanzi: "制度改革是一个复杂的过程。", pinyin: "Zhì dù gǎi gé shì yī gè fù zá de guò chéng.", english: "Institutional reform is a complex process.", level: 3),
        HSKSentence(id: "L3S016", hanzi: "我们要判断这个情况的严重程度。", pinyin: "Wǒ men yào pàn duàn zhè gè qíng kuàng de yán zhòng chéng dù.", english: "We need to judge the severity of this situation.", level: 3),
        HSKSentence(id: "L3S017", hanzi: "这个措施很有效果。", pinyin: "Zhè gè cuò shī hěn yǒu xiào guǒ.", english: "This measure is very effective.", level: 3),
        HSKSentence(id: "L3S018", hanzi: "他的观点很有意义。", pinyin: "Tā de guān diǎn hěn yǒu yì yì.", english: "His point of view is very meaningful.", level: 3),
        HSKSentence(id: "L3S019", hanzi: "竞争可以促进发展。", pinyin: "Jìng zhēng kě yǐ cù jìn fā zhǎn.", english: "Competition can promote development.", level: 3),
        HSKSentence(id: "L3S020", hanzi: "我总结了这次讨论的要点。", pinyin: "Wǒ zǒng jié le zhè cì tǎo lùn de yào diǎn.", english: "I summarized the key points of this discussion.", level: 3),
        HSKSentence(id: "L3S021", hanzi: "这两个方案比较起来，第一个更好。", pinyin: "Zhè liǎng gè fāng àn bǐ jiào qǐ lái, dì yī gè gèng hǎo.", english: "Comparing these two plans, the first one is better.", level: 3),
        HSKSentence(id: "L3S022", hanzi: "压力会逐渐增加。", pinyin: "Yā lì huì zhú jiàn zēng jiā.", english: "Pressure will gradually increase.", level: 3),
        HSKSentence(id: "L3S023", hanzi: "他对这个问题有独特的观点。", pinyin: "Tā duì zhè gè wèn tí yǒu dú tè de guān diǎn.", english: "He has a unique point of view on this issue.", level: 3),
        HSKSentence(id: "L3S024", hanzi: "这个规律在自然界中很常见。", pinyin: "Zhè gè guī lǜ zài zì rán jiè zhōng hěn cháng jiàn.", english: "This pattern is very common in nature.", level: 3),
        HSKSentence(id: "L3S025", hanzi: "他的特点是认真负责。", pinyin: "Tā de tè diǎn shì rèn zhēn fù zé.", english: "His characteristic is being serious and responsible.", level: 3),
        HSKSentence(id: "L3S026", hanzi: "我们要遵守规则。", pinyin: "Wǒ men yào zūn shǒu guī zé.", english: "We must follow the rules.", level: 3),
        HSKSentence(id: "L3S027", hanzi: "这个条件是必须的。", pinyin: "Zhè gè tiáo jiàn shì bì xū de.", english: "This condition is necessary.", level: 3),
        HSKSentence(id: "L3S028", hanzi: "矛盾需要通过对话解决。", pinyin: "Máo dùn xū yào tōng guò duì huà jiě jué.", english: "Contradictions need to be resolved through dialogue.", level: 3),
        HSKSentence(id: "L3S029", hanzi: "这个目的很明确。", pinyin: "Zhè gè mù dì hěn míng què.", english: "This purpose is very clear.", level: 3),
        HSKSentence(id: "L3S030", hanzi: "他的优势在于丰富的经验。", pinyin: "Tā de yōu shì zài yú fēng fù de jīng yàn.", english: "His advantage lies in his rich experience.", level: 3),
        HSKSentence(id: "L3S031", hanzi: "这个实验的结果令人惊讶。", pinyin: "Zhè gè shí yàn de jié guǒ lìng rén jīng yà.", english: "The results of this experiment are surprising.", level: 3),
        HSKSentence(id: "L3S032", hanzi: "他们的合作很成功。", pinyin: "Tā men de hé zuò hěn chéng gōng.", english: "Their cooperation was very successful.", level: 3),
        HSKSentence(id: "L3S033", hanzi: "范围太广，需要缩小。", pinyin: "Fàn wéi tài guǎng, xū yào suō xiǎo.", english: "The scope is too broad and needs to be narrowed.", level: 3),
        HSKSentence(id: "L3S034", hanzi: "数据分析显示问题的严重性。", pinyin: "Shù jù fēn xī xiǎn shì wèn tí de yán zhòng xìng.", english: "Data analysis reveals the seriousness of the problem.", level: 3),
        HSKSentence(id: "L3S035", hanzi: "这项政策的效果非常显然。", pinyin: "Zhè xiàng zhèng cè de xiào guǒ fēi cháng xiǎn rán.", english: "The effect of this policy is very obvious.", level: 3),
        HSKSentence(id: "L3S036", hanzi: "我们要不断提高标准。", pinyin: "Wǒ men yào bù duàn tí gāo biāo zhǔn.", english: "We must continuously raise standards.", level: 3),
        HSKSentence(id: "L3S037", hanzi: "理论和实践同样重要。", pinyin: "Lǐ lùn hé shí jiàn tóng yàng zhòng yào.", english: "Theory and practice are equally important.", level: 3),
        HSKSentence(id: "L3S038", hanzi: "他的作用不可忽视。", pinyin: "Tā de zuò yòng bù kě hū shì.", english: "His role cannot be ignored.", level: 3),
        HSKSentence(id: "L3S039", hanzi: "性质不同，处理方法也不同。", pinyin: "Xìng zhì bù tóng, chǔ lǐ fāng fǎ yě bù tóng.", english: "Different natures require different methods.", level: 3),
        HSKSentence(id: "L3S040", hanzi: "对于这个问题，我有不同看法。", pinyin: "Duì yú zhè gè wèn tí, wǒ yǒu bù tóng kàn fǎ.", english: "Regarding this issue, I have a different view.", level: 3),
        HSKSentence(id: "L3S041", hanzi: "而且，这个方案更经济。", pinyin: "Ér qiě, zhè gè fāng àn gèng jīng jì.", english: "Moreover, this plan is more economical.", level: 3),
        HSKSentence(id: "L3S042", hanzi: "我们需要证明这个假设。", pinyin: "Wǒ men xū yào zhèng míng zhè gè jiǎ shè.", english: "We need to prove this hypothesis.", level: 3),
        HSKSentence(id: "L3S043", hanzi: "这个研究的意义非常重大。", pinyin: "Zhè gè yán jiū de yì yì fēi cháng zhòng dà.", english: "The significance of this research is very great.", level: 3),
        HSKSentence(id: "L3S044", hanzi: "竞争激烈，但是机会也多。", pinyin: "Jìng zhēng jī liè, dàn shì jī huì yě duō.", english: "Competition is fierce, but there are also many opportunities.", level: 3),
        HSKSentence(id: "L3S045", hanzi: "他逐渐适应了新环境。", pinyin: "Tā zhú jiàn shì yìng le xīn huán jìng.", english: "He gradually adapted to the new environment.", level: 3),
        HSKSentence(id: "L3S046", hanzi: "基础打好了，才能进步。", pinyin: "Jī chǔ dǎ hǎo le, cái néng jìn bù.", english: "Only with a good foundation can you make progress.", level: 3),
        HSKSentence(id: "L3S047", hanzi: "这个过程需要时间和耐心。", pinyin: "Zhè gè guò chéng xū yào shí jiān hé nài xīn.", english: "This process requires time and patience.", level: 3),
        HSKSentence(id: "L3S048", hanzi: "不同的角度会得出不同的结论。", pinyin: "Bù tóng de jiǎo dù huì dé chū bù tóng de jié lùn.", english: "Different perspectives lead to different conclusions.", level: 3),
        HSKSentence(id: "L3S049", hanzi: "他提出了很好的建议。", pinyin: "Tā tí chū le hěn hǎo de jiàn yì.", english: "He put forward very good suggestions.", level: 3),
        HSKSentence(id: "L3S050", hanzi: "解决矛盾需要双方的努力。", pinyin: "Jiě jué máo dùn xū yào shuāng fāng de nǔ lì.", english: "Resolving contradictions requires effort from both sides.", level: 3),
    ]

    // MARK: - Levels 4–9 placeholder words (extend with full vocabulary as needed)
    static let level4Words: [HSKWord] = generatePlaceholderWords(level: 4, examples: [
        ("抽象", "chōu xiàng", "Abstract"), ("具体", "jù tǐ", "Concrete/specific"),
        ("复杂", "fù zá", "Complex"), ("简单", "jiǎn dān", "Simple"),
        ("逻辑", "luó ji", "Logic"), ("概念", "gài niàn", "Concept"),
        ("假设", "jiǎ shè", "Hypothesis"), ("论点", "lùn diǎn", "Argument/point"),
        ("依据", "yī jù", "Basis/evidence"), ("推断", "tuī duàn", "Inference"),
    ])
    static let level4Sentences: [HSKSentence] = generatePlaceholderSentences(level: 4, examples: [
        ("这个概念很抽象，需要具体例子。", "Zhè gè gài niàn hěn chōu xiàng, xū yào jù tǐ lì zi.", "This concept is very abstract and needs concrete examples."),
        ("他的论点有充分的依据。", "Tā de lùn diǎn yǒu chōng fèn de yī jù.", "His argument has sufficient evidence."),
        ("逻辑推断需要严密的思维。", "Luó ji tuī duàn xū yào yán mì de sī wéi.", "Logical reasoning requires rigorous thinking."),
        ("这个假设还需要验证。", "Zhè gè jiǎ shè hái xū yào yàn zhèng.", "This hypothesis still needs verification."),
        ("复杂的问题需要简单的解决方法。", "Fù zá de wèn tí xū yào jiǎn dān de jiě jué fāng fǎ.", "Complex problems need simple solutions."),
    ])

    static let level5Words: [HSKWord] = generatePlaceholderWords(level: 5, examples: [
        ("辩证", "biàn zhèng", "Dialectical"), ("本质", "běn zhì", "Essence/nature"),
        ("规范", "guī fàn", "Standard/norm"), ("内涵", "nèi hán", "Connotation"),
        ("外延", "wài yán", "Extension/denotation"), ("抽象化", "chōu xiàng huà", "Abstraction"),
        ("系统", "xì tǒng", "System"), ("结构", "jié gòu", "Structure"),
        ("层次", "céng cì", "Level/layer"), ("维度", "wéi dù", "Dimension"),
    ])
    static let level5Sentences: [HSKSentence] = generatePlaceholderSentences(level: 5, examples: [
        ("要辩证地看待这个问题。", "Yào biàn zhèng de kàn dài zhè gè wèn tí.", "We must look at this issue dialectically."),
        ("理解事物的本质需要深入分析。", "Lǐ jiě shì wù de běn zhì xū yào shēn rù fēn xī.", "Understanding the essence of things requires in-depth analysis."),
        ("这个系统的结构很复杂。", "Zhè gè xì tǒng de jié gòu hěn fù zá.", "The structure of this system is very complex."),
        ("我们要从多个维度分析。", "Wǒ men yào cóng duō gè wéi dù fēn xī.", "We need to analyze from multiple dimensions."),
        ("这个词的内涵很丰富。", "Zhè gè cí de nèi hán hěn fēng fù.", "This word has a very rich connotation."),
    ])

    static let level6Words: [HSKWord] = generatePlaceholderWords(level: 6, examples: [
        ("哲学", "zhé xué", "Philosophy"), ("伦理", "lún lǐ", "Ethics"),
        ("认识论", "rèn shí lùn", "Epistemology"), ("存在", "cún zài", "Existence"),
        ("意识", "yì shí", "Consciousness"), ("主观", "zhǔ guān", "Subjective"),
        ("客观", "kè guān", "Objective"), ("相对", "xiāng duì", "Relative"),
        ("绝对", "jué duì", "Absolute"), ("辩证法", "biàn zhèng fǎ", "Dialectics"),
    ])
    static let level6Sentences: [HSKSentence] = generatePlaceholderSentences(level: 6, examples: [
        ("哲学是研究世界本质的学问。", "Zhé xué shì yán jiū shì jiè běn zhì de xué wèn.", "Philosophy is the study of the nature of the world."),
        ("伦理问题在现代社会很重要。", "Lún lǐ wèn tí zài xiàn dài shè huì hěn zhòng yào.", "Ethical issues are very important in modern society."),
        ("主观和客观是相对的概念。", "Zhǔ guān hé kè guān shì xiāng duì de gài niàn.", "Subjective and objective are relative concepts."),
        ("意识是人类特有的现象。", "Yì shí shì rén lèi tè yǒu de xiàn xiàng.", "Consciousness is a phenomenon unique to humans."),
        ("辩证法强调矛盾的统一性。", "Biàn zhèng fǎ qiáng diào máo dùn de tǒng yī xìng.", "Dialectics emphasizes the unity of contradictions."),
    ])

    static let level7Words: [HSKWord] = generatePlaceholderWords(level: 7, examples: [
        ("宏观", "hóng guān", "Macro"), ("微观", "wēi guān", "Micro"),
        ("综合", "zōng hé", "Comprehensive/synthesis"), ("演绎", "yǎn yì", "Deduction"),
        ("归纳", "guī nà", "Induction"), ("类比", "lèi bǐ", "Analogy"),
        ("悖论", "bèi lùn", "Paradox"), ("范畴", "fàn chóu", "Category"),
        ("命题", "mìng tí", "Proposition"), ("论证", "lùn zhèng", "Argumentation"),
    ])
    static let level7Sentences: [HSKSentence] = generatePlaceholderSentences(level: 7, examples: [
        ("宏观和微观分析相互补充。", "Hóng guān hé wēi guān fēn xī xiāng hù bǔ chōng.", "Macro and micro analysis complement each other."),
        ("演绎和归纳是两种基本推理方法。", "Yǎn yì hé guī nà shì liǎng zhǒng jī běn tuī lǐ fāng fǎ.", "Deduction and induction are two basic reasoning methods."),
        ("这个命题需要严格的论证。", "Zhè gè mìng tí xū yào yán gé de lùn zhèng.", "This proposition requires rigorous argumentation."),
        ("悖论揭示了逻辑的局限性。", "Bèi lùn jiē shì le luó ji de jú xiàn xìng.", "Paradoxes reveal the limitations of logic."),
        ("综合分析有助于全面理解问题。", "Zōng hé fēn xī yǒu zhù yú quán miàn lǐ jiě wèn tí.", "Comprehensive analysis helps to understand issues fully.", level: 7),
    ])

    static let level8Words: [HSKWord] = generatePlaceholderWords(level: 8, examples: [
        ("诠释", "quán shì", "Interpretation/exegesis"), ("隐喻", "yǐn yù", "Metaphor"),
        ("修辞", "xiū cí", "Rhetoric"), ("叙事", "xù shì", "Narrative"),
        ("语境", "yǔ jìng", "Context"), ("话语", "huà yǔ", "Discourse"),
        ("阐述", "chǎn shù", "Elaboration"), ("批判", "pī pàn", "Criticism/critique"),
        ("诠释学", "quán shì xué", "Hermeneutics"), ("互文", "hù wén", "Intertextuality"),
    ])
    static let level8Sentences: [HSKSentence] = generatePlaceholderSentences(level: 8, examples: [
        ("语境对于理解话语至关重要。", "Yǔ jìng duì yú lǐ jiě huà yǔ zhì guān zhòng yào.", "Context is crucial for understanding discourse."),
        ("他对这首诗作了深刻的诠释。", "Tā duì zhè shǒu shī zuò le shēn kè de quán shì.", "He provided a profound interpretation of this poem."),
        ("修辞手法丰富了文学表达。", "Xiū cí shǒu fǎ fēng fù le wén xué biǎo dá.", "Rhetorical devices enrich literary expression."),
        ("批判性思维是学术研究的基础。", "Pī pàn xìng sī wéi shì xué shù yán jiū de jī chǔ.", "Critical thinking is the foundation of academic research."),
        ("隐喻在文学作品中随处可见。", "Yǐn yù zài wén xué zuò pǐn zhōng suí chù kě jiàn.", "Metaphors can be found everywhere in literary works."),
    ])

    static let level9Words: [HSKWord] = generatePlaceholderWords(level: 9, examples: [
        ("范式", "fàn shì", "Paradigm"), ("本体论", "běn tǐ lùn", "Ontology"),
        ("认识论", "rèn shí lùn", "Epistemology"), ("形而上学", "xíng ér shàng xué", "Metaphysics"),
        ("现象学", "xiàn xiàng xué", "Phenomenology"), ("解构", "jiě gòu", "Deconstruction"),
        ("后现代", "hòu xiàn dài", "Postmodern"), ("话语权", "huà yǔ quán", "Discourse power"),
        ("批判理论", "pī pàn lǐ lùn", "Critical theory"), ("元认知", "yuán rèn zhī", "Metacognition"),
    ])
    static let level9Sentences: [HSKSentence] = generatePlaceholderSentences(level: 9, examples: [
        ("范式转换标志着科学革命的开始。", "Fàn shì zhuǎn huàn biāo zhì zhe kē xué gé mìng de kāi shǐ.", "A paradigm shift marks the beginning of a scientific revolution."),
        ("本体论探讨存在的本质问题。", "Běn tǐ lùn tàn tǎo cún zài de běn zhì wèn tí.", "Ontology explores fundamental questions of existence."),
        ("解构主义颠覆了传统的文本解读。", "Jiě gòu zhǔ yì diān fù le chuán tǒng de wén běn jiě dú.", "Deconstruction overturned traditional text interpretation."),
        ("后现代思想质疑宏大叙事。", "Hòu xiàn dài sī xiǎng zhì yí hóng dà xù shì.", "Postmodern thought questions grand narratives."),
        ("元认知能力有助于提高学习效率。", "Yuán rèn zhī néng lì yǒu zhù yú tí gāo xué xí xiào lǜ.", "Metacognitive ability helps improve learning efficiency."),
    ])

    // MARK: - Helpers
    private static func generatePlaceholderWords(level: Int, examples: [(String, String, String)]) -> [HSKWord] {
        var words: [HSKWord] = []
        for (i, (hanzi, pinyin, english)) in examples.enumerated() {
            words.append(HSKWord(
                id: "L\(level)W\(String(format: "%03d", i+1))",
                hanzi: hanzi, pinyin: pinyin, english: english, level: level,
                strokeOrder: [StrokePath(description: "Refer to stroke order guide for \(hanzi)")]
            ))
        }
        // Pad to 50 words with generated placeholders
        let baseWords = [
            ("词汇", "cí huì", "Vocabulary"), ("表达", "biǎo dá", "Expression"),
            ("句子", "jù zi", "Sentence"), ("段落", "duàn luò", "Paragraph"),
            ("文章", "wén zhāng", "Article/essay"), ("语法", "yǔ fǎ", "Grammar"),
            ("发音", "fā yīn", "Pronunciation"), ("声调", "shēng diào", "Tone"),
            ("汉字", "Hàn zì", "Chinese character"), ("词语", "cí yǔ", "Word/phrase"),
        ]
        let needed = 50 - words.count
        for i in 0..<needed {
            let base = baseWords[i % baseWords.count]
            words.append(HSKWord(
                id: "L\(level)W\(String(format: "%03d", examples.count+i+1))",
                hanzi: base.0, pinyin: base.1, english: "\(base.2) (L\(level) variant \(i+1))",
                level: level,
                strokeOrder: [StrokePath(description: "See stroke order guide")]
            ))
        }
        return words
    }

    private static func generatePlaceholderSentences(level: Int, examples: [(String, String, String)]) -> [HSKSentence] {
        var sentences: [HSKSentence] = []
        for (i, (hanzi, pinyin, english)) in examples.enumerated() {
            sentences.append(HSKSentence(
                id: "L\(level)S\(String(format: "%03d", i+1))",
                hanzi: hanzi, pinyin: pinyin, english: english, level: level
            ))
        }
        let needed = 50 - sentences.count
        for i in 0..<needed {
            sentences.append(HSKSentence(
                id: "L\(level)S\(String(format: "%03d", examples.count+i+1))",
                hanzi: "这是第\(level)级第\(examples.count+i+1)个例句。",
                pinyin: "Zhè shì dì \(level) jí dì \(examples.count+i+1) gè lì jù.",
                english: "This is level \(level) example sentence \(examples.count+i+1).",
                level: level
            ))
        }
        return sentences
    }

    // MARK: - Day Unit Builder
    static func dayUnits(for level: Int) -> [DayUnit] {
        let words = allWords(for: level)
        let sentences = allSentences(for: level)
        var units: [DayUnit] = []
        let dayCount = min(words.count / 5, sentences.count / 5)
        for day in 0..<dayCount {
            let wordSlice = Array(words[day*5..<day*5+5])
            let sentenceSlice = Array(sentences[day*5..<day*5+5])
            units.append(DayUnit(
                id: "L\(level)_D\(day)",
                level: level,
                dayIndex: day,
                words: wordSlice,
                sentences: sentenceSlice
            ))
        }
        return units
    }

    static func allWords(for level: Int) -> [HSKWord] {
        switch level {
        case 1: return level1Words
        case 2: return level2Words
        case 3: return level3Words
        case 4: return level4Words
        case 5: return level5Words
        case 6: return level6Words
        case 7: return level7Words
        case 8: return level8Words
        case 9: return level9Words
        default: return []
        }
    }

    static func allSentences(for level: Int) -> [HSKSentence] {
        switch level {
        case 1: return level1Sentences
        case 2: return level2Sentences
        case 3: return level3Sentences
        case 4: return level4Sentences
        case 5: return level5Sentences
        case 6: return level6Sentences
        case 7: return level7Sentences
        case 8: return level8Sentences
        case 9: return level9Sentences
        default: return []
        }
    }
}
