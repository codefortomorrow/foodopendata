---
published: 
  - true
  - "true"
layout: post
title: 雞翅、雞脖子與蒜味滷汁
comment: "true"
author: CK
---

![](http://farm4.staticflickr.com/3831/13311471083_c7dc118070_o.png)

你可瞭解食材與食材之間千絲萬縷的曖昧關係？

熱烈進行中的[食譜解密計畫](http://food.codefortomorrow.org/blog/2014/02/11/recipe-data-project/)今天要分享一些初步的發現。

在過去的數個月之間，我們從[楊桃網](http://www.ytower.com.tw/)蒐集了 1500 道食譜，包括中式、日式和西式料理各 500 道。每道食譜都包含食譜名稱、食材和調味料名稱、份量以及作法等資訊，例如[辣味雞胗](http://recipe.ytower.com.tw/Recipe/Detail/e4ff2193-0020-41e8-a340-cdedb0657066/%E8%BE%A3%E5%91%B3%E9%9B%9E%E8%83%97)。

![](https://farm8.staticflickr.com/7095/13424582143_16a15ac016_o.png)

接著，我們花了不少的時間「梳理」食材的名稱。（例如「雞爪」和「鳳爪」是否應該合併為同一種食材）

然後，根據食材是否出現在同一道食譜，或是共同出現在同一道食譜的機率，計算出彼此之間的「親密程度」(如果你真的想知道，我們是用所謂的 [pointwise mutual information](http://en.wikipedia.org/wiki/Pointwise_mutual_information) 來衡量食材之間的親密程度)，用彼此之間的距離遠近來表示。

以文首的「食材社交網路圖」為例，就是根據那 500 道中式食譜所使用到 472 種獨立的食材或調味料，合計 7459 種關係所繪製。從圖的左下角可以清楚看到，「雞翅」、「雞脖子」與「蒜味滷汁」之間的關係相當密切。

我們也發現有些食材或調味料經常出現於眾多的食譜之中，例如橄欖油（如下圖）。

這表示有些食材是屬於「關鍵食材」，牽涉極廣。從食品安全的角度來看，由於市售食材種類繁多，實務上根本不可能達到完全把關。因此，不妨採用「打蛇打七寸」的策略，先抓出一些關鍵食材，進行重點式管理，或許能收事半功倍之效。

![](https://farm3.staticflickr.com/2837/13305289035_3221ff4888_o.png)

上述的成果僅能算是概念測試（proof of concept）， 證明了《食譜解密》目前的方向確實值得進一步的探索。

《開放食庫》團隊夥伴 Huang-Wei Chang 認為，接下來應該要進行[更具有規模性的「基礎建設」](http://cft.io/discussion/124/%E8%A8%8E%E8%AB%96-%E9%96%8B%E6%94%BE%E9%A3%9F%E5%BA%AB%E7%99%BC%E5%B1%95%E8%A8%88%E5%8A%83%E8%88%87%E4%BB%BB%E5%8B%99%E6%B8%85%E5%96%AE)，比方說：


- 建立「食典」，或是關於食物的 common knowledge base。
- 開發使用者介面，讓對食物有興趣、懂食品科學的人，也能一起校對或編輯各種食物的資料（類似一種針對食物資料的維基百科）。

另一位團隊夥伴 Alicia Chiang 則想要利用這個資料庫探索食物的文化、地理與歷史淵源。因為食材的選擇，可以反映出當地農作物的狀況，例如法國菜的洋蔥量與奶油量很驚人，而寒冷地區的菜餚較少使用到綠葉類的蔬菜，但是各式瓜類、馬鈴薯與豆類則非常豐富。

讓我們拭目以待！