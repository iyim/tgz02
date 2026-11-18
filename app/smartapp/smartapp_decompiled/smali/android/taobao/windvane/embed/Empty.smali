.class public Landroid/taobao/windvane/embed/Empty;
.super Landroid/taobao/windvane/embed/BaseEmbedView;
.source "Empty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/taobao/windvane/embed/BaseEmbedView;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected generateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 17
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const p1, -0x777778

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string p1, "Empty View"

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, -0x10000

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method protected getViewType()Ljava/lang/String;
    .locals 1

    const-string v0, "empty"

    return-object v0
.end method
