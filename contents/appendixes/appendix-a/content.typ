#import "/templates/appendix.typ": appendix-template
#show: appendix-template;
#import "/components/codeblock.typ": code
#import "/components/reasoning.typ": definition
#import "/components/algorithm.typ": algorithm
#import "/components/table.typ": tltable

= 何为附录

附录是与论文内容密切相关、但编入正文又影响整篇论文编排的条理和逻辑
性的一些资料，如某些重要的数据表格、计算程序、统计表等，是论文主体的补充内容，可根据需要设置。

附录的格式与正文相同，并依顺序用大写字母“A，B，C，……”或汉字“一，二，三，……”编序号，如“附录A，附录B，附录C，……”或“附录一，附录二，附录三，……”。只有一个附录时也要编序号，即附录A。每个附录应有标题。附录序号与附录标题之间空一个字符，例如：“附录A甘肃省2018 年度人口统计数据”。为了方便，本模板采用 A,B,C 的编号方式。

附录中的图、表、数学表达式、参考文献等另行编序号，与正文分开，一律用阿拉伯数字编码，但在数码前冠以附录的序号，例如“图A-1”，“表B-2”，“式（C-3）”等。


#code(linenumbers: true, caption: "中序遍历与创建节点函数")[```c
  // 中序遍历函数（递归）
  void inorderTraversal(TreeNode* root) {
      if (root == NULL) return;
      inorderTraversal(root->left);         // 访问左子树
      printf("%d ", root->val);             // 访问当前节点
      inorderTraversal(root->right);        // 访问右子树
  }
  // 创建新节点的辅助函数
  TreeNode* createNode(int val) {
      TreeNode* node = (TreeNode*)malloc(sizeof(TreeNode));
      node->val = val;
      node->left = NULL;
      node->right = NULL;
      return node;
  }
  ```]


$
  a x^2 + b x + c = 0 ⇒ \
  a x^2 + b x = -c ⇒ \
  x^2 + frac(b, a)x = -frac(c, a) ⇒ \
  x^2 + frac(b, a)x + (frac(b, 2a))^2 = -frac(c, a) + (frac(b, 2a))^2 ⇒ \
  (x + frac(b, 2a))^2 = -frac(c, a) + frac(b^2, 4a^2) ⇒ \
  (x + frac(b, 2a))^2 = frac(b^2 - 4a c, 4a^2) ⇒ \
  x + frac(b, 2a) = plus.minus sqrt(frac(b^2 - 4a c, 4a^2)) ⇒ \
  x + frac(b, 2a) = plus.minus frac(sqrt(b^2 - 4a c), 2a) ⇒ \
  x = -frac(b, 2a) plus.minus frac(sqrt(b^2 - 4a c), 2a) ⇒ \
$


$
  a x^2 + b x + c = 0 ⇒ \
  a x^2 + b x = -c ⇒ \
  x^2 + frac(b, a)x = -frac(c, a) ⇒ \
  x^2 + frac(b, a)x + (frac(b, 2a))^2 = -frac(c, a) + (frac(b, 2a))^2 ⇒ \
  (x + frac(b, 2a))^2 = -frac(c, a) + frac(b^2, 4a^2) ⇒ \
  (x + frac(b, 2a))^2 = frac(b^2 - 4a c, 4a^2) ⇒ \
  x + frac(b, 2a) = plus.minus sqrt(frac(b^2 - 4a c, 4a^2)) ⇒ \
  x + frac(b, 2a) = plus.minus frac(sqrt(b^2 - 4a c), 2a) ⇒ \
  x = -frac(b, 2a) plus.minus frac(sqrt(b^2 - 4a c), 2a) ⇒ \
$

#figure(
  image("../../mainmatter/chapter-2/figure-2-1.svg", width: 70%),
  caption: [这是一张示例插图],
)

#definition()[对于 $x∈R$ 且 $x≥0$，若存在 $y∈R$ 满足：
  $
    y^2 = x, y ≥0
  $
  则称 $y$ 为 $x$ 的平方根，记作：
  $
    y=sqrt(x)
  $
  即：
  $
    sqrt(x) = sup{r ∈ QQ | r^2 ≤ x}
  $
]

#algorithm((
  title: "冒泡排序(升序数组)",
  input: [长度为 $n$ 的无序数组 $A = [a_1, a_2, dots, a_n]$],
  output: [按升序排列的数组 $A$],
))[
  1. 初始化 $n = "length"(A)$
  2. *for* $i = 1$ *to* $n - 1$ *do*
  3. *for* $j = 1$ *to* $n - i$ *do*
  4. *if* $A_j > A_(j+1)$ *then*
  5. 交换 $A_j$ 和 $A_(j+1)$
  6. *end if*
  7. *end for*
  8. *end for*
]

#tltable("示例三线表")[
  | Substance | Subcritical °C | Supercritical °C |
  | --------------------- | -------------- | ---------------- |
  | Hydrochloric Acid | 12.0 | 92.1 |
  | Sodium Myreth Sulfate | 16.6 | 104 |
  | Potassium Hydroxide | 24.7 | < |
]
