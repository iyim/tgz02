.class public Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogDragGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 16
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_drag_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;->setContentView(I)V

    .line 17
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;->initViewAndAction()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 27
    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_drag_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;->setContentView(I)V

    if-nez p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;->getRootView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_dialog_drag_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo v0, "\u70b9\u51fb\u53c9\u53f7\u53ef\u4ee5\u79fb\u9664\u5e94\u7528\uff0c\u7cfb\u7edf\u5e94\u7528\u4e0d\u80fd\u79fb\u9664\u5662\u3002"

    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;->initViewAndAction()V

    return-void
.end method


# virtual methods
.method public initViewAndAction()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_detail_more_sure:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_detail_more_sure:I

    if-ne p1, v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogDragGuide;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
