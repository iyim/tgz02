.class public Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;
.super Landroid/widget/ImageView;
.source "PointTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final STATUS_ERROR:I = 0x1

.field private static final STATUS_HAS_PASSWORD:I = 0x4

.field private static final STATUS_NORMAL:I = 0x0

.field private static final STATUS_SELECTED:I = 0x2


# instance fields
.field private mChar:C

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    const/16 p1, 0xff

    .line 20
    iput-char p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mChar:C

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->updateDrawable()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    const/16 p1, 0xff

    .line 20
    iput-char p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mChar:C

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->updateDrawable()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    const/16 p1, 0xff

    .line 20
    iput-char p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mChar:C

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->updateDrawable()V

    return-void
.end method

.method private setPassword(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 64
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    goto :goto_0

    .line 66
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getChar()C
    .locals 1

    .line 89
    iget-char v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mChar:C

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .line 71
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setChar(C)V
    .locals 1

    .line 83
    iput-char p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mChar:C

    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 85
    :goto_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setPassword(Z)V

    return-void
.end method

.method public setError(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 76
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    goto :goto_0

    .line 78
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 56
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    goto :goto_0

    .line 58
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    :goto_0
    return-void
.end method

.method public updateDrawable()V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 42
    sget v1, Lcom/alibaba/ailabs/genie/setting/R$drawable;->input_text_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 44
    :cond_0
    sget v1, Lcom/alibaba/ailabs/genie/setting/R$drawable;->input_text_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :goto_0
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->mStatus:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 48
    sget v1, Lcom/alibaba/ailabs/genie/setting/R$drawable;->input_text_has_pwd:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/PointTextView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
