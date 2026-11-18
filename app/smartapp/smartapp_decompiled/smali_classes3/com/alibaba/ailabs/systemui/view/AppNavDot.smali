.class public Lcom/alibaba/ailabs/systemui/view/AppNavDot;
.super Landroid/view/View;
.source "AppNavDot.java"


# instance fields
.field private mBgCheckedDr:Landroid/graphics/drawable/Drawable;

.field private mBgNormalDr:Landroid/graphics/drawable/Drawable;

.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/view/AppNavDot;->mChecked:Z

    .line 26
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 27
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x10

    .line 28
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 29
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/systemui/view/AppNavDot;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iput-boolean p2, p0, Lcom/alibaba/ailabs/systemui/view/AppNavDot;->mChecked:Z

    .line 31
    sget p2, Lcom/alibaba/ailabs/systemui/R$drawable;->round_blue:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/systemui/view/AppNavDot;->mBgCheckedDr:Landroid/graphics/drawable/Drawable;

    .line 32
    sget p2, Lcom/alibaba/ailabs/systemui/R$drawable;->round_normal:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/AppNavDot;->mBgNormalDr:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/view/AppNavDot;->setStateChecked()V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/view/AppNavDot;->mChecked:Z

    return v0
.end method

.method public setStateChecked()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 42
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/view/AppNavDot;->mChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/AppNavDot;->mBgCheckedDr:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/AppNavDot;->mBgNormalDr:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/systemui/view/AppNavDot;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
