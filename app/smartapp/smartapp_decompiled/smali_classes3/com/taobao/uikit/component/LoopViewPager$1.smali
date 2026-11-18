.class final Lcom/taobao/uikit/component/LoopViewPager$1;
.super Ljava/lang/Object;
.source "LoopViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/component/LoopViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public compare(Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;)I
    .locals 0

    .line 100
    iget p1, p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    iget p2, p2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;->position:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 96
    check-cast p1, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    check-cast p2, Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/component/LoopViewPager$1;->compare(Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;Lcom/taobao/uikit/component/LoopViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method
