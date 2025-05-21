#import "/templates/mainmatter.typ": mainmatter-template
#show: mainmatter-template
#import "../../../components/algorithm.typ": algorithm

= 计算机排序算法（示例章节）

== 常见排序算法介绍

== 比较排序

=== 冒泡排序

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

=== 快速排序

=== 插入排序

=== 选择排序

== 非比较排序

=== 堆排序

=== 桶排序
