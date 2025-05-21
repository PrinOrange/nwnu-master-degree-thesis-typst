#import "/templates/mainmatter.typ": mainmatter-template
#show: mainmatter-template
#import "/components/algorithm.typ": algorithm

= 计算机排序算法（示例章节）

在计算机科学中，排序算法是处理数据结构和实现高效程序的基础之一。它们的目标是将一组元素（通常是数字或字符串）按照某种顺序（升序或降序）排列。根据实现方式和复杂度的不同，排序算法大致可以分为比较排序和非比较排序两大类。

== 比较排序

比较排序（comparison-based sorting）是排序算法中的一大类，其核心特征是：通过元素之间的“比较”来确定排序结果。也就是说，它们只借助“元素大小之间的比较操作”（如 $a > b$ 或 $a < b$）来判断元素的相对顺序。

例如：冒泡排序、选择排序、插入排序、归并排序、快速排序、堆排序等，都是典型的比较排序。

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
