.class public abstract Lcom/alibaba/genie/alarm/view/BaseRelativeView;
.super Landroid/widget/RelativeLayout;
.source "BaseRelativeView.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseRelativeView:"


# instance fields
.field private debugMode:Z

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->debugMode:Z

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->debugMode:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->debugMode:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->debugMode:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "BaseRelativeView:"

    const-string v1, "init: "

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 54
    iget-boolean v0, p0, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->debugMode:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u8bf7\u786e\u8ba4\u5f53\u524dView \u7684\u521d\u59cb\u5316\u65b9\u5f0f!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->getInflateView()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method abstract getInflateView()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 73
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method setBackground(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/alarm/view/BaseRelativeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
