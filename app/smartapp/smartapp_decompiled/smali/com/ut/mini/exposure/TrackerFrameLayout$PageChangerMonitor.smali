.class Lcom/ut/mini/exposure/TrackerFrameLayout$PageChangerMonitor;
.super Ljava/lang/Object;
.source "TrackerFrameLayout.java"

# interfaces
.implements Lcom/ut/mini/UTPageHitHelper$PageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/exposure/TrackerFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageChangerMonitor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onPageAppear(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "TrackerFrameLayout"

    .line 789
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 790
    nop

    nop

    const/4 v1, 0x0

    const v2, 0x1020002

    const/4 v3, 0x0

    .line 795
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 797
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/ut/mini/exposure/ExpLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 800
    :goto_0
    instance-of p1, v1, Landroid/view/ViewGroup;

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    .line 801
    check-cast v1, Landroid/view/ViewGroup;

    .line 802
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 803
    instance-of v1, p1, Lcom/ut/mini/exposure/TrackerFrameLayout;

    if-eqz v1, :cond_0

    .line 804
    nop

    nop

    .line 805
    invoke-static {p1, v4, v4}, Lcom/ut/mini/exposure/TrackerFrameLayout;->access$000(Lcom/ut/mini/exposure/TrackerFrameLayout;IZ)V

    goto :goto_1

    .line 807
    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "cannot found the trace view"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 810
    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "contentView"

    aput-object v2, p1, v3

    aput-object v1, p1, v4

    invoke-static {v0, p1}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageDisAppear(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "TrackerFrameLayout"

    .line 817
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 818
    nop

    nop

    const/4 v1, 0x0

    const v2, 0x1020002

    const/4 v3, 0x0

    .line 823
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 825
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/ut/mini/exposure/ExpLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 828
    :goto_0
    instance-of p1, v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    .line 829
    check-cast v1, Landroid/view/ViewGroup;

    .line 830
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 831
    instance-of v1, p1, Lcom/ut/mini/exposure/TrackerFrameLayout;

    if-eqz v1, :cond_0

    .line 832
    nop

    nop

    .line 833
    invoke-virtual {p1}, Lcom/ut/mini/exposure/TrackerFrameLayout;->onPageDisAppear()V

    goto :goto_1

    .line 835
    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "cannot found the trace view "

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 838
    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    const-string v4, "contentView"

    aput-object v4, p1, v3

    aput-object v1, p1, v2

    invoke-static {v0, p1}, Lcom/ut/mini/exposure/ExpLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
