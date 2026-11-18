.class Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$1;
.super Ljava/lang/Object;
.source "GenieTalkController.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/genieui/utils/pool/ITgPoolObjectFactory<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateObject(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic activateObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 257
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$1;->activateObject(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public destroyObject(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic destroyObject(Ljava/lang/Object;)V
    .locals 0

    .line 257
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$1;->destroyObject(Landroid/widget/TextView;)V

    return-void
.end method

.method public makeObject()Landroid/widget/TextView;
    .locals 2

    .line 260
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;->access$000(Lcom/alibaba/ailabs/genie/genieui/GenieTalkController;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic makeObject()Ljava/lang/Object;
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$1;->makeObject()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public passivateObject(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 2

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, ""

    .line 282
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 285
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v0, v1, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-object p1
.end method

.method public bridge synthetic passivateObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 257
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/GenieTalkController$1;->passivateObject(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method
