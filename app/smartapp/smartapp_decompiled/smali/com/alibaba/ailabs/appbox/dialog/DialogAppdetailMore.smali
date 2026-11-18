.class public Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogAppdetailMore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private author:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->author:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->version:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->updateTime:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->scheme:Ljava/lang/String;

    .line 24
    sget p1, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_app_detail_more:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->initViewAndAction()V

    return-void
.end method


# virtual methods
.method public initViewAndAction()V
    .locals 4

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_detail_more_sure:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore$1;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_detail_more_author:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5f00\u53d1\u8005\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->version:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/appbox/R$id;->tv_detail_more_version:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/appbox/R$id;->tv_detail_more_version:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/appbox/R$id;->tv_detail_more_updatime:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u66f4\u65b0\u65f6\u95f4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->updateTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->isAmpeApplet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_detail_more_ampe:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/appbox/R$id;->tv_detail_more_ampe:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_detail_more_sure:I

    if-ne p1, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 56
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    .line 57
    new-instance v0, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore$2;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogAppdetailMore;)V

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
