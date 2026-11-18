.class public Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ChildAppListItemDecoration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChildAppListItemDecoration"


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mPageType:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;",
            ">;I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListItemDecoration;->mPageType:I

    .line 23
    iput p2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListItemDecoration;->mPageType:I

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListItemDecoration;->dataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .line 30
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    .line 31
    iget p3, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListItemDecoration;->mPageType:I

    rem-int p3, p2, p3

    const/4 p4, 0x1

    add-int/2addr p3, p4

    .line 32
    div-int/lit8 v0, p2, 0x3

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemOffsets: pos = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], column = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], row = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChildAppListItemDecoration"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemOffsets: bean = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListItemDecoration;->dataList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 37
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result v1

    add-int/lit8 v3, p3, -0x1

    mul-int v3, v3, v1

    .line 39
    iget v4, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListItemDecoration;->mPageType:I

    div-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    sub-int p3, v4, p3

    mul-int p3, p3, v1

    .line 40
    div-int/2addr p3, v4

    iput p3, p1, Landroid/graphics/Rect;->right:I

    if-ge p2, v4, :cond_0

    const/high16 p3, 0x41000000    # 8.0f

    .line 42
    invoke-static {p3}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 48
    :goto_0
    iget-object p3, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListItemDecoration;->dataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 49
    iget v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListItemDecoration;->mPageType:I

    rem-int v1, p3, v0

    const/high16 v3, 0x42400000    # 48.0f

    if-nez v1, :cond_1

    .line 50
    div-int/2addr p3, v0

    .line 52
    div-int v0, p2, v0

    sub-int/2addr p3, p4

    if-ne v0, p3, :cond_2

    .line 53
    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 56
    :cond_1
    div-int/2addr p3, v0

    add-int/2addr p3, p4

    .line 57
    div-int v0, p2, v0

    sub-int/2addr p3, p4

    if-ne v0, p3, :cond_2

    .line 58
    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/utils/DensityUtil;->dip2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_1
    add-int/2addr p2, p4

    .line 62
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListItemDecoration;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p2, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p4, 0x0

    .line 63
    :goto_2
    sget-boolean p1, Lcom/alibaba/ailabs/appbox/BuildConfig;->DEBUG:Z

    if-eqz p1, :cond_4

    if-eqz p4, :cond_4

    const-string p1, "getItemOffsets: call Debug.stopMethodTracing()"

    .line 64
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/appbox/log/ABLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/alibaba/ailabs/appbox/childmodel/common/ProfilerTool;->stopMethodTracing()V

    :cond_4
    return-void
.end method
