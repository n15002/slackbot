yougo = [
	"fuck",
	"GTFO",
	"shine",
	"ウザい",
	"話しかけるな"
]

syuuzou = [
	"富士山のように、日本一になるって言っただろ！ お前、昔を思い出せよ！！ 今日からお前は富士山だ！！！",
	"本気になれば自分が変わる！！ 本気になれば全てが変わる！！",
	"その崖っっぷちが最高のチャンスなんだぜ！！ 自分の全ての力を出し切れるんだから！！！ 崖っぷちありがとう！！最高だ！！！ ",
	"もっと熱くなれよ…熱い血燃やしてけよ！人間熱くなったときが…本当の自分に出会えるんだ！だからこそ…もっと、熱くなれよおおおおおおおおおおおお！！！",
	"気にすんなよ。くよくよすんなよ。大丈夫、どうにかなるって。Don't worry！ Be happy！",
	"諦めんなよ、諦めんなよお前！どうしてそこでやめるんだそこで！もう少し頑張ってみろよ！ダメダメダメダメ諦めたら。周りの事思えよ、応援してくれる人達の事思ってみろって。あともうちょっとのところなんだから。俺だってこの－10℃のところ、しじみがトゥルルって頑張ってんだよ！ずっとやってみろ！必ず目標を達成できる！だからこそNever give up！！",
	"頑張れ頑張れできるできる絶対出来る頑張れもっとやれるって！やれる気持ちの問題だ頑張れ頑張れそこだ！そこで諦めんな絶対に頑張れ積極的にポジティブに頑張る頑張る！北京だって頑張ってるんだから！",
	"なんとなく生きてんじゃないですか？迷ってんじゃないですか！？イキイキしたい！簡単ですよ。過去のこと思っちゃダメだよ。なんであんなことしたんだろ…って怒りに変わってくるから。未来のことも思っちゃダメ。「大丈夫かな？」「あはぁ～ん」不安になってくるでしょ？ならば！一所懸命！一つのところに命を懸ける！そうだ！今、ここを生きていけば、みんな、イキイキするぞ！",
	"一番になるって言っただろ？ナンバーワンになるって言ったよな！？先ずは形から入ってみろよ！今日からお前は…一番だッ!!",
	"「dream」は「夢」！…いい言葉だなー夢って！夢は君を動かす原動力なんだよ！！さあ、いい夢を見よぉ…　通り魔ァ!!　だからと言って！授業中寝てるヤツがあるかよッ！！夢は起きてみるモンなんだよ！さあ！ Wake up! and Dream!!",
	"のどごし☆パラダイス！"
]

module.exports = (robot) ->
  robot.respond /hello/i, (msg) ->
    name = msg.message.user.name
    if name == "kyouya"
      msg.send "hello ^^;"
    else if name == "dogeza"
      msg.send msg.random yougo
    else
      msg.send "yo!"

  robot.hear /(眠|ねむ)い/, (msg) ->
      msg.send "寝ろ"

  robot.hear /(辛い|死にたい|つらい|悲しい|かなしい|嫌だ|いやだ|やりたくない|めんどくさい)/, (msg) ->
      msg.send msg.random syuuzou

  random = (n) -> Math.floor(Math.random() * n)
  robot.respond /(今日の運勢|運勢|おみくじ|運)/i, (msg) ->
      fortunes = [
        '大吉',
        '末吉',
        '大凶'
      ]
      result = fortunes[random(3)]
      msg.send "今日の運勢: #{result}"
