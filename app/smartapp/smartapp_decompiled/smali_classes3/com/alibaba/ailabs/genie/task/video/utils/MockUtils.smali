.class public Lcom/alibaba/ailabs/genie/task/video/utils/MockUtils;
.super Ljava/lang/Object;
.source "MockUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getTestData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 14
    new-instance v2, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;-><init>()V

    const-string v3, "1"

    .line 15
    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->setIsCharge(Ljava/lang/String;)V

    const-string v3, "\u6d4b\u8bd5\u6d4b\u8bd5\u6d4b\u8bd5\u6d4b\u8bd5"

    .line 16
    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->setTitle(Ljava/lang/String;)V

    const-wide v3, 0x4022666666666666L    # 9.2

    .line 17
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->setScore(D)V

    const-string v3, "http://pic2.iqiyipic.com/image/20201221/d1/55/a_100431434_m_601_m6_240_320.jpg"

    .line 18
    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->setCoverVertical(Ljava/lang/String;)V

    const-string v3, "ykiot://yingshi_detail?from=com.alibaba.ailabs.basedomain&isfull=true&id=39cdbdefbfbd36efbfbd&recommandstate=button"

    .line 19
    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->setUri(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
