.class public Lcom/alibaba/ailabs/appbox/bean/mainpage/TwoAppItemBean;
.super Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;
.source "TwoAppItemBean.java"


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;-><init>(I)V

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/TwoAppItemBean;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getRowItemCount()I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/TwoAppItemBean;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/TwoAppItemBean;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/mainpage/TwoAppItemBean;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
