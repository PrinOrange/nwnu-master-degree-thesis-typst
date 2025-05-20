#import "/templates/appendix.typ": appendix-template
#show: appendix-template;
#import "/components/codeblock.typ": code

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

