.class public Lcom/alibaba/ailabs/appbox/dialog/DialogTTS2App;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogTTS2App.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 12
    sget p1, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_tts_2_app:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/dialog/DialogTTS2App;->setContentView(I)V

    .line 13
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogTTS2App;->initViewAndAction()V

    return-void
.end method


# virtual methods
.method public initViewAndAction()V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogTTS2App;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->tv_tts_to_exit_open_app:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_tts_to_exit_open_app:I

    if-ne p1, v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogTTS2App;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .line 24
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
