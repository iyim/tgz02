.class public Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "BrickLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/component/BrickLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrickLayoutParams"
.end annotation


# instance fields
.field x:I

.field y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 163
    iput p1, p0, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->x:I

    .line 164
    iput p1, p0, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->y:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 149
    iput p1, p0, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->x:I

    .line 150
    iput p1, p0, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->y:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 156
    iput p1, p0, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->x:I

    .line 157
    iput p1, p0, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->y:I

    return-void
.end method
