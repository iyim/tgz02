.class public Lcom/taobao/android/sku/widget/ExtraDialog;
.super Landroid/app/Dialog;
.source "ExtraDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public initWindow(IIIIII)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/taobao/android/sku/widget/ExtraDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 71
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 72
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 73
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 74
    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 75
    iput p5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 76
    iput p6, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const p1, 0x106000d

    .line 79
    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/high16 p1, 0x20000

    .line 81
    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public showDialog(III)V
    .locals 1

    const/16 v0, 0x11

    .line 27
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/android/sku/widget/ExtraDialog;->showDialog(IIII)V

    return-void
.end method

.method public showDialog(IIII)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/android/sku/widget/ExtraDialog;->showDialog(IIIIII)V

    return-void
.end method

.method public showDialog(IIIIII)V
    .locals 8

    const v7, 0x1030002

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 35
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/android/sku/widget/ExtraDialog;->showDialog(IIIIIII)V

    return-void
.end method

.method public showDialog(IIIIIII)V
    .locals 7

    .line 39
    invoke-virtual {p0, p1}, Lcom/taobao/android/sku/widget/ExtraDialog;->setContentView(I)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 40
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/android/sku/widget/ExtraDialog;->initWindow(IIIIII)V

    .line 41
    invoke-virtual {p0}, Lcom/taobao/android/sku/widget/ExtraDialog;->show()V

    return-void
.end method

.method public showDialog(Landroid/view/View;II)V
    .locals 1

    const/16 v0, 0x11

    .line 46
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/android/sku/widget/ExtraDialog;->showDialog(Landroid/view/View;III)V

    return-void
.end method

.method public showDialog(Landroid/view/View;III)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 50
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/android/sku/widget/ExtraDialog;->showDialog(Landroid/view/View;IIIII)V

    return-void
.end method

.method public showDialog(Landroid/view/View;IIIII)V
    .locals 8

    const v7, 0x1030002

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 54
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/android/sku/widget/ExtraDialog;->showDialog(Landroid/view/View;IIIIII)V

    return-void
.end method

.method public showDialog(Landroid/view/View;IIIIII)V
    .locals 7

    .line 58
    invoke-virtual {p0, p1}, Lcom/taobao/android/sku/widget/ExtraDialog;->setContentView(Landroid/view/View;)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/android/sku/widget/ExtraDialog;->initWindow(IIIIII)V

    .line 60
    invoke-virtual {p0}, Lcom/taobao/android/sku/widget/ExtraDialog;->show()V

    return-void
.end method
