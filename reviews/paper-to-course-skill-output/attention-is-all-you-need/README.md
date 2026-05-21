# 问题与动机

    
_为什么 2017 年还需要一种新的序列模型？_

  
  

    
      
### 核心问题

      
机器翻译可以形式化为学习条件概率：给定源序列 x=(x1,...,xn)，生成目标序列 y=(y1,...,ym)。

      
        
          ORIGINAL FORMULA
          p(y|x)=∏ p(yt | y<t, x)

        
        

          WHAT IT MEANS
          
            x
            输入句子，例如英文句子。
          

          

            y
            输出句子，例如德文或法文翻译。
          

          

            y<t
            已经生成的前文，保证翻译是自回归生成。
          

        
      
    
    
      
### 旧方法的瓶颈

      

        
          
#### RNN 逐步计算

          
每个 token 依赖前一个 hidden state，训练时很难在同一个句子内部完全并行。

        
        
          
#### 长距离依赖路径长

          
远处 token 的信息要穿过很多步，梯度和表示都容易被稀释。

        
        
          
#### 卷积需要堆层

          
ConvS2S、ByteNet 可以并行，但要靠层数扩大感受野。

        
      

    
  


  
    
    
# 发展脉络

    
_Transformer 不是凭空出现的，它是在解决“更短路径 + 更高并行”的问题。_

  
  

    
      
### 从循环到注意力

      
        

        

          

          

            2014
            Seq2Seq
            
编码器-解码器框架成为机器翻译主流。

            RNN

          
        
        

          

          

            2015
            Attention over RNN states
            
注意力缓解固定向量瓶颈，但主干仍依赖 RNN。

            Alignment

          
        
        

          

          

            2017
            Transformer
            
完全用 self-attention 与 FFN 做序列转导。

            Self-Attention

          
        
      
    
  


  
    
    
# 主流方法对比

    
_把关键差异压缩成三件事：路径长度、并行性、计算代价。_

  
  

    
      
### 方法对比表

      
        
| **方法** | **主计算** | **长依赖路径** | **训练并行性** | **主要代价** |
| --- | --- | --- | --- | --- |
| RNN/LSTM | 隐状态递推 | O(n) | 低 | 时间步瓶颈 |
| ConvS2S | 堆叠卷积 | 随感受野增长 | 高 | 需要足够深度 |
| Transformer | Self-attention + FFN | 每层 O(1) | 高 | O(n²) attention |


      

    
  


  
    
    
# 本文方法详解

    
_Transformer = 多头注意力负责路由，前馈网络负责变换，位置编码负责顺序。_

  
  

    
      
### 模型规格

      
        
          1
          
            
#### Encoder / Decoder

            
Base 模型使用 6 层 encoder 和 6 层 decoder。

          

        
        
          2
          

            
#### Hidden Size

            
d_model=512，前馈层中间维度 d_ff=2048。

          

        
        
          3
          

            
#### Multi-Head

            
Base 模型使用 8 个 heads，每个 head 的 d_k=d_v=64。

          

        
      
    
    
      
### 核心公式拆解

      

        
          SCALED DOT-PRODUCT ATTENTION
          Attention(Q,K,V)=softmax(QKᵀ / √dk)V

        
        

          PLAIN ENGLISH
          
            QKᵀ
            每个 query 和每个 key 做相似度打分。
          

          

            √dk
            缩放项，避免维度大时 softmax 过度尖锐。
          

          

            V
            用归一化权重对 value 加权求和，得到上下文表示。
          

        
      
    
  


  
    
    
# 实验与结果

    
_结果重点不是“又涨了 BLEU”，而是质量与训练成本一起变好。_

  
  

    
      
### 关键结果

      
        
| **任务** | **模型** | **BLEU** | **训练信息** |
| --- | --- | --- | --- |
| WMT 2014 EN-DE | Transformer big | 28.4 | 8 P100，约 3.5 天 |
| WMT 2014 EN-FR | Transformer big | 41.0 / 41.8 | 显著低于当时强基线训练成本 |
| Constituency Parsing | Transformer | 强于多个已有模型 | 说明不只适合翻译 |


      

    
  


  
    
    
# 局限与展望

    
_Transformer 的胜利不是没有代价，尤其是长序列上的 O(n²) attention。_

  
  

    
      
### 你应该记住什么

      
        
          
#### 关键洞察

          
序列建模不一定要按时间递推，token 可以直接互相读取。

        
        
          
#### 主要局限

          
全量 self-attention 对序列长度是二次复杂度，长上下文会变贵。

        
        
          
#### 后续影响

          
BERT、GPT、T5 等大模型都继承并放大了这个架构方向。

        
      

    
    
      
### 理解测验

      

        
问题：Transformer 相比 RNN 的核心训练优势是什么？

        
          - A. 可以完全不需要位置编码

          - B. 序列内部计算更容易并行化

          - C. 参数量一定更少

          - D. 不需要 softmax

        
        
答案：B。它把主计算变成 attention 和 FFN 的并行矩阵运算。