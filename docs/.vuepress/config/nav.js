// nav
module.exports = [
  { text: '首页', link: '/' },
  {
    text: 'Web 进阶',
    link: '/web/', // 目录页链接，此处link是vdoing主题新增的配置项，有二级导航时，可以点击一级导航跳到目录页
    items: [
      // 说明：以下所有link的值只是在相应md文件定义的永久链接（不是什么特殊生成的编码）。另外，注意结尾是有斜杠的
      {
        text: '未雨绸缪',
        items: [
          { text: 'JavaScript', link: '/web/javascript/' },
          { text: 'Vue', link: '/web/vue/' },
          { text: 'React', link: '/web/react/' },
        ],
      },
    ],
  },
  {
    text: '开卷有益',
    link: '/book/',
    items: [
      { text: '《你想活出怎样的人生》', link: '/book/what-kind-of-life-do-you-want-to-live/' },
      { text: '《JavaScript核心技术开发解密》', link: '/book/javascript-core-technology-development-decryption/' },
    ],
  },
  {
    text: '天工开物',
    link: '/tool/',
    items: [
      { text: '文档手册', link: '/tool/manual/' },
      { text: '构建知识库', link: '/tool/building-knowledge-base/' },
    ],
  },
  {
    text: '更多',
    link: '/more/',
    items: [
      { text: '岁月长河的涟漪', link: '/more/the-ripples-of-time/' },
      { text: '邂逅未知的自己', link: '/more/encounter-the-unknown-self/' },
      { text: '云想衣裳花想容', link: '/more/poetry/' },
    ],
  },
  {
    text: '索引',
    link: '/archives/',
    items: [
      { text: '分类', link: '/categories/' },
      { text: '标签', link: '/tags/' },
      { text: '归档', link: '/archives/' },
      { text: '关于', link: '/about/' },
    ],
  },
]
