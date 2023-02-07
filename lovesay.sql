/*
 Navicat Premium Data Transfer

 Source Server         : 本地MySQL
 Source Server Type    : MySQL
 Source Server Version : 80012 (8.0.12)
 Source Host           : localhost:3306
 Source Schema         : lovesay

 Target Server Type    : MySQL
 Target Server Version : 80012 (8.0.12)
 File Encoding         : 65001

 Date: 07/02/2023 16:06:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for say
-- ----------------------------
DROP TABLE IF EXISTS `say`;
CREATE TABLE `say`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `text` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '情话内容',
  `imgSrc` varchar(2500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '邮件下方图片地址',
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '邮件主题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of say
-- ----------------------------
INSERT INTO `say` VALUES (1, '我把我的灵魂封在这封邮件里，你去旅行的时候，请把它随身带在口袋里，挈带它同去玩玩，但不许把它失落在路上。幸亏世上还有一个你。我弱得利害，你不要鄙夷我。所有的祝福！', 'https://img-blog.csdnimg.cn/f60161b911c44728b446941e3be3a942.png', '灵魂封在信封里');
INSERT INTO `say` VALUES (2, '别说冬天容易过，渴望着你来信息的时候，每一分钟是一个世纪，每一点钟是一个无穷。然而想着你是幸福的在家里，竚念的心，也总算有了安慰。', 'https://img-blog.csdnimg.cn/5fc2e718722e4503b18dddf59236f072.png', '无穷世纪');
INSERT INTO `say` VALUES (3, '告诉我几时开学，几时能见你，我将数着日子消遣儿，我一定一天撕两张日历。', 'https://img-blog.csdnimg.cn/2353a31460854679aae08e49b019b58d.png', '无穷世纪');
INSERT INTO `say` VALUES (4, '对于你，我希望你能锻炼自己，成为一个坚强的人，不要甘心做一个女人（你不会甘心于平凡，这是我相信的），总得从重重的桎梏里把自己的心灵解放出来，时时有毁灭破旧的一切的勇气（如其有一天你觉得我对于你已太无用处，尽可以一脚踢开我，我不会怨你半分），耐得了苦，受得住人家的讥笑与轻蔑，不要有什么小姐式的感伤，只时时向未来睁开你的慧眼，也不用担心甚么恐惧甚么，只努力使自己身体感情各方面都坚强起来，我将永远是你的可以信托的好朋友', 'https://img-blog.csdnimg.cn/90aa785a51144fdd9ca2d7c556ca6330.png', '不只是欢喜而已');
INSERT INTO `say` VALUES (5, '现在的你，确实是太使我欢喜的，你是我心里顶溺爱的人。但如其有那么一天我看见你，脸孔那么黑黑的，头发那么短短的，臂膀不像现在那么瘦小得不盈一握，而是坚实而有力的，走起路来，胸膛挺挺的，眼睛明明的发光，说话也沉着了，一个纯粹自由国土里的国民（你相信我不会爱一个“古典美人”？虽然从前我曾把林黛玉作为我的理想过），那时我真要抱着你快活得流泪了。', 'https://img-blog.csdnimg.cn/3a77f0184cab4b3299167ea602e5c943.png', '不只是欢喜而已');
INSERT INTO `say` VALUES (6, ' 为了你，我也有走向光明的热望，世界不会于我太寂寞。', 'https://img-blog.csdnimg.cn/35b43ea80af04bedae0fe53d50e9ebe7.png', '不只是欢喜而已');
INSERT INTO `say` VALUES (7, '我觉得你确实有诗人的素质，你的头脑跟你的心都是那么美丽可爱。', 'https://img-blog.csdnimg.cn/36e46c239526474facbf60e261170715.png', '看你的照片，温习甘美旧梦');
INSERT INTO `say` VALUES (8, ' 我渴想拥抱你，对你说一千句温柔的蠢话，然这样的话只能在纸上我才能好意思写写，即使在想像中我见了你也将羞愧而低头，你是如此可爱而残忍。', 'https://img-blog.csdnimg.cn/fb455314af304275a235f43c3786b75c.png', '盼信难捱，寄你思慕');
INSERT INTO `say` VALUES (9, '冬天唯一的好处是没有臭虫，夜里可以做梦，虽然我的梦也生了锈了。寄与你一切的思慕。', 'https://img-blog.csdnimg.cn/926a404fa81c4febbb298fd2f8090d86.png', '盼信难捱，寄你思慕');
INSERT INTO `say` VALUES (10, '如果你要为我祝福，祝我每夜做一个好梦吧，让每一个梦里有一个你。如果现实的缺憾可以藉做梦来弥补一下，也许我可以不致厌世。愿你好。', 'https://img-blog.csdnimg.cn/f95e91d9f2c64af9a9c349cf4879a6d8.png', '七十字耳，吝啬哉');
INSERT INTO `say` VALUES (11, '让我们不要胡思乱想，好好地活着吧。在我的心目中，你永远是那样可爱的，这已然是一个牢不可拔的成见了。无论怎样远隔着，我的心永远跟你在一起，如果没有你，生命对于我将是不可堪的。', 'https://img-blog.csdnimg.cn/6b2fb7665eb6476e92fa7cc00a75fc03.png', '越是想写，越是不知写什么');
INSERT INTO `say` VALUES (12, '我知道寂寞是深植在我们的根性里，然而如果我的生命已因你而蒙到了祝福的话，我希望你也不要想像你是寂寞的，因为我热望在你的心中占到一个最宝贵的位置。我不愿意有一天我们彼此都只化成了一个记忆，因为记忆无论如何美妙，总是已经过去已经疏远了的。你也许会不相信，我常常想像你是多么美好多么可爱，但实际见了你面的时候，你更比我的想像美好得多可爱得多。你不能说我这是说谎，因为如果不然的话，我满可以仅仅想忆你自足，而不必那样渴望着要看见你了。', 'https://img-blog.csdnimg.cn/1948050188a4426e99c6a534dee0db5c.png', '越是想写，越是不知写什么');
INSERT INTO `say` VALUES (13, '我很欢喜，“不记得凝望些什么，一天继续着一天”两句话，说得太寂寞了。但我知道我所凝望着的只是你。祝好。', 'https://img-blog.csdnimg.cn/7517bfdc0ab040ee8e5a55576ecdfab6.png', '越是想写，越是不知写什么');
INSERT INTO `say` VALUES (14, '我告诉你我爱钱越，随你说我肉麻，说我无聊，说我臭，说我是猪猡驴子猢狲夜叉小鬼都不相干。', 'https://img-blog.csdnimg.cn/2b380d3ea4074fabb4ca2951011f4155.png', '这封信不给钱越看');
INSERT INTO `say` VALUES (15, '求婚，结婚，和悔恨，就像是跳苏格兰捷格舞，慢步舞和五步舞一样：开始的求婚就像捷格舞那样的热烈而急促，充满了狂想；结婚就像慢步舞那样端庄镇静，一片的繁文缛节和陈腐的仪式；于是悔恨就跟着来了，那蹒跚无力的腿一步步沉滞下去，变成了五步舞，直至倒卧在坟墓里。', 'https://img-blog.csdnimg.cn/85acba38733a44c4b847e12c61b17dc5.png', '唱一阕甜歌，抄俏皮话给你看');
INSERT INTO `say` VALUES (16, '傻瓜，我爱你。想你想得我口渴，因此我喝开水；想得我肚皮饿了，alas，无东西吃。我愿意做梦和你打架儿，把你吃扁得喊爹爹，我顶希望看你哭。', 'https://img-blog.csdnimg.cn/6d60de16b4c94cd9b6f8a9885473e9f9.png', '想你想得我口渴');
INSERT INTO `say` VALUES (17, '我从今天起开始盼望见你，带着很高兴的调子。我太没有野心，也许就是这一点不好，觉得仿佛只要看见你五分钟，就可得到若干程度的满足的样子。对于见面我看得较重，对于分别我看得较轻，这是人生取巧之一法，否则聚少离多，悲哀多于欢乐，一生只好负着无尽痛苦的债了。我愿你好，热情地热情地。', 'https://img-blog.csdnimg.cn/0d7d140396cc494c88342d86777c7b3d.png', '见你五分钟就满足');
INSERT INTO `say` VALUES (18, '现在是晚上八点三十分。昨夜看小说看到二点多，今天倦得想死。我不想骂你，第一因为我倦；第二因为你叫我不要骂你；第三因为我并不比你好，不配骂你；第四即使我不倦，即使你叫我骂你，即使我配骂你，我也不愿意骂你，因为你是宝贝。', 'https://img-blog.csdnimg.cn/bce6e561663845ac887aa644f3b66f95.png', '叫人气馁的开学');
INSERT INTO `say` VALUES (19, '我多希望你一天到晚在我耳朵边咭咭呱呱，那么我永远不会神经衰弱。只要你不嫌吃力，一天对我讲四十八个钟点的话我都不会厌倦。', 'https://img-blog.csdnimg.cn/68793fd96c414b44ad32b78e817f1baf.png', '叫人气馁的开学');
INSERT INTO `say` VALUES (20, '越是想你，越没有梦，福薄缘悭，一至于此！', 'https://img-blog.csdnimg.cn/e556d4f926d84ebb8c017545911e4410.png', '叫人气馁的开学');
INSERT INTO `say` VALUES (21, '我梦想一个音乐的天国，里面的人全忘了讲话与写字。这是野话。我知道你顶明白我，但还巴不得把心的每一个角落给你看才痛快。我为莫可奈何而心痛，欲抱着你哭。愿上帝祝福你的灵魂永远是一朵不谢的美丽的花！我能想着你，梦着你，神魂依恋着你，我是幸福的。', 'https://img-blog.csdnimg.cn/47fde67922064cfca6b81c318c075f54.png', '你得陪我玩');
INSERT INTO `say` VALUES (22, ' 我们都是世上多余的人，但至少我们对于彼此都是世上最重要的人。我一天一天明白你的平凡，同时却一天一天愈更深切地爱你。你如照镜子，你不会看得见你特别好的所在，但你如走进我的心里来时，你一定能知道自己是怎样好法', 'https://img-blog.csdnimg.cn/1eb2ef9bb6c54a878c610e9c4a995b4b.png', '真想看看你');
INSERT INTO `say` VALUES (23, '寂寞常是啮着我，唯你能给我感奋，永远不能忘记你！', 'https://img-blog.csdnimg.cn/4c825d1447c144169a037bf6d5580b8c.png', '握你的手');
INSERT INTO `say` VALUES (24, '是你给我一个极度美丽的记忆，我不能不向你致无量感激敬爱之忱。', 'https://img-blog.csdnimg.cn/25e14426628b4b8a98db8f243252521c.png', '美丽记忆');
INSERT INTO `say` VALUES (25, '为什么我一想起你来，你总是那么小，小得可以藏在衣袋里？我伸手向衣袋里一摸，衣袋里果然有一个钱越，不过她已变成一把小刀（你古时候送给我的）。', 'https://img-blog.csdnimg.cn/339a152a2d0b494a8d78f8de50dff279.png', '口袋里有钱越');
INSERT INTO `say` VALUES (26, '我很悲伤，因为知道我们死后将不会在一起，你一定到天上去无疑，我却已把灵魂卖给魔鬼了，不知天堂与地狱之间，许不许通信。', 'https://img-blog.csdnimg.cn/a20b68eaa18a4376bdc4ffb5fa6ea5b8.png', '口袋里有钱越');
INSERT INTO `say` VALUES (27, '我希望世上有两个钱越，我爱第一个钱越，但和第二个钱越通着信，我并不爱第二个钱越，我对第二个钱越所说的话，意中都指着第一个钱越，但第一个钱越甚至不知道我的存在。要你知道我爱你，真是太乏味的事，为什么我不从开头起就保守秘密呢？', 'https://img-blog.csdnimg.cn/1ccfcdd886124d5db5375e5f6f07036e.png', '口袋里有钱越');
INSERT INTO `say` VALUES (28, '凡未认识你以前的事，我都愿意把它们编入古代史里去。', 'https://img-blog.csdnimg.cn/e09f06215402457d81e2464e088ca068.png', '你那里下雪，我这里晴天');
INSERT INTO `say` VALUES (29, '愿煦风和日永远卫护着可爱的你，愿你带着满心的春笑回来。', 'https://img-blog.csdnimg.cn/27206c1f99f34cd79dab72dfbe0c30cc.png', '梦魂不识路，何以慰相思？');
INSERT INTO `say` VALUES (30, '我要多么待你好，每两分钟你在我心里一次，祝福你。', 'https://img-blog.csdnimg.cn/a6794de5c5dd4eefbb1c823f0f4b9543.png', '六号楼没有钱越');
INSERT INTO `say` VALUES (31, ' 只想倚在你肩上听你讲话。如果不是因为这世界有些古怪，我巴不得永远和你厮守在一起。', 'https://img-blog.csdnimg.cn/342cca3656fd4e7ea57e74830c909542.png', '八点半');
INSERT INTO `say` VALUES (32, '你说我们前生是不是冤家？我向来从不把聚散看成一回事，在你之前，除你之外，我也并非没有好朋友，不知道为什么和你一认识之后，便像被一根绳紧紧牵系住一样，怪不自由的，心也不能像从前一样轻了，但同时却又真觉得比从前幸福得多。', 'https://img-blog.csdnimg.cn/c7f9054da3ab42cd811f33502b33bff4.png', '八点半');
INSERT INTO `say` VALUES (33, '我不想望甚么，但愿一生有得好东西吃，他无所也不敢希冀，如祈福，我愿我有一个美满的来生，更愿来生仍能遇见今生的朋友以及永别的爱者们。', 'https://img-blog.csdnimg.cn/149360dc31c44977b22603e2d5696f50.png', '何时下雨');
INSERT INTO `say` VALUES (34, '除了你之外我愿意忘记一切，一切都只是梦而已，只让我相信你是真实，我爱你是无限的。', 'https://img-blog.csdnimg.cn/a5779843aa404004844964ca161e68c7.png', '我爱你');
INSERT INTO `say` VALUES (35, '要是我们两人一同在雨声里做梦，那境界是如何不同，或者一同在雨声里失眠，那也是何等有味。', 'https://img-blog.csdnimg.cn/514ba4bff06f4ba2a173e99b2db70b8f.png', '连日风雨，梅花零落');
INSERT INTO `say` VALUES (36, '我发誓永不自杀，除非有一天我厌倦了你。', 'https://img-blog.csdnimg.cn/77890601bd6e4bad914347f0bca4bfbd.png', '你不允许我做的梦，我不敢做的');
INSERT INTO `say` VALUES (37, '如果我想要做一个梦，世界是一片大的草原，山在远处，青天在顶上，溪流在足下，鸟声在树上，如睡眠的静谧，没有一切人，只有你我，在一起跳着飞着躲着捉迷藏，你允不允许？因为你不允许我做的梦，我不敢做的。我不是诗人，否则一定要做一些可爱的梦，为着你的缘故。我不能写一首世间最美的抒情诗给你，这将是我终生抱憾的事。我多么愿意自己是个诗人，只是为了你的缘故。', 'https://img-blog.csdnimg.cn/15f86dac67f944c0970be82fa8b9d09f.png', '你不允许我做的梦，我不敢做的');
INSERT INTO `say` VALUES (38, '这里一切都是丑的，风、雨、太阳，都丑，人也丑，我也丑得很。只有你是青天一样可羡。', 'https://img-blog.csdnimg.cn/c671bbb675174dd9979a76728d79e564.png', '只有你是青天一样可羡');
INSERT INTO `say` VALUES (39, ' 回答我几个问题：1．我与小猫那个好？2．我与钱越那个好？3．我与一切那个好？如果你回答我比小猫比钱越比一切好，那么我以后将不发邮件给你。', 'https://img-blog.csdnimg.cn/abb75cbc7ae141978157ddd4215c4a4c.png', '梦里我总是英雄');
INSERT INTO `say` VALUES (40, '让我以这垂朽的残生爱着你直到死去吧！你是世上最可爱的老太婆。', 'https://img-blog.csdnimg.cn/4da6bd47b3744fd2a9843a881341d917.png', '筑座宫堡，给你最好的房间');
INSERT INTO `say` VALUES (41, '想把你抱起来高高的丢到天上去。醒来觉得甚是爱你。这两天我很快活，而且骄傲。你这人，有些太不可怕。尤其是，一点也不莫明其妙。', 'https://img-blog.csdnimg.cn/79697e36c0744fcfbd084d6859050e73.png', '醒来觉得甚是爱你');
INSERT INTO `say` VALUES (42, '亲爱的小鬼，我要对你说些什么肉麻的话才好耶？我只想吃了你，吃了你。', 'https://img-blog.csdnimg.cn/b0ef0fd19b6c4ce6b2ea43b8812cc0a1.png', '想吃了小鬼');
INSERT INTO `say` VALUES (43, '不要愁老之将至，你老了一定很可爱。而且，假如你老了十岁，我当然也同样老了十岁，世界也老了十岁，上帝也老了十岁，一切都是一样。我愿意舍弃一切，以想念你终此一生。所有的恋慕。', 'https://img-blog.csdnimg.cn/558f5159b3d849b8ac76baf1be5690fe.png', '秋日蚯蚓的恋慕');
INSERT INTO `say` VALUES (44, '我渴望和你打架，也渴望抱抱你。你这恼杀人的小鬼。不要因为我不爱你而心里气苦。', 'https://img-blog.csdnimg.cn/19297d3d700348fc9dcba43b9855aa38.png', '岳飞渴望和小鬼打架');
INSERT INTO `say` VALUES (45, '我不要有新的希望，也不要有新的快乐，我只有一个希望，这希望就是你，我只有一个快乐，这快乐就是你。祝愿魔鬼不要使我们的梦太过匆忙地结束', 'https://img-blog.csdnimg.cn/de27d252e6284c548c2a1671bcb816bb.png', '恺撒大帝想变做鬼来看你');
INSERT INTO `say` VALUES (46, '太阳、月亮、火炉、钢笔、牛津简明字典，一起为我证明我对于你的忠心永无变更，不胜诚惶诚恐之至，臣稽首。', 'https://img-blog.csdnimg.cn/97f01cc0c646401897a0d92c6eb1469f.png', '女皇陛下，臣稽首');
INSERT INTO `say` VALUES (47, '其实星期制很坏。星期日玩了一天之后，星期一当然不会有甚么心向工作，星期二星期三是一星期中最苦闷的两天，一到这两天，我总归想自杀，活不下去；星期四比较安定一些，工作成绩也要好些，一过了星期四，人又变成乐天了，可是一个星期已过去大半，满心想玩了；星期五放了工，再也安身不住，不去看电影，也得向四马路[插图]溜跶一蹚[插图]书坊，再带些东西回来吃，或许就在电车里吃，路上吃；星期六简直不能做工，人是异样不安定，夜里总得两点钟才睡去；可是星期日，好像六天做苦工的代价就是这一天似的，却是最惨没有的日子。星期日看的电影，总比非星期日看的没兴致得多，一切都是空虚，路一定走了许多，生命完全变得不实在，模糊得很，也乏味得很；这样过去之后，到星期一灵魂就像是一片白雾；星期二它醒了转来，发现仍旧在囚笼里，便又要苦闷了。', 'https://img-blog.csdnimg.cn/846cc763ab604d8fac120914e7156377.png', '星期制很坏');
INSERT INTO `say` VALUES (48, ' 我爱你，凡不爱你的人都是傻子。在我的心中眼中以及一切感官中，你都是美到无可言喻。', 'https://img-blog.csdnimg.cn/beafe8e1d8ed4b7785b404c2d8a855d5.png', '不爱你的都是傻子');
INSERT INTO `say` VALUES (49, '最好我们逃到一个荒岛上去，我希望死在夕阳中，凝望着你的出神的脸。', 'https://img-blog.csdnimg.cn/d5741bb19f494dcd880c92fb4fa10ac5.png', '凝望你出神的脸，“薇薇”');
INSERT INTO `say` VALUES (50, '我爱你，此外什么都不知道。心里异常不满足，因为写不出什么话。要是此刻你来敲门唤我，出去take a walk 多好。', 'https://img-blog.csdnimg.cn/eafdd3a88ade436085d720a093e52aa8.png', '我爱你，不和你谈君子之交');

SET FOREIGN_KEY_CHECKS = 1;
