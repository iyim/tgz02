.class public Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "AppListHorizontalScrollView.java"


# instance fields
.field private scrollEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;->scrollEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;->scrollEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;->scrollEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;->scrollEnable:Z

    return-void
.end method


# virtual methods
.method public setScrollEnable(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/AppListHorizontalScrollView;->scrollEnable:Z

    return-void
.end method
